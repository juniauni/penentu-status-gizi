import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import axios from 'axios';

const Userlist = () => {
    const [users, setUsers] = useState([]);

    useEffect(() => {
        getUsers();
    }, []);

    const getUsers = async () => {
        const response = await axios.get('http://localhost:5000/users');
        setUsers(response.data);
    };

    const deleteUser = async (userId) => {
        await axios.delete(`http://localhost:5000/users/${userId}`);
        getUsers();
    };

  return (
    <div>
        <h1 className='title' style={{ marginTop: '10px'}}>Data Pengguna</h1>
        <div className='user'>
            <div className='add-button'>
                <Link to='/users/add' className='button is-primary'>
                    Tambah Data
                </Link>
            </div>
            <table className='table is-striped is-fullwidth'>
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama</th>
                        <th>Email</th>
                        <th>Peran</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    {users.map((user, index) => (
                    <tr key={user.uuid}>
                        <td>{index + 1}</td>
                        <td>{user.name}</td>
                        <td>{user.email}</td>
                        <td>{user.role}</td>
                        <td>
                            <Link
                            to={`/users/edit/${user.uuid}`}
                            className='button is-small is-info'>
                                Sunting
                            </Link>
                            <button
                            onClick={() => deleteUser(user.uuid)}
                            className='button is-small is-danger'>
                                Hapus
                            </button>
                        </td>
                    </tr>
                    ))}
                </tbody>
            </table>
        </div> 
    </div>
  )
}

export default Userlist