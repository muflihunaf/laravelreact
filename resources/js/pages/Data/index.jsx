import { Component } from "react";
import axios from "axios"; // Don't forget to import axios!
class DataIndex extends Component {
  constructor(props) {
    super(props);
    this.state = {
      profesion: [],
    };
  }
  fetchCompanies() {
    axios
      .get('/api/user/profesi')
      .then((response) => this.setState({ profesion: response.data.data }));
  }
  componentDidMount() {
    this.fetchCompanies();
  }
  renderCompanies() {
    let count = 1;
    return this.state.profesion.map((prof) => (
      <tr key={prof.id}>
      <td className="px-6 py-4 text-sm leading-5 text-gray-900 whitespace-no-wrap">
          {count++}
        </td>
        <td className="px-6 py-4 text-sm leading-5 text-gray-900 whitespace-no-wrap">
          {prof.profesi.nama_profesi}
        </td>
        <td className="px-6 py-4 text-sm leading-5 text-gray-900 whitespace-no-wrap">
          {prof.total}
        </td>
      </tr>
    ));
  }
  render() {
    return (
        <div className="overflow-hidden overflow-x-auto p-6 bg-white border-gray-200 max-h-screen">
        <div className="min-w-full align-middle">
          <table className="min-w-full  divide-gray-200 border">
            <thead>
              <tr>
                <th className="px-6 py-3 bg-gray-50 whitespace-nowrap w-1/3">
                  <span className="text-xs font-medium tracking-wider leading-4 text-left text-gray-500 uppercase">No</span>
                </th>
                <th className="px-6 py-3 bg-gray-50 whitespace-nowrap">
                  <span className="text-xs font-medium tracking-wider leading-4 text-left text-gray-500 uppercase">Profesi</span>
                </th>
                <th className="px-6 py-3 bg-gray-50 whitespace-nowrap">
                  <span className="text-xs font-medium tracking-wider leading-4 text-left text-gray-500 uppercase">Jumlah</span>
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
export default DataIndex;
