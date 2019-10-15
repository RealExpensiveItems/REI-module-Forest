import React from 'react';
import {config} from '../../configs/client-cfg';

class AlsoBought extends React.Component{
  constructor(props){
    super(props);
    this.state={
      // loaded:false,
      devMode:config.devMode
    };
  }
  render(){
    return(
      <div>
        {/* Todo: import multiple titles */}
        <h2 className="moduleTitle">People who bought this item also bought</h2>
        {this.props.data.map((obj)=>(
          <div className="abContainer">

            <div className="abImgContainer"><img className="abImg" src={
                //comment the 2 lines below for optimize after dev
                this.state.devMode  //to save some use on AWS
                ?require('../../db/rawData/pics/'+('00'+obj.id).slice(-3)+'.jpg'):
                obj.img
            }/></div>

            <div className="abTextContainer">
              <p className="abText stars">{obj.rate}</p>
              <p className="abText">{"("+obj.reviewer+")"}</p>
              <div className="abItemTextBox">
                <p className="abText">{obj.seller}</p>
                <p className="abText itemName">{obj.item}</p>
              </div>
              <p className="abText itemPrice">{obj.price}</p>
            </div>

          </div>
        ))}
      </div>
    );
  }
}

export default AlsoBought;