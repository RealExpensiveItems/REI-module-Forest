import React from 'react';
import {config} from '../../configs/client-cfg';

class SizeChart extends React.Component{
  constructor(props){
    super(props);
    this.state={
      devMode:config.devMode,
      thHeight:[],
      loaded:false
    };
  }
  componentDidMount(){
    setTimeout(() => {//this is the only way i have to reduce the possibility of bug
      var arr=this.state.thHeight;
      for(var i=1;i<this.props.data.length;i++)
        if(document.getElementById("Forest-th"+i).clientHeight!==this.state.thHeight[i])
          arr[i]=document.getElementById("Forest-th"+i).clientHeight+1;
      // console.log(arr)
      this.setState({thHeight:arr});      
    }, 200);
  }
  render(){
    return(
      <div id="Forest-sc" className="Forest-box">
        <h3 className="Forest-secondaryTitle">Size chart</h3>
        <div id="Forest-wrapper" className="Forest-box">
          <table id="Forest-scTable">

            <tr>
              {Object.keys(this.props.data[0]).slice(1).map((key,i)=>( // slice the 'id'
                i===0
                ?<th className="Forest-tblLeft Forest-topRow" height="19px"></th>
                :<th className="Forest-tblRight Forest-topRow">{this.props.data[0][key]}</th>
              ))}
            </tr>

            {this.props.data.slice(1).map((obj,i)=>(
              <tr height={this.state.thHeight[i+1]
                ?this.state.thHeight[i+1]+"px"
                :"50px"}>
                {Object.keys(obj).slice(1).map((key,j)=>(
                  j===0
                  ?<th id={"Forest-th"+(i+1)} className="Forest-tblLeft">{obj[key]}</th>
                  :<td className="Forest-tblRight">{obj[key]}</td>
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
  <div id="Forest-sizeNote">
    <h4>Sizing notes</h4>
    <p>{sNote}</p>
  </div>
  :<div className="Forest-box"/>
);