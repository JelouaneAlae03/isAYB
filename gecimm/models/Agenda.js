// models/Agenda.js
const mongoose = require('mongoose');

const agendaSchema = new mongoose.Schema({
  date: {
    type: Date,
    required: true,
  },
  tasks: [
    {
      type: String,
      required: true,
    },
  ],
});

const Agenda = mongoose.model('Agenda', agendaSchema);

module.exports = Agenda;
