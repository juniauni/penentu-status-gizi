import React, { useState, useEffect } from 'react';
import axios from 'axios';


const Calculationlist = () => {
  const [cachedData, setCachedData] = useState(null);

  useEffect(() => {
    fetchData();
  }, []);

  const fetchData = async () => {
    try {
      const response = await axios.get('http://localhost:5000/tests');
      const combinedResponse = response.data;
      setCachedData(combinedResponse.cachedData);
    } catch (error) {
      console.error(error);
    }
  };

  return (
    <div>
      <div>
          <h1 className="title" style={{ marginTop: '15px' }}>Data Perhitungan</h1>
          {cachedData ? (
            <div>
              <div className='calculation'>
                <h2 className="subtitle">Keterangan Data</h2>
                {cachedData.newTest ? (
                  <table className="table is-striped is-fullwidth">
                    <thead>
                      <tr>
                        <th>Tanggal</th>
                        <th>Nilai K</th>
                        <th>Nama</th>
                        <th>Umur</th>
                        <th>Berat</th>
                        <th>Tinggi</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>{new Date(cachedData.newTest.testDate).toLocaleDateString()}</td>
                        <td>{cachedData.newTest.k}</td>
                        <td>{cachedData.newTest.name}</td>
                        <td>{cachedData.newTest.age}</td>
                        <td>{cachedData.newTest.weight}</td>
                        <td>{cachedData.newTest.height}</td>
                      </tr>
                    </tbody>
                  </table>
                ) : (
                  <p>Data belum tersedia.</p>
                )}
              </div>


              <div className='calculation'>
                <h2 className="subtitle">Hasil Perhitungan</h2>
                {cachedData.distanceResults && cachedData.distanceResults.length > 0 ? (
                  <table className="table is-striped is-fullwidth">
                    <thead>
                      <tr>
                        <th>Nomer</th>
                        <th>Nama</th>
                        <th>Umur</th>
                        <th>Berat Badan</th>
                        <th>Tinggi Badan</th>
                        <th>Klasifikasi</th>
                        <th>Euclidean</th>
                        <th>Manhattan</th>
                        <th>Chebyshev</th>
                      </tr>
                    </thead>
                    <tbody>
                      {cachedData.distanceResults.map((result, index) => (
                        <tr key={index}>
                          <td>{index + 1}</td>
                          <td>{result.name}</td>
                          <td>{result.age}</td>
                          <td>{result.weight}</td>
                          <td>{result.height}</td>
                          <td>{result.classification}</td>
                          <td>{result.euclideanDistance}</td>
                          <td>{result.manhattanDistance}</td>
                          <td>{result.chebyshevDistance}</td>
                        </tr>
                      ))}
                    </tbody>
                  </table>
                ) : (
                  <p>Data belum tersedia.</p>
                )}
              </div>

              
              <div className='calculation'>
              <h2 className="subtitle">Tetangga Terdekat Euclidean</h2>
                {cachedData.nearestNeighborsEuclidean && cachedData.nearestNeighborsEuclidean.length > 0 ? (
                  <table className="table is-striped is-fullwidth">
                    <thead>
                      <tr>
                        <th>No</th>
                        <th>Nama</th>
                        <th>Umur</th>
                        <th>Berat</th>
                        <th>Tinggi</th>
                        <th>Kelas</th>
                        <th>Jarak</th>
                      </tr>
                    </thead>
                    <tbody>
                      {cachedData.nearestNeighborsEuclidean.map((neighbor, index) => {
                        const distanceResult = cachedData.distanceResults.find(
                          result => result.name === neighbor.name
                        );
                        return (
                          <tr key={index}>
                            <td>{index + 1}</td>
                            <td>{neighbor.name}</td>
                            <td>{neighbor.age}</td>
                            <td>{neighbor.weight}</td>
                            <td>{neighbor.height}</td>
                            <td>{neighbor.classification}</td>
                            <td>{distanceResult.euclideanDistance}</td>
                          </tr>
                        );
                      })}
                    </tbody>
                  </table>
                ) : (
                  <p>Data belum tersedia.</p>
                )}
                {cachedData.classificationEuclidean && (
                <div className='calculation'>
                  <h2 className="subtitle">Klasifikasi Euclidean: <span>{cachedData.classificationEuclidean}</span></h2>
                </div>
                )}
              </div>
              

              <div className='calculation'>
              <h2 className="subtitle">Tetangga Terdekat Manhattan</h2>
                {cachedData.nearestNeighborsManhattan && cachedData.nearestNeighborsManhattan.length > 0 ? (
                  <table className="table is-striped is-fullwidth">
                    <thead>
                      <tr>
                        <th>No</th>
                        <th>Nama</th>
                        <th>Umur</th>
                        <th>Berat</th>
                        <th>Tinggi</th>
                        <th>Kelas</th>
                        <th>Jarak</th>
                      </tr>
                    </thead>
                    <tbody>
                      {cachedData.nearestNeighborsManhattan.map((neighbor, index) => {
                        const distanceResult = cachedData.distanceResults.find(
                          result => result.name === neighbor.name
                        );
                        return (
                          <tr key={index}>
                            <td>{index + 1}</td>
                            <td>{neighbor.name}</td>
                            <td>{neighbor.age}</td>
                            <td>{neighbor.weight}</td>
                            <td>{neighbor.height}</td>
                            <td>{neighbor.classification}</td>
                            <td>{distanceResult.manhattanDistance}</td>
                          </tr>
                        );
                      })}
                    </tbody>
                  </table>
                ) : (
                  <p>Data belum tersedia.</p>
                )}
                {cachedData.classificationManhattan && (
                <div className='calculation'>
                  <h2 className="subtitle">Klasifikasi Manhattan: <span>{cachedData.classificationManhattan}</span></h2>
                </div>
                )}
              </div>
              

              <div className='calculation'>
              <h2 className="subtitle">Tetangga Terdekat Chebyshev</h2>
                {cachedData.nearestNeighborsChebyshev && cachedData.nearestNeighborsChebyshev.length > 0 ? (
                  <table className="table is-striped is-fullwidth">
                    <thead>
                      <tr>
                        <th>No</th>
                        <th>Nama</th>
                        <th>Umur</th>
                        <th>Berat</th>
                        <th>Tinggi</th>
                        <th>Kelas</th>
                        <th>Jarak</th>
                      </tr>
                    </thead>
                    <tbody>
                      {cachedData.nearestNeighborsChebyshev.map((neighbor, index) => {
                        const distanceResult = cachedData.distanceResults.find(
                          result => result.name === neighbor.name
                        );
                        return (
                          <tr key={index}>
                            <td>{index + 1}</td>
                            <td>{neighbor.name}</td>
                            <td>{neighbor.age}</td>
                            <td>{neighbor.weight}</td>
                            <td>{neighbor.height}</td>
                            <td>{neighbor.classification}</td>
                            <td>{distanceResult.chebyshevDistance}</td>
                          </tr>
                        );
                      })}
                    </tbody>
                  </table>
                ) : (
                  <p>Data belum tersedia.</p>
                )}
                {cachedData.classificationChebyshev && (
                <div className='calculation'>
                  <h2 className="subtitle">Klasifikasi Chebyshev: <span>{cachedData.classificationChebyshev}</span></h2>
                </div>
                )}
              </div>

              <div className='calculation'>
                <h2 className="subtitle">Hasil Klasifikasi</h2>
                {cachedData.newTest ? (
                  <div className='calculation'>
                    <h2 className="subtitle"><span>{cachedData.newTest.classification}</span></h2>
                  </div>
                ) : (
                  <p>Data belum tersedia.</p>
                )}
              </div>
            </div>
          ) : (
            <p>Data belum tersedia.</p>
          )}
        </div>
    </div>
  );
};

export default Calculationlist;
