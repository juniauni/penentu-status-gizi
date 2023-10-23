import Test from "../models/TestModel.js";
import User from "../models/UserModel.js";
import { Op } from "sequelize";
import Toddler from "../models/ToddlerModel.js";
import { calculateDistance, getKNearestNeighbors, getMajorityVote } from "./knn.js";

// Fungsi getTests: Mengambil daftar data Test
export const getTests = async (req, res) => {
  try {
    let response;
    if (req.role === "admin") {
      response = await Test.findAll({
        attributes: ['uuid', 'testDate', 'k', 'name', 'age', 'weight', 'height', 'classification'],
        include: [{
          model: User,
          attributes: ['name', 'email']
        }]
      });
    } else {
      response = await Test.findAll({
        attributes: ['uuid', 'k', 'testDate', 'name', 'age', 'weight', 'height', 'classification'],
        where: {
          userId: req.userId
        },
        include: [{
          model: User,
          attributes: ['name', 'email']
        }]
      });
    }

    // Create an object to store both the fetched data and the cached data
    const combinedResponse = {
      fetchedData: response,
      cachedData: cachedData,
    };

    // Send the combined response to the client
    res.status(200).json(combinedResponse);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};


// Fungsi getTestById: Mengambil informasi Test berdasarkan ID
export const getTestById = async (req, res) => {
  try {
    const test = await Test.findOne({
      where: {
        uuid: req.params.id
      }
    });
    if (!test) return res.status(404).json({ msg: "Data balita tidak ditemukan!" });
    let response;
    if (req.role === "admin") {
      // Jika peran pengguna adalah admin, ambil informasi Test beserta informasi pengguna yang terkait berdasarkan ID
      response = await Test.findOne({
        attributes: ['uuid', 'k', 'testDate', 'name', 'age', 'weight', 'height', 'classification'],
        where: {
          id: test.id
        },
        include: [{
          model: User,
          attributes: ['name', 'email']
        }]
      });
    } else {
      // Jika peran pengguna bukan admin, ambil informasi Test yang terkait dengan userId pengguna tersebut berdasarkan ID
      response = await Test.findOne({
        attributes: ['uuid', 'k', 'testDate', 'name', 'age', 'weight', 'height', 'classification'],
        where: {
          [Op.and]: [{ id: test.id }, { userId: req.userId }]
        },
        include: [{
          model: User,
          attributes: ['name', 'email']
        }]
      });
    }
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

// Inisialisasi variabel untuk menyimpan data sementara
let cachedData = {
  distanceResults: [],
  nearestNeighborsEuclidean: [],
  nearestNeighborsManhattan: [],
  nearestNeighborsChebyshev: [],
  classificationEuclidean: '',
  classificationManhattan: '',
  classificationChebyshev: '',
  newTest: [],
};

// Fungsi createTest: Membuat data Test baru
export const createTest = async (req, res) => {
  const { testDate, k = 9, name, age, weight, height } = req.body;
  try {
    const toddlers = await Toddler.findAll({
      attributes: ['age', 'weight', 'height', 'classification', 'name'] // Tambahkan 'name' sebagai atribut yang diambil dari model Toddler
    });

    const calDistances = toddlers.map(toddler => ({
      toddler,
      euclideanDistance: calculateDistance('euclidean', age, weight, height, toddler.age, toddler.weight, toddler.height),
      manhattanDistance: calculateDistance('manhattan', age, weight, height, toddler.age, toddler.weight, toddler.height),
      chebyshevDistance: calculateDistance('chebyshev', age, weight, height, toddler.age, toddler.weight, toddler.height)
    }));

    // Menampilkan hasil perhitungan jarak
    const distanceResults = calDistances.map(item => ({
      name: item.toddler.name, // Tambahkan 'name' dari objek toddler ke hasil perhitungan jarak
      age: item.toddler.age,
      weight: item.toddler.weight,
      height: item.toddler.height,
      classification: item.toddler.classification,
      euclideanDistance: item.euclideanDistance,
      manhattanDistance: item.manhattanDistance,
      chebyshevDistance: item.chebyshevDistance
    }));

    // Mengurutkan tetangga terdekat berdasarkan Euclidean distance
    const kNearestNeighborsEuclidean = getKNearestNeighbors(calDistances, k, 'euclideanDistance');

    // Mengurutkan tetangga terdekat berdasarkan Manhattan distance
    const kNearestNeighborsManhattan = getKNearestNeighbors(calDistances, k, 'manhattanDistance');

    // Mengurutkan tetangga terdekat berdasarkan Chebyshev distance
    const kNearestNeighborsChebyshev = getKNearestNeighbors(calDistances, k, 'chebyshevDistance');


    // Menampilkan tetangga terdekat berdasarkan Euclidean distance
    const nearestNeighborsEuclidean = kNearestNeighborsEuclidean.map(toddler => ({
      name: toddler.name,
      age: toddler.age,
      weight: toddler.weight,
      height: toddler.height,
      classification: toddler.classification,
      euclideanDistance: calDistances.find(item => item.toddler.name === toddler.name).euclideanDistance
    }));

    // Menampilkan tetangga terdekat berdasarkan Manhattan distance
    const nearestNeighborsManhattan = kNearestNeighborsManhattan.map(toddler => ({
      name: toddler.name,
      age: toddler.age,
      weight: toddler.weight,
      height: toddler.height,
      classification: toddler.classification,
      manhattanDistance: calDistances.find(item => item.toddler.name === toddler.name).manhattanDistance
    }));

    // Menampilkan tetangga terdekat berdasarkan Chebyshev distance
    const nearestNeighborsChebyshev = kNearestNeighborsChebyshev.map(toddler => ({
      name: toddler.name,
      age: toddler.age,
      weight: toddler.weight,
      height: toddler.height,
      classification: toddler.classification,
      chebyshevDistance: calDistances.find(item => item.toddler.name === toddler.name).chebyshevDistance
    }));

    const classificationEuclidean = getMajorityVote(kNearestNeighborsEuclidean);
    const classificationManhattan = getMajorityVote(kNearestNeighborsManhattan);
    const classificationChebyshev = getMajorityVote(kNearestNeighborsChebyshev);

    // Simpan data sementara dalam variabel cachedData
    cachedData.distanceResults = distanceResults;
    cachedData.nearestNeighborsEuclidean = nearestNeighborsEuclidean;
    cachedData.classificationEuclidean = classificationEuclidean;
    cachedData.nearestNeighborsManhattan = nearestNeighborsManhattan;
    cachedData.classificationManhattan = classificationManhattan;
    cachedData.nearestNeighborsChebyshev = nearestNeighborsChebyshev;
    cachedData.classificationChebyshev = classificationChebyshev;

    const classifications = [classificationEuclidean, classificationManhattan, classificationChebyshev];

    // Menghitung jumlah kemunculan setiap klasifikasi
    const counts = {};
    for (const classification of classifications) {
      counts[classification] = counts[classification] ? counts[classification] + 1 : 1;
    }

    // Mencari klasifikasi dengan jumlah terbanyak
    let majorityClassification = '';
    let maxCount = 0;
    for (const classification of Object.keys(counts)) {
      if (counts[classification] > maxCount) {
        majorityClassification = classification;
        maxCount = counts[classification];
      }
    }

    const newTest = await Test.create({
      testDate,
      k,
      name,
      age,
      weight,
      height,
      classification: majorityClassification !== '' ? majorityClassification : 'Unknown',
      userId: req.userId
    });
    
    // Simpan data baru dalam variabel cachedData
    cachedData.newTest = {
      testDate: newTest.testDate,
      k: newTest.k,
      name: newTest.name,
      age: newTest.age,
      weight: newTest.weight,
      height: newTest.height,
      classification: newTest.classification
    };
    
    // Mengirim data distanceResults dan nearestNeighbors sebagai respons
    res.status(201).json({msg: "Data balita berhasil diklasifikasikan!"});
  } catch (error) {
    res.status(400).json({ msg: error.message });
  }
};


export const updateTest = async (req, res) => {
  try {
    const test = await Test.findOne({
      where: {
        uuid: req.params.id
      }
    });

    if (!test) return res.status(404).json({ msg: "Data balita tidak ditemukan!" });

    const { testDate, name, age, weight, height } = req.body;
    // Fetch the original 'k' value from the existing test
    const k = test.k;

    // Menjalankan proses klasifikasi ulang hanya jika ada perubahan pada age, weight, atau height
    let classification = test.classification;
    if (
      age !== test.age ||
      weight !== test.weight ||
      height !== test.height
    ) {
      const toddlers = await Toddler.findAll({
        attributes: ['age', 'weight', 'height', 'classification', 'name']
      });

      const calDistances = toddlers.map(toddler => ({
        toddler,
        euclideanDistance: calculateDistance('euclidean', age, weight, height, toddler.age, toddler.weight, toddler.height),
        manhattanDistance: calculateDistance('manhattan', age, weight, height, toddler.age, toddler.weight, toddler.height),
        chebyshevDistance: calculateDistance('chebyshev', age, weight, height, toddler.age, toddler.weight, toddler.height)
      }));

      const distanceResults = calDistances.map(item => ({
        name: item.toddler.name,
        age: item.toddler.age,
        weight: item.toddler.weight,
        height: item.toddler.height,
        classification: item.toddler.classification,
        euclideanDistance: item.euclideanDistance,
        manhattanDistance: item.manhattanDistance,
        chebyshevDistance: item.chebyshevDistance
      }));

      // Mengurutkan tetangga terdekat berdasarkan Euclidean distance
      const kNearestNeighborsEuclidean = getKNearestNeighbors(calDistances, k, 'euclideanDistance');

      // Mengurutkan tetangga terdekat berdasarkan Manhattan distance
      const kNearestNeighborsManhattan = getKNearestNeighbors(calDistances, k, 'manhattanDistance');

      // Mengurutkan tetangga terdekat berdasarkan Chebyshev distance
      const kNearestNeighborsChebyshev = getKNearestNeighbors(calDistances, k, 'chebyshevDistance');


      const nearestNeighborsEuclidean = kNearestNeighborsEuclidean.map(toddler => ({
        name: toddler.name,
        age: toddler.age,
        weight: toddler.weight,
        height: toddler.height,
        classification: toddler.classification,
        euclideanDistance: calDistances.find(item => item.toddler.name === toddler.name).euclideanDistance
      }));

      const nearestNeighborsManhattan = kNearestNeighborsManhattan.map(toddler => ({
        name: toddler.name,
        age: toddler.age,
        weight: toddler.weight,
        height: toddler.height,
        classification: toddler.classification,
        manhattanDistance: calDistances.find(item => item.toddler.name === toddler.name).manhattanDistance
      }));

      const nearestNeighborsChebyshev = kNearestNeighborsChebyshev.map(toddler => ({
        name: toddler.name,
        age: toddler.age,
        weight: toddler.weight,
        height: toddler.height,
        classification: toddler.classification,
        chebyshevDistance: calDistances.find(item => item.toddler.name === toddler.name).chebyshevDistance
      }));

      const classificationEuclidean = getMajorityVote(kNearestNeighborsEuclidean);
      const classificationManhattan = getMajorityVote(kNearestNeighborsManhattan);
      const classificationChebyshev = getMajorityVote(kNearestNeighborsChebyshev);

      // Simpan data sementara dalam variabel cachedData
      cachedData.distanceResults = distanceResults;
      cachedData.nearestNeighborsEuclidean = nearestNeighborsEuclidean;
      cachedData.classificationEuclidean = classificationEuclidean;
      cachedData.nearestNeighborsManhattan = nearestNeighborsManhattan;
      cachedData.classificationManhattan = classificationManhattan;
      cachedData.nearestNeighborsChebyshev = nearestNeighborsChebyshev;
      cachedData.classificationChebyshev = classificationChebyshev;
      
      const classifications = [classificationEuclidean, classificationManhattan, classificationChebyshev];

      const counts = {};
      for (const classification of classifications) {
        counts[classification] = counts[classification] ? counts[classification] + 1 : 1;
      }

      let majorityClassification = '';
      let maxCount = 0;
      for (const classification of Object.keys(counts)) {
        if (counts[classification] > maxCount) {
          majorityClassification = classification;
          maxCount = counts[classification];
        }
      }

      classification = majorityClassification !== '' ? majorityClassification : 'Unknown';

      await test.update({
        testDate,
        name,
        age,
        weight,
        height,
        classification
      });

      cachedData.newTest = {
        testDate,
        k,
        name,
        age,
        weight,
        height,
        classification
      };

      res.status(200).json({msg: "Data balita diperbarui!"});
    } else {
      // Jika tidak ada perubahan pada age, weight, atau height, langsung memperbarui data Test
      await test.update({
        testDate,
        name,
        age,
        weight,
        height
      });

      cachedData.newTest = {
        testDate,
        k,
        name,
        age,
        weight,
        height,
        classification
      };
      
      res.status(200).json({ msg: "Data balita diperbarui!" });
    }
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};



// Fungsi deleteTest: Menghapus data Test
export const deleteTest = async (req, res) => {
  try {
    const test = await Test.findOne({
      where: {
        uuid: req.params.id
      }
    });
    if (!test) return res.status(404).json({ msg: "Data balita tidak ditemukan!" });
    if (req.role === "admin") {
      // Jika peran pengguna adalah admin, hapus data Test berdasarkan ID yang diberikan
      await Test.destroy({
        where: {
          id: test.id
        }
      });
    } else {
      // Jika peran pengguna bukan admin, hanya izinkan pengguna yang memiliki data tersebut untuk menghapusnya
      if (req.userId !== test.userId) return res.status(403).json({ msg: "Akses terlarang!" });
      await Test.destroy({
        where: {
          [Op.and]: [{ id: test.id }, { userId: req.userId }]
        }
      });
    }
    res.status(200).json({ msg: "Data balita terhapus!" });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};
