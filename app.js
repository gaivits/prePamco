var express=require("express")
var app = express()
var port = 8889
var bodyParsers=require('body-parser')
var querys = require('./queries.js')
app.use(express.json())
app.use(bodyParsers.urlencoded({extended:false}))


app.get('/getPamcontact',querys.getPamcontact )
app.post('/createPamcontact',querys.createPamcontact )
app.get('/delPamcontact:id',querys.delPamcontact)
app.put('/updatePamcontact:id',querys.updatePamcontact)



app.listen(port,()=>{
    console.log("Server listening at port",port)
})
