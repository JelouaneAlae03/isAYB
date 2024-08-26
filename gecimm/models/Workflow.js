// // // models/Workflow.js
// // const mongoose = require('mongoose');

// // const WorkflowSchema = new mongoose.Schema({
// //   codeDemande: { type: String, required: true, unique: true },
// //   amount: { type: Number, required: true },
// //   validator: { type: String, required: true },
// //   date: { type: Date, default: Date.now },
// //   observation: { type: String },
// //   isApproved: { type: Boolean, default: false }
// // });

// // module.exports = mongoose.model('Workflow', WorkflowSchema);
// // models/Workflow.js
// const mongoose = require('mongoose');

// const workflowSchema = new mongoose.Schema({
//     codeDemande: { type: String, required: true, unique: true },
//     status: { type: String, default: 'Pending' },
//     observation: { type: String },
//     // Add other fields as necessary
// });

// module.exports = mongoose.model('workflow', workflowSchema);
// // models/Workflow.js
// const mongoose = require('mongoose');

// const WorkflowSchema = new mongoose.Schema({
//   codeDemande: { type: String, required: true, unique: true },
//   amount: { type: Number, required: true },
//   validator: { type: String, required: true },
//   date: { type: Date, default: Date.now },
//   observation: { type: String },
//   isApproved: { type: Boolean, default: false }
// });

// module.exports = mongoose.model('Workflow', WorkflowSchema);
// models/Workflow.js
const mongoose = require('mongoose');

const workflowSchema = new mongoose.Schema({
    codeDemande: { type: String, required: true, unique: true },
    status: { type: String, default: 'Pending' },
    observation: { type: String },
    // Add other fields as necessary
});

module.exports = mongoose.model('workflow', workflowSchema);
