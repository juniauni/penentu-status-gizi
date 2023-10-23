import React, { useState, useEffect } from "react";
import { useDispatch, useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import { LoginUser, reset } from "../features/authSlice";
import logo from "../logo.png";

const Login = () => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const { user, isError, isSuccess, isLoading, message } = useSelector(
    (state) => state.auth
  );

  useEffect(() => {
    if (user || isSuccess) {
      navigate("/dashboard");
    }
    dispatch(reset());
  }, [user, isSuccess, dispatch, navigate]);

  const Auth = (e) => {
    e.preventDefault();
    dispatch(LoginUser({ email, password }));
  };

  return (
    <div className="hero-body" style={{backgroundColor: "#f7f7f7", minHeight: "100vh"}}>
      <div className="columns is-centered">
          <div className="column is-4" style={{ display: "flex", flexDirection: "column", alignItems: "center" }}>
            <img src={logo} width={100} alt="logo" />
            <h1
              className="title is-2"
              style={{ color: "#333", marginBottom: "1rem" }}>posyandu</h1>
            <form
              onSubmit={Auth}
              className="box"
            >
              {isError && <p className="has-text-centered">{message}</p>}
              <h1
                className="title is-2"
                style={{ color: "#333", marginBottom: "1rem" }}
              >
                Masuk
              </h1>
              <div className="field">
                <label className="label" style={{ color: "#333" }}>
                  Email
                </label>
                <div className="control">
                  <input
                    type="text"
                    className="input"
                    value={email}
                    onChange={(e) => setEmail(e.target.value)}
                    placeholder="Email"
                    style={{ backgroundColor: "#f7f7f7", color: "#333" }}
                  />
                </div>
              </div>
              <div className="field">
                <label className="label" style={{ color: "#333" }}>
                  Kata Sandi
                </label>
                <div className="control">
                  <input
                    type="password"
                    className="input"
                    value={password}
                    onChange={(e) => setPassword(e.target.value)}
                    placeholder="*******"
                    style={{ backgroundColor: "#f7f7f7", color: "#333" }}
                  />
                </div>
              </div>
              <div className="field mt-5">
                <button
                  type="submit"
                  className="button is-success is-fullwidth"
                  style={{ backgroundColor: "#00a64e" }}
                >
                  {isLoading ? "Memuat..." : "Masuk"}
                </button>
              </div>
            </form>
          </div>
        </div>
    </div>
  );
};

export default Login;
