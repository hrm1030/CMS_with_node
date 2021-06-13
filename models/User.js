const mongoose = require('mongoose');

const UserSchema = new mongoose.Schema({
    name : String,
    surname : String,
    phone : String,
    email : String,
    password : String,
    membership : Number,
    left_membership : Number,
    ask : Number,
    card_number : String,
    expire_month : Number,
    expire_year : Number,
    cvc : Number,
    created_at : Date,
    started_at : Date,
    photo : String,
    introduction : String,
    permission : Number,
    state : Number,
    industry : String,
    shared_cnt : Number,
});


module.exports = mongoose.model('User', UserSchema);