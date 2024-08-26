import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'gecimmoa',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.initialRoute,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
////
// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: TaskManagementScreen(),
//     );
//   }
// }

// class TaskManagementScreen extends StatefulWidget {
//   @override
//   _TaskManagementScreenState createState() => _TaskManagementScreenState();
// }

// class _TaskManagementScreenState extends State<TaskManagementScreen> {
//   final List<Map<String, String>> tasks = [
//     {
//       'libelle': 'Libelle',
//       'description': 'Description',
//       'dateDebut': '06/08/2018',
//       'dateFinPrev': '24/08/2018',
//       'chefChantier': 'Elachouri'
//     },
//     {
//       'libelle': 'Libelle 2',
//       'description': 'Description 2',
//       'dateDebut': '06/08/2018',
//       'dateFinPrev': '25/08/2018',
//       'chefChantier': 'Rizqui'
//     },
//   ];

//   void _addTask(String libelle, String description, String dateDebut, String dateFinPrev, String chefChantier) {
//     setState(() {
//       tasks.add({
//         'libelle': libelle,
//         'description': description,
//         'dateDebut': dateDebut,
//         'dateFinPrev': dateFinPrev,
//         'chefChantier': chefChantier,
//       });
//     });
//   }

//   void _showAddTaskForm(BuildContext context) {
//     final _formKey = GlobalKey<FormState>();
//     String libelle = '', description = '', dateDebut = '', dateFinPrev = '', chefChantier = '';

//     showDialog(
//       context: context,
//       builder: (ctx) => AlertDialog(
//         title: Text('Ajouter un chantier'),
//         content: Form(
//           key: _formKey,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Libellé'),
//                 onSaved: (value) => libelle = value!,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Description'),
//                 onSaved: (value) => description = value!,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Date Début'),
//                 onSaved: (value) => dateDebut = value!,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Date Fin Prev.'),
//                 onSaved: (value) => dateFinPrev = value!,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Chef Chantier'),
//                 onSaved: (value) => chefChantier = value!,
//               ),
//             ],
//           ),
//         ),
//         actions: [
//           TextButton(
//             child: Text('Annuler'),
//             onPressed: () => Navigator.of(ctx).pop(),
//           ),
//           ElevatedButton(
//             child: Text('Ajouter'),
//             onPressed: () {
//               if (_formKey.currentState!.validate()) {
//                 _formKey.currentState!.save();
//                 _addTask(libelle, description, dateDebut, dateFinPrev, chefChantier);
//                 Navigator.of(ctx).pop();
//               }
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   void _deleteTask(int index) {
//     setState(() {
//       tasks.removeAt(index);
//     });
//   }

//   // void _showAttendanceAgenda(BuildContext context) {
//   //   showDialog(
//   //     context: context,
//   //     builder: (ctx) => AlertDialog(
//   //       title: Text('Agenda des présences'),
//   //       content: Container(
//   //         width: double.maxFinite,
//   //         child: TableCalendar(
//   //           calendarStyle: CalendarStyle(
//   //             todayDecoration: BoxDecoration(
//   //               color: Colors.blueAccent,
//   //               shape: BoxShape.circle,
//   //             ),
//   //           ),
//   //           firstDay: DateTime.utc(2020, 1, 1),
//   //           lastDay: DateTime.utc(2100, 12, 31),
//   //           focusedDay: DateTime.now(),
//   //           onDaySelected: (selectedDay, focusedDay) {
//   //             // Handle day selection
//   //           },
//   //         ),
//   //       ),
//   //       actions: [
//   //         TextButton(
//   //           child: Text('Annuler'),
//   //           onPressed: () => Navigator.of(ctx).pop(),
//   //         ),
//   //       ],
//   //     ),
//   //   );
//   // }
//   void _showAttendanceAgenda(BuildContext context) {
//   DateTime _selectedDay = DateTime.now();
//   Map<DateTime, List<String>> _agenda = {};

//   void _addTaskForDay(DateTime day, String task) {
//     setState(() {
//       if (_agenda[day] == null) {
//         _agenda[day] = [];
//       }
//       _agenda[day]!.add(task);
//     });
//   }

//   void _showAddTaskDialog(BuildContext ctx) {
//     final _taskController = TextEditingController();
//     showDialog(
//       context: ctx,
//       builder: (context) => AlertDialog(
//         title: Text('Ajouter une tâche'),
//         content: TextField(
//           controller: _taskController,
//           decoration: InputDecoration(hintText: 'Saisir la tâche'),
//         ),
//         actions: [
//           TextButton(
//             child: Text('Annuler'),
//             onPressed: () => Navigator.of(context).pop(),
//           ),
//           ElevatedButton(
//             child: Text('Ajouter'),
//             onPressed: () {
//               if (_taskController.text.isNotEmpty) {
//                 _addTaskForDay(_selectedDay, _taskController.text);
//                 Navigator.of(context).pop();
//               }
//             },
//           ),
//         ],
//       ),
//     );
//   }
//   showDialog(
//     context: context,
//     builder: (ctx) => StatefulBuilder(
//       builder: (BuildContext context, StateSetter setState) {
//         return AlertDialog(
//           title: Text('Agenda des présences'),
//           content: SingleChildScrollView(
//             child: Column(
//               children: [
//                 TableCalendar(
//                   calendarStyle: CalendarStyle(
//                     todayDecoration: BoxDecoration(
//                       color: Colors.blueAccent,
//                       shape: BoxShape.circle,
//                     ),
//                   ),
//                   firstDay: DateTime.utc(2020, 1, 1),
//                   lastDay: DateTime.utc(2100, 12, 31),
//                   focusedDay: _selectedDay,
//                   selectedDayPredicate: (day) => isSameDay(day, _selectedDay),
//                   onDaySelected: (selectedDay, focusedDay) {
//                     setState(() {
//                       _selectedDay = selectedDay;
//                     });
//                   },
//                 ),
//                 SizedBox(height: 16.0),
//                 _agenda[_selectedDay] != null
//                     ? Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: _agenda[_selectedDay]!.map((task) {
//                           return ListTile(
//                             title: Text(task),
//                           );
//                         }).toList(),
//                       )
//                     : Text('Aucune tâche ajoutée pour ce jour.'),
//               ],
//             ),
//           ),
//           actions: [
//             TextButton(
//               child: Text('Annuler'),
//               onPressed: () => Navigator.of(ctx).pop(),
//             ),
//             ElevatedButton(
//               child: Text('Ajouter tâche'),
//               onPressed: () => _showAddTaskDialog(ctx),
//             ),
//           ],
//         );
//       },
//     ),
//   );
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Gestion de suivi des chantiers')),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   ElevatedButton(
//                     onPressed: () => _showAddTaskForm(context),
//                     child: Text('Ajouter un chantier'),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.blue,
//                     ),
//                   ),
//                   SizedBox(width: 8.0),
//                   ElevatedButton(
//                     onPressed: () => _showAttendanceAgenda(context),
//                     child: Text('Agenda des présences'),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.orange,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: DataTable(
//                 columns: [
//                   DataColumn(label: Text('Libellé')),
//                   DataColumn(label: Text('Description')),
//                   DataColumn(label: Text('Date Début')),
//                   DataColumn(label: Text('Date Fin Prev.')),
//                   DataColumn(label: Text('Chef Chantier')),
//                   DataColumn(label: Text('Actions')),
//                 ],
//                 rows: tasks.asMap().entries.map((entry) {
//                   int index = entry.key;
//                   Map<String, String> task = entry.value;
//                   return DataRow(cells: [
//                     DataCell(Text(task['libelle']!)),
//                     DataCell(Text(task['description']!)),
//                     DataCell(Text(task['dateDebut']!)),
//                     DataCell(Text(task['dateFinPrev']!)),
//                     DataCell(Text(task['chefChantier']!)),
//                     DataCell(Row(
//                       children: [
//                         TextButton(
//                           onPressed: () => _deleteTask(index),
//                           child: Text('Supprimer', style: TextStyle(color: Colors.blue)),
//                         ),
//                         TextButton(
//                           onPressed: () {
//                             // Implement "Ajouter les présences" functionality
//                           },
//                           child: Text('Ajouter les présences', style: TextStyle(color: Colors.blue)),
//                         ),
//                       ],
//                     )),
//                   ]);
//                 }).toList(),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// // // import 'package:flutter/material.dart';
// // // import 'package:table_calendar/table_calendar.dart';

// // // void main() {
// // //   runApp(MyApp());
// // // }

// // // class MyApp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       home: TaskManagementScreen(),
// // //       theme: ThemeData(
// // //         primarySwatch: Colors.indigo,
// // //         visualDensity: VisualDensity.adaptivePlatformDensity,
// // //       ),
// // //     );
// // //   }
// // // }

// // // class TaskManagementScreen extends StatefulWidget {
// // //   @override
// // //   _TaskManagementScreenState createState() => _TaskManagementScreenState();
// // // }

// // // class _TaskManagementScreenState extends State<TaskManagementScreen> {
// // //   final List<Map<String, String>> tasks = [
// // //     {
// // //       'libelle': 'Libelle',
// // //       'description': 'Description',
// // //       'dateDebut': '06/08/2018',
// // //       'dateFinPrev': '24/08/2018',
// // //       'chefChantier': 'Elachouri'
// // //     },
// // //     {
// // //       'libelle': 'Libelle 2',
// // //       'description': 'Description 2',
// // //       'dateDebut': '06/08/2018',
// // //       'dateFinPrev': '25/08/2018',
// // //       'chefChantier': 'Rizqui'
// // //     },
// // //   ];

// // //   final Map<DateTime, List<String>> _agenda = {};

// // //   void _addTask(String libelle, String description, String dateDebut, String dateFinPrev, String chefChantier) {
// // //     setState(() {
// // //       tasks.add({
// // //         'libelle': libelle,
// // //         'description': description,
// // //         'dateDebut': dateDebut,
// // //         'dateFinPrev': dateFinPrev,
// // //         'chefChantier': chefChantier,
// // //       });
// // //     });
// // //   }

// // //   void _showAddTaskForm(BuildContext context) {
// // //     final _formKey = GlobalKey<FormState>();
// // //     String libelle = '', description = '', dateDebut = '', dateFinPrev = '', chefChantier = '';

// // //     showDialog(
// // //       context: context,
// // //       builder: (ctx) => AlertDialog(
// // //         title: Text('Ajouter un chantier'),
// // //         content: Form(
// // //           key: _formKey,
// // //           child: Column(
// // //             mainAxisSize: MainAxisSize.min,
// // //             children: [
// // //               TextFormField(
// // //                 decoration: InputDecoration(labelText: 'Libellé'),
// // //                 onSaved: (value) => libelle = value!,
// // //               ),
// // //               TextFormField(
// // //                 decoration: InputDecoration(labelText: 'Description'),
// // //                 onSaved: (value) => description = value!,
// // //               ),
// // //               TextFormField(
// // //                 decoration: InputDecoration(labelText: 'Date Début'),
// // //                 onSaved: (value) => dateDebut = value!,
// // //               ),
// // //               TextFormField(
// // //                 decoration: InputDecoration(labelText: 'Date Fin Prev.'),
// // //                 onSaved: (value) => dateFinPrev = value!,
// // //               ),
// // //               TextFormField(
// // //                 decoration: InputDecoration(labelText: 'Chef Chantier'),
// // //                 onSaved: (value) => chefChantier = value!,
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //         actions: [
// // //           TextButton(
// // //             child: Text('Annuler'),
// // //             onPressed: () => Navigator.of(ctx).pop(),
// // //           ),
// // //           ElevatedButton(
// // //             child: Text('Ajouter'),
// // //             onPressed: () {
// // //               if (_formKey.currentState!.validate()) {
// // //                 _formKey.currentState!.save();
// // //                 _addTask(libelle, description, dateDebut, dateFinPrev, chefChantier);
// // //                 Navigator.of(ctx).pop();
// // //               }
// // //             },
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   void _deleteTask(int index) {
// // //     setState(() {
// // //       tasks.removeAt(index);
// // //     });
// // //   }

// // //   void _showAttendanceAgenda(BuildContext context) {
// // //     DateTime _selectedDay = DateTime.now();

// // //     void _addTaskForDay(DateTime day, String task) {
// // //       setState(() {
// // //         if (_agenda[day] == null) {
// // //           _agenda[day] = [];
// // //         }
// // //         _agenda[day]!.add(task);
// // //       });
// // //     }

// // //     void _showAddTaskDialog(BuildContext ctx) {
// // //       final _taskController = TextEditingController();

// // //       showDialog(
// // //         context: ctx,
// // //         builder: (context) => AlertDialog(
// // //           title: Text('Ajouter une tâche'),
// // //           content: TextField(
// // //             controller: _taskController,
// // //             decoration: InputDecoration(hintText: 'Saisir la tâche'),
// // //           ),
// // //           actions: [
// // //             TextButton(
// // //               child: Text('Annuler'),
// // //               onPressed: () => Navigator.of(context).pop(),
// // //             ),
// // //             ElevatedButton(
// // //               child: Text('Ajouter'),
// // //               onPressed: () {
// // //                 if (_taskController.text.isNotEmpty) {
// // //                   _addTaskForDay(_selectedDay, _taskController.text);
// // //                   Navigator.of(context).pop();
// // //                 }
// // //               },
// // //             ),
// // //           ],
// // //         ),
// // //       );
// // //     }

// // //   //   showDialog(
// // //   //     context: context,
// // //   //     builder: (ctx) => StatefulBuilder(
// // //   //       builder: (BuildContext context, StateSetter setState) {
// // //   //         return AlertDialog(
// // //   //           title: Text('Agenda des présences'),
// // //   //           content: SingleChildScrollView(
// // //   //             child: Column(
// // //   //               children: [
// // //   //                 TableCalendar(
// // //   //                   calendarStyle: CalendarStyle(
// // //   //                     todayDecoration: BoxDecoration(
// // //   //                       color: Colors.blueAccent,
// // //   //                       shape: BoxShape.circle,
// // //   //                     ),
// // //   //                   ),
// // //   //                   firstDay: DateTime.utc(2020, 1, 1),
// // //   //                   lastDay: DateTime.utc(2100, 12, 31),
// // //   //                   focusedDay: _selectedDay,
// // //   //                   selectedDayPredicate: (day) => isSameDay(day, _selectedDay),
// // //   //                   onDaySelected: (selectedDay, focusedDay) {
// // //   //                     setState(() {
// // //   //                       _selectedDay = selectedDay;
// // //   //                     });
// // //   //                   },
// // //   //                 ),
// // //   //                 SizedBox(height: 16.0),
// // //   //                 _agenda[_selectedDay]?.isNotEmpty == true
// // //   //                     ? Column(
// // //   //                         crossAxisAlignment: CrossAxisAlignment.start,
// // //   //                         children: _agenda[_selectedDay]!.map((task) {
// // //   //                           return ListTile(
// // //   //                             title: Text(task),
// // //   //                           );
// // //   //                         }).toList(),
// // //   //                       )
// // //   //                     : Text('Aucune tâche ajoutée pour ce jour.'),
// // //   //               ],
// // //   //             ),
// // //   //           ),
// // //   //           actions: [
// // //   //             TextButton(
// // //   //               child: Text('Annuler'),
// // //   //               onPressed: () => Navigator.of(ctx).pop(),
// // //   //             ),
// // //   //             ElevatedButton(
// // //   //               child: Text('Ajouter tâche'),
// // //   //               onPressed: () => _showAddTaskDialog(ctx),
// // //   //             ),
// // //   //           ],
// // //   //         );
// // //   //       },
// // //   //     ),
// // //   //   );
// // //   // }
// // //   showDialog(
// // //   context: context,
// // //   builder: (ctx) => StatefulBuilder(
// // //     builder: (BuildContext context, StateSetter setState) {
// // //       return AlertDialog(
// // //         title: Text('Agenda des présences'),
// // //         content: SizedBox(
// // //           width: double.maxFinite, // Set a max width for the dialog content
// // //           child: SingleChildScrollView(
// // //             child: Column(
// // //               crossAxisAlignment: CrossAxisAlignment.start,
// // //               children: [
// // //                 TableCalendar(
// // //                   calendarStyle: CalendarStyle(
// // //                     todayDecoration: BoxDecoration(
// // //                       color: Colors.blueAccent,
// // //                       shape: BoxShape.circle,
// // //                     ),
// // //                   ),
// // //                   firstDay: DateTime.utc(2020, 1, 1),
// // //                   lastDay: DateTime.utc(2100, 12, 31),
// // //                   focusedDay: _selectedDay,
// // //                   selectedDayPredicate: (day) => isSameDay(day, _selectedDay),
// // //                   onDaySelected: (selectedDay, focusedDay) {
// // //                     setState(() {
// // //                       _selectedDay = selectedDay;
// // //                     });
// // //                   },
// // //                 ),
// // //                 SizedBox(height: 16.0),
// // //                 _agenda[_selectedDay]?.isNotEmpty == true
// // //                     ? Column(
// // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // //                         children: _agenda[_selectedDay]!.map((task) {
// // //                           return ListTile(
// // //                             title: Text(task),
// // //                           );
// // //                         }).toList(),
// // //                       )
// // //                     : Text('Aucune tâche ajoutée pour ce jour.'),
// // //               ],
// // //             ),
// // //           ),
// // //         ),
// // //         actions: [
// // //           TextButton(
// // //             child: Text('Annuler'),
// // //             onPressed: () => Navigator.of(ctx).pop(),
// // //           ),
// // //           ElevatedButton(
// // //             child: Text('Ajouter tâche'),
// // //             onPressed: () => _showAddTaskDialog(ctx),
// // //           ),
// // //         ],
// // //       );
// // //     },
// // //   ),
// // //   );
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('Gestion de suivi des chantiers', style: TextStyle(fontWeight: FontWeight.bold)),
// // //         backgroundColor: Colors.indigo,
// // //         actions: [
// // //           IconButton(
// // //             icon: Icon(Icons.search),
// // //             onPressed: () {
// // //               // Fonctionnalité de recherche à ajouter
// // //             },
// // //           ),
// // //         ],
// // //       ),
// // //       body: Column(
// // //         children: [
// // //           Padding(
// // //             padding: const EdgeInsets.all(8.0),
// // //             child: SingleChildScrollView(
// // //               scrollDirection: Axis.horizontal,
// // //               child: Row(
// // //                 children: [
// // //                   ElevatedButton(
// // //                     onPressed: () => _showAddTaskForm(context),
// // //                     child: Row(
// // //                       children: [
// // //                         Icon(Icons.add, color: Colors.white),
// // //                         SizedBox(width: 4),
// // //                         Text('Ajouter un chantier'),
// // //                       ],
// // //                     ),
// // //                     style: ElevatedButton.styleFrom(
// // //                       backgroundColor: Colors.blue,
// // //                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
// // //                     ),
// // //                   ),
// // //                   SizedBox(width: 8.0),
// // //                   ElevatedButton(
// // //                     onPressed: () => _showAttendanceAgenda(context),
// // //                     child: Row(
// // //                       children: [
// // //                         Icon(Icons.calendar_today, color: Colors.white),
// // //                         SizedBox(width: 4),
// // //                         Text('Agenda des présences'),
// // //                       ],
// // //                     ),
// // //                     style: ElevatedButton.styleFrom(
// // //                       backgroundColor: Colors.orange,
// // //                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
// // //                     ),
// // //                   ),
// // //                 ],
// // //               ),
// // //             ),
// // //           ),
// // //           Expanded(
// // //             child: Padding(
// // //               padding: const EdgeInsets.all(8.0),
// // //               child: Card(
// // //                 shape: RoundedRectangleBorder(
// // //                   borderRadius: BorderRadius.circular(10),
// // //                 ),
// // //                 elevation: 4,
// // //                 child: SingleChildScrollView(
// // //                   scrollDirection: Axis.horizontal,
// // //                   child: DataTable(
// // //                     columnSpacing: 12,
// // //                     headingRowColor: MaterialStateProperty.all(Colors.grey[200]),
// // //                     columns: [
// // //                       DataColumn(label: Text('Libellé', style: TextStyle(fontWeight: FontWeight.bold))),
// // //                       DataColumn(label: Text('Description', style: TextStyle(fontWeight: FontWeight.bold))),
// // //                       DataColumn(label: Text('Date Début', style: TextStyle(fontWeight: FontWeight.bold))),
// // //                       DataColumn(label: Text('Date Fin Prev.', style: TextStyle(fontWeight: FontWeight.bold))),
// // //                       DataColumn(label: Text('Chef Chantier', style: TextStyle(fontWeight: FontWeight.bold))),
// // //                       DataColumn(label: Text('Actions', style: TextStyle(fontWeight: FontWeight.bold))),
// // //                     ],
// // //                     rows: tasks.asMap().entries.map((entry) {
// // //                       int index = entry.key;
// // //                       Map<String, String> task = entry.value;
// // //                       return DataRow(
// // //                         cells: [
// // //                           DataCell(Text(task['libelle'] ?? '')),
// // //                           DataCell(Text(task['description'] ?? '')),
// // //                           DataCell(Text(task['dateDebut'] ?? '')),
// // //                           DataCell(Text(task['dateFinPrev'] ?? '')),
// // //                           DataCell(Text(task['chefChantier'] ?? '')),
// // //                           DataCell(
// // //                             Row(
// // //                               children: [
// // //                                 IconButton(
// // //                                   icon: Icon(Icons.delete, color: Colors.red),
// // //                                   onPressed: () => _deleteTask(index),
// // //                                 ),
// // //                               ],
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       );
// // //                     }).toList(),
// // //                   ),
// // //                 ),
// // //               ),
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Demande D\'achat',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: DemandeAchatScreen(),
//     );
//   }
// }

// class DemandeAchatScreen extends StatefulWidget {
//   @override
//   _DemandeAchatScreenState createState() => _DemandeAchatScreenState();
// }

// class _DemandeAchatScreenState extends State<DemandeAchatScreen> {
//   List<Map<String, String>> demandes = [
//     {
//       "projet": "FA-111",
//       "demandeur": "Alae Test",
//       "destinataire": "Yassine",
//       "validation": "Validé",
//       "dateLivraison": "11/11/2023",
//       "dateTraitement": "01/11/2023"
//     },
//     {
//       "projet": "FA-111",
//       "demandeur": "Alae Test",
//       "destinataire": "Yassine",
//       "validation": "Non Validé",
//       "dateLivraison": "11/11/2023",
//       "dateTraitement": "01/11/2023"
//     },
//     // Ajoutez d'autres demandes ici
//   ];

//   String? _selectedFilter;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Demande D\'achat'),
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           onPressed: () {},
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             _buildStatsRow(),
//             SizedBox(height: 16.0),
//             _buildActionButtons(context),
//             SizedBox(height: 16.0),
//             Expanded(child: _buildDemandList()),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.phone),
//             label: 'Contact',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.attach_money),
//             label: 'Finance',
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildStatsRow() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         _buildStatCard("En cours", "51"),
//         _buildStatCard("Traitée", "40"),
//         _buildStatCard("Refusée", "5"),
//         _buildStatCard("Appel d'offre", "6"),
//         _buildStatCard("Demande de prix", "14"),
//         _buildStatCard("Avenant", "20"),
//       ],
//     );
//   }

//   Widget _buildStatCard(String title, String count) {
//     return Expanded(
//       child: Column(
//         children: [
//           Text(
//             title,
//             style: TextStyle(color: const Color.fromARGB(255, 219, 83, 83), fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 8.0),
//           Container(
//             padding: EdgeInsets.all(8.0),
//             decoration: BoxDecoration(
//               color: Colors.brown,
//               borderRadius: BorderRadius.circular(8.0),
//             ),
//             child: Text(
//               count,
//               style: TextStyle(color: Colors.white, fontSize: 20.0),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildActionButtons(BuildContext context) {
//     return Row(
//       children: [
//         // Expanded(
//         //   child: ElevatedButton(
//         //     onPressed: () {
//         //       Navigator.push(
//         //         context,
//         //         MaterialPageRoute(builder: (context) => NouvelleDemandeAchatScreen()),
//         //       );
//         //     },
//         //     child: Text('Créer Une Demande D\'achat'),
//         //   ),
//         // ),
//         SizedBox(width: 8.0),
//         IconButton(
//           icon: Icon(Icons.filter_list),
//           onPressed: () {
//             _buildFilterChips();
//           },
//         ),
//       ],
//     );
//   }

//   Widget _buildDemandList() {
//     List<Map<String, String>> filteredDemandes = _selectedFilter != null
//         ? demandes.where((demande) => demande["validation"] == _selectedFilter).toList()
//         : demandes;

//     return ListView.builder(
//       itemCount: filteredDemandes.length,
//       itemBuilder: (context, index) {
//         return Card(
//           margin: EdgeInsets.symmetric(vertical: 8.0),
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Text(
//                   "Projet : ${filteredDemandes[index]["projet"]}",
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 4.0),
//                 Text("Demandeur : ${filteredDemandes[index]["demandeur"]}"),
//                 Text("Destinataire : ${filteredDemandes[index]["destinataire"]}"),
//                 SizedBox(height: 4.0),
//                 Text("Validation : ${filteredDemandes[index]["validation"]}"),
//                 Text("Date Livraison : ${filteredDemandes[index]["dateLivraison"]}"),
//                 Text("Date Traitement : ${filteredDemandes[index]["dateTraitement"]}"),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//  Widget _buildFilterChips() {
//     return Row(
//       children: <String>['Tout', 'Validé', 'Non Validé'].map((filter) {
//         return Padding(
//           padding: const EdgeInsets.only(right: 8.0),
//           child: ChoiceChip(
//             label: Text(filter),
//             selected: _selectedFilter == filter,
//             onSelected: (bool selected) {
//               setState(() {
//                 _selectedFilter = filter;
//               });
//             },
//           ),
//         );
//       }).toList(),
//     );
//   }
// //   void _showFilterOptions(BuildContext context) {
// //   showModalBottomSheet(
// //     context: context,
// //     shape: RoundedRectangleBorder(
// //       borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
// //     ),
// //     builder: (context) {
// //       return Container(
// //         padding: const EdgeInsets.all(16.0),
// //         decoration: BoxDecoration(
// //           color: Colors.white,
// //           borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
// //         ),
// //         child: Column(
// //           mainAxisSize: MainAxisSize.min,
// //           children: [
// //             ListTile(
// //               leading: Icon(Icons.all_inclusive, color: Colors.blue),
// //               title: Text("Tout"),
// //               onTap: () {
// //                 setState(() {
// //                   _selectedFilter = null;
// //                 });
// //                 Navigator.pop(context);
// //               },
// //             ),
// //             ListTile(
// //               leading: Icon(Icons.check_circle, color: Colors.green),
// //               title: Text("Validé"),
// //               onTap: () {
// //                 setState(() {
// //                   _selectedFilter = "Validé";
// //                 });
// //                 Navigator.pop(context);
// //               },
// //             ),
// //             ListTile(
// //               leading: Icon(Icons.cancel, color: Colors.red),
// //               title: Text("Non Validé"),
// //               onTap: () {
// //                 setState(() {
// //                   _selectedFilter = "Non Validé";
// //                 });
// //                 Navigator.pop(context);
// //               },
// //             ),
// //             // Ajoutez d'autres options de filtre ici
// //           ],
// //         ),
// //       );
// //     },
// //   );
// // }


// // class NouvelleDemandeAchatScreen extends StatefulWidget {
// //   @override
// //   _NouvelleDemandeAchatScreenState createState() => _NouvelleDemandeAchatScreenState();
// // }

// // class _NouvelleDemandeAchatScreenState extends State<NouvelleDemandeAchatScreen> {
// //   final _formKey = GlobalKey<FormState>();

// //   // Controllers pour les champs de texte
// //   final _projetController = TextEditingController(text: "FA-111");
// //   final _demandeurController = TextEditingController(text: "Alae Test");
// //   final _destinataireController = TextEditingController(text: "Yassine");

// //   @override
// //   void dispose() {
// //     _projetController.dispose();
// //     _demandeurController.dispose();
// //     _destinataireController.dispose();
// //     super.dispose();
// //   }

// //   void _submitForm() {
// //     if (_formKey.currentState!.validate()) {
// //       // Logique de soumission du formulaire
// //       final String projet = _projetController.text;
// //       final String demandeur = _demandeurController.text;
// //       final String destinataire = _destinataireController.text;

// //       // Vous pouvez gérer ici la sauvegarde des données
// //       print("Projet: $projet");
// //       print("Demandeur: $demandeur");
// //       print("Destinataire: $destinataire");

// //       // Retour à l'écran précédent après soumission
// //       Navigator.pop(context);
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Nouvelle Demande d\'Achat'),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Form(
// //           key: _formKey,
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.stretch,
// //             children: [
// //               _buildTextField("Projet", controller: _projetController),
// //               SizedBox(height: 12.0),
// //               _buildTextField("Demandeur", controller: _demandeurController),
// //               SizedBox(height: 12.0),
// //               _buildTextField("Destinataire", controller: _destinataireController),
// //               SizedBox(height: 12.0),
// //               ElevatedButton(
// //                 onPressed: _submitForm,
// //                 child: Text('Soumettre'),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

//   Widget _buildTextField(String label, {required TextEditingController controller}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: TextStyle(
//             fontSize: 18.0,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         SizedBox(height: 8.0),
//         TextFormField(
//           controller: controller,
//           decoration: InputDecoration(
//             hintText: 'Entrez $label',
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(5.0),
//             ),
//             contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
//           ),
//           validator: (value) {
//             if (value == null || value.isEmpty) {
//               return 'Veuillez entrer $label';
//             }
//             return null;
//           },
//         ),
//       ]
//     );
//   }
// }