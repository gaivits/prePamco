const {Pool,client} = require('pg')
var express=require("express")
var app = express()
var bodyParsers=require('body-parser')
app.use(express.json())
app.use(bodyParsers.urlencoded({extended:false}))
//Connect
var pool = new Pool({
    user: "postgres",
    host: "localhost",
    database: "PANEET_DB",
    password: "123456",
    port: 5432,
  })
  //EndConnect
  
  //test-Query
  const getPamcontact = (req,res) =>{
      pool.query('Select * from pamcontact;',(err,results)=>{
          if(err)
          {
              throw err
          }
          else
          {
              res.json(results.rows)
          }
      })
  }
  
  const createPamcontact = (req,res) =>{
    var {title,firstname,lastname,email,tel,description}=req.body
       pool.query("insert into pamcontact (title,firstname,lastname,email,tel,description) values ($1,$2,$3,$4,$5,$6);",[title,firstname,lastname,email,tel,description],(err,results)=>{
            if(err)
            {
                 throw err
            }
            else
            {
                 res.send(201)
            }
            
       })
    }
  
  const delPamcontact = (req,res) => {
    var id = Number(req.params.id)
    pool.query("DELETE FROM pamcontact WHERE contact_id=$1",[id],(err,results)=>{
         if(err)
         {
              throw err
         }
         else
         {
              res.send(200)
         }
         
    })
  }
  
  const updatePamcontact = (res,req) =>{
    var id = Number(req.params.id)
    var {title,firstname,lastname,email,tel,description}=req.body
    pool.query("Update pamcontact set title=$1, firstname=$2, lastname=$3, email=$4, tel=$5, description=$6 WHERE contact_id=$7; ",[title,firstname,lastname,email,tel,description,id],(err,results)=>{
         if(err)
         {
              throw err
         }
         else
         {
              res.send(202)
         }
         
    })
  }

  module.exports={
      getPamcontact,createPamcontact,delPamcontact,updatePamcontact
  }
  
  //end-TestQuery