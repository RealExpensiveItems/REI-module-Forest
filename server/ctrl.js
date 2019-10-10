const db=require('../db');
const tbl=require('../configs').dbInfo.tblName;

module.exports=(req,res)=>{
  var id= req.params.id;
  res.status(200).send("id: "+id);
};