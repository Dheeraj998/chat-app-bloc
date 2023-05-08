
const express = require('express')
const { createUser, loginUser, getUsers } = require('../controllers/userController')



const userRouter = express.Router()


userRouter.route('/create').post(createUser)
userRouter.route('/login').post(loginUser)
userRouter.route('/getUsers').get(getUsers)



module.exports = userRouter