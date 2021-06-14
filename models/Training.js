const mongoose = require('mongoose');

const TrainingSchema = new mongoose.Schema({
    title : String,
    description : String,
    url : String
});

module.exports = mongoose.model('Training', TrainingSchema);