import React, { useState, useEffect } from 'react';
import axios from 'axios';
import '../Styles.css';

const Pdftest = () => {
  const [tests, setTests] = useState([]);
  const [currentPage, setCurrentPage] = useState(1);
  const testsPerPage = 10;
  const [startDate, setStartDate] = useState(null);
  const [endDate, setEndDate] = useState(null);

  useEffect(() => {
    fetchData();
  }, []);

  const fetchData = async () => {
    try {
      const response = await axios.get('http://localhost:5000/pdf');
      const combinedResponse = response.data;
      setTests(combinedResponse.fetchedData);
    } catch (error) {
      console.error(error);
    }
  };

  const applyDateFilter = () => {
    if (startDate && endDate) {
      const filteredTests = tests.filter(test => {
        const testDate = new Date(test.testDate);
        return testDate >= startDate && testDate <= endDate;
      });
      return filteredTests;
    }
    return tests;
  };

  const totalFilteredTests = applyDateFilter();
  const totalPages = Math.ceil(totalFilteredTests.length / testsPerPage);

  const calculateIndex = (index) => {
    return (currentPage - 1) * testsPerPage + index + 1;
  };

  const indexOfLastTest = currentPage * testsPerPage;
  const indexOfFirstTest = indexOfLastTest - testsPerPage;
  const currentTests = totalFilteredTests.slice(indexOfFirstTest, indexOfLastTest);

  return (
    <div>
      <h1 className='title' style={{ marginTop: '10px' }}>Data Balita</h1>
      <div className='test'>
        <div className='add-button'>
          <div className="filter">
            <label style={{ marginLeft: '5px' }}>Tanggal</label>
            <input
              type="date"
              value={startDate ? startDate.toISOString().split('T')[0] : ''}
              onChange={e => setStartDate(new Date(e.target.value))}
              style={{ marginLeft: '5px' }}
            />

            <label style={{ marginLeft: '5px' }}>Sampai</label>
            <input
              type="date"
              value={endDate ? endDate.toISOString().split('T')[0] : ''}
              onChange={e => setEndDate(new Date(e.target.value))}
              style={{ marginLeft: '5px' }}
            />
            <button className='button is-small is-danger' onClick={() => {setStartDate(null); setEndDate(null);}} style={{ marginLeft: '5px' }}>Hapus Filter</button>
          </div>
        </div>
        {totalFilteredTests.length > 0 ? (
          <table className='table is-striped is-fullwidth'>
            <thead>
              <tr>
                <th>No</th>
                <th>Tanggal</th>
                <th>Nama</th>
                <th>Umur</th>
                <th>Berat Badan</th>
                <th>Tinggi Badan</th>
                <th>Kelas</th>
              </tr>
            </thead>
            <tbody>
              {currentTests.map((test, index) => (
                <tr key={test.uuid}>
                  <td>{calculateIndex(index)}</td>
                  <td>{new Date(test.testDate).toLocaleDateString()}</td>
                  <td>{test.name}</td>
                  <td>{test.age}</td>
                  <td>{test.weight}</td>
                  <td>{test.height}</td>
                  <td>{test.classification}</td>
                </tr>
              ))}
            </tbody>
          </table>
        ) : (
          <p>Data belum tersedia.</p>
        )}
        <div className="pagination">
          <button
            className="pagination-button"
            onClick={() => setCurrentPage(Math.max(currentPage - 1, 1))}
            disabled={currentPage === 1}
          >
            &laquo;
          </button>
          <span className="pagination-button">Halaman {currentPage} dari {totalPages}</span>
          <button
            className="pagination-button"
            onClick={() => setCurrentPage(Math.min(currentPage + 1, totalPages))}
            disabled={currentPage === totalPages}
          >
            &raquo;
          </button>
        </div>
      </div>
    </div>
  );
};

export default Pdftest;
