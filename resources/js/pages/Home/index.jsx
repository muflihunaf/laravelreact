import { Component } from "react";
import axios from "axios"; // Don't forget to import axios!
class HomeIndex extends Component {
  constructor(props) {
    super(props);
    this.state = {
      user: [],
    };
  }
  fetchCompanies() {
    axios
      .get('/api/user')
      .then((response) => this.setState({ user: response.data.data }));
  }
  componentDidMount() {
    this.fetchCompanies();
  }
  renderCompanies() {
    return this.state.user.map((user) => (
      <tr key={user.id}>
      <td className="px-6 py-4 text-sm leading-5 text-gray-900 whitespace-no-wrap">
          {user.id}
        </td>
        <td className="px-6 py-4 text-sm leading-5 text-gray-900 whitespace-no-wrap">
          {user.nama}
        </td>
        <td className="px-6 py-4 text-sm leading-5 text-gray-900 whitespace-no-wrap">
          {user.email}
        </td>
        <td className="px-6 py-4 text-sm leading-5 text-gray-900 whitespace-no-wrap">
          {user.nama_jalan}
        </td>
        <td className="px-6 py-4 text-sm leading-5 text-gray-900 whitespace-no-wrap">
          {user.jenis_kelamin.jenis_kelamin}
        </td>
        <td className="px-6 py-4 text-sm leading-5 text-gray-900 whitespace-no-wrap">
          {user.profesi.nama_profesi}
        </td>
      </tr>
    ));
  }
  render() {
    return (
        <div className="overflow-hidden overflow-x-auto p-6 bg-white border-gray-200">
        <div className="min-w-full align-middle">
          <table className="min-w-full divide-y divide-gray-200 border">
            <thead>
              <tr>
                <th className="px-6 py-3 bg-gray-50 whitespace-nowrap">
                  <span className="text-xs font-medium tracking-wider leading-4 text-left text-gray-500 uppercase">No</span>
                </th>
                <th className="px-6 py-3 bg-gray-50 whitespace-nowrap">
                  <span className="text-xs font-medium tracking-wider leading-4 text-left text-gray-500 uppercase">Nama</span>
                </th>
                <th className="px-6 py-3 bg-gray-50 whitespace-nowrap">
                  <span className="text-xs font-medium tracking-wider leading-4 text-left text-gray-500 uppercase">Jenis Kelamin</span>
                </th>
                <th className="px-6 py-3 bg-gray-50 whitespace-nowrap">
                  <span className="text-xs font-medium tracking-wider leading-4 text-left text-gray-500 uppercase">Jalan</span>
                </th>
                <th className="px-6 py-3 bg-gray-50 whitespace-nowrap">
                  <span className="text-xs font-medium tracking-wider leading-4 text-left text-gray-500 uppercase">Email</span>
                </th>
                <th className="px-6 py-3 bg-gray-50 whitespace-nowrap">
                  <span className="text-xs font-medium tracking-wider leading-4 text-left text-gray-500 uppercase">Profesi</span>
                </th>
              </tr>
            </thead>
            <tbody className="table-body">
              {this.renderCompanies()}
            </tbody>
          </table>
        </div>
      </div>

    );
  }
}
export default HomeIndex;
