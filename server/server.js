const express = require('express')
const mongoose = require('mongoose')
const bodyParser = require('body-parser')

const app = express()

const DB = 'mongodb+srv://admin:admin@cluster0.vtigymt.mongodb.net/?retryWrites=true&w=majority';

mongoose.connect(DB).then((res) => console.log("db connected succesffully")).catch((err) => console.log("error occured while connecting db"));
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.json())
app.use(bodyParser.json())

app.use('/api', require('./routes/userRoutes'))

app.listen(3003, "0.0.0.0", () => {
    console.log(`connected to port 3002`);
})
