const mongoose = require('mongoose');

const PostSchema = new mongoose.Schema({
    category_id : String,
    category : String,
    content : String,
    poster : String,
    created_at : Date
});

module.exports = mongoose.model('Post', PostSchema);