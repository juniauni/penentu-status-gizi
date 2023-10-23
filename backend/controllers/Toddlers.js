import Toddler from "../models/ToddlerModel.js";
import User from "../models/UserModel.js";

// Fungsi getToddlers: Mengambil daftar balita
export const getToddlers = async (req, res) => {
  try {
    let response;
    if (req.role === "admin") {
      // Jika peran pengguna adalah admin, ambil daftar balita beserta informasi pengguna yang terkait
      response = await Toddler.findAll({
        attributes: ['uuid', 'name', 'age', 'weight', 'height', 'classification'],
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

// Fungsi getToddlerById: Mengambil informasi balita berdasarkan ID
export const getToddlerById = async(req, res) =>{
    try {
        const toddler = await Toddler.findOne({
            where: {
                uuid: req.params.id
            }
        })
        if(!toddler) return res.status(404).json({msg: "Data balita tidak ditemukan!"});
        let response;
        if (req.role === "admin") {
            // Jika peran pengguna adalah admin, ambil informasi balita beserta informasi pengguna yang terkait berdasarkan ID
            response = await Toddler.findOne({
                attributes: ['uuid', 'name', 'age', 'weight', 'height', 'classification'],
                where: {
                    id: toddler.id
                },
                include: [{
                    model: User,
                    attributes: ['name', 'email']
                }]
            });
        }
        res.status(200).json(response);
    } catch (error) {
        res.status(500).json({msg: error.message});
    }
}

// Fungsi createToddler: Membuat balita baru
export const createToddler = async(req, res) =>{
    const {name, age, weight, height, classification} = req.body;
    try {
        // Membuat balita baru dengan informasi yang diberikan, dan menambahkan userId yang sesuai
        await Toddler.create({
            name: name,
            age: age,
            weight: weight,
            height: height,
            classification: classification,
            userId: req.userId
        });
        res.status(201).json({msg: "Data balita berhasil dibuat!"});
    } catch (error) {
        res.status(400).json({msg: error.message});
    }
}

// Fungsi updateToddler: Memperbarui informasi balita
export const updateToddler = async(req, res) =>{
    try {
        const toddler = await Toddler.findOne({
            where: {
                uuid: req.params.id
            }
        })
        if(!toddler) return res.status(404).json({msg: "Data balita tidak ditemukan!"});
        const {name, age, weight, height, classification} = req.body;
        if (req.role === "admin") {
            // Jika peran pengguna adalah admin, perbarui informasi balita berdasarkan ID yang diberikan
            await Toddler.update({name, age, weight, height, classification}, {
                where: {
                    id: toddler.id
                }
            });
        }
        res.status(200).json({msg: "Data balita diperbarui!"});
    } catch (error) {
        res.status(500).json({msg: error.message});
    }
}

// Fungsi deleteToddler: Menghapus balita
export const deleteToddler = async(req, res) =>{
    try {
        const toddler = await Toddler.findOne({
            where: {
                uuid: req.params.id
            }
        })
        if(!toddler) return res.status(404).json({msg: "Data balita tidak ditemukan!"});
        if (req.role === "admin") {
            // Jika peran pengguna adalah admin, hapus balita berdasarkan ID yang diberikan
            await Toddler.destroy({
                where: {
                    id: toddler.id
                }
            });
        }
        res.status(200).json({msg: "Data balita terhapus!"});
    } catch (error) {
        res.status(500).json({msg: error.message});
    }
}
