
    /////////////////////////////////////////////////////////
    ///                                                   ///
    ///   CAUTION: copy this snippet to console to use    ///
    ///                                                   ///
    /////////////////////////////////////////////////////////

var getCN=(node,[...arg])=>{
  var res=node;
  for(var i of arg)res=res.childNodes[i];
  return res;
};
var showAllOtherItem=()=>{
  for(var j=0;j<10;j++){
    var node=document.querySelector(`#product-recommendations-2 > aside > div > ul > li:nth-child(${j+1}) > div > div`);
    var img="https://www.rei.com"+getCN(node,[0,0,0,0]).getAttribute("src");
    var str=getCN(node,[1,0,6,0]).nodeValue;
    var seller=getCN(node,[2,0,0,0]).nodeValue;
    var itemName=getCN(node,[2,0,1,0]).nodeValue;
    var price=getCN(node,[3,0,0,0]).nodeValue;

    var i=6;while(str[i]!==' ')i++;
    var rating=str.slice(6,i);
    var i=str.length-9;while(str[i]!==' ')i--;
    var reviewer=str.slice(i+1,str.length-8);
    if(img.length>20)
    console.log("{img:`"+img+"`,rate:`"+rating+"`,reviewer:`"+reviewer+"`,seller:`"+seller+"`,item:`"+itemName+"`,price:`"+price+"`},");
  }
}
showAllOtherItem();




var getNumber=(str)=>{
  for(var i=0;i<str.length;i++)
    if(str[i]===" ")
      return str.slice(0,i);
};
var wipeSpace=(str)=>{
  for(var i=0;i<str.length;i++)
    if(str[i]!==" " && str[i]!=="\n"){var a=i;break;}
  for(var i=str.length-1;i>=0;i--)
    if(str[i]!==" " && str[i]!=="\n"){var b=i;break;}
  return str.slice(a,b+1);//might have bug
};
var showAllReviews=()=>{
  var list = document.querySelector("#BVRRContainer > div > div > div > div > ol")
  var i=1;
  while(list.childNodes[i*2-1]){
    node=list.childNodes[i*2-1];
    helpful=getNumber(getCN(node,[3,3,1,1,3,1]).getAttribute("aria-label"));
    unhelpful=getNumber(getCN(node,[3,3,1,1,3,3]).getAttribute("aria-label"));
    title=wipeSpace(getCN(node,[3,1,1,1,1,3,1,0]).nodeValue);
    stars=getCN(node,[3,1,1,1,1,1,1,1]).getAttribute("content");
    author=wipeSpace(getCN(node,[3,1,1,1,1,1,3,1,1,1,0]).nodeValue);
    time=getCN(node,[3,1,1,1,1,1,3,1,1,3,3]).getAttribute("content");
    comment=getCN(node,[3,1,1,3,1,1,1,1,0]).nodeValue;
    console.log("{title:`"+title+"`,author:`"+author+"`,stars:`"+stars+"`,time:`"+time+"`,helpful:`"+helpful+"`,unhelpful:`"+unhelpful+"`,comment:`"+comment+"`},");

    i++;
  }
}
showAllReviews();