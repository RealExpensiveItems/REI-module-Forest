
    ////////////////////////////////////////////////////////
    ///  CAUTION: copy this snippet to console to use    ///
    ///           make sure no query in your url         ///
    ///           not working for FREE shipping tag on   ///
    ///               line 2                             ///
    ///           not working for only XXX left          ///
    ////////////////////////////////////////////////////////

var getCN=(node,[...arg])=>{
  var res=node;
  for(var i of arg)res=res.childNodes[i];
  return res;
};
var wipeSpace=(str)=>{
  for(var i=0;i<str.length;i++)
    if(str[i]!==" " && str[i]!=="\n"){var a=i;break;}
  for(var i=str.length-1;i>=0;i--)
    if(str[i]!==" " && str[i]!=="\n"){var b=i;break;}
  return str.slice(a,b+1);//might have bug
};

var YmalList=getCN(document.getElementById("content"),[1,3,3,1,1,1,3]);
var getYmalTarget=(n)=>(YmalList.childNodes[n]);
var getImgUrl=(node)=>(getCN(node,[1,1,1,1,1,1,1,1]).getAttribute("src"));
var getItemName=(node)=>(wipeSpace(getCN(node,[1,3,1,1,0]).nodeValue));
var getSellerName=(node)=>(getCN(node,[1,3,1,4,1,0]).nodeValue);
var getRealPrice=(node)=>{
  if(typeof(getCN(node,[1,3,1,6,2]).nodeValue)!=="string")
    return [getCN(node,[1,3,1,6,2,0]).nodeValue,"1"];
  else return [getCN(node,[1,3,1,6,3,3,2,0]).nodeValue,wipeSpace(getCN(node,[1,3,1,6,3,4]).nodeValue).slice(1,4)];
};
var getFS=(node)=>{
  if(typeof(getCN(node,[1,3,1]).childNodes[12])==='object'){//10,110
    if(getCN(node,[1,3,1,12]).getAttribute("class").slice(0,4)==="text")return "Free shipping eligible";
    if(getCN(node,[1,3,1,12]).getAttribute("class").slice(0,4)==="prom")return "FREE shipping";
  }
  if(typeof(getCN(node,[1,3,1,6,4]))==='object'){
    if(getCN(node,[1,3,1,6,4]).getAttribute("class").slice(0,4)==="text")return "Free shipping eligible";
    if(getCN(node,[1,3,1,6,4]).getAttribute("class").slice(0,4)==="prom")return "FREE shipping";
  }
  return "no";
};

var showAll=()=>{
  for(var i=0;i<5;i++){
    var target=getYmalTarget(i);
    var img=getImgUrl(target);var item=getItemName(target);var seller=getSellerName(target);
    var [price,discount]=getRealPrice(target);
    var freeShip=getFS(target);
    console.log("img:`"+img+"`,\n"+"item:`"+item+"`,\n"+"seller:`"+seller+"`,\n"+"price:`"+price+"`,\n"+"discount:`"+discount+"`,\n"+"freeShip:`"+freeShip+"`,\n");
  }
}
showAll();





/*

targets=
document.getElementById("content").childNodes[1].childNodes[3].childNodes[3].childNodes[1].childNodes[1].childNodes[1].childNodes[3]
childNodes[0]-[4]

imgurl=
target.childNodes[1].childNodes[1].childNodes[1].childNodes[1].childNodes[1].childNodes[1].childNodes[1].childNodes[1].getAttribute("src")

title=
target.childNodes[1].childNodes[3].childNodes[1].childNodes[1].childNodes[0].nodeValue

shop=
target.childNodes[1].childNodes[3].childNodes[1].childNodes[4].childNodes[1].childNodes[0].nodeValue

price=
target.childNodes[1].childNodes[3].childNodes[1].childNodes[6].childNodes[2].childNodes[0].nodeValue

free shipping:
existing:
target.childNodes[1].childNodes[3].childNodes[1].childNodes[6].childNodes[4]
freeshipping string:
target.childNodes[1].childNodes[3].childNodes[1].childNodes[6].childNodes[4].childNodes[1].childNodes[0].nodeValue

discount:
existing:
target.childNodes[1].childNodes[3].childNodes[1].childNodes[6].childNodes[3]
off amount:
target.childNodes[1].childNodes[3].childNodes[1].childNodes[6].childNodes[3].childNodes[4].nodeValue
original:
target.childNodes[1].childNodes[3].childNodes[1].childNodes[6].childNodes[3].childNodes[3].childNodes[2].childNodes[0].nodeValue



list=
document.getElementById("content").childNodes[1].childNodes[3].childNodes[5].childNodes[1].childNodes[3].childNodes[1]
tag=
list.childNodes[1].childNodes[1].childNodes[0].nodeValue

*/

