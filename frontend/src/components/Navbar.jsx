import React from "react"
import {NavLink, useNavigate} from "react-router-dom";
import logo from "../logo.png";
import {useDispatch} from "react-redux";
import { LogOut, reset } from "../features/authSlice";

const Navbar = () => {
    const dispatch = useDispatch();
    const navigate = useNavigate();

    const logout = () => {
        dispatch(LogOut());
        dispatch(reset());
        navigate("/");
    }


  return (
    <div>
        <nav className="navbar is-fixed-top has-shadow" role="navigation" aria-label="main navigation">
          <div className="navbar-brand" style={{ display: "flex", flexDirection: "column", alignItems: "center"}}>
            <NavLink to="/dashboard" className="navbar-item">
              <img 
              src={logo} 
              width="20" 
              alt="logo"/>
            </NavLink>
            <p style={{ margin: "-0.5rem 0.5rem 0.2rem 0.5rem", fontSize: "5"}}>posyandu</p>
        
            <a href="!#" role="button" className="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
              <span aria-hidden="true"></span>
              <span aria-hidden="true"></span>
              <span aria-hidden="true"></span>
            </a>
          </div>
        
          <div id="navbarBasicExample" className="navbar-menu">
            <div className="navbar-end">
              <div className="navbar-item">
                <div className="buttons">
                  <button onClick={logout} className="button is-light">
                    Keluar
                  </button>
                </div>
              </div>
            </div>
          </div>
        </nav>
    </div>
  )
}

export default Navbar