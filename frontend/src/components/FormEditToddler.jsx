import React, {useState, useEffect} from "react";
import axios from "axios";
import { useNavigate, useParams } from "react-router-dom";

const FormEditToddler = () => {
    const [name, setName] = useState("");
    const [age, setAge] = useState("");
    const [weight, setWeight] = useState("");
    const [height, setHeight] = useState("");
    const [classification, setClassification] = useState("");
    const [msg, setMessage] = useState("");
    const navigate = useNavigate();
    const {id} = useParams();

    useEffect(() => {
        const getToddlerById = async () => {
          try {
            const response = await axios.get(`http://localhost:5000/toddlers/${id}`);
            setName(response.data.name || "");
            setAge(response.data.age || "");
            setWeight(response.data.weight || "");
            setHeight(response.data.height || "");
            setClassification(response.data.classification || "");
          } catch (error) {
            if (error.response) {
              setMessage(error.response.data.msg);
            }
          }
        };
        getToddlerById();
      }, [id]);
      

    const updateToddler = async(e) => {
        e.preventDefault()
        try {
            await axios.patch(`http://localhost:5000/toddlers/${id}`, {
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
        <h2 className="subtitle">Memperbarui Data Balita</h2>
        <div className="card is-shadowless">
            <div className="card-content">
                <div className="content">
                    <form onSubmit={updateToddler}>
                        <p className="has-text-centered">{msg}</p>
                        <div className="field">
                            <label className="label">Nama Balita</label>
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
                                <button type="submit" className="button is-success">Memperbarui</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
  )
}

export default FormEditToddler