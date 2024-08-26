const { default: mongoose } = require('mongoose');
const Project = mongoose.model('Project', new mongoose.Schema({
    Libelle: String
  }));
  
  const Article = mongoose.model('Article', new mongoose.Schema({
    Reference: String,
    libelle: String
  }));
  
  const BonCommande = mongoose.model('BonCommande', new mongoose.Schema({
    NumeroBC: String,
    Date_Sys: Date,
    Articles: [{
      Article: { type: mongoose.Schema.Types.ObjectId, ref: 'Article' },
      Qte: Number,
      Prix: Number
    }]
  }));
// const getDetailsDemandeAchat = async (req, res) => {
//     const { userID } = req.query;

//     try {
//         const demandeAchat = await DemandeAchat.findById(userID)
//             .populate('Utilisateur', 'Nom_Complet Service')
//             .populate('Utilisateur1', 'Nom_Complet Service')
//             .populate('Projet', 'Libelle')
//             .populate({
//                 path: 'R_DemandeAchat_Article',
//                 populate: {
//                     path: 'Article',
//                     select: 'Reference libelle'
//                 }
//             })
//             .populate({
//                 path: 'Demande_WorkFlow',
//                 populate: {
//                     path: 'Configuration_Workflow_D',
//                     match: { Cle_User: req.user.Cle }
//                 }
//             });

//         if (!demandeAchat) {
//             return res.status(404).json({ message: 'Demande Achat not found' });
//         }

//         const details = {
//             NumeroDA: demandeAchat.NumeroDA,
//             Date: demandeAchat.Date_Sys ? demandeAchat.Date_Sys.toISOString().split('T')[0] : null,
//             Dest: demandeAchat.Utilisateur ? demandeAchat.Utilisateur.Nom_Complet : null,
//             Demande: demandeAchat.Utilisateur1 ? demandeAchat.Utilisateur1.Nom_Complet : null,
//             SDest: demandeAchat.Utilisateur && demandeAchat.Utilisateur.Service ? demandeAchat.Utilisateur.Service.Libelle : null,
//             SDemande: demandeAchat.Utilisateur1 && demandeAchat.Utilisateur1.Service ? demandeAchat.Utilisateur1.Service.Libelle : null,
//             Projet: demandeAchat.Projet ? demandeAchat.Projet.map(proj => proj.Libelle).join(',') : null,
//             Articles: demandeAchat.R_DemandeAchat_Article.map(art => ({
//                 Reference: art.Article.Reference,
//                 libelle: art.Article.libelle,
//                 Qte: art.Qte,
//                 DatePrevLivraison: art.DatePrevLivraison ? art.DatePrevLivraison.toISOString().split('T')[0] : null
//             })),
//             CodeStatut: demandeAchat.Demande_WorkFlow && demandeAchat.Demande_WorkFlow.length > 0
//                 ? demandeAchat.Demande_WorkFlow[0].Configuration_Workflow_D.find(config => config.Cle_User === req.user.Cle).GetStatutCodeApi(req.user)
//                 : null
//         };

//         res.status(200).json(details);
//     } catch (error) {
//         console.error(error);
//         res.status(500).json({ message: 'Internal server error' });
//     }
// };

// module.exports = {
//     getDetailsDemandeAchat
// };
const getAllDemandesAchat = async (req, res) => {
    try {
        const demandesAchat = await DemandeAchat.find()
            .populate('Utilisateur', 'Nom_Complet Service')
            .populate('Utilisateur1', 'Nom_Complet Service')
            .populate('Projet', 'Libelle')
            .populate({
                path: 'R_DemandeAchat_Article',
                populate: {
                    path: 'Article',
                    select: 'Reference libelle'
                }
            })
            .populate({
                path: 'Demande_WorkFlow',
                populate: {
                    path: 'Configuration_Workflow_D',
                    match: { Cle_User: req.user.Cle }
                }
            });

        const detailsList = demandesAchat.map(demandeAchat => ({
            NumeroDA: demandeAchat.NumeroDA,
            Date: demandeAchat.Date_Sys ? demandeAchat.Date_Sys.toISOString().split('T')[0] : null,
            Dest: demandeAchat.Utilisateur ? demandeAchat.Utilisateur.Nom_Complet : null,
            Demande: demandeAchat.Utilisateur1 ? demandeAchat.Utilisateur1.Nom_Complet : null,
            SDest: demandeAchat.Utilisateur && demandeAchat.Utilisateur.Service ? demandeAchat.Utilisateur.Service.Libelle : null,
            SDemande: demandeAchat.Utilisateur1 && demandeAchat.Utilisateur1.Service ? demandeAchat.Utilisateur1.Service.Libelle : null,
            Projet: demandeAchat.Projet ? demandeAchat.Projet.map(proj => proj.Libelle).join(',') : null,
            Articles: demandeAchat.R_DemandeAchat_Article.map(art => ({
                Reference: art.Article.Reference,
                libelle: art.Article.libelle,
                Qte: art.Qte,
                DatePrevLivraison: art.DatePrevLivraison ? art.DatePrevLivraison.toISOString().split('T')[0] : null
            })),
            CodeStatut: demandeAchat.Demande_WorkFlow && demandeAchat.Demande_WorkFlow.length > 0
                ? demandeAchat.Demande_WorkFlow[0].Configuration_Workflow_D.find(config => config.Cle_User === req.user.Cle).GetStatutCodeApi(req.user)
                : null
        }));

        res.status(200).json(detailsList);
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Internal server error' });
    }
};

module.exports = {
    getAllDemandesAchat,
};
const getDetailsDemandeAchat = async (req, res) => {
    const { idDa } = req.query;

    try {
        const demandeAchat = await DemandeAchat.findById({NumeroDA: idDa})
            .populate('Utilisateur', 'Nom_Complet Service')
            .populate('Utilisateur1', 'Nom_Complet Service')
            .populate('Projet', 'Libelle')
            .populate({
                path: 'R_DemandeAchat_Article',
                populate: {
                    path: 'Article',
                    select: 'Reference libelle'
                }
            })
            .populate({
                path: 'Demande_WorkFlow',
                populate: {
                    path: 'Configuration_Workflow_D',
                    match: { Cle_User: req.user.Cle }
                }
            });

        if (!demandeAchat) {
            return res.status(404).json({ message: 'Demande Achat not found' });
        }

        const details = {
            NumeroDA: demandeAchat.NumeroDA,
            Date: demandeAchat.Date_Sys ? demandeAchat.Date_Sys.toISOString().split('T')[0] : null,
            Dest: demandeAchat.Utilisateur ? demandeAchat.Utilisateur.Nom_Complet : null,
            Demande: demandeAchat.Utilisateur1 ? demandeAchat.Utilisateur1.Nom_Complet : null,
            SDest: demandeAchat.Utilisateur && demandeAchat.Utilisateur.Service ? demandeAchat.Utilisateur.Service.Libelle : null,
            SDemande: demandeAchat.Utilisateur1 && demandeAchat.Utilisateur1.Service ? demandeAchat.Utilisateur1.Service.Libelle : null,
            Projet: demandeAchat.Projet ? demandeAchat.Projet.map(proj => proj.Libelle).join(',') : null,
            Articles: demandeAchat.R_DemandeAchat_Article.map(art => ({
                Reference: art.Article.Reference,
                libelle: art.Article.libelle,
                Qte: art.Qte,
                DatePrevLivraison: art.DatePrevLivraison ? art.DatePrevLivraison.toISOString().split('T')[0] : null
            })),
            CodeStatut: demandeAchat.Demande_WorkFlow && demandeAchat.Demande_WorkFlow.length > 0
                ? demandeAchat.Demande_WorkFlow[0].Configuration_Workflow_D.find(config => config.Cle_User === req.user.Cle).GetStatutCodeApi(req.user)
                : null
        };

        res.status(200).json(details);
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Internal server error' });
    }
};

module.exports = {
    getDetailsDemandeAchat
};
