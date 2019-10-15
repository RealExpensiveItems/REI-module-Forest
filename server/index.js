const express = require("express");
const bParser = require("body-parser");
const path = require("path");
const port = require("../configs/server-cfg").localPort;
const ctrl = require("./ctrl");

const app = express();
app.use(bParser.json());
app.use(bParser.urlencoded({ extended: true }));
app.use("/", express.static(path.join(__dirname, "../client/dist")));
app.listen(port, () => {
  console.log("module Forest server online:" + port);
});

// app.get("/server/test", (req, res) => {
//   console.log("visited");
//   res.status(200).send(":" + port + " is watching you");
// });

app.get("/ab", ctrl);

/////////// data generator page ////////////

// const fs=require('fs');

// app.post('/rng',(req,res)=>{
//   var query=`INSERT INTO explore_more ( keyword ) VALUE ( "${req.body.keyword}" );\n`;
//   fs.readFile(path.join(__dirname,'../db/seedhelper.txt'),'utf-8',(err,data)=>{
//     var arr=data.split('\n');
//     var page =`
//     <div id="module_forest">
//       <div id="rng">
//         <br/>Sql Data Generator<br/>
//         <form method="POST" action="/rng">
//           for "explore more options": <input name="keyword" style="height:50px;" size="50"/>
//           <button>submit</button>
//         </form>
//       </div>
//     </div>`;
//     for(var i of arr)
//       if(i.slice(46,i.length-4)===req.body.keyword)
//         return res.status(200).send("<div>keyword already exist!</div><br/>"+page);
//     fs.appendFile(path.join(__dirname,'../db/seedhelper.txt'),query,(err)=>{
//       if(err)res.status(400).send(err);
//       else res.status(200).send(`<br/>${arr.length} items in the list now!<br/>`+page);
//     });
//   });
// })
