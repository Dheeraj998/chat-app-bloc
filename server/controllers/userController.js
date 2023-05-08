const User = require("../models/user")
const bcryptjs = require('bcryptjs')

const createUser = async (req, res) => {
    console.log("here");
    console.log(req.body);
    const { username, password, fullname } = req.body

    try {
        const existingUser = await User.findOne({ username })

        if (existingUser) {
            return res.status(400).json({ msg: "user already exists" })
        }

        const hashedPassword = await bcryptjs.hash(password, 8)

        let user = new User({
            username, fullname,
            password: hashedPassword
        })
        user = await user.save()
        delete user.password

        res.status(200).json(user)

    } catch (e) {
        res.status(500).json({ error: e.message })
    }

}

const loginUser = (async (req, res) => {
    console.log("herererere");
    const { username, password } = req.body

    try {
        const user = await User.findOne({ username })

        if (!user) {
            return res.status(400).json({ msg: "user not exist" })
        }

        const isMatch = await bcryptjs.compare(password, user.password)
        if (!isMatch) {
            return res.status(400).json({ msg: "Incorrect password" })
        }


        res.status(200).json(user)

    } catch (e) {
        res.status(500).json({ error: e.message })

    }
})

const getUsers = (async (req, res) => {

    try {

        const users = await User.find({})

        res.status(200).json({ users: users })

    } catch (error) {

        res.status(500).json({ error: error.message });
    }


})

module.exports = { createUser, loginUser, getUsers }