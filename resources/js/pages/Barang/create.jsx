import React, { Component } from 'react';

class CreateBarangForm extends Component {
    constructor(props) {
        super(props);
        this.state = {
            nama_barang: '',
            id_user_input: '',
            kode_kategori_barang: '',
            satuan_barang: '',
            jumlah: '',
            kode_barang: '',
            errors: {},
            kategoriBarangOptions: [],
        };
    }

    componentDidMount() {
        // Lakukan permintaan ke backend untuk mengambil data kategori barang
        axios.get('/api/kategori-barang')
            .then(response => {
                // Set state dengan opsi kategori barang yang diperoleh dari respons
                this.setState({ kategoriBarangOptions: response.data.data });
            })
            .catch(error => {
                console.error('Terjadi kesalahan saat mengambil data kategori barang:', error);
            });
            axios.get('/api/generateId')
            .then(response => {
                // Set state dengan opsi kategori barang yang diperoleh dari respons
                this.setState({ kode_barang: response.data.data });
            })
            .catch(error => {
                console.error('Terjadi kesalahan saat mengambil data kategori barang:', error);
            });


    }

    handleInputChange = (event) => {
        const { name, value } = event.target;
        this.setState({
            [name]: value
        });
    }

    handleSubmit = (event) => {
        event.preventDefault();
        const errors = this.validateInputs();
        if (Object.keys(errors).length === 0) {
            axios.post('/api/barang/simpan', this.state)
            .then(response => {
                // Reset state dan tampilkan pesan sukses
                this.setState({
                    nama_barang: '',
                    id_user_input: '',
                    kode_kategori_barang: '',
                    satuan_barang: '',
                    jumlah: '',
                    kode_barang: '',
                    errors: {},
                    successMessage: 'Data berhasil disimpan'
                });
            })
            .catch(error => {
                // Tangkap error dari backend dan tampilkan pesan kesalahan
                if (error.response && error.response.data) {
                    // this.setState({ errorMessage: error.response.data.message });
                    alert(error.response.data.message);
                } else {
                    this.setState({ errorMessage: 'Terjadi kesalahan saat memproses permintaan' });
                }
                console.log(this.state.errorMessage);
            });
        } else {
            this.setState({ errors });
        }
    }

    validateInputs = () => {
        const { nama_barang, id_user_input, kode_kategori_barang, satuan_barang, jumlah, kode_barang } = this.state;
        const errors = {};
        if (!nama_barang || nama_barang.length < 2 || nama_barang.length > 20) {
            errors.nama_barang = 'Nama barang harus terdiri dari 2 hingga 20 karakter';
        }
        if (!id_user_input) {
            errors.id_user_input = 'ID user input tidak boleh kosong';
        }
        if (!kode_kategori_barang) {
            errors.kode_kategori_barang = 'Kode kategori barang tidak boleh kosong';
        }
        if (!satuan_barang) {
            errors.satuan_barang = 'Satuan barang tidak boleh kosong';
        }
        if (jumlah !== '' && (isNaN(jumlah) || parseInt(jumlah) < 0 || parseInt(jumlah) > 100)) {
            errors.jumlah = 'Jumlah harus berupa bilangan bulat positif antara 0 dan 100';
        }
        if (!kode_barang || kode_barang.length !== 6) {
            errors.kode_barang = 'Kode barang harus terdiri dari 6 karakter';
        }
        return errors;
    }

    render() {
        const { errors } = this.state;
        return (
            <form onSubmit={this.handleSubmit} className="max-w-md mx-auto bg-white p-6 rounded-md shadow-md">
                <div className="mb-4">
                    <label htmlFor="nama_barang" className="block text-gray-700 text-sm font-bold mb-2">Nama Barang:</label>
                    <input
                        type="text"
                        id="nama_barang"
                        name="nama_barang"
                        value={this.state.nama_barang}
                        onChange={this.handleInputChange}
                        className={`shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline ${errors.nama_barang ? 'border-red-500' : ''}`}
                    />
                    {errors.nama_barang && <p className="text-red-500 text-xs italic">{errors.nama_barang}</p>}
                </div>
                <div className="mb-4">
                    <label htmlFor="id_user_input" className="block text-gray-700 text-sm font-bold mb-2">ID User Input:</label>
                    <input
                        type="number"
                        id="id_user_input"
                        name="id_user_input"
                        value={this.state.id_user_input}
                        onChange={this.handleInputChange}
                        className={`shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline ${errors.id_user_input ? 'border-red-500' : ''}`}
                    />
                    {errors.id_user_input && <p className="text-red-500 text-xs italic">{errors.id_user_input}</p>}
                </div>
                <div className="mb-4">
                    <label htmlFor="kode_kategori_barang" className="block text-gray-700 text-sm font-bold mb-2">Kode Kategori Barang:</label>
                    <select
                        id="kode_kategori_barang"
                        name="kode_kategori_barang"
                        value={this.state.kode_kategori_barang}
                        onChange={this.handleInputChange}
                        className={`shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline ${errors.kode_kategori_barang ? 'border-red-500' : ''}`}
                    >
                        <option value="">Pilih Kode Kategori Barang</option>
                        {this.state.kategoriBarangOptions.map(kategori => (
                            <option key={kategori.id} value={kategori.kode}>{kategori.nama}</option>
                        ))}

                    </select>
                    {errors.kode_kategori_barang && <p className="text-red-500 text-xs italic">{errors.kode_kategori_barang}</p>}
                </div>
                <div className="mb-4">
                    <label htmlFor="satuan_barang" className="block text-gray-700 text-sm font-bold mb-2">Satuan Barang:</label>
                    <input
                        type="text"
                        id="satuan_barang"
                        name="satuan_barang"
                        value={this.state.satuan_barang}
                        onChange={this.handleInputChange}
                        className={`shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline ${errors.satuan_barang ? 'border-red-500' : ''}`}
                    />
                    {errors.satuan_barang && <p className="text-red-500 text-xs italic">{errors.satuan_barang}</p>}
                </div>
                <div className="mb-4">
                    <label htmlFor="jumlah" className="block text-gray-700 text-sm font-bold mb-2">Jumlah:</label>
                    <input
                        type="number"
                        id="jumlah"
                        name="jumlah"
                        value={this.state.jumlah}
                        onChange={this.handleInputChange}
                        className={`shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline ${errors.jumlah ? 'border-red-500' : ''}`}
                    />
                    {errors.jumlah && <p className="text-red-500 text-xs italic">{errors.jumlah}</p>}
                </div>
                <div className="mb-4">
                    <label htmlFor="kode_barang" className="block text-gray-700 text-sm font-bold mb-2">Kode Barang:</label>
                    <input
                        type="text"
                        id="kode_barang"
                        name="kode_barang"
                        value={this.state.kode_barang}
                        onChange={this.handleInputChange}
                        className={`shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline ${errors.kode_barang ? 'border-red-500' : ''}`}
                    />
                    {errors.kode_barang && <p className="text-red-500 text-xs italic">{errors.kode_barang}</p>}
                </div>
                <button type="submit" className="bg-blue-500 hover:bg-blue-700 font-bold py-2 px-4 border border-blue-700 rounded">Simpan</button>
            </form>
        );
    }
}

export default CreateBarangForm;
