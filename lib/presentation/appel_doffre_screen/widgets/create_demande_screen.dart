import 'package:flutter/material.dart';
import 'package:gecimmoa/api_service.dart';
import 'package:gecimmoa/theme/theme_helper.dart';

class CreateDemandeScreen extends StatefulWidget {
  @override
  _CreateDemandeScreenState createState() => _CreateDemandeScreenState();
}

class _CreateDemandeScreenState extends State<CreateDemandeScreen> {
  final ApiService apiService =
      ApiService('http://localhost:3000/api/demandes');
  final _formKey = GlobalKey<FormState>();

  String projet = '';
  String demandeur = '';
  String destinataire = '';
  String validation = '';
  DateTime dateLivraison = DateTime.now();
  DateTime dateTraitement = DateTime.now();
  List<String> chefOptions = ['Non Validé', 'Validé'];

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final demandeData = {
        'projet': projet,
        'demandeur': demandeur,
        'destinataire': destinataire,
        'validation': validation,
        'dateLivraison': dateLivraison.toIso8601String(),
        'dateTraitement': dateTraitement.toIso8601String(),
      };

      try {
        final success = await apiService.createDemande(demandeData);
        if (success) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Demande created successfully')),
          );
          Navigator.pop(context);
        }
      } catch (error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to create demande: $error')),
        );
      }
    }
  }

  Future<void> _selectDate(BuildContext context, bool isDateLivraison) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isDateLivraison ? dateLivraison : dateTraitement,
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
    );
    if (picked != null &&
        picked != (isDateLivraison ? dateLivraison : dateTraitement))
      setState(() {
        if (isDateLivraison) {
          dateLivraison = picked;
        } else {
          dateTraitement = picked;
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Demande')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Projet'),
                  onSaved: (value) => projet = value!,
                  validator: (value) =>
                      value!.isEmpty ? 'Enter a project name' : null,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Demandeur'),
                  onSaved: (value) => demandeur = value!,
                  validator: (value) =>
                      value!.isEmpty ? 'Enter a requester name' : null,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Destinataire'),
                  onSaved: (value) => destinataire = value!,
                  validator: (value) =>
                      value!.isEmpty ? 'Enter a recipient name' : null,
                ),
                SizedBox(height: 20.0),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Validation',
                    labelStyle: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                  ),
                  value: validation.isNotEmpty ? validation : null,
                  items: chefOptions.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      validation = newValue ?? ''; // Use null-aware operator to handle null values
                    });
                  },
                ),
                // TextFormField(
                //   decoration: InputDecoration(labelText: 'Validation'),
                //   onSaved: (value) => validation = value!,
                //   validator: (value) =>
                //       value!.isEmpty ? 'Enter a validation status' : null,
                // ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Date de Livraison: ${dateLivraison.toLocal()}'
                            .split(' ')[0],
                      ),
                    ),
                     ElevatedButton(
                      onPressed: () => _selectDate(context, false),
                    style: ElevatedButton.styleFrom(
                    backgroundColor: appTheme.gray400, // Couleur de fond
                    foregroundColor: Colors.white, // Couleur du texte
                    elevation: 5, // Élément de surélévation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // Bordures arrondies
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30), // Espacement interne
                    side: BorderSide(color: Colors.black, width: 2), // Bordure noire
                  ),
                  child: Text('Sélectionner une date'),
                )
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Date de Traitement: ${dateTraitement.toLocal()}'
                            .split(' ')[0],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => _selectDate(context, false),
                    style: ElevatedButton.styleFrom(
                    backgroundColor: appTheme.gray400, // Couleur de fond
                    foregroundColor: Colors.white, // Couleur du texte
                    elevation: 5, // Élément de surélévation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // Bordures arrondies
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30), // Espacement interne
                    side: BorderSide(color: Colors.black, width: 2), // Bordure noire
                  ),
                  child: Text('Sélectionner une date'),
                )
                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: Colors.white,
                    //     foregroundColor: Colors.blue,
                    //   ),
                    //   onPressed: () => _selectDate(context, false),
                    //   child: Text('Sélectionner une date'),
                    // ),
                //     SizedBox(height: 50),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Colors.white,
                //     foregroundColor: Colors.blue,
                //   ),
                //   onPressed: _submitForm,
                //   child: Text('Soumettre'),
                // ),
                  ],
                ),
                SizedBox(height: 100),
                ElevatedButton(
                     onPressed: _submitForm,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: appTheme.gray400, // Couleur de fond
                    foregroundColor: Colors.white, // Couleur du texte
                    elevation: 5, // Élément de surélévation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // Bordures arrondies
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30), // Espacement interne
                    side: BorderSide(color: Colors.black, width: 2), // Bordure noire
                  ),
                  child: Text('Cliquez ici'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//                 SizedBox(height: 20),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Text(
//                           'Date de Livraison: ${dateLivraison.toLocal()}'
//                               .split(' ')[0]),
//                     ),
//                     ElevatedButton(
//                       onPressed: () => _selectDate(context, true),
//                       child: Text('Select date'),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Text(
//                           'Date de Traitement: ${dateTraitement.toLocal()}'
//                               .split(' ')[0]),
//                     ),
//                     ElevatedButton(
//                       onPressed: () => _selectDate(context, false),
//                       child: Text('Select date'),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: _submitForm,
//                   child: Text('Submit'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:gecimmoa/api_service.dart';

// class CreateDemandeScreen extends StatefulWidget {
//   @override
//   _CreateDemandeScreenState createState() => _CreateDemandeScreenState();
// }

// class _CreateDemandeScreenState extends State<CreateDemandeScreen> {
//   final ApiService apiService = ApiService('http://localhost:3000/api/demandes');
//   final _formKey = GlobalKey<FormState>();

//   String projet = '';
//   String demandeur = '';
//   String destinataire = '';
//   String validation = '';
//   DateTime dateLivraison = DateTime.now();
//   DateTime dateTraitement = DateTime.now();

//   void _submitForm() async {
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState!.save();

//       final demandeData = {
//         'projet': projet,
//         'demandeur': demandeur,
//         'destinataire': destinataire,
//         'validation': validation,
//         'dateLivraison': dateLivraison.toIso8601String(),
//         'dateTraitement': dateTraitement.toIso8601String(),
//       };

//       try {
//         final success = await apiService.createDemande(demandeData);
//         if (success) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text('Demande créée avec succès')),
//           );
//           Navigator.pop(context);
//         }
//       } catch (error) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Échec de la création de la demande : $error')),
//         );
//       }
//     }
//   }

//   Future<void> _selectDate(BuildContext context, bool isDateLivraison) async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: isDateLivraison ? dateLivraison : dateTraitement,
//       firstDate: DateTime(2020),
//       lastDate: DateTime(2101),
//     );
//     if (picked != null &&
//         picked != (isDateLivraison ? dateLivraison : dateTraitement))
//       setState(() {
//         if (isDateLivraison) {
//           dateLivraison = picked;
//         } else {
//           dateTraitement = picked;
//         }
//       });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Créer une Demande')),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Projet'),
//                   onSaved: (value) => projet = value!,
//                   validator: (value) =>
//                       value!.isEmpty ? 'Entrez un nom de projet' : null,
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Demandeur'),
//                   onSaved: (value) => demandeur = value!,
//                   validator: (value) =>
//                       value!.isEmpty ? 'Entrez un nom de demandeur' : null,
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Destinataire'),
//                   onSaved: (value) => destinataire = value!,
//                   validator: (value) =>
//                       value!.isEmpty ? 'Entrez un nom de destinataire' : null,
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Validation'),
//                   onSaved: (value) => validation = value!,
//                   validator: (value) =>
//                       value!.isEmpty ? 'Entrez un statut de validation' : null,
//                 ),
//                 SizedBox(height: 20),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Text(
//                         'Date de Livraison: ${dateLivraison.toLocal()}'.split(' ')[0],
//                       ),
//                     ),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.white,
//                         foregroundColor: Colors.blue,
//                       ),
//                       onPressed: () => _selectDate(context, true),
//                       child: Text('Sélectionner une date'),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Text(
//                         'Date de Traitement: ${dateTraitement.toLocal()}'.split(' ')[0],
//                       ),
//                     ),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.white,
//                         foregroundColor: Colors.blue,
//                       ),
//                       onPressed: () => _selectDate(context, false),
//                       child: Text('Sélectionner une date'),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.white,
//                     foregroundColor: Colors.blue,
//                   ),
//                   onPressed: _submitForm,
//                   child: Text('Soumettre'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
