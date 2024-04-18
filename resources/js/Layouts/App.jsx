import { BrowserRouter, Routes, Route, Link } from "react-router-dom";
import React from "react";
import ReactDOM from 'react-dom/client';
import HomeIndex from "../pages/Home";
import DataIndex from "../pages/Data";
import CreateBarangForm from "../pages/Barang/create";
import BarangIndex from "../pages/Barang";
export default function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<HomeIndex />} />
        <Route path="/data" element={<DataIndex />} />
        <Route path="/barang" element={<BarangIndex />} />
        <Route path="/barang/simpan" element={<CreateBarangForm />} />
      </Routes>
    </BrowserRouter>
  );
}
const container = document.getElementById('app');
const root = ReactDOM.createRoot(container);
root.render(<App />);
