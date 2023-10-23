import { BrowserRouter, Routes, Route } from "react-router-dom";
import Dashboard from "./pages/Dashboard";
import Login from "./components/Login";
import Users from "./pages/Users";
import AddUser from "./pages/AddUser";
import EditUser from "./pages/EditUser";
import Toddlers from "./pages/Toddlers";
import AddToddler from "./pages/AddToddler";
import EditToddler from "./pages/EditToddler";
import Tests from "./pages/Tests";
import AddTest from "./pages/AddTest";
import EditTest from "./pages/EditTest";
// import Pdf from "./pages/Pdf";
import Calculations from "./pages/Calculations";
function App() {
  return (
    <div>
       <BrowserRouter>
        <Routes>
          <Route path="/" element={<Login/>}/>
          <Route path="/dashboard" element={<Dashboard/>}/>
          <Route path="/users" element={<Users/>}/>
          <Route path="/users/add" element={<AddUser/>}/>
          <Route path="/users/edit/:id" element={<EditUser/>}/>
          <Route path="/toddlers" element={<Toddlers/>}/>
          <Route path="/toddlers/add" element={<AddToddler/>}/>
          <Route path="/toddlers/edit/:id" element={<EditToddler/>}/>
          <Route path="/tests" element={<Tests/>}/>
          <Route path="/tests/add" element={<AddTest/>}/>
          <Route path="/tests/edit/:id" element={<EditTest/>}/>
          {/* <Route path="/pdf" element={<Pdf/>}/> */}
          <Route path="/calculations" element={<Calculations/>}/>
        </Routes>
       </BrowserRouter>  
    </div>
  );
}

export default App;
