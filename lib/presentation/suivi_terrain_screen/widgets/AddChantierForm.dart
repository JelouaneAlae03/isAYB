// // import 'package:flutter/material.dart';

// // class AddChantierForm extends StatefulWidget {
// //   @override
// //   _AddChantierFormState createState() => _AddChantierFormState();
// // }

// // class _AddChantierFormState extends State<AddChantierForm> {
// //   String? libelle;
// //   String? description;
// //   String? dateDebut;
// //   String? dateFinPrev;
// //   String? chefChantier;
// //   // List<String> chefOptions = ['Elachouri','Elachouri', 'Other'];
// //   List<String> chefOptions = ['Elachouri', 'Bennani', 'Zouhair'];
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Ajouter un chantier'),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(20.0),
// //         child: Form(
// //           // key: _formKey,
// //           child: ListView(
// //             children: <Widget>[
// //               TextFormField(
// //                 decoration: InputDecoration(labelText: 'Libellé'),
// //                 onSaved: (value) {
// //                   libelle = value;
// //                 },
// //               ),
// //               SizedBox(height: 20.0),
// //               TextFormField(
// //                 decoration: InputDecoration(labelText: 'Description'),
// //                 onSaved: (value) {
// //                   description = value;
// //                 },
// //               ),
// //               SizedBox(height: 20.0),
// //               TextFormField(
// //                 decoration: InputDecoration(
// //                   labelText: 'Date Début',
// //                 ),
// //                 initialValue: '12/08/2024',
// //                 onSaved: (value) {
// //                   dateDebut = value;
// //                 },
// //               ),
// //               SizedBox(height: 20.0),
// //               TextFormField(
// //                 decoration: InputDecoration(
// //                   labelText: 'Date Fin Prev.',
// //                 ),
// //                 onSaved: (value) {
// //                   dateFinPrev = value;
// //                 },
// //               ),
// //               SizedBox(height: 20.0),
// //               DropdownButtonFormField<String>(
// //                     decoration: InputDecoration(
// //                       labelText: 'Chef Chantier',
// //                       labelStyle: TextStyle(
// //                         fontSize: 18.0,
// //                         fontWeight: FontWeight.w600,
// //                       ),
// //                       border: OutlineInputBorder(
// //                         borderRadius: BorderRadius.circular(12.0),
// //                         borderSide: BorderSide(
// //                           color: Colors.blue,
// //                           width: 2.0,
// //                         ),
// //                       ),
// //                       contentPadding: EdgeInsets.symmetric(
// //                         horizontal: 16.0,
// //                         vertical: 12.0,
// //                       ),
// //                     ),
// //                     value: chefChantier,
// //                     items: chefOptions.map((String value) {
// //                       return DropdownMenuItem<String>(
// //                         value: value,
// //                         child: Text(
// //                           value,
// //                           style: TextStyle(
// //                             fontSize: 16.0,
// //                             fontWeight: FontWeight.w500,
// //                             color: Colors.black, // Set the text color here
// //                           ),
// //                         ),
// //                       );
// //                     }).toList(),
// //                     onChanged: (newValue) {
// //                       setState(() {
// //                         chefChantier = newValue;
// //                       });
// //                     },
// //                   ),
// //           //     DropdownButtonFormField<String>(
// //           //       decoration: InputDecoration(labelText: 'Chef Chantier'),
// //           //       value: chefChantier,
// //           //       items: chefOptions.map((String value) {
// //           //         return DropdownMenuItem<String>(
// //           //           value: value,
// //           //           child: Text(value),
// //           //         );
// //           //       }).toList(),
// //           //       onChanged: (newValue) {
// //           //         setState(() {
// //           //           chefChantier = newValue;
// //           //         });
// //           //       },
// //           //     ),
// //           //     SizedBox(height: 50.0),
// //           //     ElevatedButton(
// //           //       onPressed: () {
// //           //         if (_formKey.currentState!.validate()) {
// //           //           _formKey.currentState!.save();
// //           //           // Perform the submit action
// //           //         }
// //           //       },
// //           //       child: Text('Ajouter'),
// //           //     ),
// //           //     SizedBox(height: 20.0), // Adjusted spacing before the dropdown
// //           //     DropdownButtonFormField<String>(
// //           //       decoration: InputDecoration(
// //           //         labelText: 'Chef Chantier',
// //           //         labelStyle: TextStyle(
// //           //           fontSize: 18.0, // Larger font size for the label
// //           //           fontWeight: FontWeight.w600, // Semi-bold font weight for emphasis
// //           //         ),
// //           //         border: OutlineInputBorder(
// //           //           borderRadius: BorderRadius.circular(12.0), // Rounded corners
// //           //           borderSide: BorderSide(
// //           //             color: Colors.blue, // Border color
// //           //             width: 2.0, // Border width
// //           //           ),
// //           //         ),
// //           //         contentPadding: EdgeInsets.symmetric(
// //           //           horizontal: 16.0, // Horizontal padding inside the field
// //           //           vertical: 12.0, // Vertical padding inside the field
// //           //         ),
// //           //       ),
// //           //       value: chefChantier,
// //           //       items: chefOptions.map((String value) {
// //           //         return DropdownMenuItem<String>(
// //           //           value: value,
// //           //           child: Text(
// //           //             value,
// //           //             style: TextStyle(
// //           //               fontSize: 16.0, // Font size for dropdown items
// //           //               fontWeight: FontWeight.w500, // Font weight for dropdown items
// //           //             ),
// //           //           ),
// //           //         );
// //           //       }).toList(),
// //           //       onChanged: (newValue) {
// //           //         setState(() {
// //           //           chefChantier = newValue;
// //           //         });
// //           //       },
// //           //     ),
// //           //     SizedBox(height: 20.0),
// //           // DropdownButtonFormField<String>(
// //           //   decoration: InputDecoration(
// //           //     labelText: 'Chef Chantier',
// //           //     labelStyle: TextStyle(
// //           //       fontSize: 18.0,
// //           //       fontWeight: FontWeight.w600,
// //           //     ),
// //           //     border: OutlineInputBorder(
// //           //       borderRadius: BorderRadius.circular(12.0),
// //           //       borderSide: BorderSide(
// //           //         color: Colors.blue,
// //           //         width: 2.0,
// //           //       ),
// //           //     ),
// //           //     contentPadding: EdgeInsets.symmetric(
// //           //       horizontal: 16.0,
// //           //       vertical: 12.0,
// //           //     ),
// //           //   ),
// //           //   value: chefChantier,
// //           //   items: chefOptions.map((String value) {
// //           //     return DropdownMenuItem<String>(
// //           //       value: value,
// //           //       child: Text(
// //           //         value,
// //           //         style: TextStyle(
// //           //           fontSize: 16.0,
// //           //           fontWeight: FontWeight.w500,
// //           //         ),
// //           //       ),
// //           //     );
// //           //   }).toList(),
// //           //   onChanged: (newValue) {
// //           //     setState(() {
// //           //       chefChantier = newValue;
// //           //     });
// //           //   },
// //           // ),
// //               SizedBox(height: 50.0), // Adjusted spacing before the button
// //               ElevatedButton(
// //                 onPressed: () {
// //                   // if (_formKey.currentState!.validate()) {
// //                   //   _formKey.currentState!.save();
// //                   //   // Perform the submit action
// //                   // }
// //                 },
// //                 style: ElevatedButton.styleFrom(
// //                   backgroundColor: Colors.blue,
// //                   foregroundColor: Colors.white,
// //                   padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0), // Larger padding for a bigger button
// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(12.0), // Matching rounded corners
// //                   ),
// //                   elevation: 6, // Slightly higher elevation for a more pronounced shadow
// //                   textStyle: TextStyle(
// //                     fontSize: 18.0, // Larger font size for the button text
// //                     fontWeight: FontWeight.bold, // Bold font weight for the button text
// //                   ),
// //                 ),
// //                 child: Text('Ajouter'),
// //               ),

// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// // //   String? chefChantier = 'Elachouri';
// // //   List<String> chefOptions = ['Elachouri', 'Bennani', 'Zouhair'];

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       body: Padding(
// // //         padding: const EdgeInsets.all(20.0),
// // //         child: Column(
// // //           children: [
// // //             SizedBox(height: 20.0),
// // // //             DropdownButtonFormField(
// // // //               decoration: InputDecoration(
// // // //                 labelText: 'Chef Chantier',
// // // //                 labelStyle: TextStyle(
// // // //                   fontSize: 18.0,
// // // //                   fontWeight: FontWeight.w600,
// // // //                 ),
// // // //                 border: OutlineInputBorder(
// // // //                   borderRadius: BorderRadius.circular(12.0),
// // // //                   borderSide: BorderSide(
// // // //                     color: Colors.blue,
// // // //                     width: 2.0,
// // // //                   ),
// // // //                 ),
// // // //                 contentPadding: EdgeInsets.symmetric(
// // // //                   horizontal: 16.0,
// // // //                   vertical: 12.0,
// // // //                 ),
// // // //               ),
// // // //               value: chefChantier,
// // // //               items: chefOptions.map((String value) {
// // // //                 return DropdownMenuItem<String>(
// // // //                   value: value,
// // // //                   child: Text(
// // // //                     value,
// // // //                     style: TextStyle(
// // // //                       fontSize: 16.0,
// // // //                       fontWeight: FontWeight.w500,
// // // //                     ),
// // // //                   ),
// // // //                 );
// // // //               }).toList(),
// // // //               onChanged: (newValue) {
// // // //                 setState(() {
// // // //                   chefChantier = newValue as String?;
// // // //                 });
// // // //               },
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // // DropdownButtonFormField<String>(
// // //   decoration: InputDecoration(
// // //     labelText: 'Chef Chantier',
// // //     labelStyle: TextStyle(
// // //       fontSize: 18.0,
// // //       fontWeight: FontWeight.w600,
// // //     ),
// // //     border: OutlineInputBorder(
// // //       borderRadius: BorderRadius.circular(12.0),
// // //       borderSide: BorderSide(
// // //         color: Colors.blue,
// // //         width: 2.0,
// // //       ),
// // //     ),
// // //     contentPadding: EdgeInsets.symmetric(
// // //       horizontal: 16.0,
// // //       vertical: 12.0,
// // //     ),
// // //   ),
// // //   value: chefChantier,
// // //   items: chefOptions.map((String value) {
// // //     return DropdownMenuItem<String>(
// // //       value: value,
// // //       child: Text(
// // //         value,
// // //         style: TextStyle(
// // //           fontSize: 16.0,
// // //           fontWeight: FontWeight.w500,
// // //           color: Colors.black, // Set the text color here
// // //         ),
// // //       ),
// // //     );
// // //   }).toList(),
// // //   onChanged: (newValue) {
// // //     setState(() {
// // //       chefChantier = newValue;
// // //     });
// // //   },
// // // )
// // //         ],
// // //          ),
// // //       ),
// // //   );
// // //   }
// // //   }
// import 'package:flutter/material.dart';

// class AddChantierForm extends StatefulWidget {
//   @override
//   _AddChantierFormState createState() => _AddChantierFormState();
// }

// class _AddChantierFormState extends State<AddChantierForm> {
//   String? libelle;
//   String? description;
//   String? dateDebut;
//   String? dateFinPrev;
//   String? chefChantier;
//   List<String> chefOptions = ['Elachouri', 'Bennani', 'Zouhair'];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Ajouter un chantier'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Form(
//           // key: _formKey, // Uncomment this line if you're using form validation
//           child: ListView(
//             children: <Widget>[
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Libellé'),
//                 onSaved: (value) {
//                   libelle = value;
//                 },
//               ),
//               SizedBox(height: 20.0),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Description'),
//                 onSaved: (value) {
//                   description = value;
//                 },
//               ),
//               SizedBox(height: 20.0),
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'Date Début',
//                 ),
//                 initialValue: '12/08/2024',
//                 onSaved: (value) {
//                   dateDebut = value;
//                 },
//               ),
//               SizedBox(height: 20.0),
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'Date Fin Prev.',
//                 ),
//                 onSaved: (value) {
//                   dateFinPrev = value;
//                 },
//               ),
//               SizedBox(height: 20.0),
//               DropdownButtonFormField<String>(
//                 decoration: InputDecoration(
//                   labelText: 'Chef Chantier',
//                   labelStyle: TextStyle(
//                     fontSize: 18.0,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12.0),
//                     borderSide: BorderSide(
//                       color: Colors.blue,
//                       width: 2.0,
//                     ),
//                   ),
//                   contentPadding: EdgeInsets.symmetric(
//                     horizontal: 16.0,
//                     vertical: 12.0,
//                   ),
//                 ),
//                 value: chefChantier,
//                 items: chefOptions.map((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(
//                       value,
//                       style: TextStyle(
//                         fontSize: 16.0,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.black, // Set the text color here
//                       ),
//                     ),
//                   );
//                 }).toList(),
//                 onChanged: (newValue) {
//                   setState(() {
//                     chefChantier = newValue;
//                   });
//                 },
//               ),
//               SizedBox(height: 50.0),
//               ElevatedButton(
//                 onPressed: () {
//                   // Uncomment the lines below to enable form validation and submission
//                   // if (_formKey.currentState!.validate()) {
//                   //   _formKey.currentState!.save();
//                   //   // Perform the submit action
//                   // }
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blue,
//                   foregroundColor: Colors.white,
//                   padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12.0),
//                   ),
//                   elevation: 6,
//                   textStyle: TextStyle(
//                     fontSize: 18.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 child: Text('Ajouter'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:gecimmoa/routes/app_routes.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:intl/intl.dart';

//               // À l'intérieur de votre classe
// String currentDate = DateFormat('dd/MM/yyyy').format(DateTime.now());

// class AddChantierForm extends StatefulWidget {
//   @override
//   _AddChantierFormState createState() => _AddChantierFormState();

// }

// class _AddChantierFormState extends State<AddChantierForm> {
//   String? libelle;
//   String? description;
//   String? dateDebut;
//   String? dateFinPrev;
//   String? chefChantier;
//   List<String> chefOptions = ['Elachouri', 'Bennani', 'Zouhair'];
//   final _formKey = GlobalKey<FormState>();
//   TextEditingController _dateController = TextEditingController();
//     @override
//     void dispose() {
//       _dateController.dispose();
//       super.dispose();
//     }

//   Future<void> _submitForm() async {
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState!.save();

//       final response = await http.post(
//         Uri.parse('http://localhost:3000/addChantier'), // Replace with your backend URL
//         headers: {'Content-Type': 'application/json'},
//         body: json.encode({
//           'libelle': libelle,
//           'description': description,
//           'dateDebut': dateDebut,
//           'dateFinPrev': dateFinPrev,
//           'chefChantier': chefChantier,
//         }),
//       );

//       if (response.statusCode == 201) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Chantier added successfully!')),
//         );
//         Navigator.pushNamed(context, AppRoutes.taskManagementScreen);
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Failed to add chantier!')),
//         );
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Ajouter un chantier'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Form(
//           key: _formKey,
//           child: ListView(
//             children: <Widget>[
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Libellé'),
//                 onSaved: (value) {
//                   libelle = value;
//                 },
//               ),
//               SizedBox(height: 20.0),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Description'),
//                 onSaved: (value) {
//                   description = value;
//                 },
//               ),
//               SizedBox(height: 20.0),
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'Date Début',
//                 ),
//                 initialValue: currentDate,
//                 onSaved: (value) {
//                   dateDebut = value!;
//                 },
//               ),

//               // SizedBox(height: 20.0),
//               // TextFormField(
//               //   decoration: InputDecoration(
//               //     labelText: 'Date Début',
//               //   ),
//               //   initialValue: '12/08/2024',
//               //   onSaved: (value) {
//               //     dateDebut = value;
//               //   },
//               // ),
//               SizedBox(height: 20.0),
//               TextFormField(
//                 controller: _dateController,  // Utilisez un TextEditingController
//                 decoration: InputDecoration(
//                   labelText: 'Date Fin Prev.',
//                   suffixIcon: IconButton(
//                     icon: Icon(Icons.calendar_today),
//                     onPressed: () async {
//                       DateTime? pickedDate = await showDatePicker(
//                         context: context,
//                         initialDate: DateTime.now(),
//                         firstDate: DateTime(2000),
//                         lastDate: DateTime(2101),
//                       );
//                       if (pickedDate != null) {
//                         String formattedDate = DateFormat('dd/MM/yyyy').format(pickedDate);
//                         setState(() {
//                           _dateController.text = formattedDate; // Affiche la date sélectionnée dans l'input
//                         });
//                       }
//                     },
//                   ),
//                 ),
//                 onSaved: (value) {
//                   dateFinPrev = value!;
//                 },
//               ),

//               // SizedBox(height: 20.0),
//               // TextFormField(
//               //   decoration: InputDecoration(
//               //     labelText: 'Date Fin Prev.',
//               //   ),
//               //   onSaved: (value) {
//               //     dateFinPrev = value;
//               //   },
//               // ),
//               SizedBox(height: 20.0),
//               DropdownButtonFormField<String>(
//                 decoration: InputDecoration(
//                   labelText: 'Chef Chantier',
//                   labelStyle: TextStyle(
//                     fontSize: 18.0,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12.0),
//                     borderSide: BorderSide(
//                       color: Colors.blue,
//                       width: 2.0,
//                     ),
//                   ),
//                   contentPadding: EdgeInsets.symmetric(
//                     horizontal: 16.0,
//                     vertical: 12.0,
//                   ),
//                 ),
//                 value: chefChantier,
//                 items: chefOptions.map((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(
//                       value,
//                       style: TextStyle(
//                         fontSize: 16.0,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.black,
//                       ),
//                     ),
//                   );
//                 }).toList(),
//                 onChanged: (newValue) {
//                   setState(() {
//                     chefChantier = newValue;
//                   });
//                 },
//               ),
//               SizedBox(height: 50.0),
//               ElevatedButton(
//                 onPressed: _submitForm,
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blue,
//                   foregroundColor: Colors.white,
//                   padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12.0),
//                   ),
//                   elevation: 6,
//                   textStyle: TextStyle(
//                     fontSize: 18.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 child: Text('Ajouter'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// // import 'package:flutter/material.dart';
// // import 'package:gecimmoa/routes/app_routes.dart';
// // import 'package:http/http.dart' as http;
// // import 'dart:convert';
// // import 'package:intl/intl.dart';

// //               // À l'intérieur de votre classe
// // String currentDate = DateFormat('dd/MM/yyyy').format(DateTime.now());

// // class AddChantierForm extends StatefulWidget {
// //   @override
// //   _AddChantierFormState createState() => _AddChantierFormState();

// // }

// // class _AddChantierFormState extends State<AddChantierForm> {
// //   String? libelle;
// //   String? description;
// //   String? dateDebut;
// //   String? dateFinPrev;
// //   String? chefChantier;
// //   List<String> chefOptions = ['Elachouri', 'Bennani', 'Zouhair'];
// //   final _formKey = GlobalKey<FormState>();
// //   TextEditingController _dateController = TextEditingController();
// //     @override
// //     void dispose() {
// //       _dateController.dispose();
// //       super.dispose();
// //     }

// //   Future<void> _submitForm() async {
// //     if (_formKey.currentState!.validate()) {
// //       _formKey.currentState!.save();

// //       final response = await http.post(
// //         Uri.parse('http://localhost:3000/addChantier'), // Replace with your backend URL
// //         headers: {'Content-Type': 'application/json'},
// //         body: json.encode({
// //           'libelle': libelle,
// //           'description': description,
// //           'dateDebut': dateDebut,
// //           'dateFinPrev': dateFinPrev,
// //           'chefChantier': chefChantier,
// //         }),
// //       );

// //       if (response.statusCode == 201) {
// //         ScaffoldMessenger.of(context).showSnackBar(
// //           SnackBar(content: Text('Chantier added successfully!')),
// //         );
// //         Navigator.pushNamed(context, AppRoutes.taskManagementScreen);
// //       } else {
// //         ScaffoldMessenger.of(context).showSnackBar(
// //           SnackBar(content: Text('Failed to add chantier!')),
// //         );
// //       }
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Ajouter un chantier'),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(20.0),
// //         child: Form(
// //           key: _formKey,
// //           child: ListView(
// //             children: <Widget>[
// //               TextFormField(
// //                 decoration: InputDecoration(labelText: 'Libellé'),
// //                 onSaved: (value) {
// //                   libelle = value;
// //                 },
// //               ),
// //               SizedBox(height: 20.0),
// //               TextFormField(
// //                 decoration: InputDecoration(labelText: 'Description'),
// //                 onSaved: (value) {
// //                   description = value;
// //                 },
// //               ),
// //               SizedBox(height: 20.0),
// //               TextFormField(
// //                 decoration: InputDecoration(
// //                   labelText: 'Date Début',
// //                 ),
// //                 initialValue: currentDate,
// //                 onSaved: (value) {
// //                   dateDebut = value!;
// //                 },
// //               ),
// //               SizedBox(height: 20.0),
// //               TextFormField(
// //                 controller: _dateController,  // Utilisez un TextEditingController
// //                 decoration: InputDecoration(
// //                   labelText: 'Date Fin Prev.',
// //                   suffixIcon: IconButton(
// //                     icon: Icon(Icons.calendar_today),
// //                     onPressed: () async {
// //                       DateTime? pickedDate = await showDatePicker(
// //                         context: context,
// //                         initialDate: DateTime.now(),
// //                         firstDate: DateTime(2000),
// //                         lastDate: DateTime(2101),
// //                       );
// //                       if (pickedDate != null) {
// //                         String formattedDate = DateFormat('dd/MM/yyyy').format(pickedDate);
// //                         setState(() {
// //                           _dateController.text = formattedDate; // Affiche la date sélectionnée dans l'input
// //                         });
// //                       }
// //                     },
// //                   ),
// //                 ),
// //                 onSaved: (value) {
// //                   dateFinPrev = value!;
// //                 },
// //               ),

// //               // SizedBox(height: 20.0),
// //               // TextFormField(
// //               //   decoration: InputDecoration(
// //               //     labelText: 'Date Fin Prev.',
// //               //   ),
// //               //   onSaved: (value) {
// //               //     dateFinPrev = value;
// //               //   },
// //               // ),
// //               SizedBox(height: 20.0),
// //               DropdownButtonFormField<String>(
// //                 decoration: InputDecoration(
// //                   labelText: 'Chef Chantier',
// //                   labelStyle: TextStyle(
// //                     fontSize: 18.0,
// //                     fontWeight: FontWeight.w600,
// //                   ),
// //                   border: OutlineInputBorder(
// //                     borderRadius: BorderRadius.circular(12.0),
// //                     borderSide: BorderSide(
// //                       color: Colors.blue,
// //                       width: 2.0,
// //                     ),
// //                   ),
// //                   contentPadding: EdgeInsets.symmetric(
// //                     horizontal: 16.0,
// //                     vertical: 12.0,
// //                   ),
// //                 ),
// //                 value: chefChantier,
// //                 items: chefOptions.map((String value) {
// //                   return DropdownMenuItem<String>(
// //                     value: value,
// //                     child: Text(
// //                       value,
// //                       style: TextStyle(
// //                         fontSize: 16.0,
// //                         fontWeight: FontWeight.w500,
// //                         color: Colors.black,
// //                       ),
// //                     ),
// //                   );
// //                 }).toList(),
// //                 onChanged: (newValue) {
// //                   setState(() {
// //                     chefChantier = newValue;
// //                   });
// //                 },
// //               ),
// //               SizedBox(height: 50.0),
// //               ElevatedButton(
// //                 onPressed: _submitForm,
// //                 style: ElevatedButton.styleFrom(
// //                   backgroundColor: Colors.blue,
// //                   foregroundColor: Colors.white,
// //                   padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(12.0),
// //                   ),
// //                   elevation: 6,
// //                   textStyle: TextStyle(
// //                     fontSize: 18.0,
// //                     fontWeight: FontWeight.bold,
// //                   ),
// //                 ),
// //                 child: Text('Ajouter'),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';

// class AddChantierForm extends StatefulWidget {
//   @override
//   _SuiviChantierScreenState createState() => _SuiviChantierScreenState();
// }

// class _SuiviChantierScreenState extends State<AddChantierForm> {
//   final _formKey = GlobalKey<FormState>();
//   String? _libelle;
//   bool _suiviGrosOeuvre = false;
//   DateTime? _selectedDate;
//   String? _bloc;

//   _selectDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(2020),
//       lastDate: DateTime(2030),
//     );
//     if (picked != null && picked != _selectedDate)
//       setState(() {
//         _selectedDate = picked;
//       });
//   }

//   _submitForm() {
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState!.save();
//       // Process form data
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Suivi de chantier'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.settings),
//             onPressed: () {
//               // Handle settings action
//             },
//           ),
//           ElevatedButton(
//             onPressed: _submitForm,
//             child: Text('Ajouter'),
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: ListView(
//             children: [
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'Libellé',
//                 ),
//                 onSaved: (value) {
//                   _libelle = value;
//                 },
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Veuillez entrer un libellé';
//                   }
//                   return null;
//                 },
//               ),
//               CheckboxListTile(
//                 title: Text('Suivi Gros oeuvre'),
//                 value: _suiviGrosOeuvre,
//                 onChanged: (bool? value) {
//                   setState(() {
//                     _suiviGrosOeuvre = value!;
//                   });
//                 },
//               ),
//               ListTile(
//                 title: Text("Choose a date"),
//                 trailing: Icon(Icons.calendar_today),
//                 subtitle: Text(
//                     _selectedDate == null ? 'No date chosen!' : _selectedDate.toString()),
//                 onTap: () => _selectDate(context),
//               ),
//               DropdownButtonFormField<String>(
//                 decoration: InputDecoration(
//                   labelText: 'Bloc',
//                 ),
//                 items: [
//                   DropdownMenuItem(value: "Bloc A", child: Text("Bloc A")),
//                   DropdownMenuItem(value: "Bloc B", child: Text("Bloc B")),
//                 ],
//                 onChanged: (value) {
//                   setState(() {
//                     _bloc = value;
//                   });
//                 },
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Veuillez sélectionner un bloc';
//                   }
//                   return null;
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:gecimmoa/routes/app_routes.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AddChantierForm extends StatefulWidget {
  @override
  _AddChantierFormState createState() => _AddChantierFormState();
}

class _AddChantierFormState extends State<AddChantierForm> {
  final _formKey = GlobalKey<FormState>();
  String? _libelle;
  bool _suiviGrosOeuvre = false;
  DateTime? _selectedDate;
  String? _bloc;

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      // Construction des données du formulaire
      final data = {
        'libelle': _libelle,
        'suiviGrosOeuvre': _suiviGrosOeuvre,
        'date':
            _selectedDate?.toIso8601String(), // Convertir la date en format ISO
        'bloc': _bloc,
      };

      try {
        // Requête POST vers l'API
        final response = await http.post(
          Uri.parse(
              'http://localhost:3000/suivi-chantier'), // Remplacez par votre URL backend
          headers: {'Content-Type': 'application/json'},
          body: json.encode(data),
        );

        // Gestion de la réponse du serveur
        if (response.statusCode == 201) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Chantier ajouté avec succès!')),
          );
          // Navigation vers l'écran de gestion des tâches
          Navigator.pushNamed(context, AppRoutes.taskManagementScreen);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Échec de l\'ajout du chantier!')),
          );
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erreur: ${e.toString()}')),
        );
      }
    }
  }

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Suivi de chantier'),
          actions: [
            // IconButton(
            //   icon: Icon(Icons.settings),
            //   onPressed: () {
            //     // Handle settings action
            //   },
            // ),
            ElevatedButton(
              onPressed: _submitForm,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF4CAF50), // Couleur de fond
                foregroundColor: Colors.white, // Couleur du texte
                padding: EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 15.0), // Padding
                textStyle: TextStyle(
                  fontSize: 18.0, // Taille du texte
                  fontWeight: FontWeight.bold, // Épaisseur du texte
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), // Bordure arrondie
                ),
                elevation: 5.0, // Ombre sous le bouton
              ),
              child: Text('Ajouter'),
            )
            // ElevatedButton(
            //   onPressed: _submitForm,
            //   child: Text('Ajouter'),
            // ),
          ],
        ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: ListView(
//             children: [
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'Libellé',
//                 ),
//                 onSaved: (value) {
//                   _libelle = value;
//                 },
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Veuillez entrer un libellé';
//                   }
//                   return null;
//                 },
//               ),
//               CheckboxListTile(
//                 title: Text('Suivi Gros oeuvre'),
//                 value: _suiviGrosOeuvre,
//                 onChanged: (bool? value) {
//                   setState(() {
//                     _suiviGrosOeuvre = value!;
//                   });
//                 },
//               ),
//               ListTile(
//                 title: Text("Choisir une date"),
//                 trailing: Icon(Icons.calendar_today),
//                 subtitle: Text(
//                     _selectedDate == null ? 'Aucune date choisie!' : _selectedDate.toString()),
//                 onTap: () => _selectDate(context),
//               ),
//               DropdownButtonFormField<String>(
//                 decoration: InputDecoration(
//                   labelText: 'Bloc',
//                 ),
//                 items: [
//                   DropdownMenuItem(value: "Bloc A", child: Text("Bloc A")),
//                   DropdownMenuItem(value: "Bloc B", child: Text("Bloc B")),
//                 ],
//                 onChanged: (value) {
//                   setState(() {
//                     _bloc = value;
//                   });
//                 },
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Veuillez sélectionner un bloc';
//                   }
//                   return null;
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Libellé',
                    labelStyle: TextStyle(
                      color: const Color.fromARGB(255, 244, 244, 245),
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 246, 246, 247), // Couleur de la bordure par défaut
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 242, 242, 243), // Couleur de la bordure quand le champ est activé
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 243, 244, 245), // Couleur de la bordure quand le champ est focalisé
                      ),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                  ),
                  onSaved: (value) {
                    _libelle = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer un libellé';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                CheckboxListTile(
                  title: Text(
                    'Suivi Gros oeuvre',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 248, 249, 250),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  value: _suiviGrosOeuvre,
                  onChanged: (bool? value) {
                    setState(() {
                      _suiviGrosOeuvre = value!;
                    });
                  },
                  activeColor: Colors.blueAccent,
                ),
                SizedBox(height: 16.0),
                ListTile(
                  title: Text(
                    "Choisir une date",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 247, 247, 248),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing:
                      Icon(Icons.calendar_today, color: const Color.fromARGB(255, 242, 243, 245)),
                  subtitle: Text(
                    _selectedDate == null
                        ? 'Aucune date choisie!'
                        : _selectedDate.toString(),
                    style: TextStyle(
                        color: const Color.fromARGB(255, 243, 242, 242)),
                  ),
                  onTap: () => _selectDate(context),
                ),
                SizedBox(height: 16.0),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Bloc',
                    labelStyle: TextStyle(
                      color: const Color.fromARGB(255, 233, 234, 236),
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 253, 254, 254), // Couleur de la bordure par défaut
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 244, 244, 245), // Couleur de la bordure quand le champ est activé
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 244, 244, 244), // Couleur de la bordure quand le champ est focalisé
                      ),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                  ),
                  items: [
                    DropdownMenuItem(
                      value: "Bloc A",
                      child: DefaultTextStyle(
                        style: TextStyle(color: Colors.black),
                        child: Text("Bloc A"),
                      ),
                    ),
                    DropdownMenuItem(
                      value: "Bloc B",
                      child: DefaultTextStyle(
                        style: TextStyle(color: Colors.black),
                        child: Text("Bloc B"),
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _bloc = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez sélectionner un bloc';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
    // body: Padding(
    //   padding: const EdgeInsets.all(40.0),
    //   child: Form(
    //     key: _formKey,
    //     child: ListView(
    //       children: [
    //         TextFormField(
    //           decoration: InputDecoration(
    //             labelText: 'Libellé',
    //             labelStyle: TextStyle(
    //               color: Colors.blueAccent, // Adjust color to your theme
    //               fontWeight: FontWeight.bold,
    //             ),
    //             border: OutlineInputBorder(
    //               borderRadius: BorderRadius.circular(8.0),
    //             ),
                
    //             contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
    //           ),
    //           onSaved: (value) {
    //             _libelle = value;
    //           },
    //           validator: (value) {
    //             if (value == null || value.isEmpty) {
    //               return 'Veuillez entrer un libellé';
    //             }
    //             return null;
    //           },
    //         ),
    //         SizedBox(height: 16.0), // Add spacing between form elements
    //         CheckboxListTile(
    //           title: Text(
    //             'Suivi Gros oeuvre',
    //             style: TextStyle(
    //                color: Colors.blueAccent,
    //               fontWeight: FontWeight.w600,
    //             ),
    //           ),
    //           value: _suiviGrosOeuvre,
    //           onChanged: (bool? value) {
    //             setState(() {
    //               _suiviGrosOeuvre = value!;
    //             });
    //           },
    //           activeColor: Colors.blueAccent,
    //         ),
    //         SizedBox(height: 16.0),
    //         ListTile(
    //           title: Text(
    //             "Choisir une date",
    //             style: TextStyle(
    //                color: Colors.blueAccent,
    //               fontWeight: FontWeight.w600,
    //             ),
    //           ),
    //           trailing: Icon(Icons.calendar_today, color: Colors.blueAccent),
    //           subtitle: Text(
    //             _selectedDate == null ? 'Aucune date choisie!' : _selectedDate.toString(),
    //             style: TextStyle(color: const Color.fromARGB(255, 243, 242, 242)),
    //           ),
    //           onTap: () => _selectDate(context),
    //         ),
    //         SizedBox(height: 16.0),
    //         DropdownButtonFormField<String>(
    //         decoration: InputDecoration(
    //           labelText: 'Bloc',
    //           labelStyle: TextStyle(
    //             color: Colors.blueAccent,
    //             fontWeight: FontWeight.bold,
    //           ),
              
    //           border: OutlineInputBorder(
    //             borderRadius: BorderRadius.circular(8.0),
    //           ),
    //           contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
    //         ),
    //         items: [
    //           DropdownMenuItem(
    //             value: "Bloc A",
    //             child: DefaultTextStyle(
    //               style: TextStyle(color: Colors.black), // Apply black text color
    //               child: Text("Bloc A"),
    //             ),
    //           ),
    //           DropdownMenuItem(
    //             value: "Bloc B",
    //             child: DefaultTextStyle(
    //               style: TextStyle(color: Colors.black), // Apply black text color
    //               child: Text("Bloc B"),
    //             ),
    //           ),
    //         ],
    //         onChanged: (value) {
    //           setState(() {
    //             _bloc = value;
    //           });
    //         },
    //         validator: (value) {
    //           if (value == null || value.isEmpty) {
    //             return 'Veuillez sélectionner un bloc';
    //           }
    //           return null;
    //         },
    //       ),
    //         // DropdownButtonFormField<String>(
    //         //   decoration: InputDecoration(
    //         //     labelText: 'Bloc',
    //         //     labelStyle: TextStyle(
    //         //       color: Colors.blueAccent,
    //         //       fontWeight: FontWeight.bold,
    //         //     ),
    //         //     border: OutlineInputBorder(
    //         //       borderRadius: BorderRadius.circular(8.0),
    //         //     ),
    //         //     contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
    //         //   ),
    //         //   items: [
    //         //     DropdownMenuItem(value: "Bloc A", child: Text("Bloc A")),
    //         //     DropdownMenuItem(value: "Bloc B", child: Text("Bloc B")),
    //         //   ],
    //         //   onChanged: (value) {
    //         //     setState(() {
    //         //       _bloc = value;
    //         //     });
    //         //   },
    //         //   validator: (value) {
    //         //     if (value == null || value.isEmpty) {
    //         //       return 'Veuillez sélectionner un bloc';
    //         //     }
    //         //     return null;
    //         //   },
    //         // ),
    //       ],
    //     ),
    //   ),
    // ),
    // );
    // }
    // }
