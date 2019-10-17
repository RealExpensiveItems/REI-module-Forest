import React from 'react';
import {config} from '../../configs/client-cfg';

class AlsoBought extends React.Component{
  constructor(props){
    super(props);
    this.state={
      devMode:config.devMode
    };
  }
  render(){
    return(
      <div id="ab" className="box">
        {/* Todo: import multiple titles */}
        <h2 className="moduleTitle">People who bought this item also bought</h2>
        <div id="abList">
          {this.props.data.map((obj)=>(
            <div className="abContainer">

              <div className="abImgContainer"><img className="abImg" src={
                  //comment the 2 lines below for optimize after dev
                  this.state.devMode  //to save some use on AWS
                  ?require('../../db/rawData/pics/'+('00'+obj.id).slice(-3)+'.jpg'):
                  obj.img
              }/></div>

              <div className="abTextContainer">
                {/* <p className="abText stars">{obj.rate}</p> */}
                <Stars rating={obj.rate}/>
                <p className="abText abCount">{"("+obj.reviewer+")"}</p>
                <div className="abItemTextBox">
                  <p className="abText">{obj.seller}</p>
                  <p className="abText itemName">{obj.item}</p>
                </div>
                <p className="abText itemPrice">{obj.price}</p>
              </div>

            </div>
          ))}
        </div>
      </div>
    );
  }
}

export default AlsoBought;

const Stars=({rating})=>{
  var res=[];
  var rate=Number(rating);
  for(var i=1;i<=5;i++){
    if(i-rate<=0) res[i-1]=(<img className="abText stars" src={require('../../db/rawData/stars/4.png')}/>);
    if(i-rate===0.25) res[i-1]=(<img className="abText stars" src={require('../../db/rawData/stars/3.png')}/>);
    if(i-rate===0.5) res[i-1]=(<img className="abText stars" src={require('../../db/rawData/stars/2.png')}/>);
    if(i-rate===0.75) res[i-1]=(<img className="abText stars" src={require('../../db/rawData/stars/1.png')}/>);
    if(i-rate>=1) res[i-1]=(<img className="abText stars" src={require('../../db/rawData/stars/0.png')}/>);
  }
  return(res);
}