const express = require('express')
const app = express()
const bodyParser = require('body-parser')
const path = require('path')
const route = require('./routes/router')
const server = require('http').createServer(app)


require('dotenv').config()

app.use(bodyParser.urlencoded({extended:true}))

.use(bodyParser.json())

.use(express.static(path.join(__dirname+'/public')))

.use('/ecommerce/API',route)

const port = process.env.PORT || 3000

server.listen(port,()=> {console.log('Started at '+port);});