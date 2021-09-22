const express = require('express');
const router = express.Router();
const jwt = require('jsonwebtoken')
const {call,ballocks} = require('../db/dbcon')
require('dotenv').config()

function getEnPass(s){
	return require('crypto').createHash('md5').update(s).digest('hex').toString()
}


router.get('/auth_login',(req,res)=>{

	if(req.body.email==null || req.body.pass==null){
		return res.status(401).json({"err": " Send appropriate format "})
		
	}

	var sql =`select id,password,role from tbl_user where email='${req.body.email}'`
	
	call(sql)

	.then(resu=>{
		// send status with custom description
		if(resu[0].password!==getEnPass(req.body.pass))
			return res.status(401).json({"err": "Incorrect Password"})

		//delete resu[0].password
		//{expiresIn:'10m'}
		jwt.sign({email:req.body.email},process.env.TOKEN,(err,token)=>{
			if(err) res.status(401).json(err)
			else res.send({resu,token})
		})
	})

	.catch(err=> {res.status(404).json(err)})
})

router.post('/auth_verify',authentication,(req,res)=>{

	jwt.verify(req.token,process.env.TOKEN,(err,data)=>{
			if(err) res.status(403).json(err) 
			else res.send(data)
		})
})

function authentication(req,res,next){
	const header = req.headers['authorization']
	
	const token = header && header.split(' ')[1]

	if(token==null) return res.status(403).json({err:"Un-authorized : Unable to get token"})
	
	req.token = token
	next();

}

router.get('/fetch_users',authentication,(req,res)=>{
	//where email=? and password=?
	jwt.verify(req.token,process.env.TOKEN,(err,data)=>{
			if(err) return res.status(403).json(err) 
			//else res.send(data)
		})

	var sql='select * from tbl_user'
	//var data = {sql}
	
	call(sql)

	.then((data)=>{
		res.send(data)
	})

	.catch(err=> {res.status(403).json(err)})
})

router.get('/fetch_users/:id',(req,res)=>{
	//where email=? and password=?
	var id = req.params.id
	var sql= `select full_name name,email from tbl_user where id=${id}`
	//var data = {sql}
	
	call(sql)

	.then((data)=>{
		if(!data.length) return res.status(404).json({err:"Not Found"})
		res.send(data)
	})

	.catch(err=> {res.status(404).json(err);console.log(err)})
})



router.post('/create_user',authentication,(req,res)=>{
	
	jwt.verify(req.token,process.env.TOKEN,(err,data)=>{
			if(err) return res.status(403).json(err) 
			//else res.send(data)
		})

	if(!req.body.email) return res.status(403).json({err:"Data not sent"})

	var data = {
		sql: 'insert into tbl_user set ?',
		input:{
			status: "Active"
		}
	}
	if(req.body.password) data.input['password'] = getEnPass(req.body.password)
	if(req.body.email) data.input['email']= req.body.email
	if(req.body.phone) data.input['phone']= req.body.phone
	if(req.body.name) data.input['full_name']= req.body.name
	if(req.body.role) data.input['role']= req.body.role
	
	ballocks(data)

	.then((data)=>{
		if(data.affectedRows==1)
			res.send({result: " Successfully created user"})
		else
			res.status(403).json({result:"Something went wrong"})
	})

	.catch(err=> {res.status(404).json(err);console.log(err)})
})


router.put('/update_user',authentication,(req,res)=>{
	//where email=? and password=?
	jwt.verify(req.token,process.env.TOKEN,(err,data)=>{
			if(err) return res.status(403).json(err) 
			//else res.send(data)
		})
	
	if(!req.body.id) return res.status(403).json({err:"Data not sent"})

	var sql= `update tbl_user set ? where id=${req.body.id}`
	
	var data = {
		sql,
		input: {}
	}

	if(req.body.password) data.input['password'] = getEnPass(req.body.password)
	if(req.body.email) data.input['email']= req.body.email
	if(req.body.phone) data.input['phone']= req.body.phone
	if(req.body.name) data.input['full_name']= req.body.name

	ballocks(data)

	.then((data)=>{
		if(data.affectedRows>0)
			res.send({result: " Successfully Updated user details"})
		else
			res.status(403).json({result:"Something went wrong"})
		
	})

	.catch(err=> {res.status(404).json(err);console.log(err)})
})

router.delete('/delete_user/:id',authentication,(req,res)=>{
	//where email=? and password=?
	jwt.verify(req.token,process.env.TOKEN,(err,data)=>{
			if(err) return res.status(403).json(err) 
			//else res.send(data)
		})

	if(!req.params.id) return res.status(403).json({err:"Data not sent"})

	var sql= `delete from tbl_user where id=${req.params.id}`
	//var data = {sql}
	
	call(sql)

	.then((data)=>{
		if(data.affectedRows==0)
			res.send({err: "User not found"})
		else
			res.send({result:"Success"})
	})

	.catch(err=> {res.status(404).json(err)})
})


router.post('/insert_shipping_cost',authentication,(req,res)=>{
	
	jwt.verify(req.token,process.env.TOKEN,(err,data)=>{
			if(err) return res.status(403).json(err) 
			//else res.send(data)
		})

	if(!req.body.country || !req.body.shipping_cost) return res.status(403).json({err:"Data not sent"})

	var sql=`select * from tbl_country where country_name='${req.body.country}'`
	
	call(sql)

	.then((data)=>{
		if(!data.length) return res.status(403).json({err:"Invalid Country Name"})
		//return res.send(data)
		var country_id = data[0].country_id

		sql=`select * from tbl_shipping_cost where country_id=${country_id}`
		
		call(sql)
		.then(resu=>{
			if(resu.length){
				sql=`update tbl_shipping_cost set amount=${req.body.shipping_cost} where country_id=${country_id}`
				call(sql)
				.then(go=>{if(go.affectedRows>0) return res.send({country:req.body.country,result:"Successfully Updated"})})
				return
			}

			sql=`insert into tbl_shipping_cost set ?`
			var data = {
				sql,
				input: {
					country_id: country_id,
					amount: req.body.shipping_cost
				}
			}
			ballocks(data).then(resul=>res.send({country:req.body.country,result:"Success"}))
		 })
	})

	.catch(err=> {res.status(404).json(err)})
})

router.get('/get_shipping_cost',(req,res)=>{

	var sql='select * from tbl_shipping_cost'
	
	if(req.body.country) sql=`SELECT * FROM tbl_shipping_cost c inner join tbl_country s on c.country_id=s.country_id where s.country_name='${req.body.country}'`
	call(sql)

	.then((data)=>{
		if(!data.length) return res.send({result:"Invalid Name"})

		res.send(data)
	})

	.catch(err=> {res.status(404).json(err)})
})

router.get('/fetch_products',(req,res)=>{

	var sql='select * from tbl_product'

	call(sql)

	.then((data)=>{
		res.send(data)
	})

	.catch(err=> {res.status(404).json(err)})
})

router.get('/fetch_product/:id',(req,res)=>{

	var sql;
	
	if(req.params.id && req.params.id!='*') sql=`select * from tbl_product where p_id=${req.params.id}`

	call(sql)

	.then((data)=>{
		if(!data.length) return res.status(404).json({err:"Not Found"})
		res.send(data)
	})

	.catch(err=> {res.status(404).json(err)})
})

router.get('/fetch_category/:id',(req,res)=>{

	var sql='select * from tbl_mid_category'
	
	if(req.params.id && req.params.id!='*') sql=`select mcat_id category_id,mcat_name category_name from tbl_mid_category where mcat_id=${req.params.id}`
	call(sql)

	.then((data)=>{
		res.send(data)
	})

	.catch(err=> {res.status(404).json(err)})
})

router.get('/fetch_categories',(req,res)=>{

	var sql='select * from tbl_mid_category'
	
	call(sql)

	.then((data)=>{
		if(!data.length) return res.status(404).json({err:"Not Found"})
		res.send(data)
	})

	.catch(err=> {res.status(404).json(err)})
})

router.get('/fetch_customer/:id',(req,res)=>{

	var sql='select * from tbl_customer'
	
	if(req.params.id && req.params.id!='*') sql=`select * from tbl_customer where cust_id=${req.params.id}`
	call(sql)

	.then((data)=>{
		if(!data.length) return res.status(404).json({err:"Not Found"})
		res.send(data)
	})

	.catch(err=> {res.status(404).json(err)})
})

router.get('/fetch_customers',(req,res)=>{

	var sql='select * from tbl_customer'
	
	call(sql)

	.then((data)=>{
		res.send(data)
	})

	.catch(err=> {res.status(404).json(err)})
})

router.delete('/delete_customer/:id',(req,res)=>{

	if(!req.params.id) return res.status(403).json({err:"Data not sent"})

	var sql= `delete from tbl_customer where cust_id=${req.params.id}`
	//var data = {sql}
	
	call(sql)

	.then((data)=>{
		if(data.affectedRows>0) return res.send({result:"Customer Deleted"})

		if(!data.length) return res.status(404).json({err:"Not Found"})
		
	})

	.catch(err=> {res.status(404).json(err)})
})

router.put('/update_customer',authentication,(req,res)=>{
	//where email=? and password=?
	jwt.verify(req.token,process.env.TOKEN,(err,data)=>{
			if(err) return res.status(403).json(err) 
			//else res.send(data)
		})
	
	if(!req.body.id) return res.status(403).json({err:"Customer Id not sent"})

	var sql= `update tbl_customer set ? where cust_id=${req.body.id}`
	var data = {
		sql,
		input: {}
	}

	if(req.body.password) data.input['cust_password'] = getEnPass(req.body.password)
	if(req.body.email) data.input['cust_email']= req.body.email
	if(req.body.phone) data.input['cust_phone']= req.body.phone
	if(req.body.name) data.input['cust_name']= req.body.name
	if(req.body.address) data.input['cust_address']= req.body.address
	if(req.body.state) data.input['cust_state']= req.body.state
	if(req.body.city) data.input['cust_city']= req.body.city

	ballocks(data)

	.then((data)=>{
		if(data.affectedRows==1)
			res.send({result: " Successfully Updated user details"})
		else
			res.status(403).json({result:"Something went wrong"})
		
	})

	.catch(err=> {res.status(404).json(err);console.log(err)})
})

router.post('/create_customer',(req,res)=>{
	

	if(!req.body.email) return res.status(403).json({err:"Data not sent"})

	var data = {
		sql: 'insert into tbl_customer set ?',
		input:{
			status: "Active"
		}
	}
	if(req.body.password) data.input['cust_password'] = getEnPass(req.body.password)
	if(req.body.email) data.input['cust_email']= req.body.email
	if(req.body.phone) data.input['cust_phone']= req.body.phone
	if(req.body.name) data.input['cust_name']= req.body.name
	if(req.body.address) data.input['cust_address']= req.body.address
	if(req.body.state) data.input['cust_state']= req.body.state
	if(req.body.city) data.input['cust_city']= req.body.city
	
	ballocks(data)

	.then((data)=>{
		if(data.affectedRows>0)
			res.send({result: " Successfully created user"})
		else
			res.status(403).json({result:"Something went wrong"})
	})

	.catch(err=> {res.status(404).json(err);console.log(err)})
})

module.exports=router