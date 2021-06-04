const mongoose = require('mongoose');

const PostSchema = new mongoose.Schema({
    category_id : String,
    category : String,
    title : String,
    content : String,
    poster : String,
    poster_id : String,
    poster_email : String,
    poster_phone : String,
    like : Number,
    dislike : Number,
    created_at : Date,
    images : String
});

module.exports = mongoose.model('Post', PostSchema);