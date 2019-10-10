import React from 'react';
import ReactDOM from 'react-dom';

class ModuleForest extends React.Component{
  constructor(props){
    super(props);
    this.state={};
  }
  render(){
    return(
      <div>
        <div id="you_may_also_like">
          you may also like<br/>
          {/* <YmalList/> */}(((YmalList)))<br/>
          <br/>
        </div>
        <button>Shop more similar items</button><br/><br/>
        <div id="explore_more_options">
          Explore more options<br/>
          <br/>
          {/* <Keywords/> */}(((Keywords)))<br/>
          <br/>
          Listed on (date)<br/>
          (favourite counts)<br/>
          report this item<br/>
          <br/>
        </div>
        <br/>
        <div>curve1</div>
        <br/>
        <div>
          Get fresh Etsy trends and unique gift ideas delivered right to your box.<br/>
          <form>
            enter your email<input></input>
            <button>Subscribe</button><br/>
          </form>
        </div>
        <br/>
        <div>curve2</div>
        <br/>
        <div id="about">
          <div>Shop</div>
          <div>Sell</div>
          <div>About</div>
          <div>Help</div>

          <div id="links">Download the Etsy App</div>
        </div><br/><br/>
        <div id="footer">
          {/* <Options/> */}(((Options)))
          <div>terms</div>
        </div>
      </div>);
  }
}

ReactDOM.render(<ModuleForest/>,document.getElementById('module_forest'));