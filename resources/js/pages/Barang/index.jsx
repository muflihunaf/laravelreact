import React, { Component } from "react";
import { Link } from "react-router-dom"; // Import Link from React Router
import axios from "axios";

class BarangIndex extends Component {
  constructor(props) {
    super(props);
    this.state = {
      barang: [],
    };
  }

  fetchBarang() {
    axios
      .get('/api/barang')
      .then((response) => this.setState({ barang: response.data.data }));
  }

  componentDidMount() {
    this.fetchBarang();
  }

  renderBarang() {
    let count = 1;
    return this.state.barang.map((item) => (
      <tr key={item.id}>
        <td className="px-6 py-4 text-sm leading-5 text-gray-900 whitespace-no-wrap">
          {count++}
        </td>
        <td className="px-6 py-4 text-sm leading-5 text-gray-900 whitespace-no-wrap">
          {item.kode}
        </td>
        <td className="px-6 py-4 text-sm leading-5 text-gray-900 whitespace-no-wrap">
          {item.kategori.nama}
        </td>
        <td className="px-6 py-4 text-sm leading-5 text-gray-900 whitespace-no-wrap">
          {item.nama}
        </td>
        <td className="px-6 py-4 text-sm leading-5 text-gray-900 whitespace-no-wrap">
          {item.jumlah}
        </td>
        <td className="px-6 py-4 text-sm leading-5 text-gray-900 whitespace-no-wrap">
          {item.satuan.nama}
        </td>
      </tr>
    ));
  }

  render() {
    return (
      <div className="overflow-hidden overflow-x-auto p-6 bg-white border-gray-200 max-h-screen">
        <div className="flex justify-between mb-6">
          <h1 className="text-lg font-bold">Daftar Barang</h1>
          <Link
            to="/barang/simpan"
            className="bg-blue-500 hover:bg-blue-700 font-bold py-2 px-4 rounded"
          >
            Tambah Barang
          </Link>
        </div>
        <div className="min-w-full align-middle">
          <table className="min-w-full divide-gray-200 border">
            <thead>
              <tr>
                <th className="px-6 py-3 bg-gray-50 whitespace-nowrap w-1/3">
                  <span className="text-xs font-medium tracking-wider leading-4 text-left text-gray-500 uppercase">No</span>
                </th>
                <th className="px-6 py-3 bg-gray-50 whitespace-nowrap">
                  <span className="text-xs font-medium tracking-wider leading-4 text-left text-gray-500 uppercase">Kode</span>
                </th>
                <th className="px-6 py-3 bg-gray-50 whitespace-nowrap">
                  <span className="text-xs font-medium tracking-wider leading-4 text-left text-gray-500 uppercase">Kategori</span>
                </th>
                <th className="px-6 py-3 bg-gray-50 whitespace-nowrap">
                  <span className="text-xs font-medium tracking-wider leading-4 text-left text-gray-500 uppercase">Nama</span>
                </th>
                <th className="px-6 py-3 bg-gray-50 whitespace-nowrap">
                  <span className="text-xs font-medium tracking-wider leading-4 text-left text-gray-500 uppercase">Jumlah</span>
                </th>
                <th className="px-6 py-3 bg-gray-50 whitespace-nowrap">
                  <span className="text-xs font-medium tracking-wider leading-4 text-left text-gray-500 uppercase">Satuan</span>
                </th>
              </tr>
            </thead>
            <tbody className="table-body">
              {this.renderBarang()}
            </tbody>
          </table>
        </div>
      </div>
    );
  }
}

export default BarangIndex;
