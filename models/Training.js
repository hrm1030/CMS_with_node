const mongoose = require('mongoose');

const TrainingSchema = new mongoose.Schema({
    language : String,
    title : String,
    type : String,
    description : String,
    url : String
});

module.exports = mongoose.model('Training', TrainingSchema);