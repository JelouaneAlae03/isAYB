// // const express = require('express');
// // const router = express.Router();
// // const DemandeAchat = require('../models/DemandeAchat');

// // // Route without middleware
// // router.get('/DetailsDemandeAchat', async (req, res) => {
// //     try {
// //         const { NumeroDA } = req.query;

// //         if (!NumeroDA) {
// //             return res.status(400).json({ message: 'Missing request parameter: idDa' });
// //         }

// //         const demandeAchat = await DemandeAchat.findOne(NumeroDA).exec();

// //         if (!demandeAchat) {
// //             return res.status(404).json({ message: 'DemandeAchat not found' });
// //         }

// //         res.json(demandeAchat);
// //     } catch (error) {
// //         res.status(500).json({ message: error.message });
// //     }
// // });

// // module.exports = router;
// const express = require('express');
// const router = express.Router();
// const DemandeAchat = require('../models/DemandeAchat');

// // Route without middleware
// router.get('/DetailsDemandeAchat', async (req, res) => {
//     try {
//         const { idDa } = req.query;

//         if (!idDa) {
//             return res.status(400).json({ message: 'Missing request parameter: idDa' });
//         }

//         // Find document with filter object
//         const demandeAchat = await DemandeAchat.findOne({ NumeroDA: idDa }).exec();

//         if (!demandeAchat) {
//             return res.status(404).json({ message: 'DemandeAchat not found' });
//         }

//         res.json(demandeAchat);
//         console.log(demandeAchat)
//     } catch (error) {
//         res.status(500).json({ message: error.message });
//     }
// });

// module.exports = router;
const express = require('express');
const router = express.Router();
const DemandeAchat = require('../models/DemandeAchat');
// const { getAllDemandesAchat } = require('./controllers/demandeAchatController');
// router.get('/demandesAchat', getAllDemandesAchat);
router.get('/DetailsDemandeAchat', async (req, res) => {
    try {
        const { idDa } = req.query;

        if (!idDa) {
            return res.status(400).json({ message: 'Missing request parameter: idDa' });
        }

        const demandeAchat = await DemandeAchat.findOne({ NumeroDA: idDa }).exec();

        if (!demandeAchat) {
            return res.status(404).json({ message: 'DemandeAchat not found' });
        }

        res.json(demandeAchat);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
});

module.exports = router;
