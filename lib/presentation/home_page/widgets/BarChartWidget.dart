// // import 'dart:convert';
// // import 'package:http/http.dart' as http;
// // import 'package:fl_chart/fl_chart.dart';
// // import 'package:flutter/material.dart';
// // import 'package:intl/intl.dart';

// // class FilterAndGraphScreen extends StatefulWidget {
// //   @override
// //   _FilterAndGraphScreenState createState() => _FilterAndGraphScreenState();
// // }

// // class _FilterAndGraphScreenState extends State<FilterAndGraphScreen> {
// //   String _selectedFilter = 'AJ'; // Filtre par défaut
// //   DateTime? _startDate;
// //   DateTime? _endDate;

// //   // Dummy values for the chart data
// //   List<BarChartGroupData> _barGroups = [];

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Graphique avec Filtre'),
// //       ),
// //       body: Column(
// //         children: [
// //           _buildFilterInput(),
// //           _buildDateRangeInput(),
// //           Expanded(child: _buildDesignStack(context)),
// //           ElevatedButton(
// //             onPressed: _fetchData,
// //             child: Text('Charger les Données'),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildFilterInput() {
// //     return DropdownButton<String>(
// //       value: _selectedFilter,
// //       onChanged: (String? newValue) {
// //         setState(() {
// //           _selectedFilter = newValue!;
// //         });
// //       },
// //       items: <String>['AJ', 'CS', 'CM', 'TDM', 'AP', 'DP', 'ID']
// //           .map<DropdownMenuItem<String>>((String value) {
// //         return DropdownMenuItem<String>(
// //           value: value,
// //           child: Text(value),
// //         );
// //       }).toList(),
// //     );
// //   }

// //   Widget _buildDateRangeInput() {
// //     return Row(
// //       children: [
// //         Expanded(
// //           child: ListTile(
// //             title: Text('Date de début'),
// //             subtitle: Text(_startDate != null ? DateFormat('yyyy-MM-dd').format(_startDate!) : 'Choisir une date'),
// //             trailing: Icon(Icons.calendar_today),
// //             onTap: () async {
// //               DateTime? picked = await showDatePicker(
// //                 context: context,
// //                 initialDate: _startDate ?? DateTime.now(),
// //                 firstDate: DateTime(2000),
// //                 lastDate: DateTime(2101),
// //               );
// //               if (picked != null && picked != _startDate) {
// //                 setState(() {
// //                   _startDate = picked;
// //                 });
// //               }
// //             },
// //           ),
// //         ),
// //         Expanded(
// //           child: ListTile(
// //             title: Text('Date de fin'),
// //             subtitle: Text(_endDate != null ? DateFormat('yyyy-MM-dd').format(_endDate!) : 'Choisir une date'),
// //             trailing: Icon(Icons.calendar_today),
// //             onTap: () async {
// //               DateTime? picked = await showDatePicker(
// //                 context: context,
// //                 initialDate: _endDate ?? DateTime.now(),
// //                 firstDate: DateTime(2000),
// //                 lastDate: DateTime(2101),
// //               );
// //               if (picked != null && picked != _endDate) {
// //                 setState(() {
// //                   _endDate = picked;
// //                 });
// //               }
// //             },
// //           ),
// //         ),
// //       ],
// //     );
// //   }

// //   Future<void> _fetchData() async {
// //     // Replace with your API endpoint
// //     final url = 'http://159.69.119.46/AchatTestTEMP/Api/GetDataDashoard?token=YOUR_TOKEN&TypeFilter=$_selectedFilter&DateFromString=${_startDate != null ? DateFormat('yyyy-MM-dd').format(_startDate!) : ''}&DateToString=${_endDate != null ? DateFormat('yyyy-MM-dd').format(_endDate!) : ''}';
    
// //     final response = await http.get(Uri.parse(url));
// //     final data = jsonDecode(response.body);
    
// //     if (data['err'] == false) {
// //       setState(() {
// //         _barGroups = [
// //           _generateGroupData(0, data['msg']['MontantBcV']),
// //           _generateGroupData(1, data['msg']['MontantBcNV']),
// //           _generateGroupData(2, data['msg']['NbrFacture']),
// //         ];
// //       });
// //     } else {
// //       // Handle error
// //       print('Error: ${data['msg']}');
// //     }
// //   }

// //   BarChartGroupData _generateGroupData(int x, double y) {
// //     return BarChartGroupData(
// //       x: x,
// //       barRods: [
// //         BarChartRodData(y: y),
// //       ],
// //     );
// //   }

// //   Widget _buildDesignStack(BuildContext context) {
    
// //     return SizedBox(
// //       height: 206,
// //       width: double.maxFinite,
// //       child: Stack(
// //         alignment: Alignment.center,
// //         children: [
// //           Positioned.fill(
// //             child: Padding(
// //               padding: EdgeInsets.symmetric(horizontal: 22),
// //               child: AspectRatio(
// //                 aspectRatio: 2,
// //                 child: BarChart(
// //                   BarChartData(
// //                     backgroundColor: Colors.white,
// //                     barGroups: _barGroups,
// //                     barTouchData: BarTouchData(
// //                       enabled: true,
// //                       touchTooltipData: BarTouchTooltipData(
// //                         tooltipBgColor: const Color.fromARGB(255, 23, 121, 171),
// //                         getTooltipItem: (group, groupIndex, rod, rodIndex) {
// //                           return BarTooltipItem(
// //                             rod.y.round().toString(),
// //                             TextStyle(
// //                               color: Colors.white,
// //                               fontWeight: FontWeight.bold,
// //                             ),
// //                           );
// //                         },
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class FilterAndGraphScreen extends StatefulWidget {
//   @override
//   _FilterAndGraphScreenState createState() => _FilterAndGraphScreenState();
// }

// class _FilterAndGraphScreenState extends State<FilterAndGraphScreen> {
//   String _selectedFilter = 'AJ'; // Filtre par défaut
//   DateTime? _startDate;
//   DateTime? _endDate;

//   List<BarChartGroupData> _barGroups = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Graphique avec Filtre'),
//       ),
//       body: Column(
//         children: [
//           _buildFilterInput(),
//           _buildDateRangeInput(),
//           Expanded(child: _buildDesignStack(context)),
//           ElevatedButton(
//             onPressed: _fetchData,
//             child: Text('Charger les Données'),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildFilterInput() {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: DropdownButton<String>(
//         value: _selectedFilter,
//         onChanged: (String? newValue) {
//           setState(() {
//             _selectedFilter = newValue!;
//           });
//         },
//         items: <String>['AJ', 'CS', 'CM', 'TDM', 'AP', 'DP', 'ID']
//             .map<DropdownMenuItem<String>>((String value) {
//           return DropdownMenuItem<String>(
//             value: value,
//             child: Text(value),
//           );
//         }).toList(),
//       ),
//     );
//   }

//   Widget _buildDateRangeInput() {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         children: [
//           Expanded(
//             child: ListTile(
//               title: Text('Date de début'),
//               subtitle: Text(_startDate != null ? DateFormat('yyyy-MM-dd').format(_startDate!) : 'Choisir une date'),
//               trailing: Icon(Icons.calendar_today),
//               onTap: () async {
//                 DateTime? picked = await showDatePicker(
//                   context: context,
//                   initialDate: _startDate ?? DateTime.now(),
//                   firstDate: DateTime(2000),
//                   lastDate: DateTime(2101),
//                 );
//                 if (picked != null && picked != _startDate) {
//                   setState(() {
//                     _startDate = picked;
//                   });
//                 }
//               },
//             ),
//           ),
//           Expanded(
//             child: ListTile(
//               title: Text('Date de fin'),
//               subtitle: Text(_endDate != null ? DateFormat('yyyy-MM-dd').format(_endDate!) : 'Choisir une date'),
//               trailing: Icon(Icons.calendar_today),
//               onTap: () async {
//                 DateTime? picked = await showDatePicker(
//                   context: context,
//                   initialDate: _endDate ?? DateTime.now(),
//                   firstDate: DateTime(2000),
//                   lastDate: DateTime(2101),
//                 );
//                 if (picked != null && picked != _endDate) {
//                   setState(() {
//                     _endDate = picked;
//                   });
//                 }
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Future<void> _fetchData() async {
//     final url = 'http://159.69.119.46/AchatTestTEMP/Api/GetDataDashoard?token=YOUR_TOKEN&TypeFilter=$_selectedFilter&DateFromString=${_startDate != null ? DateFormat('yyyy-MM-dd').format(_startDate!) : ''}&DateToString=${_endDate != null ? DateFormat('yyyy-MM-dd').format(_endDate!) : ''}';
    
//     try {
//       final response = await http.get(Uri.parse(url));
//       final data = jsonDecode(response.body);

//       if (data['err'] == false) {
//         setState(() {
//           _barGroups = [
//             _generateGroupData(0, data['msg']['MontantBcV'].toDouble()),
//             _generateGroupData(1, data['msg']['MontantBcNV'].toDouble()),
//             _generateGroupData(2, data['msg']['NbrFacture'].toDouble()),
//           ];
//         });
//       } else {
//         print('Error: ${data['msg']}');
//       }
//     } catch (e) {
//       print('Failed to fetch data: $e');
//     }
//   }

//   BarChartGroupData _generateGroupData(int x, double y) {
//     return BarChartGroupData(
//       x: x,
//       barRods: [
//         BarChartRodData(
//           y: y,
//           // colors: Colors.blue, // Vous pouvez définir une couleur spécifique ici
//           width: 16, // Vous pouvez ajuster la largeur de la barre ici
//         ),
//       ],
//     );
//   }

//   Widget _buildDesignStack(BuildContext context) {
//     return SizedBox(
//       height: 206,
//       width: double.infinity,
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 22),
//         child: AspectRatio(
//           aspectRatio: 2,
//           child: BarChart(
//             BarChartData(
//               backgroundColor: Colors.white,
//               barGroups: _barGroups,
//               barTouchData: BarTouchData(
//                 enabled: true,
//                 touchTooltipData: BarTouchTooltipData(
//                   tooltipBgColor: const Color.fromARGB(255, 23, 121, 171),
//                   getTooltipItem: (group, groupIndex, rod, rodIndex) {
//                     return BarTooltipItem(
//                       rod.y.round().toString(),
//                       TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class BarChartWidget extends StatefulWidget {
//   @override
//   _BarChartWidgetState createState() => _BarChartWidgetState();
// }

// class _BarChartWidgetState extends State<BarChartWidget> {
//   String _selectedFilter = 'AJ'; // Default filter type
//   DateTime _startDate = DateTime.now(); // Default start date
//   DateTime _endDate = DateTime.now(); // Default end date
//   List<BarChartGroupData> _barGroups = [];

//   @override
//   void initState() {
//     super.initState();
//     _fetchData();
//   }

//   Future<void> _fetchData() async {
//     final url = 'http://159.69.119.46/AchatTestTEMP/Api/GetDataDashoard?token=YOUR_TOKEN&TypeFilter=$_selectedFilter&DateFromString=${_startDate.toIso8601String().split('T').first}&DateToString=${_endDate.toIso8601String().split('T').first}';
//     final response = await http.get(Uri.parse(url));

//     if (response.statusCode == 200) {
//       final data = json.decode(response.body);
//       final msg = data['msg'];

//       setState(() {
//         _barGroups = [
//           _generateGroupData(0, msg['nbrBcValide']),
//           _generateGroupData(1, msg['nbrBcNValide']),
//           _generateGroupData(2, msg['MontantBcV']),
//           _generateGroupData(3, msg['MontantBcNV']),
//           _generateGroupData(4, msg['NbrFacture']),
//           _generateGroupData(5, msg['MontantFacture']),
//           _generateGroupData(6, msg['NbrDecompte']),
//           _generateGroupData(7, msg['MoDecompte']),
//         ];
//       });
//     } else {
//       // Handle error
//     }
//   }

//   BarChartGroupData _generateGroupData(int x, double y) {
//     return BarChartGroupData(
//       x: x,
//       barRods: [
//         BarChartRodData(y: y),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: [
//             DropdownButton<String>(
//               value: _selectedFilter,
//               onChanged: (String? newValue) {
//                 setState(() {
//                   _selectedFilter = newValue!;
//                   _fetchData();
//                 });
//               },
//               items: <String>['AJ', 'CS', 'CM', 'TDM', 'AP', 'DP', 'ID']
//                   .map<DropdownMenuItem<String>>((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Text(value),
//                 );
//               }).toList(),
//             ),
//             TextButton(
//               onPressed: () async {
//                 final DateTime? start = await showDatePicker(
//                   context: context,
//                   initialDate: _startDate,
//                   firstDate: DateTime(2000),
//                   lastDate: DateTime(2101),
//                 );
//                 if (start != null && start != _startDate) {
//                   setState(() {
//                     _startDate = start;
//                     _fetchData();
//                   });
//                 }
//               },
//               child: Text('Start Date: ${_startDate.toLocal().toShortDateString()}'),
//             ),
//             TextButton(
//               onPressed: () async {
//                 final DateTime? end = await showDatePicker(
//                   context: context,
//                   initialDate: _endDate,
//                   firstDate: DateTime(2000),
//                   lastDate: DateTime(2101),
//                 );
//                 if (end != null && end != _endDate) {
//                   setState(() {
//                     _endDate = end;
//                     _fetchData();
//                   });
//                 }
//               },
//               child: Text('End Date: ${_endDate.toLocal().toShortDateString()}'),
//             ),
//           ],
//         ),
//         SizedBox(
//           height: 206,
//           width: double.infinity,
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               Positioned.fill(
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 22),
//                   child: AspectRatio(
//                     aspectRatio: 2,
//                     child: BarChart(
//                       BarChartData(
//                         backgroundColor: Colors.white,
//                         barGroups: _barGroups,
//                         barTouchData: BarTouchData(
//                           enabled: true,
//                           touchTooltipData: BarTouchTooltipData(
//                             tooltipBgColor: const Color.fromARGB(255, 23, 121, 171),
//                             getTooltipItem: (group, groupIndex, rod, rodIndex) {
//                               return BarTooltipItem(
//                                 rod.y.round().toString(),
//                                 TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               );
//                             },
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart'; // Import the intl package

class BarChartWidget extends StatefulWidget {
  @override
  _BarChartWidgetState createState() => _BarChartWidgetState();
}

class _BarChartWidgetState extends State<BarChartWidget> {
  String _selectedFilter = 'AJ'; // Default filter type
  DateTime _startDate = DateTime.now(); // Default start date
  DateTime _endDate = DateTime.now(); // Default end date
  List<BarChartGroupData> _barGroups = [];

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<void> _fetchData() async {
    final url = 'http://159.69.119.46/AchatTestTEMP/Api/GetDataDashoard?token=YOUR_TOKEN&TypeFilter=$_selectedFilter&DateFromString=${DateFormat('yyyy-MM-dd').format(_startDate)}&DateToString=${DateFormat('yyyy-MM-dd').format(_endDate)}';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final msg = data['msg'];

      setState(() {
        _barGroups = [
          _generateGroupData(0, msg['nbrBcValide'].toDouble()),
          _generateGroupData(1, msg['nbrBcNValide'].toDouble()),
          _generateGroupData(2, msg['MontantBcV'].toDouble()),
          _generateGroupData(3, msg['MontantBcNV'].toDouble()),
          _generateGroupData(4, msg['NbrFacture'].toDouble()),
          _generateGroupData(5, msg['MontantFacture'].toDouble()),
          _generateGroupData(6, msg['NbrDecompte'].toDouble()),
          _generateGroupData(7, msg['MoDecompte'].toDouble()),
        ];
      });
    } else {
      // Handle error
    }
  }

  BarChartGroupData _generateGroupData(int x, double y) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(y: y),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            DropdownButton<String>(
              value: _selectedFilter,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedFilter = newValue!;
                  _fetchData();
                });
              },
              items: <String>['AJ', 'CS', 'CM', 'TDM', 'AP', 'DP', 'ID']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            TextButton(
              onPressed: () async {
                final DateTime? start = await showDatePicker(
                  context: context,
                  initialDate: _startDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                );
                if (start != null && start != _startDate) {
                  setState(() {
                    _startDate = start;
                    _fetchData();
                  });
                }
              },
              child: Text('Start Date: ${DateFormat('yyyy-MM-dd').format(_startDate)}'),
            ),
            TextButton(
              onPressed: () async {
                final DateTime? end = await showDatePicker(
                  context: context,
                  initialDate: _endDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                );
                if (end != null && end != _endDate) {
                  setState(() {
                    _endDate = end;
                    _fetchData();
                  });
                }
              },
              child: Text('End Date: ${DateFormat('yyyy-MM-dd').format(_endDate)}'),
            ),
          ],
        ),
        SizedBox(
          height: 206,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned.fill(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  child: AspectRatio(
                    aspectRatio: 2,
                    child: BarChart(
                      BarChartData(
                        backgroundColor: Colors.white,
                        barGroups: _barGroups,
                        barTouchData: BarTouchData(
                          enabled: true,
                          touchTooltipData: BarTouchTooltipData(
                            tooltipBgColor: const Color.fromARGB(255, 23, 121, 171),
                            getTooltipItem: (group, groupIndex, rod, rodIndex) {
                              return BarTooltipItem(
                                rod.y.round().toString(),
                                TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
