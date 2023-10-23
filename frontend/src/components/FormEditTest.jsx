import React, { useState, useEffect } from "react";
import axios from "axios";
import { useNavigate, useParams } from "react-router-dom";

const FormEditTest = () => {
  const [testDate, setTestDate] = useState("");
  const [name, setName] = useState("");
  const [age, setAge] = useState("");
  const [weight, setWeight] = useState("");
  const [height, setHeight] = useState("");
  const [msg, setMessage] = useState("");
  const navigate = useNavigate();
  const { id } = useParams();

  useEffect(() => {
    const getTestById = async () => {
      try {
        const response = await axios.get(`http://localhost:5000/tests/${id}`);
        setTestDate(new Date(response.data.testDate).toISOString().split("T")[0]);
        setName(response.data.name || "");
        setAge(response.data.age || "");
        setWeight(response.data.weight || "");
        setHeight(response.data.height || "");
      } catch (error) {
        if (error.response) {
          setMessage(error.response.data.msg);
        }
      }
    };
    getTestById();
  }, [id]);

  const updateTest = async (e) => {
    e.preventDefault();
    try {
      await axios.patch(`http://localhost:5000/tests/${id}`, {
        testDate: testDate,
        name: name,
        age: age,
        weight: weight,
        height: height,
      });

      // Redirect ke halaman Results.jsx dengan query parameter distanceResults dan nearestNeighbors
      navigate("/tests");
    } catch (error) {
      if (error.response) {
        setMessage(error.response.data.msg);
      }
    }
  };

  return (
    <div>
      <h1 className="title">Data Balita</h1>
      <h2 className="subtitle">Memperbarui Data Balita</h2>
      <div className="card is-shadowless">
        <div className="card-content">
          <div className="content">
            <form onSubmit={updateTest}>
              <p className="has-text-centered">{msg}</p>
              <div className="field">
                <label className="label">Tanggal</label>
                <div className="control">
                  <input type="date" className="input" value={testDate} onChange={(e) => setTestDate(e.target.value)} placeholder="tanggal" />
                </div>
              </div>
              <div className="field">
                <label className="label">Nama Balita</label>
                <div className="control">
                  <input type="text" className="input" value={name} onChange={(e) => setName(e.target.value)} placeholder="nama" />
                </div>
              </div>
              <div className="field">
                <label className="label">Umur</label>
                <div className="control">
                  <input type="text" className="input" value={age} onChange={(e) => setAge(e.target.value)} placeholder="umur" />
                </div>
              </div>
              <div className="field">
                <label className="label">Berat Badan</label>
                <div className="control">
                  <input type="text" className="input" value={weight} onChange={(e) => setWeight(e.target.value)} placeholder="berat badan" />
                </div>
              </div>
              <div className="field">
                <label className="label">Tinggi Badan</label>
                <div className="control">
                  <input type="text" className="input" value={height} onChange={(e) => setHeight(e.target.value)} placeholder="tinggi badan" />
                </div>
              </div>
              <div className="field">
                <div className="control">
                  <button type="submit" className="button is-success">Memperbarui</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  );
};

export default FormEditTest;
