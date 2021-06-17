const mongoose = require('mongoose');

const TrainingSchema = new mongoose.Schema({
    title : String,
    type : String,
    description : String,
    url : String
});

module.exports = mongoose.model('Training', TrainingSchema);