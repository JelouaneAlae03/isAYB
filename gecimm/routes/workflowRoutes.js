// routes/workflowRoutes.js
// const express = require('express');
// const router = express.Router();
// const Workflow = require('../models/Workflow');
// const verifyToken = require('../middleware/verifyToken');

// // POST /api/ValideDemandeWorkFlow
// router.post('/ValideDemandeWorkFlow', verifyToken, async (req, res) => {
//   const { CodeDemande, Observation, IsAprouver } = req.query;

//   try {
//     const workflow = await Workflow.findOne({ codeDemande: CodeDemande });
//     if (!workflow) {
//       return res.status(404).json({ message: 'Workflow not found' });
//     }

//     workflow.observation = Observation;
//     workflow.isApproved = IsAprouver === 'true';

//     await workflow.save();

//     return res.status(200).json({ message: 'Workflow updated successfully', workflow });
//   } catch (error) {
//     return res.status(500).json({ message: 'Server error', error });
//   }
// });

// module.exports = router;
// routes/workflowRoutes.js
const express = require('express');
const router = express.Router();
const workflowController = require('../controllers/workflowController');
const Workflow = require('../models/Workflow');
// Define the endpoint for validating workflow requests
router.post('/ValideDemandeWorkFlow', workflowController.validateWorkflow);
router.post('/addWorkflow', async (req, res) => {
    try {
        const { codeDemande, amount, validator, date } = req.body;

        if (!codeDemande || !amount || !validator || !date) {
            return res.status(400).json({ message: 'Missing required fields' });
        }

        const newWorkflow = new Workflow({
            codeDemande,
            amount,
            validator,
            date: new Date(date)
        });

        await newWorkflow.save();

        res.status(201).json({ message: 'Workflow added successfully', workflow: newWorkflow });
    } catch (error) {
        console.error('Error adding workflow:', error);
        res.status(500).json({ message: 'Server error' });
    }
});
module.exports = router;
