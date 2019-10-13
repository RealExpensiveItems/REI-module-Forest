import React from 'react';
import ReactDOM from 'react-dom';

class ModuleForest extends React.Component{
  constructor(props){
    super(props);
    this.state={
      arr:[]
    };
  }
  componentDidMount(){
    var arr=[];
    var nums=[];
    for(var i=0;i<128;i++)nums[i]=i+1;
    for(var i=0;i<5;i++){
      var temp=Math.floor(Math.random()*(128-i));
      arr[i]=("00"+nums[temp]).slice(-3);
      nums[temp]=nums[128-1-i];
    }
    this.setState({arr:arr});
  }
  render(){
    return(
      <div>
        {this.state.arr.map((str)=>(<img src={"https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/"+str+".jpg"}/>))}
      </div>);
  }
}

ReactDOM.render(<ModuleForest/>,document.getElementById('module_forest'));