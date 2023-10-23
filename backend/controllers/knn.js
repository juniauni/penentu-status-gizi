// Menghitung jarak antara dua titik dalam tiga atribut berdasarkan jenis jarak yang dipilih.
export function calculateDistance(distance, x1, y1, z1, x2, y2, z2) {
  let calDistance;

  if (distance === 'euclidean') {
    const diffX = x2 - x1;
    const diffY = y2 - y1;
    const diffZ = z2 - z1;
    calDistance = Math.sqrt(diffX * diffX + diffY * diffY + diffZ * diffZ);
  } else if (distance === 'manhattan') {
    const diffX = Math.abs(x2 - x1);
    const diffY = Math.abs(y2 - y1);
    const diffZ = Math.abs(z2 - z1);
    calDistance = (diffX + diffY + diffZ).toFixed(2);
  } else if (distance === 'chebyshev') {
    const diffX = Math.abs(x2 - x1);
    const diffY = Math.abs(y2 - y1);
    const diffZ = Math.abs(z2 - z1);
    if (diffX >= diffY && diffX >= diffZ) {
      calDistance = diffX.toFixed(2);;
    } else if (diffY >= diffX && diffY >= diffZ) {
      calDistance = diffY.toFixed(2);
    } else {
      calDistance = diffZ.toFixed(2);
    }
  }
  

  return calDistance;
}

// Fungsi untuk mendapatkan k tetangga terdekat dari daftar jarak
export function getKNearestNeighbors(distances, k, distanceType) {
  // Mengurutkan jarak secara ascending berdasarkan tipe jarak yang diberikan
  const sortedDistances = distances.sort((a, b) => a[distanceType] - b[distanceType]);

  // Mengembalikan k tetangga terdekat beserta data toddler yang berkaitan
  const kNearestNeighbors = sortedDistances.slice(0, k).map(item => item.toddler);

  return kNearestNeighbors;
}


// Fungsi untuk mendapatkan klasifikasi mayoritas dari tetangga terdekat
export function getMajorityVote(toddlers) {
  // Menghitung jumlah kemunculan setiap klasifikasi
  const counts = {};

  for (const toddler of toddlers) {
    const classification = toddler.classification;
    // Menaikkan hitungan untuk setiap klasifikasi
    counts[classification] = counts[classification] ? counts[classification] + 1 : 1;
  }

  let majorityClassification = "";
  let maxCount = 0;

  // Mencari klasifikasi mayoritas berdasarkan hitungan terbanyak
  for (const classification of Object.keys(counts)) {
    if (counts[classification] > maxCount) {
      majorityClassification = classification;
      maxCount = counts[classification];
    }
  }

  // Mengembalikan klasifikasi mayoritas
  return majorityClassification;
}

// Fungsi untuk mendapatkan klasifikasi mayoritas dari tetangga terdekat
export function getMajorityClassification(neighbors) {
  const counts = {};

  for (const neighbor of neighbors) {
    const classification = neighbor.classification;
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

  return majorityClassification;
}
