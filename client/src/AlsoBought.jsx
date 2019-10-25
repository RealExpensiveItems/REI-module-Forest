import React from 'react';
import {config} from '../../configs/client-cfg';

class AlsoBought extends React.Component{
  constructor(props){
    super(props);
    this.state={
      devMode:config.devMode
    };
  }
  toggleScrollbar(){
    if(Number(document.getElementById("Forest-abList").clientWidth)<1060)
      document.getElementById("Forest-abList").style.overflowX="auto";
    else
      document.getElementById("Forest-abList").style.overflowX="hidden";
  }
  componentDidMount(){
    window.addEventListener("resize",this.toggleScrollbar.bind(this));
  }
  render(){
    return(
      <div id="Forest-ab" className="Forest-box">
        {/* Todo: import multiple titles */}
        <h2 className="Forest-moduleTitle">People who bought this item also bought</h2>
        <div id="Forest-abList">
          {this.props.data.map((obj)=>(
            <div className="Forest-abContainer">

              <div className="Forest-abImgContainer"><img className="Forest-abImg" src={
                  //comment the 2 lines below for optimize after dev
                  this.state.devMode  //to save some use on AWS
                  ?require('../../db/rawData/pics/'+('00'+obj.id).slice(-3)+'.jpg'):
                  obj.img
              }/></div>

              <div className="Forest-abTextContainer">
                
                {/* <p className="Forest-abText Forest-stars">{obj.rate}</p> */}
                <Stars rating={obj.rate}/>

                <p className="Forest-abText Forest-abCount">{"("+obj.reviewer+")"}</p>
                <div className="Forest-abItemTextBox">
                  <p className="Forest-abText">{obj.seller}</p>
                  <p className="Forest-abText Forest-itemName">{obj.item}</p>
                </div>
                <p className="Forest-abText Forest-itemPrice">{obj.price}</p>
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
    if(i-rate<=0) res[i-1]=(<img className="Forest-abText Forest-stars" src={require('../../db/rawData/stars/4.png')}/>);
    if(i-rate===0.25) res[i-1]=(<img className="Forest-abText Forest-stars" src={require('../../db/rawData/stars/3.png')}/>);
    if(i-rate===0.5) res[i-1]=(<img className="Forest-abText Forest-stars" src={require('../../db/rawData/stars/2.png')}/>);
    if(i-rate===0.75) res[i-1]=(<img className="Forest-abText Forest-stars" src={require('../../db/rawData/stars/1.png')}/>);
    if(i-rate>=1) res[i-1]=(<img className="Forest-abText Forest-stars" src={require('../../db/rawData/stars/0.png')}/>);
  }
  return(res);
}