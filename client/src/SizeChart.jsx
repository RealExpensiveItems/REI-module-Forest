import React from 'react';
import {config} from '../../configs/client-cfg';

class SizeChart extends React.Component{
  constructor(props){
    super(props);
    this.state={
      devMode:config.devMode,
      thHeight:[]
    };
  }
  componentDidMount(){
    var arr=this.state.thHeight;
    for(var i=1;i<this.props.data.length;i++)
      if(document.getElementById("th"+i).clientHeight!==this.state.thHeight[i])
        arr[i]=document.getElementById("th"+i).clientHeight+1;
    // console.log(arr)
    this.setState({thHeight:arr});
  }
  render(){
    return(
      <div id="sc" className="box">
        <h3 className="secondaryTitle">Size chart</h3>
        <div id="wrapper" className="box">
          <table id="scTable">

            <tr>
              {Object.keys(this.props.data[0]).slice(1).map((key,i)=>( // slice the 'id'
                i===0
                ?<th className="topRow tblLeft" height="19px"></th>
                :<th className="topRow tblRight">{this.props.data[0][key]}</th>
              ))}
            </tr>

            {this.props.data.slice(1).map((obj,i)=>(
              <tr height={this.state.thHeight[i+1]
                ?this.state.thHeight[i+1]+"px"
                :"50px"}>
                {Object.keys(obj).slice(1).map((key,j)=>(
                  j===0
                  ?<th className="tblLeft" id={"th"+(i+1)}>{obj[key]}</th>
                  :<td className="tblRight">{obj[key]}</td>
                ))}
              </tr>
            ))}

          </table>
        </div>
        <SizingNotes sNote={this.props.sNote}/>
      </div>
    );
  }
}
export default SizeChart;

const SizingNotes=({sNote})=>(
  sNote?
  <div id="sizeNote">
    <h4>Sizing notes</h4>
    <p>{sNote}</p>
  </div>
  :<div className="box"></div>
);