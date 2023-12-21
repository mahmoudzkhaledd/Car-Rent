const mongoose = require('mongoose');

const schema = new mongoose.Schema({
    firstName: {
        type: String,
        required: [true, "First Name is required!"]
    },
    lastName: {
        type: String,
        required: [true, "Last Name is required!"]
    },
    companyName: {
        type: String,
        required: [true, "Company Name is required!"]
    },
    email: {
        type: String,
        unique: true,
        required: [true, "Email is required!"]
    },
    password: {
        type: String,
        required: [true, "Password is required!"]
    },
    phone: {
        type: String,
        required: [true, "Phone is required!"]
    },
    birthdate: {
        type: String,
        required: [true, "Birthdate is required!"]
    },
    gender: {
        type: Boolean,
        required: [true, "Gender is required!"]
    },
    verifiedEmail: {
        type: Boolean,
        default: false, 
    },
    profilePic: String,
}, { timestamps: true, });

module.exports = mongoose.model('User', schema);