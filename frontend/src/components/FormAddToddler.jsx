import React, {useState} from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";

const FormAddToddler = () => {
    const [name, setName] = useState("");
    const [age, setAge] = useState("");
    const [weight, setWeight] = useState("");
    const [height, setHeight] = useState("");
    const [classification, setClassification] = useState("Sangat Kurus");
    const [msg, setMessage] = useState("");
    const navigate = useNavigate();

    const saveToddler = async(e) => {
        e.preventDefault()
        try {
            await axios.post('http://localhost:5000/toddlers', {
                name: name,
                age: age,
                weight: weight,
                height: height,
                classification: classification
            });
            navigate("/toddlers")
        } catch (error) {
            if (error.response) {
                setMessage(error.response.data.msg);
            }
        }
    };
  return (
    <div>
        <h1 className="title">Data Balita</h1>
        <h2 className="subtitle">Tambah Data Balita</h2>
        <div className="card is-shadowless">
            <div className="card-content">
                <div className="content">
                    <form onSubmit={saveToddler}>
                        <p className="has-text-centered">{msg}</p>
                        <div className="field">
                            <label className="label">Nama</label>
                            <div className="control">
                                <input type="text" className="input" value={name} onChange={(e) => setName(e.target.value)} placeholder="nama"/>
                            </div>
                        </div>
                        <div className="field">
                            <label className="label">Umur</label>
                            <div className="control">
                                <input type="text" className="input" value={age} onChange={(e) => setAge(e.target.value)} placeholder="umur"/>
                            </div>
                        </div>
                        <div className="field">
                            <label className="label">Berat Badan</label>
                            <div className="control">
                                <input type="text" className="input" value={weight} onChange={(e) => setWeight(e.target.value)} placeholder="berat badan"/>
                            </div>
                        </div>
                        <div className="field">
                            <label className="label">Tinggi Badan</label>
                            <div className="control">
                                <input type="text" className="input" value={height} onChange={(e) => setHeight(e.target.value)} placeholder="tinggi badan"/>
                            </div>
                        </div>
                        <div className="field">
                            <label className="label">Kelas</label>
                            <div className="control">
                                <div className="select is-fullwidth">
                                    <select value={classification} onChange={(e) => setClassification(e.target.value)}>
                                        <option value="Sangat Kurus">
                                           Sangat Kurus
                                        </option>
                                        <option value="Kurus">
                                            Kurus
                                        </option>
                                        <option value="Normal">
                                            Normal
                                        </option>
                                        <option value="Gemuk">
                                            Gemuk
                                        </option>
                                    </select>
                                </div>
                            </div>
                        </div>
                       <div className="field">
                            <div className="control">
                                <button className="button is-success">Simpan</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
  )
}

export default FormAddToddler