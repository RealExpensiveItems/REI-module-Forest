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
      scLoad: false,
      scNote: ""
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
          abLoad: true
        });
      },
      err => console.error(err)
    );

    var type="bikes";// get type from Ryan's API, use callback maybe?

    axios.get("/sc/"+type).then(
      data => {
        // console.log(data.data);
        if(data.data)
          this.setState({
            scData: data.data.table,
            scLoad: true,
            scNote: data.data.sizingNotes
          });
      },
      err => console.error(err)
    );
  }
  render() {
    return (
      //Todo: template for different window size
      <div id = "content" >
        {this.state.scLoad ? <SizeChart data={this.state.scData} sNote={this.state.scNote}/> : <div className="box"></div>}
        {this.state.abLoad ? <AlsoBought data={this.state.abData} /> : <div className="box"></div>}
      </div>
    );
  }
}

ReactDOM.render(<ModuleForest />, document.getElementById("module_forest"));
