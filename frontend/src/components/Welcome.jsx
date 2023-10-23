import React from 'react';
import { useSelector } from 'react-redux';

const Welcome = () => {
  const { user } = useSelector((state) => state.auth);

  return (
    <div style={{ display: 'flex', justifyContent: 'center', height: '43vh'}}>
      <div className='welcome' style={{ marginRight: '5px', marginTop: '10px' }}>
        <h1 style={{ textAlign: 'center', fontSize: '50px' }}>Data Pengguna</h1>
        <div className="info">
          <h2>
            Nama
            <span>{user && user.name}</span>
          </h2>
          <h2>
            Email
            <span>{user && user.email}</span>
          </h2>
          <h2>
            Role
            <span>{user && user.role}</span>
          </h2>
        </div>
      </div>
      <div className='welcome' style={{ marginLeft: '5px', marginTop: '10px', marginRight: '10px' }}>
        <h1 style={{ textAlign: 'center', fontSize: '50px' }}>Kontak</h1>
        <div className="info">
          <h2>
            Ketua Kader
            <span>085239040687</span>
          </h2>
        </div>
      </div>
    </div>
  );
};

export default Welcome;
