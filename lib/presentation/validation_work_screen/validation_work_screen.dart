// import 'package:flutter/material.dart';
// import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
// import '../../core/app_export.dart';
// import '../../widgets/app_bar/appbar_leading_image.dart';
// import '../../widgets/app_bar/custom_app_bar.dart';
// import '../../widgets/custom_bottom_bar.dart';
// import '../../widgets/custom_icon_button.dart';
// import '../../widgets/custom_search_view.dart';
// import '../home_page/home_page.dart';
// import 'widgets/dynamiclist_item_widget.dart'; // ignore_for_file: must_be_immutable

// // ignore_for_file: must_be_immutable
// class ValidationWorkScreen extends StatelessWidget {
//   ValidationWorkScreen({Key? key})
//       : super(
//           key: key,
//         );

//   TextEditingController searchController = TextEditingController();

//   GlobalKey<NavigatorState> navigatorKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         body: SizedBox(
//           width: 374.h,
//           child: Column(
//             children: [
//               _buildMegaphoneSection(context),
//               SizedBox(height: 14.v),
//               _buildDynamicList(context)
//             ],
//           ),
//         ),
//         // bottomNavigationBar: _buildBottomBar(context),
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildMegaphoneSection(BuildContext context) {
//     return Container(
//       width: double.maxFinite,
//       padding: EdgeInsets.symmetric(vertical: 18.v),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadiusStyle.customBorderBR100,
//         image: DecorationImage(
//           image: fs.Svg(
//             ImageConstant.imgGroup62,
//           ),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           SizedBox(height: 24.v),
//           CustomAppBar(
//             leadingWidth: 53.h,
//             leading: AppbarLeadingImage(
//               imagePath: ImageConstant.imgMegaphone,
//               margin: EdgeInsets.only(left: 15.h),
//             ),
//           ),
//           SizedBox(height: 60.v),
//           Container(
//             width: double.maxFinite,
//             margin: EdgeInsets.symmetric(horizontal: 12.h),
//             padding: EdgeInsets.symmetric(horizontal: 20.h),
//             child: Column(
//               children: [
//                 Text(
//                   "Glisser vers la gauche pour validé  le Workflow \nou vers le droit pour refusé ",
//                   maxLines: 6,
//                   overflow: TextOverflow.ellipsis,
//                   textAlign: TextAlign.center,
//                   style: CustomTextStyles.titleMediumMedium,
//                 ),
//                 SizedBox(height: 16.v),
//                 Container(
//                   width: double.maxFinite,
//                   margin: EdgeInsets.only(right: 2.h),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Expanded(
//                         child: CustomSearchView(
//                           controller: searchController,
//                         ),
//                       ),
//                       SizedBox(width: 8.h),
//                       CustomIconButton(
//                         height: 40.adaptSize,
//                         width: 40.adaptSize,
//                         child: CustomImageView(
//                           imagePath: ImageConstant.imgGroup51,
//                         ),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildDynamicList(BuildContext context) {
//     return Container(
//       width: double.maxFinite,
//       margin: EdgeInsets.symmetric(horizontal: 12.h),
//       child: ListView.separated(
//         physics: NeverScrollableScrollPhysics(),
//         shrinkWrap: true,
//         separatorBuilder: (context, index) {
//           return SizedBox(
//             height: 8.v,
//           );
//         },
//         itemCount: 7,
//         itemBuilder: (context, index) {
//           return DynamiclistItemWidget();
//         },
//       ),
//     );
//   }

//   // /// Section Widget
//   // Widget _buildBottomBar(BuildContext context) {
//   //   return CustomBottomBar(
//   //     onChanged: (BottomBarEnum type) {
//   //       Navigator.pushNamed(
//   //           navigatorKey.currentContext!, getCurrentRoute(type));
//   //     },
//   //   );
//   // }

// //   ///Handling route based on bottom click actions
// //   String getCurrentRoute(BottomBarEnum type) {
// //     switch (type) {
// //       case BottomBarEnum.Home:
// //         return AppRoutes.homePage;
// //       case BottomBarEnum.Call:
// //         return "/";
// //       case BottomBarEnum.Clock:
// //         return "/";
// //       default:
// //         return "/";
// //     }
//   }

// //   ///Handling page based on route
// //   Widget getCurrentPage(String currentRoute) {
// //     switch (currentRoute) {
// //       case AppRoutes.homePage:
// //         return HomePage();
// //       default:
// //         return DefaultWidget();
// //     }
// //   }
// // }

// // Widget build(BuildContext context) {
// //   return Card(
// //     clipBehavior: Clip.antiAlias,
// //     elevation: 0,
// //     margin: EdgeInsets.zero,
// //     color: appTheme.gray800,
// //     shape: RoundedRectangleBorder(
// //       borderRadius: BorderRadiusStyle.roundedBorder10,
// //     ),
// //     child: Container(
// //       height: 64.v,
// //       decoration: AppDecoration.fillGray.copyWith(
// //         borderRadius: BorderRadiusStyle.roundedBorder10,
// //       ),
// //       child: Stack(
// //         alignment: Alignment.center,
// //         children: [
// //           Align(
// //             alignment: Alignment.centerLeft,
// //             child: Container(
// //               height: 64.v,
// //               width: 52.h,
// //               decoration: AppDecoration.fillGreenA,
// //               child: Stack(
// //                 alignment: Alignment.center,
// //                 children: [
// //                   CustomImageView(
// //                     imagePath: ImageConstant.imgCheckmark,
// //                     height: 32.adaptSize,
// //                     width: 32.adaptSize,
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //           Container(
// //             height: 64.v,
// //             child: Stack(
// //               alignment: Alignment.center,
// //               children: [
// //                 CustomImageView(
// //                   imagePath: ImageConstant.imgRectangle35,
// //                   height: 64.v,
// //                   width: 18.h,
// //                   alignment: Alignment.centerRight,
// //                 ),
// //                 Container(
// //                   width: double.maxFinite,
// //                   decoration: AppDecoration.fillWhiteA.copyWith(
// //                     borderRadius: BorderRadiusStyle.roundedBorder10,
// //                   ),
// //                   child: Column(
// //                     mainAxisSize: MainAxisSize.min,
// //                     children: [
// //                       SizedBox(
// //                         width: double.maxFinite,
// //                         child: Card(
// //                           clipBehavior: Clip.antiAlias,
// //                           elevation: 0,
// //                           margin: EdgeInsets.zero,
// //                           shape: RoundedRectangleBorder(
// //                             side: BorderSide(
// //                               color: appTheme.gray200,
// //                               width: 1.h,
// //                             ),
// //                             borderRadius: BorderRadiusStyle.roundedBorder10,
// //                           ),
// //                           child: Container(
// //                             height: 64.v,
// //                             width: double.maxFinite,
// //                             decoration: AppDecoration.outlineGray,
// //                             child: Stack(
// //                               alignment: Alignment.center,
// //                               children: [
// //                                 CustomImageView(
// //                                   imagePath: ImageConstant.imgThumbsUp,
// //                                   height: 64.v,
// //                                   width: 58.h,
// //                                   alignment: Alignment.centerRight,
// //                                 ),
// //                                 Container(
// //                                   width: double.maxFinite,
// //                                   decoration: AppDecoration.fillWhiteA,
// //                                   child: Column(
// //                                     mainAxisSize: MainAxisSize.min,
// //                                     crossAxisAlignment: CrossAxisAlignment.start,
// //                                     children: [
// //                                       SizedBox(height: 6.v),
// //                                       Container(
// //                                         width: 194.h,
// //                                         margin: EdgeInsets.only(left: 8.h),
// //                                         child: RichText(
// //                                           text: TextSpan(
// //                                             children: [
// //                                               TextSpan(
// //                                                 text: "Numéro",
// //                                                 style: CustomTextStyles.labelLargeMedium,
// //                                               ),
// //                                               TextSpan(
// //                                                 text: " : FA-111 \n",
// //                                                 style: theme.textTheme.labelLarge,
// //                                               ),
// //                                               TextSpan(
// //                                                 text: "Montant",
// //                                                 style: CustomTextStyles.labelLargeMedium,
// //                                               ),
// //                                               TextSpan(
// //                                                 text: " : 10000,0000\n",
// //                                                 style: theme.textTheme.labelLarge,
// //                                               ),
// //                                               TextSpan(
// //                                                 text: "Résponsable",
// //                                                 style: CustomTextStyles.labelLargeMedium,
// //                                               ),
// //                                               TextSpan(
// //                                                 text: " sur la validation: Yassine",
// //                                                 style: theme.textTheme.labelLarge,
// //                                               ),
// //                                             ],
// //                                           ),
// //                                           textAlign: TextAlign.left,
// //                                         ),
// //                                       ),
// //                                       SizedBox(
// //                                         width: double.maxFinite,
// //                                         child: Divider(),
// //                                       ),
// //                                     ],
// //                                   ),
// //                                 ),
// //                               ],
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     ),
// //   );
// // }
// // }
// // import 'package:flutter/material.dart';

// // class OrderCard extends StatelessWidget {
// //   final String orderNumber;
// //   final String amount;
// //   final String responsible;
// //   final void Function() onAccept;
// //   final void Function() onReject;

// //   const OrderCard({
// //     Key? key,
// //     required this.orderNumber,
// //     required this.amount,
// //     required this.responsible,
// //     required this.onAccept,
// //     required this.onReject,
// //   }) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Dismissible(
// //       key: Key(orderNumber), // Unique key for each order
// //       background: Container(
// //         color: Colors.green,
// //         alignment: Alignment.centerLeft,
// //         padding: EdgeInsets.only(left: 20.0),
// //         child: Icon(Icons.check, color: Colors.white),
// //       ),
// //       secondaryBackground: Container(
// //         color: Colors.red,
// //         alignment: Alignment.centerRight,
// //         padding: EdgeInsets.only(right: 20.0),
// //         child: Icon(Icons.close, color: Colors.white),
// //       ),
// //       onDismissed: (direction) {
// //         if (direction == DismissDirection.startToEnd) {
// //           onAccept();
// //         } else if (direction == DismissDirection.endToStart) {
// //           onReject();
// //         }
// //       },
// //       child: Card(
// //         shape: RoundedRectangleBorder(
// //           borderRadius: BorderRadius.circular(10),
// //         ),
// //         child: Padding(
// //           padding: const EdgeInsets.all(12.0),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Text(
// //                 'Numéro : $orderNumber',
// //                 style: TextStyle(
// //                   fontSize: 14,
// //                   fontWeight: FontWeight.w500,
// //                 ),
// //               ),
// //               SizedBox(height: 4),
// //               Text(
// //                 'Montant : $amount',
// //                 style: TextStyle(
// //                   fontSize: 14,
// //                   fontWeight: FontWeight.w500,
// //                 ),
// //               ),
// //               SizedBox(height: 4),
// //               Text(
// //                 'Responsable Sur La Validation: $responsible',
// //                 style: TextStyle(
// //                   fontSize: 14,
// //                   fontWeight: FontWeight.w500,
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class OrdersList extends StatelessWidget {
// //   final List<Map<String, String>> orders = [
// //     {
// //       'orderNumber': 'FA-111',
// //       'amount': '10000.0000',
// //       'responsible': 'Yassine',
// //     },
// //     {
// //       'orderNumber': 'FA-112',
// //       'amount': '15000.0000',
// //       'responsible': 'Ahmed',
// //     },
// //     {
// //       'orderNumber': 'FA-113',
// //       'amount': '20000.0000',
// //       'responsible': 'Sara',
// //     },
// //   ];

// //   void _acceptOrder(String orderNumber) {
// //     print('Accepted $orderNumber');
// //   }

// //   void _rejectOrder(String orderNumber) {
// //     print('Rejected $orderNumber');
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return ListView.builder(
// //       itemCount: orders.length,
// //       itemBuilder: (context, index) {
// //         final order = orders[index];
// //         return OrderCard(
// //           orderNumber: order['orderNumber']!,
// //           amount: order['amount']!,
// //           responsible: order['responsible']!,
// //           onAccept: () => _acceptOrder(order['orderNumber']!),
// //           onReject: () => _rejectOrder(order['orderNumber']!),
// //         );
// //       },
// //     );
// //   }
// // }

// // class ValidationWorkScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Validation Work'),
// //       ),
// //       body: OrdersList(),
// //     );
// //   }
// // }

// // void main() {
// //   runApp(MaterialApp(
// //     home: ValidationWorkScreen(),
// //   ));
// // }
// // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // import 'package:flutter_slidable/flutter_slidable.dart';

// // // // // // // // // // // void main() {
// // // // // // // // // // //   runApp(MyApp());
// // // // // // // // // // // }

// // // // // // // // // // // class MyApp extends StatelessWidget {
// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return MaterialApp(
// // // // // // // // // // //       title: 'Validation Workflow',
// // // // // // // // // // //       theme: ThemeData(
// // // // // // // // // // //         primarySwatch: Colors.blue,
// // // // // // // // // // //       ),
// // // // // // // // // // //       home: WorkflowPage(),
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // class Workflow {
// // // // // // // // // // //   final String id;
// // // // // // // // // // //   final double amount;
// // // // // // // // // // //   final String validator;
// // // // // // // // // // //   final DateTime date;

// // // // // // // // // // //   Workflow({required this.id, required this.amount, required this.validator, required this.date});
// // // // // // // // // // // }

// // // // // // // // // // // class WorkflowPage extends StatefulWidget {
// // // // // // // // // // //   @override
// // // // // // // // // // //   _WorkflowPageState createState() => _WorkflowPageState();
// // // // // // // // // // // }

// // // // // // // // // // // class _WorkflowPageState extends State<WorkflowPage> {
// // // // // // // // // // //   List<Workflow> _workflows = [
// // // // // // // // // // //     Workflow(id: 'FA-111', amount: 10000.0000, validator: 'Yassine', date: DateTime.now()),
// // // // // // // // // // //     Workflow(id: 'FA-112', amount: 15000.0000, validator: 'Ahmed', date: DateTime.now().subtract(Duration(days: 1))),
// // // // // // // // // // //     // Add more workflows here
// // // // // // // // // // //   ];

// // // // // // // // // // //   List<Workflow> _filteredWorkflows = [];

// // // // // // // // // // //   @override
// // // // // // // // // // //   void initState() {
// // // // // // // // // // //     super.initState();
// // // // // // // // // // //     _filteredWorkflows = List.from(_workflows);
// // // // // // // // // // //   }

// // // // // // // // // // //   void _filterWorkflows(String keyword) {
// // // // // // // // // // //     setState(() {
// // // // // // // // // // //       _filteredWorkflows = _workflows.where((workflow) =>
// // // // // // // // // // //         workflow.id.contains(keyword) ||
// // // // // // // // // // //         workflow.validator.contains(keyword)
// // // // // // // // // // //       ).toList();
// // // // // // // // // // //     });
// // // // // // // // // // //   }

// // // // // // // // // // //   void _acceptWorkflow(String id) {
// // // // // // // // // // //     setState(() {
// // // // // // // // // // //       _workflows.removeWhere((workflow) => workflow.id == id);
// // // // // // // // // // //       _filteredWorkflows.removeWhere((workflow) => workflow.id == id);
// // // // // // // // // // //     });
// // // // // // // // // // //   }

// // // // // // // // // // //   void _rejectWorkflow(String id) {
// // // // // // // // // // //     setState(() {
// // // // // // // // // // //       _workflows.removeWhere((workflow) => workflow.id == id);
// // // // // // // // // // //       _filteredWorkflows.removeWhere((workflow) => workflow.id == id);
// // // // // // // // // // //     });
// // // // // // // // // // //   }

// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     return Scaffold(
// // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // //         title: Text('Validation Workflow'),
// // // // // // // // // // //       ),
// // // // // // // // // // //       body: Column(
// // // // // // // // // // //         children: [
// // // // // // // // // // //           Padding(
// // // // // // // // // // //             padding: const EdgeInsets.all(8.0),
// // // // // // // // // // //             child: TextField(
// // // // // // // // // // //               decoration: InputDecoration(
// // // // // // // // // // //                 hintText: 'Recherche Par Mot Clé',
// // // // // // // // // // //                 suffixIcon: Icon(Icons.search),
// // // // // // // // // // //                 border: OutlineInputBorder(
// // // // // // // // // // //                   borderRadius: BorderRadius.circular(8.0),
// // // // // // // // // // //                 ),
// // // // // // // // // // //               ),
// // // // // // // // // // //               onChanged: _filterWorkflows,
// // // // // // // // // // //             ),
// // // // // // // // // // //           ),
// Expanded(
//   child: ListView.builder(
//     itemCount: _filteredWorkflows.length,
//     itemBuilder: (context, index) {
//       final workflow = _filteredWorkflows[index];
//       return Slidable(
//         actionPane: SlidableDrawerActionPane(),
//         actionExtentRatio: 0.25,  // Ratio d'extension des actions
//         child: Card(
//           margin: const EdgeInsets.all(8.0),
//           child: ListTile(
//             title: Text('Numéro : ${workflow.id}'),
//             subtitle: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('Montant : ${workflow.amount.toStringAsFixed(4)}'),
//                 Text('Responsable Sur La Validation: ${workflow.validator}'),
//                 Text('Date : ${workflow.date.toLocal()}'.split(' ')[0]),
//               ],
//             ),
//           ),
//         ),
//         actions: [
//           IconSlideAction(
//             caption: 'Accepter',
//             color: Colors.green,
//             icon: Icons.check,
//             onTap: () => _acceptWorkflow(workflow.id),
//           ),
//           IconSlideAction(
//             caption: 'Refuser',
//             color: Colors.red,
//             icon: Icons.close,
//             onTap: () => _rejectWorkflow(workflow.id),
//           ),
//         ],
//       );
//     },
//   ),
// ),
// // // // // // // // // // // //           Expanded(
// // // // // // // // // // // //   child: ListView.builder(
// // // // // // // // // // // //     itemCount: _filteredWorkflows.length,
// // // // // // // // // // // //     itemBuilder: (context, index) {
// // // // // // // // // // // //       final workflow = _filteredWorkflows[index];
// // // // // // // // // // // //       return Dismissible(
// // // // // // // // // // // //         key: Key(workflow.id), // Unique key for each item
// // // // // // // // // // // //         background: Container(
// // // // // // // // // // // //           color: Colors.green, // Background color when swiping right (accept)
// // // // // // // // // // // //           alignment: Alignment.centerLeft,
// // // // // // // // // // // //           padding: EdgeInsets.symmetric(horizontal: 20),
// // // // // // // // // // // //           child: Icon(Icons.check, color: Colors.white),
// // // // // // // // // // // //         ),
// // // // // // // // // // // //         secondaryBackground: Container(
// // // // // // // // // // // //           color: Colors.red, // Background color when swiping left (reject)
// // // // // // // // // // // //           alignment: Alignment.centerRight,
// // // // // // // // // // // //           padding: EdgeInsets.symmetric(horizontal: 20),
// // // // // // // // // // // //           child: Icon(Icons.close, color: Colors.white),
// // // // // // // // // // // //         ),
// // // // // // // // // // // //         confirmDismiss: (direction) async {
// // // // // // // // // // // //           if (direction == DismissDirection.endToStart) {
// // // // // // // // // // // //             // Confirm dismiss logic (optional)
// // // // // // // // // // // //             return true; // Return true to dismiss, false to cancel dismissal
// // // // // // // // // // // //           } else {
// // // // // // // // // // // //             return false; // Return false to disable swiping in the opposite direction
// // // // // // // // // // // //           }
// // // // // // // // // // // //         },
// // // // // // // // // // // //         onDismissed: (direction) {
// // // // // // // // // // // //           if (direction == DismissDirection.endToStart) {
// // // // // // // // // // // //             _rejectWorkflow(workflow.id); // Call your reject workflow function
// // // // // // // // // // // //           } else if (direction == DismissDirection.startToEnd) {
// // // // // // // // // // // //             _acceptWorkflow(workflow.id); // Call your accept workflow function
// // // // // // // // // // // //           }
// // // // // // // // // // // //         },
// // // // // // // // // // // //         child: Card(
// // // // // // // // // // // //           margin: const EdgeInsets.all(8.0),
// // // // // // // // // // // //           child: ListTile(
// // // // // // // // // // // //             title: Text('Numéro : ${workflow.id}'),
// // // // // // // // // // // //             subtitle: Column(
// // // // // // // // // // // //               crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // //               children: [
// // // // // // // // // // // //                 Text('Montant : ${workflow.amount.toStringAsFixed(4)}'),
// // // // // // // // // // // //                 Text('Responsable Sur La Validation: ${workflow.validator}'),
// // // // // // // // // // // //                 Text('Date : ${workflow.date.toLocal()}'.split(' ')[0]),
// // // // // // // // // // // //               ],
// // // // // // // // // // // //             ),
// // // // // // // // // // // //           ),
// // // // // // // // // // // //         ),
// // // // // // // // // // // //       );
// // // // // // // // // // // //     },
// // // // // // // // // // // //   ),
// // // // // // // // // // // //   )

// // // // // // // // // // // //         ],
// // // // // // // // // // // //       ),
// // // // // // // // // // // //     );
// // // // // // // // // // // //   }
// // // // // // // // // // // // }
// // import 'package:flutter/material.dart';
// // import 'package:gecimmoa/api_service.dart'; // Import the service

// // class Workflow {
// //   final String id;
// //   final double amount;
// //   final String validator;
// //   final DateTime date;

// //   Workflow({
// //     required this.id,
// //     required this.amount,
// //     required this.validator,
// //     required this.date,
// //   });
// // }

// // class WorkflowPage extends StatefulWidget {
// //   @override
// //   _WorkflowPageState createState() => _WorkflowPageState();
// // }

// // class _WorkflowPageState extends State<WorkflowPage> {
// //   final ApiService apiService = ApiService('http://localhost:3000/api'); // Initialize the ApiService
// //   String token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2NmEyMjliMmQwNDZlN2RlYzAxNDFlMjIiLCJpYXQiOjE3MjQwNjYyMDgsImV4cCI6MTcyNDA2OTgwOH0.80VTt_Iso9Lfzxqhe8vqbY7gm1hfqBHO7jNmQhJ-_qA'; // Replace with your actual token

// //   List<Workflow> _workflows = [
// //     Workflow(
// //         id: 'FA-111',
// //         amount: 10000.0000,
// //         validator: 'Yassine',
// //         date: DateTime.now()),
// //     Workflow(
// //         id: 'FA-112',
// //         amount: 15000.0000,
// //         validator: 'Ahmed',
// //         date: DateTime.now().subtract(Duration(days: 1))),
// //     // Add more workflows here
// //   ];

// //   List<Workflow> _filteredWorkflows = [];

// //   @override
// //   void initState() {
// //     super.initState();
// //     _filteredWorkflows = List.from(_workflows);
// //   }

// //   void _filterWorkflows(String keyword) {
// //     setState(() {
// //       _filteredWorkflows = _workflows
// //           .where((workflow) =>
// //               workflow.id.contains(keyword) ||
// //               workflow.validator.contains(keyword))
// //           .toList();
// //     });
// //   }

// //   void _acceptWorkflow(String id) async {
// //     bool success =
// //         await apiService.validateWorkflow(token, id, 'Accepted', true);
// //     if (success) {
// //       setState(() {
// //         _workflows.removeWhere((workflow) => workflow.id == id);
// //         _filteredWorkflows.removeWhere((workflow) => workflow.id == id);
// //       });
// //     } else {
// //       _showErrorDialog('Failed to accept the workflow');
// //     }
// //   }

// //   void _rejectWorkflow(String id) async {
// //     bool success =
// //         await apiService.validateWorkflow(token, id, 'Rejected', false);
// //     if (success) {
// //       setState(() {
// //         _workflows.removeWhere((workflow) => workflow.id == id);
// //         _filteredWorkflows.removeWhere((workflow) => workflow.id == id);
// //       });
// //     } else {
// //       _showErrorDialog('Failed to reject the workflow');
// //     }
// //   }

// //   void _showErrorDialog(String message) {
// //     showDialog(
// //       context: context,
// //       builder: (BuildContext context) {
// //         return AlertDialog(
// //           title: Text('Error'),
// //           content: Text(message),
// //           actions: <Widget>[
// //             TextButton(
// //               child: Text('OK'),
// //               onPressed: () {
// //                 Navigator.of(context).pop();
// //               },
// //             ),
// //           ],
// //         );
// //       },
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Validation Workflow'),
// //       ),
// //       body: Column(
// //         children: [
// //           Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: TextField(
// //               decoration: InputDecoration(
// //                 hintText: 'Recherche Par Mot Clé',
// //                 suffixIcon: Icon(Icons.search),
// //                 border: OutlineInputBorder(
// //                   borderRadius: BorderRadius.circular(8.0),
// //                 ),
// //               ),
// //               onChanged: _filterWorkflows,
// //             ),
// //           ),
// //           Expanded(
// //             child: ListView.builder(
// //               itemCount: _filteredWorkflows.length,
// //               itemBuilder: (context, index) {
// //                 final workflow = _filteredWorkflows[index];
// //                 return Dismissible(
// //                   key: Key(workflow.id), // Unique key for each item
// //                   background: Container(
// //                     color: Colors
// //                         .green, // Background color when swiping right (accept)
// //                     alignment: Alignment.centerLeft,
// //                     padding: EdgeInsets.symmetric(horizontal: 20),
// //                     child: Icon(Icons.check, color: Colors.white),
// //                   ),
// //                   secondaryBackground: Container(
// //                     color: Colors
// //                         .red, // Background color when swiping left (reject)
// //                     alignment: Alignment.centerRight,
// //                     padding: EdgeInsets.symmetric(horizontal: 20),
// //                     child: Icon(Icons.close, color: Colors.white),
// //                   ),
// //                   confirmDismiss: (direction) async {
// //                     if (direction == DismissDirection.endToStart) {
// //                       return true; // Allow dismiss on swipe left
// //                     } else {
// //                       return false; // Prevent dismiss on swipe right
// //                     }
// //                   },
// //                   onDismissed: (direction) {
// //                     if (direction == DismissDirection.endToStart) {
// //                       _rejectWorkflow(workflow.id); // Reject workflow
// //                     } else if (direction == DismissDirection.startToEnd) {
// //                       _acceptWorkflow(workflow.id); // Accept workflow
// //                     }
// //                   },
// //                   child: Card(
// //                     margin: const EdgeInsets.all(8.0),
// //                     child: ListTile(
// //                       title: Text('Numéro : ${workflow.id}'),
// //                       subtitle: Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                               'Montant : ${workflow.amount.toStringAsFixed(4)}'),
// //                           Text(
// //                               'Responsable Sur La Validation: ${workflow.validator}'),
// //                           Text('Date : ${workflow.date.toLocal()}'
// //                               .split(' ')[0]),
// //                         ],
// //                       ),
// //                     ),
// //                   ),
// //                 );
// //               },
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// // // // import 'package:flutter/material.dart';
// // // // import 'package:gecimmoa/api_service.dart';
// // // // import 'package:gecimmoa/core/utils/size_utils.dart';
// // // // import 'package:gecimmoa/routes/app_routes.dart';
// // // // import 'package:gecimmoa/widgets/app_bar/custom_app_bar.dart';

// // // // class Workflow {
// // // //   final String id;
// // // //   final double amount;
// // // //   final String validator;
// // // //   final DateTime date;

// // // //   Workflow({
// // // //     required this.id,
// // // //     required this.amount,
// // // //     required this.validator,
// // // //     required this.date,
// // // //   });
// // // // }

// // // // class WorkflowPage extends StatefulWidget {
// // // //   @override
// // // //   _WorkflowPageState createState() => _WorkflowPageState();
// // // // }

// // // // class _WorkflowPageState extends State<WorkflowPage> {
// // // //   final ApiService apiService = ApiService('http://localhost:3000/api');
// // // //   final ApiServices apiServices = ApiServices('http://localhost:3000/api');
// // // //   String token =
// // // //       'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2NmEyMjliMmQwNDZlN2RlYzAxNDFlMjIiLCJpYXQiOjE3MjQzMjQzMjksImV4cCI6MTcyNDMyNzkyOX0.DcDtiaRqLMpxxqqgCtOFHAUuuPzGyUGN4h5mEMWncc0'; // Replace with your actual token

// // // //   List<Workflow> _workflows = [
// // // //     Workflow(
// // // //         id: 'FA-111',
// // // //         amount: 10000.0000,
// // // //         validator: 'Yassine',
// // // //         date: DateTime.now()),
// // // //     Workflow(
// // // //         id: 'FA-112',
// // // //         amount: 15000.0000,
// // // //         validator: 'Ahmed',
// // // //         date: DateTime.now().subtract(Duration(days: 1))),
// // // //     // Add more workflows here
// // // //   ];

// // // //   List<Workflow> _filteredWorkflows = [];

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _filteredWorkflows = List.from(_workflows);
// // // //   }

// // // //   void _filterWorkflows(String keyword) {
// // // //     setState(() {
// // // //       _filteredWorkflows = _workflows
// // // //           .where((workflow) =>
// // // //               workflow.id.contains(keyword) ||
// // // //               workflow.validator.contains(keyword))
// // // //           .toList();
// // // //     });
// // // //   }

// // // //   void _acceptWorkflow(String id) async {
// // // //     bool success =
// // // //         await apiService.validateWorkflow(token, id, 'Accepted', true);
// // // //     if (success) {
// // // //       setState(() {
// // // //         _workflows.removeWhere((workflow) => workflow.id == id);
// // // //         _filteredWorkflows.removeWhere((workflow) => workflow.id == id);
// // // //       });
// // // //     } else {
// // // //       _showErrorDialog('Failed to accept the workflow');
// // // //     }
// // // //   }
  
// // // //   Future<bool?> _showConfirmationDialog(BuildContext context, String action) {
// // // // //   return showDialog<bool>(
// // // // //     context: context,
// // // // //     builder: (BuildContext context) {
// // // // //       return AlertDialog(
// // // // //         title: Text('Confirmer'),
// // // // //         content: Text('Êtes-vous sûr de vouloir $action ce workflow?'),
// // // // //         actions: <Widget>[
// // // // //           TextButton(
// // // // //             child: Text('Annuler'),
// // // // //             onPressed: () {
// // // // //               Navigator.of(context).pop(false); // Return false when canceling
// // // // //             },
// // // // //           ),
// // // // //           ElevatedButton(
// // // // //             child: Text('Confirmer'),
// // // // //             onPressed: () {
// // // // //               Navigator.of(context).pop(true); // Return true when confirming
// // // // //             },
// // // // //           ),
// // // // //         ],
// // // // //       );
// // // // //     },
// // // // //   );
// // // // // }
// // // // return showDialog<bool>(
// // // //   context: context,
// // // //   builder: (BuildContext context) {
// // // //     return AlertDialog(
// // // //       title: Text(
// // // //         'Confirmer',
// // // //         style: TextStyle(
// // // //           fontWeight: FontWeight.bold,
// // // //           color: Colors.black87,
// // // //           fontSize: 18,
// // // //         ),
// // // //       ),
// // // //       content: Text(
// // // //         'Êtes-vous sûr de vouloir $action ce workflow?',
// // // //         style: TextStyle(
// // // //           color: Colors.black54,
// // // //           fontSize: 16,
// // // //         ),
// // // //       ),
// // // //       actions: <Widget>[
// // // //         TextButton(
// // // //           child: Text(
// // // //             'Annuler',
// // // //             style: TextStyle(
// // // //               color: Colors.red, // Change color for cancel button
// // // //             ),
// // // //           ),
// // // //           onPressed: () {
// // // //             Navigator.of(context).pop(false); // Return false when canceling
// // // //           },
// // // //         ),
// // // //         ElevatedButton(
// // // //           style: ElevatedButton.styleFrom(
// // // //             foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
// // // //             shape: RoundedRectangleBorder(
// // // //               borderRadius: BorderRadius.circular(8), // Rounded corners
// // // //             ),
// // // //             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12), // Padding
// // // //           ),
// // // //           child: Text(
// // // //             'Confirmer',
// // // //             style: TextStyle(
// // // //               fontSize: 16,
// // // //             ),
// // // //           ),
// // // //           onPressed: () {
// // // //             Navigator.of(context).pop(true); // Return true when confirming
// // // //           },
// // // //         ),
// // // //       ],
// // // //     );
// // // //   },
// // // //   );
// // // //   }

// // // // void _openMenu(BuildContext context) {
// // // //   Navigator.pushNamed(context, AppRoutes.menuScreen);
// // // // }
// // // //   void _rejectWorkflow(String id) async {
// // // //     bool success =
// // // //         await apiService.validateWorkflow(token, id, 'Rejected', false);
// // // //     if (success) {
// // // //       setState(() {
// // // //         _workflows.removeWhere((workflow) => workflow.id == id);
// // // //         _filteredWorkflows.removeWhere((workflow) => workflow.id == id);
// // // //       });
// // // //     } else {
// // // //       _showErrorDialog('Failed to reject the workflow');
// // // //     }
// // // //   }

// // // //   void _showErrorDialog(String message) {
// // // //     showDialog(
// // // //       context: context,
// // // //       builder: (BuildContext context) {
// // // //         return AlertDialog(
// // // //           title: Text('Error'),
// // // //           content: Text(message),
// // // //           actions: <Widget>[
// // // //             TextButton(
// // // //               child: Text('OK'),
// // // //               onPressed: () {
// // // //                 Navigator.of(context).pop();
// // // //               },
// // // //             ),
// // // //           ],
// // // //         );
// // // //       },
// // // //     );
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     // return Scaffold(
// // // //     //   appBar: CustomAppBar(
// // // //     //     leadingWidth: 35.h,
// // // //     //     leading: GestureDetector(
// // // //     //       onTap: () => _openMenu(context),
// // // //     //       child: Padding(
// // // //     //         padding: EdgeInsets.only(left: 20.h),
// // // //     //         child: Icon(
// // // //     //           Icons.menu, // Menu icon
// // // //     //           color: Colors.white, // Icon color
// // // //     //         ),
// // // //     //       ),
// // // //     //     ),
// // // //     //     title: Container(
// // // //     //       width: 1000.h, // Text width
// // // //     //       child: Center(
// // // //     //         child: Text(
// // // //     //           'Demande d’achat', // AppBar title
// // // //     //           style: TextStyle(
// // // //     //             color: Colors.white, // Title color
// // // //     //             fontSize: 30.h, // Title text size
// // // //     //           ),
// // // //     //           overflow: TextOverflow.ellipsis, // Handle overflow if the text is too long
// // // //     //         ),
// // // //     //       ),
// // // //     //     ),
// // // //     //     bottom: PreferredSize(
// // // //     //       preferredSize: Size.fromHeight(1.h), // Divider height
// // // //     //       child: Container(
// // // //     //         color: Colors.grey[800], // Divider color
// // // //     //         height: 1.h, // Divider height
// // // //     //       ),
// // // //     //     ),
// // // //     //   ),
// // // // //     return Scaffold(
// // // // //   appBar: CustomAppBar(
// // // // //     toolbarHeight: 100.h, // Augmentez la hauteur de l'AppBar pour plus d'espace
// // // // //     leadingWidth: 50.h,  // Augmenter la largeur du bouton de menu
// // // // //     leading: GestureDetector(
// // // // //       onTap: () => _openMenu(context),
// // // // //       child: Padding(
// // // // //         padding: EdgeInsets.only(left: 30.h), // Augmentez l'espace à gauche de l'icône de menu
// // // // //         child: Icon(
// // // // //           Icons.menu, // Icône de menu
// // // // //           color: Colors.white, // Couleur de l'icône
// // // // //         ),
// // // // //       ),
// // // // //     ),
// // // // //     title: Padding(
// // // // //       padding: EdgeInsets.symmetric(horizontal: 20.h), // Ajouter du padding autour du titre
// // // // //       child: Container(
// // // // //         width: double.infinity, // Largeur ajustée pour centrer le texte
// // // // //         child: Center(
// // // // //           child: Text(
// // // // //             'Demande d’achat', // Titre de la barre d'applications
// // // // //             style: TextStyle(
// // // // //               color: Colors.white, // Couleur du titre
// // // // //               fontSize: 32.h, // Taille du texte du titre
// // // // //             ),
// // // // //             overflow: TextOverflow.ellipsis, // Pour gérer les débordements si le texte est trop long
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     ),
// // // // //     bottom: PreferredSize(
// // // // //       preferredSize: Size.fromHeight(2.h), // Hauteur de la ligne de séparation augmentée
// // // // //       child: Container(
// // // // //         color: Colors.grey[800], // Couleur de la ligne de séparation
// // // // //         height: 2.h, // Hauteur de la ligne de séparation
// // // // //       ),
// // // // //     ),
// // // // //   ),
// // // // //   // Le reste de votre corps Scaffold ici
// // // // //       body: Column(
// // // // //         children: [
// // // // //           Padding(
// // // // //             padding: const EdgeInsets.symmetric(vertical: 20.0), // Padding for Divider
// // // // //             child: Divider(
// // // // //               color: Colors.white,
// // // // //               thickness: 2.0,
// // // // //               height: 1.0,
// // // // //               indent: 20.0,
// // // // //               endIndent: 20.0,
// // // // //             ),
// // // // //           ),
// // // // //           Padding(
// // // // //             padding: const EdgeInsets.all(8.0),
// // // // //             child: Row(
// // // // //               children: [
// // // // //                 Expanded(
// // // // //                   child: TextField(
// // // // //                     decoration: InputDecoration(
// // // // //                       hintText: 'Recherche Par Mot Clé',
// // // // //                       filled: true,
// // // // //                       fillColor: Colors.white,
// // // // //                       prefixIcon: Icon(Icons.search, color: Color(0xFF384F7D)),
// // // // //                       suffixIcon: Icon(Icons.filter_list,
// // // // //                           color: Color(0xFF384F7D)),
// // // // //                       border: OutlineInputBorder(
// // // // //                         borderRadius: BorderRadius.circular(16.0),
// // // // //                         borderSide: BorderSide.none,
// // // // //                       ),
// // // // //                       contentPadding: EdgeInsets.symmetric(vertical: 14.0),
// // // // //                     ),
// // // // //                     style: TextStyle(color: Colors.black),
// // // // //                     onChanged: _filterWorkflows,
// // // // //                   ),
// // // // //                 ),
// // // // //                 // SizedBox(width: 8.0),
// // // // //                 // IconButton(
// // // // //                 //   icon: Icon(Icons.delete_forever,
// // // // //                 //       color: Color(0xFF384F7D)), // Customize icon color
// // // // //                 //   onPressed: () {
// // // // //                 //     // Add functionality if needed
// // // // //                 //   },
// // // // //                 // ),
// // // // //               ],
// // // // //             ),
// // // // //           ),
// // // // //           Expanded(
// // // // //             child: ListView.builder(
// // // // //               itemCount: _filteredWorkflows.length,
// // // // //               itemBuilder: (context, index) {
// // // // //                 final workflow = _filteredWorkflows[index];
// // // // //                 return Dismissible(
// // // // //                   key: Key(workflow.id), // Unique key for each item
// // // // //                   background: Container(
// // // // //                     color: Colors.green, // Background color when swiping right (accept)
// // // // //                     alignment: Alignment.centerLeft,
// // // // //                     padding: EdgeInsets.symmetric(horizontal: 20),
// // // // //                     child: Icon(Icons.check, color: Colors.white),
// // // // //                   ),
// // // // //                   secondaryBackground: Container(
// // // // //                     color: Colors.red, // Background color when swiping left (reject)
// // // // //                     alignment: Alignment.centerRight,
// // // // //                     padding: EdgeInsets.symmetric(horizontal: 20),
// // // // //                     child: Icon(Icons.close, color: Colors.white),
// // // // //                   ),
// // // // //                   confirmDismiss: (direction) async {
// // // // //                     if (direction == DismissDirection.endToStart) {
// // // // //                       return true; // Allow dismiss on swipe left
// // // // //                     } else {
// // // // //                       return false; // Prevent dismiss on swipe right
// // // // //                     }
// // // // //                   },
// // // // //                   onDismissed: (direction) {
// // // // //                     if (direction == DismissDirection.endToStart) {
// // // // //                       _rejectWorkflow(workflow.id); // Reject workflow
// // // // //                     } else if (direction == DismissDirection.startToEnd) {
// // // // //                       _acceptWorkflow(workflow.id); // Accept workflow
// // // // //                     }
// // // // //                   },
// // // // //                   child: Card(
// // // // //                     margin: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
// // // // //                     shape: RoundedRectangleBorder(
// // // // //                       borderRadius: BorderRadius.circular(8.0),
// // // // //                     ),
// // // // //                     elevation: 2.0,
// // // // //                     child: ListTile(
// // // // //                       contentPadding: EdgeInsets.all(16.0),
// // // // //                       title: Text('Numéro : ${workflow.id}'),
// // // // //                       subtitle: Column(
// // // // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                         children: [
// // // // //                           SizedBox(height: 8.0),
// // // // //                           Text('Montant : ${workflow.amount.toStringAsFixed(4)}'),
// // // // //                           Text('Responsable Sur La Validation: ${workflow.validator}'),
// // // // //                           Text('Date : ${workflow.date.toLocal()}'.split(' ')[0]),
// // // // //                         ],
// // // // //                       ),
// // // // //                     ),
// // // // //                   ),
// // // // //                 );
// // // // //               },
// // // // //             ),
// // // // //           ),
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   void _openMenu(BuildContext context) {
// // // // //     Navigator.pushNamed(context, AppRoutes.menuScreen);
// // // // //   }
// // // // // }
// // // //     return Scaffold(
// // // //       appBar: CustomAppBar(
// // // //         toolbarHeight: 100.h, // Increased height for more space
// // // //         leadingWidth: 50.h, // Increased width for the menu button
// // // //         leading: GestureDetector(
// // // //           onTap: () => _openMenu(context),
// // // //           child: Padding(
// // // //             padding: EdgeInsets.only(
// // // //                 left: 30.h), // More space to the left of the menu icon
// // // //             child: Icon(
// // // //               Icons.menu, // Menu icon
// // // //               color: Colors.white, // Icon color
// // // //             ),
// // // //           ),
// // // //         ),
// // // //         title: Padding(
// // // //           padding: EdgeInsets.symmetric(
// // // //               horizontal: 20.h), // Added padding around the title
// // // //           child: Container(
// // // //             width: double.infinity, // Adjusted width to center the text
// // // //             child: Center(
// // // //               child: Text(
// // // //                 'Demande d’achat', // AppBar title
// // // //                 style: TextStyle(
// // // //                   color: Colors.white, // Title color
// // // //                   fontSize: 32.h, // Title text size
// // // //                 ),
// // // //                 overflow: TextOverflow
// // // //                     .ellipsis, // Handle overflow if the text is too long
// // // //               ),
// // // //             ),
// // // //           ),
// // // //         ),
// // // //         bottom: PreferredSize(
// // // //           preferredSize:
// // // //               Size.fromHeight(2.h), // Increased height for the divider
// // // //           child: Container(
// // // //             color: Colors.grey[800], // Divider color
// // // //             height: 2.h, // Divider height
// // // //           ),
// // // //         ),
// // // //       ),
// // // //       body: Column(
// // // //         children: [
// // // //           Padding(
// // // //             padding: const EdgeInsets.symmetric(
// // // //                 vertical: 20.0), // Padding for the Divider
// // // //             child: Divider(
// // // //               color: Colors.white,
// // // //               thickness: 2.0,
// // // //               height: 1.0,
// // // //               indent: 20.0,
// // // //               endIndent: 20.0,
// // // //             ),
// // // //           ),
// // // //           Padding(
// // // //             padding: const EdgeInsets.all(8.0),
// // // //             child: Row(
// // // //               children: [
// // // //                 Expanded(
// // // //                   child: TextField(
// // // //                     decoration: InputDecoration(
// // // //                       hintText: 'Recherche Par Mot Clé',
// // // //                       filled: true,
// // // //                       fillColor: Colors.white,
// // // //                       prefixIcon: Icon(Icons.search, color: Color(0xFF384F7D)),
// // // //                       suffixIcon:
// // // //                           Icon(Icons.filter_list, color: Color(0xFF384F7D)),
// // // //                       border: OutlineInputBorder(
// // // //                         borderRadius: BorderRadius.circular(16.0),
// // // //                         borderSide: BorderSide.none,
// // // //                       ),
// // // //                       contentPadding: EdgeInsets.symmetric(vertical: 14.0),
// // // //                     ),
// // // //                     style: TextStyle(color: Colors.black),
// // // //                     onChanged: _filterWorkflows,
// // // //                   ),
// // // //                 ),
// // // //               ],
// // // //             ),
// // // //           ),
// // // //           Expanded(
// // // //             child: ListView.builder(
// // // //               itemCount: _filteredWorkflows.length,
// // // //               itemBuilder: (context, index) {
// // // //                 final workflow = _filteredWorkflows[index];
// // // //                 return Dismissible(
// // // //                   key: Key(workflow.id), // Unique key for each item
// // // //                   background: Container(
// // // //                     color: Colors
// // // //                         .green, // Background color when swiping right (accept)
// // // //                     alignment: Alignment.centerLeft,
// // // //                     padding: EdgeInsets.symmetric(horizontal: 20),
// // // //                     child: Icon(Icons.check, color: Colors.white),
// // // //                   ),
// // // //                   secondaryBackground: Container(
// // // //                     color: Colors
// // // //                         .red, // Background color when swiping left (reject)
// // // //                     alignment: Alignment.centerRight,
// // // //                     padding: EdgeInsets.symmetric(horizontal: 20),
// // // //                     child: Icon(Icons.close, color: Colors.white),
// // // //                   ),
// // // //                   confirmDismiss: (direction) async {
// // // //                     String action = direction == DismissDirection.endToStart
// // // //                         ? 'rejeter'
// // // //                         : 'accepter';
// // // //                     return await _showConfirmationDialog(context, action);
// // // //                   },
// // // //                   onDismissed: (direction) {
// // // //                     if (direction == DismissDirection.endToStart) {
// // // //                       _rejectWorkflow(workflow.id); // Reject workflow
// // // //                     } else if (direction == DismissDirection.startToEnd) {
// // // //                       _acceptWorkflow(workflow.id); // Accept workflow
// // // //                     }
// // // //                   },
// // // //                   child: Card(
// // // //                     margin: const EdgeInsets.symmetric(
// // // //                         vertical: 6.0, horizontal: 8.0),
// // // //                     shape: RoundedRectangleBorder(
// // // //                       borderRadius: BorderRadius.circular(8.0),
// // // //                     ),
// // // //                     elevation: 2.0,
// // // //                     child: ListTile(
// // // //                       contentPadding: EdgeInsets.all(16.0),
// // // //                       title: Text('Numéro : ${workflow.id}'),
// // // //                       subtitle: Column(
// // // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // // //                         children: [
// // // //                           SizedBox(height: 8.0),
// // // //                           Text(
// // // //                               'Montant : ${workflow.amount.toStringAsFixed(4)}'),
// // // //                           Text(
// // // //                               'Responsable Sur La Validation: ${workflow.validator}'),
// // // //                           Text('Date : ${workflow.date.toLocal()}'
// // // //                               .split(' ')[0]),
// // // //                         ],
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                 );
// // // //               },
// // // //             ),
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// import 'package:flutter/material.dart';

// class WorkflowPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: GestureDetector(
//           onTap: () {
//             // Ouvrir le menu
//           },
//           child: Icon(Icons.menu),
//         ),
//         title: Center(child: Text('Validation Workflow')),
//         bottom: PreferredSize(
//           preferredSize: Size.fromHeight(2.0),
//           child: Divider(color: Colors.grey[300]),
//         ),
//         backgroundColor: Color(0xFF384F7D),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             SizedBox(height: 56),
//             Text(
//               'Glisser Vers La Gauche Pour Valider Le Workflow\nOu Vers La Droite Pour Refuser',
//               style: TextStyle(fontSize: 20 ,color: const Color.fromARGB(255, 247, 247, 247)),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 16),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 16),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(30),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.2),
//                     spreadRadius: 2,
//                     blurRadius: 5,
//                   ),
//                 ],
//               ),
//               child: TextField(
//                 decoration: InputDecoration(
//                   icon: Icon(Icons.search, color: Color(0xFFD0B3A2)),
//                   suffixIcon: Icon(Icons.filter_alt_outlined, color: Color(0xFF384F7D)),
//                   hintText: 'Recherche Par Mot Clé',
//                   border: InputBorder.none,
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: 10, // Nombre d'éléments dans la liste
//                 itemBuilder: (context, index) {
//                   return Dismissible(
//                     key: Key(index.toString()),
//                     background: Container(color: Colors.green),
//                     secondaryBackground: Container(color: Colors.red),
//                     onDismissed: (direction) {
//                       // Action sur swipe
//                       if (direction == DismissDirection.startToEnd) {
//                         // Refuser
//                       } else {
//                         // Valider
//                       }
//                     },
//                     child: Card(
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       margin: EdgeInsets.symmetric(vertical: 8),
//                       child: ListTile(
//                         title: Text('Numéro : FA-111'),
//                         subtitle: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text('Montant : 10000,0000'),
//                             Text('Responsable Sur La Validation: Yassine'),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//       // bottomNavigationBar: BottomAppBar(
//       //   color: Colors.brown[200],
//       //   child: Row(
//       //     mainAxisAlignment: MainAxisAlignment.spaceAround,
//       //     children: [
//       //       IconButton(icon: Icon(Icons.home), onPressed: () {}),
//       //       IconButton(icon: Icon(Icons.call), onPressed: () {}),
//       //       IconButton(icon: Icon(Icons.monetization_on), onPressed: () {}),
//       //     ],
//       //   ),
//       // ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:gecimmoa/routes/app_routes.dart';
import 'package:gecimmoa/widgets/app_bar/custom_app_bar.dart';

class WorkflowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Color(0xFF2F3D4C),
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Salima LEYLA"),
                accountEmail: Text("Administration"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/img_ellipse_1.png'),
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF2F3D4C),
                ),
                 otherAccountsPictures: [
                IconButton(
                  icon: Icon(Icons.close, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    ListTile(
                      leading: Icon(Icons.dashboard, color: Colors.white),
                      title: Text('Tableau de bord', style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.homePage);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.shopping_cart, color: Colors.white),
                      title: Text('Demande d\'achat', style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.appelDoffreScreen);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.white),
                      title: Text('Validation Workflow', style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.validationWorkScreen);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.phone, color: Colors.white),
                      title: Text('Appel d\'offre', style: TextStyle(color: Colors.white)),
                      onTap: () {
                        // Handle navigation to call for tenders
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.location_on, color: Colors.white),
                      title: Text('Terrain', style: TextStyle(color: Colors.white)),
                      onTap: () {
                        // Handle navigation to terrain
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.map, color: Colors.white),
                      title: Text('Suivi chantier', style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.taskManagementScreen);
                      },
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.white),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.white),
                title: Text('Settings', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Handle navigation to settings
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle, color: Colors.white),
                title: Text('Profile', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Handle navigation to profile
                },
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          // Ajout de la nouvelle AppBar
          SizedBox(
            height: 140, // Utiliser 292 pour la hauteur ou ajuster selon vos besoins
            width: screenWidth,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: screenWidth,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/images/your_image.png'), // Remplacez par votre image
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomAppBar(
                          leadingWidth: MediaQuery.of(context).size.width * 0.1, // Adjust leading width
                          leading: Builder(
                            builder: (context) => GestureDetector(
                              onTap: () => Scaffold.of(context).openDrawer(),
                              child: Padding(
                                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05), // Responsive padding
                                child: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          title: Container(
                            width: MediaQuery.of(context).size.width * 0.8, // Responsive title width
                            child: Center(
                              child: Text(
                                'Validation Workflow',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.width * 0.06, // Responsive font size
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          bottom: PreferredSize(
                            preferredSize: Size.fromHeight(1),
                            child: Container(
                              color: Colors.grey[800],
                              height: 1,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.02), // Responsive padding
                          child: Divider(
                            color: Colors.white,
                            thickness: MediaQuery.of(context).size.height * 0.003, // Responsive thickness
                            height: MediaQuery.of(context).size.height * 0.01, // Responsive height
                            indent: MediaQuery.of(context).size.width * 0.05, // Responsive indent
                            endIndent: MediaQuery.of(context).size.width * 0.05, // Responsive endIndent
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Corps de la page
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Glisser Vers La Gauche Pour Valider Le Workflow\nOu Vers La Droite Pour Refuser',
                    style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 247, 247, 247)),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 26),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search, color: Color(0xFFD0B3A2)),
                        suffixIcon: Icon(Icons.filter_alt_outlined, color: Color(0xFFD0B3A2)),
                        hintText: 'Recherche Par Mot Clé',
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10, // Nombre d'éléments dans la liste
                      itemBuilder: (context, index) {
                        return Dismissible(
                          key: Key(index.toString()),
                          background: Container(color: Colors.green),
                          secondaryBackground: Container(color: Colors.red),
                          onDismissed: (direction) {
                            // Action sur swipe
                            if (direction == DismissDirection.startToEnd) {
                              // Refuser
                            } else {
                              // Valider
                            }
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.symmetric(vertical: 8),
                            child: ListTile(
                              title: Text('Numéro : FA-111'),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Montant : 10000,0000'),
                                  Text('Responsable Sur La Validation: Yassine'),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:gecimmoa/routes/app_routes.dart';
// import 'package:gecimmoa/widgets/app_bar/custom_app_bar.dart';

// class WorkflowPage extends StatelessWidget {
//     // Action pour ouvrir le menu
//      void _openMenu(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.menuScreen);
//   }
//   void showCustomMenu(BuildContext context) {
//   showModalBottomSheet(
//     context: context,
//     isScrollControlled: true,
//     backgroundColor: Colors.transparent,
//      builder: (context) => Align(
//            alignment: Alignment.centerLeft, // Aligns the menu to the left
//             child: FractionallySizedBox(
//             widthFactor: 0.75,
//     // builder: (context) => 
//     // FractionallySizedBox(
//     //   alignment: Alignment.bottomCenter,
//     //   widthFactor: 0.5,
//      // This makes the menu take up half the screen width
//       child: Container(
//         decoration: BoxDecoration(
//           color: Color(0xFF2F3D4C),
//           borderRadius: BorderRadius.only(
//             topRight: Radius.circular(20.0),
//             bottomRight: Radius.circular(20.0),
//           ),
//         ),
//         child: Column(
//           children: [
//             UserAccountsDrawerHeader(
//               accountName: Text("Salima LEYLA"),
//               accountEmail: Text("Administration"),
//               currentAccountPicture: CircleAvatar(
//                 backgroundImage: AssetImage('assets/images/img_ellipse_1.png'),
//               ),
//               decoration: BoxDecoration(
//                 color: Color(0xFF2F3D4C),
//               ),
//               otherAccountsPictures: [
//                 IconButton(
//                   icon: Icon(Icons.close, color: Colors.white),
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                 ),
//               ],
//             ),
//             Expanded(
//               child: ListView(
//                 padding: EdgeInsets.zero,
//                 children: [
//                   ListTile(
//                     leading: Icon(Icons.dashboard, color: Colors.white),
//                     title: Text('Tableau de bord', style: TextStyle(color: Colors.white)),
//                     tileColor: Color(0xFF2F3D4C),
//                     onTap: () {
//                       Navigator.pushNamed(context, AppRoutes.homePage);
//                     },
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.shopping_cart, color: Colors.white),
//                     title: Text('Demande d\'achat', style: TextStyle(color: Colors.white)),
//                     tileColor: Color(0xFF2F3D4C),
//                     onTap: () {
//                       Navigator.pushNamed(context, AppRoutes.appelDoffreScreen);
//                     },
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.check_circle, color: Colors.white),
//                     title: Text('Validation Workflow', style: TextStyle(color: Colors.white)),
//                     tileColor: Color(0xFF2F3D4C),
//                     onTap: () {
//                       Navigator.pushNamed(context, AppRoutes.validationWorkScreen);
//                     },
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.phone, color: Colors.white),
//                     title: Text('Appel d\'offre', style: TextStyle(color: Colors.white)),
//                     tileColor: Color(0xFF2F3D4C),
//                     onTap: () {
//                       // Handle navigation to call for tenders
//                     },
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.location_on, color: Colors.white),
//                     title: Text('Terrain', style: TextStyle(color: Colors.white)),
//                     tileColor: Color(0xFF2F3D4C),
//                     onTap: () {
//                       // Handle navigation to terrain
//                     },
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.map, color: Colors.white),
//                     title: Text('Suivi chantier', style: TextStyle(color: Colors.white)),
//                     tileColor: Color(0xFF2F3D4C),
//                     onTap: () {
//                       Navigator.pushNamed(context, AppRoutes.taskManagementScreen);
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             Divider(color: Colors.white),
//             ListTile(
//               leading: Icon(Icons.settings, color: Colors.white),
//               title: Text('Settings', style: TextStyle(color: Colors.white)),
//               tileColor: Color(0xFF2F3D4C),
//               onTap: () {
//                 // Handle navigation to settings
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.account_circle, color: Colors.white),
//               title: Text('Profile', style: TextStyle(color: Colors.white)),
//               tileColor: Color(0xFF2F3D4C),
//               onTap: () {
//                 // Handle navigation to profile
//               },
//             ),
//             // ListTile(
//             //   leading: Icon(Icons.logout, color: Colors.white),
//             //   title: Text('Logout', style: TextStyle(color: Colors.white)),
//             //   tileColor: Color(0xFF2F3D4C),
//             //   onTap: () {
//             //     Navigator.pushNamed(context, AppRoutes.getStartedScreen);
//             //   },
//             // ),
//           ],
//         ),
//       ),
//     ),
//     )
//   );
// }
//   @override
//   Widget build(BuildContext context) {
//     final double screenWidth = MediaQuery.of(context).size.width;

//     return Scaffold(
//       body: Column(
//         children: [
//           // Ajout de la nouvelle AppBar
//           SizedBox(
//             height: 140, // Utiliser 292 pour la hauteur ou ajuster selon vos besoins
//             width: screenWidth,
//             child: Stack(
//               alignment: Alignment.bottomCenter,
//               children: [
//                 Align(
//                   alignment: Alignment.topCenter,
//                   child: Container(
//                     width: screenWidth,
//                     padding: EdgeInsets.symmetric(vertical: 20),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       image: DecorationImage(
//                         image: AssetImage('assets/images/your_image.png'), // Remplacez par votre image
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                   //       CustomAppBar(
//                   //         leadingWidth: 35,
//                   //         leading: GestureDetector(
//                   //           // onTap: () => _openMenu(context),
//                   //           onTap: () => showCustomMenu(context),
//                   //           child: Padding(
//                   //             padding: EdgeInsets.only(left: 20),
//                   //             child: Icon(
//                   //               Icons.menu,
//                   //               color: Colors.white,
//                   //             ),
//                   //           ),
//                   //         ),
//                   //         title: Container(
//                   //           width: 1000,
//                   //           child: Center(
//                   //             child: Text(
//                   //               'Validation Workflow',
//                   //               style: TextStyle(
//                   //                 color: Colors.white,
//                   //                 fontSize: 30,
//                   //               ),
//                   //               overflow: TextOverflow.ellipsis,
//                   //             ),
//                   //           ),
//                   //         ),
//                   //         bottom: PreferredSize(
//                   //           preferredSize: Size.fromHeight(1),
//                   //           child: Container(
//                   //             color: Colors.grey[800],
//                   //             height: 1,
//                   //           ),
//                   //         ),
//                   //       ),
//                   //       Padding(
//                   //         padding: const EdgeInsets.symmetric(vertical: 20.0),
//                   //         child: Divider(
//                   //           color: Colors.white,
//                   //           thickness: 2.0,
//                   //           height: 1.0,
//                   //           indent: 20.0,
//                   //           endIndent: 20.0,
//                   //         ),
//                   //       ),
//                   //     ],
//                   //   ),
//                   // ),
//                   CustomAppBar(
//                     leadingWidth: MediaQuery.of(context).size.width * 0.1, // Adjust leading width
//                     leading: GestureDetector(
//                       onTap: () => showCustomMenu(context),
//                       child: Padding(
//                         padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05), // Responsive padding
//                         child: Icon(
//                           Icons.menu,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     title: Container(
//                       width: MediaQuery.of(context).size.width * 0.8, // Responsive title width
//                       child: Center(
//                         child: Text(
//                           'Validation Workflow',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: MediaQuery.of(context).size.width * 0.06, // Responsive font size
//                           ),
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                       ),
//                     ),
//                     bottom: PreferredSize(
//                       preferredSize: Size.fromHeight(1),
//                       child: Container(
//                         color: Colors.grey[800],
//                         height: 1,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.02), // Responsive padding
//                     child: Divider(
//                       color: Colors.white,
//                       thickness: MediaQuery.of(context).size.height * 0.003, // Responsive thickness
//                       height: MediaQuery.of(context).size.height * 0.01, // Responsive height
//                       indent: MediaQuery.of(context).size.width * 0.05, // Responsive indent
//                       endIndent: MediaQuery.of(context).size.width * 0.05, // Responsive endIndent
//                     ), 
//                   ),
//                 ]
//               )
//             )
//           )
//         ],
//       ),
//     ),
//           // Corps de la page
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 children: [
//                   Text(
//                     'Glisser Vers La Gauche Pour Valider Le Workflow\nOu Vers La Droite Pour Refuser',
//                     // style: TextStyle(fontSize: 14, color: Colors.grey[700]),
//                     style: TextStyle(fontSize: 20 ,color: const Color.fromARGB(255, 247, 247, 247)),
//                     textAlign: TextAlign.center,
//                   ),
//                   SizedBox(height: 26),
//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: 16),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(30),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.2),
//                           spreadRadius: 2,
//                           blurRadius: 5,
//                         ),
//                       ],
//                     ),
//                     child: TextField(
//                       decoration: InputDecoration(
//                         icon: Icon(Icons.search, color: Color(0xFFD0B3A2)),
//                         suffixIcon: Icon(Icons.filter_alt_outlined, color: Color(0xFFD0B3A2)),
//                         hintText: 'Recherche Par Mot Clé',
//                         border: InputBorder.none,
//                       ),
//                        style: TextStyle(color: Colors.black),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Expanded(
//                     child: ListView.builder(
//                       itemCount: 10, // Nombre d'éléments dans la liste
//                       itemBuilder: (context, index) {
//                         return Dismissible(
//                           key: Key(index.toString()),
//                           background: Container(color: Colors.green),
//                           secondaryBackground: Container(color: Colors.red),
//                           onDismissed: (direction) {
//                             // Action sur swipe
//                             if (direction == DismissDirection.startToEnd) {
//                               // Refuser
//                             } else {
//                               // Valider
//                             }
//                           },
//                           child: Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             margin: EdgeInsets.symmetric(vertical: 8),
//                             child: ListTile(
//                               title: Text('Numéro : FA-111'),
//                               subtitle: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text('Montant : 10000,0000'),
//                                   Text('Responsable Sur La Validation: Yassine'),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//       // bottomNavigationBar: BottomAppBar(
//       //   color: Colors.brown[200],
//       //   child: Row(
//       //     mainAxisAlignment: MainAxisAlignment.spaceAround,
//       //     children: [
//       //       IconButton(icon: Icon(Icons.home), onPressed: () {}),
//       //       IconButton(icon: Icon(Icons.call), onPressed: () {}),
//       //       IconButton(icon: Icon(Icons.monetization_on), onPressed: () {}),
//       //     ],
//       //   ),
//       // ),
//     );
//   }
// }
// // import 'package:flutter/material.dart';
// // import 'package:gecimmoa/api_service.dart';

// // class WorkflowPage extends StatefulWidget {
// //   @override
// //   _WorkflowPageState createState() => _WorkflowPageState();
// // }

// // class _WorkflowPageState extends State<WorkflowPage> {
// //   late Future<List<Workflows>> _workflows;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _workflows = ApiService.fetchWorkflows();
// //   }

// //   void _validateWorkflow(String codeDemande, bool isAccepted) async {
// //     try {
// //       await ApiService.validateWorkflow(codeDemande, isAccepted);
// //       setState(() {
// //         _workflows = ApiService.fetchWorkflows(); // Refresh workflows after validation
// //       });
// //     } catch (error) {
// //       print('Failed to validate workflow: $error');
// //     }
// //   }
// // //   Future<void> _validateWorkflow(String codeDemande, bool isAccepted) async {
// // //   try {
// // //     print('Workflow validated successfully for code: $codeDemande');
// // //   } catch (e) {
// // //     print('Failed to validate workflow for code: $codeDemande. Error: $e');
// // //   }
// // // }
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: FutureBuilder<List<Workflows>>(
// //         future: _workflows,
// //         builder: (context, snapshot) {
// //           if (snapshot.connectionState == ConnectionState.waiting) {
// //             return Center(child: CircularProgressIndicator());
// //           } else if (snapshot.hasError) {
// //             return Center(child: Text('Error: ${snapshot.error}'));
// //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// //             return Center(child: Text('No workflows found'));
// //           }

// //           final workflows = snapshot.data!;

// //           return Column(
// //             children: [
// //               // Your Custom AppBar code here

// //               Expanded(
// //                 child: ListView.builder(
// //                   itemCount: workflows.length,
// //                   itemBuilder: (context, index) {
// //                     final workflow = workflows[index];

// //                     return Dismissible(
// //                       key: Key(workflow.codeDemande),
// //                       background: Container(color: Colors.green),
// //                       secondaryBackground: Container(color: Colors.red),
// //                       onDismissed: (direction) {
// //                         if (direction == DismissDirection.endToStart) {
// //                           _validateWorkflow(workflow.codeDemande, true); // Accept
// //                         } else {
// //                           _validateWorkflow(workflow.codeDemande, false); // Reject
// //                         }
// //                       },
// //                       child: Card(
// //                         shape: RoundedRectangleBorder(
// //                           borderRadius: BorderRadius.circular(10),
// //                         ),
// //                         margin: EdgeInsets.symmetric(vertical: 8),
// //                         child: ListTile(
// //                           title: Text('Numéro : ${workflow.codeDemande}'),
// //                           subtitle: Column(
// //                             crossAxisAlignment: CrossAxisAlignment.start,
// //                             children: [
// //                               Text('Montant : ${workflow.amount}'),
// //                               Text('Responsable Sur La Validation: ${workflow.validator}'),
// //                             ],
// //                           ),
// //                         ),
// //                       ),
// //                     );
// //                   },
// //                 ),
// //               ),
// //             ],
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }

