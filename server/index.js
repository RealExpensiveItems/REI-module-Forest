const express=require('express');
const bParser=require('body-parser');
const path=require('path');
const port=require('../configs.js').localPort;
const ctrl=require('./ctrl');

const app=express();
app.use(bParser.json());
app.use(bParser.urlencoded({extended:true}));
app.use('/',express.static(path.join(__dirname,'../client/dist')));
app.listen(port,()=>{console.log('module Forest server online:'+port)});

app.get('/server/test',(req,res)=>{
  console.log("visited");
  res.status(200).send(":"+port+" is watching you");
});

app.get('/ymal/:id',ctrl);//for 'you may also like'