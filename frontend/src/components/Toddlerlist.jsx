import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import axios from 'axios';
import '../Styles.css';

const Toddlerlist = () => {
  const [toddlers, setToddlers] = useState([]);
  const [currentPage, setCurrentPage] = useState(1);
  const toddlersPerPage = 10; // Jumlah balita per halaman

  useEffect(() => {
    getToddlers();
  }, []);

  const getToddlers = async () => {
    const response = await axios.get('http://localhost:5000/toddlers');
    setToddlers(response.data);
  };

  const deleteToddler = async (toddlerId) => {
    await axios.delete(`http://localhost:5000/toddlers/${toddlerId}`);
    getToddlers();
  };

  const totalPages = Math.ceil(toddlers.length / toddlersPerPage);
  const indexOfLastToddler = currentPage * toddlersPerPage;
  const indexOfFirstToddler = indexOfLastToddler - toddlersPerPage;
  const currentToddlers = toddlers.slice(indexOfFirstToddler, indexOfLastToddler);

  const calculateIndex = (index) => {
    return (currentPage - 1) * toddlersPerPage + index + 1;
  };

  return (
    <div className="table-responsive">
      <h1 className='title' style={{ marginTop: '10px'}}>Data Balita</h1>
      <div className='toddler'>
        <div className='add-button'>
          <Link to='/toddlers/add' className='button is-primary mb-2'>
              Tambah Data
          </Link>
        </div>
        <table className='table is-striped is-fullwidth'>
          <thead>
            <tr>
              <th>No</th>
              <th>Nama</th>
              <th>Umur</th>
              <th>Berat Badan</th>
              <th>Tinggi Badan</th>
              <th>Kelas</th>
              <th>Dibuat Oleh</th>
              <th>Aksi</th>
            </tr>
          </thead>
          <tbody>
            {currentToddlers.map((toddler, index) => (
              <tr key={toddler.uuid}>
                <td>{calculateIndex(index)}</td>
                <td>{toddler.name}</td>
                <td>{toddler.age}</td>
                <td>{toddler.weight}</td>
                <td>{toddler.height}</td>
                <td>{toddler.classification}</td>
                <td>{toddler.user.name}</td>
                <td>
                  <Link
                    to={`/toddlers/edit/${toddler.uuid}`}
                    className='button is-small is-info'>
                    Sunting
                  </Link>
                  <button
                    onClick={() => deleteToddler(toddler.uuid)}
                    className='button is-small is-danger'>
                    Hapus
                  </button>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
        <div className="pagination">
          <button
            className="pagination-button"
            onClick={() => setCurrentPage(currentPage - 1)}
            disabled={currentPage === 1}
          >
            &laquo;
          </button>
          <span className="pagination-button">Halaman {currentPage} dari {totalPages}</span>
          <button
            className="pagination-button"
            onClick={() => setCurrentPage(currentPage + 1)}
            disabled={currentPage === totalPages}
          >
            &raquo;
          </button>
        </div>
      </div>
    </div>
  );
};

export default Toddlerlist;
