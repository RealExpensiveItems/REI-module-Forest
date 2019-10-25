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
    // if (config.devMode) console.log("\nDEV-Mode ON\n\n");

    // axios.get("localhost:3008/ab").then(
    //   data => {
    //     // console.log(data.data);
    //     this.setState({
    //       abData: data.data,
    //       abLoad: true
    //     });
    //   },
    //   err => console.error(err)
    // );
    axios({
      method:'get',
      url:`http://localhost:3008/ab`
    }).then(
      data => {
        // console.log(data.data);
        this.setState({
          abData: data.data,
          abLoad: true
        });
      },
      err => console.error(err)
    );

    var i=Math.floor(Math.random()*4);
    if(i===0)var type="jackets";
    if(i===1)var type="pants";
    if(i===2)var type="boots";
    if(i===3)var type="bikes";
    // var type="boots";

    // axios.get("localhost:3008/sc/"+type).then(
    //   data => {
    //     // console.log(data.data);
    //     if(data.data)
    //       this.setState({
    //         scData: data.data.table,
    //         scLoad: true,
    //         scNote: data.data.sizingNotes
    //       });
    //   },
    //   err => console.error(err)
    // );

    axios({
      method:'get',
      url:`http://localhost:3008/sc/`+type
    }).then(
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
      <div id = "Forest-content" >
      <link rel="stylesheet" href="https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/module_forest.css"/>
      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400&display=swap"/>
        {this.state.scLoad ? <SizeChart data={this.state.scData} sNote={this.state.scNote}/> : <div className="Forest-box"></div>}
        {this.state.abLoad ? <AlsoBought data={this.state.abData} /> : <div className="Forest-box"></div>}
      </div>
    );
  }
}

ReactDOM.render(<ModuleForest />, document.getElementById("module_forest"));
