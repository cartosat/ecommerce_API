const mysql = require('mysql')
require('dotenv').config()

const con = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB
})


const call = (query)=>{
    return new Promise((resolve,reject)=>{
        //,data.param
        con.query(query,(err,result)=>{
            if(err)
                return reject(err)

            else
                return resolve(result)
            
        })
    })
}

const ballocks = (data)=>{
    return new Promise((resolve,reject)=>{
        //,data.param
        con.query(data.sql,data.input,(err,result)=>{
            if(err)
                return reject(err)

            else
                return resolve(result)
            
        })
    })
}

module.exports = {call,ballocks}
