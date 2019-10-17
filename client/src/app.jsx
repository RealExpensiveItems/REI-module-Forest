import React from "react";
import ReactDOM from "react-dom";
import axios from "axios";

import { config } from "../../configs/client-cfg";

import AlsoBought from "./AlsoBought";
import SizeChart from "./SizeChart";

class ModuleForest extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      abData: [],
      abLoad: false,
      scData: [],
      scLoad: false
      // devMode:config.devMode
    };
  }
  componentDidMount() {
    if (config.devMode) console.log("\nDEV-Mode ON\n\n");

    axios.get("/ab").then(
      data => {
        // console.log(data.data);
        var load=this.state.abLoad+1;
        this.setState({
          abData: data.data,
          abLoad: load
        });
      },
      err => console.error(err)
    );

    //sizeTableName:["jackets","pants","bikes","boots"]
    var type="bikes";// get type from Ryan's API, use callback maybe?
    axios.get("/sc/"+type).then(
      data => {
        // console.log(data.data);
        var load=this.state.scLoad+1;
        this.setState({
          scData: data.data,
          scLoad: load
        });
      },
      err => console.error(err)
    );
  }
  render() {
    return (
      //Todo: template for different window size
      <div id = "content" >
        {this.state.scLoad ? <SizeChart data={this.state.scData} /> : <div></div>}
        {this.state.abLoad ? <AlsoBought data={this.state.abData} /> : <div></div>}
      </div>
    );
  }
}

ReactDOM.render(<ModuleForest />, document.getElementById("module_forest"));
