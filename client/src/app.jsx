import React from "react";
import ReactDOM from "react-dom";
import axios from "axios";
import { config } from "../../configs/client-cfg";
import AlsoBought from "./AlsoBought";

class ModuleForest extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      abData: [],
      loaded: false
      // devMode:config.devMode
    };
  }
  componentDidMount() {
    if (config.devMode) console.log("\nDEV-Mode ON\n\n");

    axios.get("/ab").then(
      data => {
        // console.log(data.data);
        this.setState({
          abData: data.data,
          loaded: true
        });
      },
      err => console.error(err)
    );
  }
  render() {
    return (
      //Todo: template for different window size
      this.state.loaded ? <AlsoBought data={this.state.abData} /> : <div></div>
    );
  }
}

ReactDOM.render(<ModuleForest />, document.getElementById("module_forest"));
