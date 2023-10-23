import React from "react"
import { NavLink, useNavigate } from "react-router-dom";
import { IoPerson, IoHome, IoLogOut } from "react-icons/io5";
import {useDispatch, useSelector} from "react-redux";
import { LogOut, reset } from "../features/authSlice";

const Sidebar = () => {
    const dispatch = useDispatch();
    const navigate = useNavigate();
    const {user} = useSelector((state) => state.auth);

    const logout = () => {
        dispatch(LogOut());
        dispatch(reset());
        navigate("/");
    }
  return (
    <div>
        <aside className="menu pl-2 has-shadow">
            <p className="menu-label">
                Umum
            </p>
            <ul className="menu-list">
                <li><NavLink to={"/dashboard"}><IoHome/> Dasbor</NavLink></li>
                <li><NavLink to={"/tests"}><IoPerson/> Data Klasifikasi</NavLink></li>
            </ul>
            {user && user.role === "admin" && (
                <div>
                    <p className="menu-label">
                        Admin
                    </p>
                    <ul className="menu-list">
                        <li><NavLink to={"/users"}><IoPerson/> Data Pengguna</NavLink></li>
                    </ul>
                    <ul className="menu-list">
                        <li><NavLink to={"/toddlers"}><IoPerson/> Data Latih</NavLink></li>
                    </ul>
                    <ul className="menu-list">
                        <li><NavLink to={"/calculations"}><IoPerson/> Data Perhitungan</NavLink></li>
                    </ul>
                </div>
            )}
            
            <p className="menu-label">
                Pengaturan
            </p>
            <ul className="menu-list">
                <li><button onClick={logout} className="button is-white"><IoLogOut/> Keluar</button></li>
            </ul>
        </aside>
    </div>
  )
}

export default Sidebar
