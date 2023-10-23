import React, {useEffect} from "react"
import Layout from "./Layout"
import Calculationlist from "../components/Calculationlist"
import { useDispatch, useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import { getMe } from "../features/authSlice";

const Calculations = () => {
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const {isError} = useSelector((state => state.auth));

  useEffect(() => {
    dispatch(getMe());
  }, [dispatch]);

  useEffect(() => {
    if (isError) {
      navigate("/");
    }
  }, [isError, navigate]);

  return (
    <div>
        <Layout>
            <Calculationlist/>
        </Layout>
    </div>
  )
}

export default Calculations