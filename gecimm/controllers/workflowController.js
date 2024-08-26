// controllers/workflowController.js
const Workflow = require('../models/Workflow'); // Import your Workflow model

// Controller function to validate the workflow
exports.validateWorkflow = async (req, res) => {
    try {
        const { token, CodeDemande, Observation, IsAprouver } = req.body;

        // Validate input
        if (!token || !CodeDemande || typeof IsAprouver !== 'boolean') {
            return res.status(400).json({ message: 'Invalid input parameters' });
        }

        // Verify token and perform necessary authentication here (e.g., JWT verification)
        // For example:
        // const decodedToken = jwt.verify(token, process.env.JWT_SECRET);
        // if (!decodedToken) {
        //     return res.status(401).json({ message: 'Unauthorized' });
        // }

        // Find the workflow request by CodeDemande
        const workflow = await Workflow.findOne({ codeDemande: CodeDemande });
        if (!workflow) {
            return res.status(404).json({ message: 'Workflow not found' });
        }

        // Update the workflow status based on IsAprouver
        workflow.status = IsAprouver ? 'Accepted' : 'Rejected';
        workflow.observation = Observation;
        await workflow.save();

        res.status(200).json({ message: 'Workflow updated successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Server error' });
    }
};
