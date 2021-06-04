const mongoose = require('mongoose');

const UserSchema = new mongoose.Schema({
    name : String,
    surname : String,
    phone : String,
    email : String,
    password : String,
    membership : Number,
    left_membership : Number,
    created_at : Date,
    photo : String,
    introduction : String,
    permission : Number,
    state : Number
});


module.exports = mongoose.model('User', UserSchema);