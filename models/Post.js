const mongoose = require('mongoose');

const PostSchema = new mongoose.Schema({
    category_id : String,
    content : String
})

module.exports = mongoose.model('Post', PostSchema);