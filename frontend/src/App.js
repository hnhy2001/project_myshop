import React from "react";
import { Outlet } from "react-router-dom";
import Footer from "./components/Footer";
import NavBar from "./components/NavBar";

function App() {
  return (
    <div style={{ backgroundColor:"white" }}>
      <div style={{ backgroundColor: "white" }}>
        <NavBar />
      </div>
      <Outlet />
      <Footer />
    </div>
  );
}

export default App;
