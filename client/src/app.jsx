import React from 'react';
import ReactDOM from 'react-dom';
import axios from 'axios';
import {config} from '../../configs/client-cfg';

class ModuleForest extends React.Component{
  constructor(props){
    super(props);
    this.state={
      abData:[],
      loaded:false,
      devMode:config.devMode
    };
  }
  componentDidMount(){
    if(config.devMode)console.log("DEV-Mode on, image imported from test file");
    axios.get("/ab")
    .then((data)=>{
      // console.log(data.data);
      this.setState({
        abData:data.data,
        loaded:true
      });
    },(err)=>{console.error(err)});
  }
  render(){
    return(//Todo: template for different window size
      this.state.loaded?(
      <div>
        {/* Todo: import multiple titles */}
        <h2>People who bought this item also bought</h2>
        {this.state.abData.map((obj)=>(
          <div className="abContainer">
            <img className="abImg"
              src={this.state.devMode
                ?require('../../db/rawData/pics/'+('00'+obj.id).slice(-3)+'.jpg')
                :obj.img
            }/>
            <h5>{obj.rate+"("+obj.reviewer+")"}</h5>
            <p>{obj.seller}</p>
            <p>{obj.item}</p>
            <p>{obj.price}</p>
          </div>
        ))}
      </div>
      ):<div></div>
    );
  }
}

ReactDOM.render(<ModuleForest/>,document.getElementById('module_forest'));