// // // // // // // import 'package:flutter/material.dart';
// // // // // // // import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
// // // // // // // import '../../core/app_export.dart';
// // // // // // // import '../../widgets/app_bar/appbar_leading_image.dart';
// // // // // // // import '../../widgets/app_bar/custom_app_bar.dart';
// // // // // // // import '../../widgets/custom_bottom_bar.dart';
// // // // // // // import '../home_page/home_page.dart';
// // // // // // // import 'widgets/detailslist_item_widget.dart'; // ignore_for_file: must_be_immutable

// // // // // // // // ignore_for_file: must_be_immutable
// // // // // // // class AppelDoffreScreen extends StatelessWidget {
// // // // // // //   AppelDoffreScreen({Key? key})
// // // // // // //       : super(
// // // // // // //           key: key,
// // // // // // //         );
// // // // // // // void _openMenu(BuildContext context) {
// // // // // // //     Navigator.pushNamed(context, AppRoutes.menuScreen);
// // // // // // //   }
// // // // // // //   GlobalKey<NavigatorState> navigatorKey = GlobalKey();

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return SafeArea(
// // // // // // //       child: Scaffold(
// // // // // // //         body: SizedBox(
// // // // // // //           width: 400.h,
// // // // // // //           child: Column(
// // // // // // //             children: [
// // // // // // //               _buildMainStack(context),
// // // // // // //               Container(
// // // // // // //                 width: 400.h,
// // // // // // //                 padding: EdgeInsets.symmetric(horizontal: 7.h),
// // // // // // //                 child: Column(
// // // // // // //                   children: [
// // // // // // //                     SizedBox(height: 30.v),
// // // // // // //                     _buildFilterRow(context),
// // // // // // //                     SizedBox(height: 20.v),
// // // // // // //                     _buildDetailsList(context)
// // // // // // //                   ],
// // // // // // //                 ),
// // // // // // //               )
// // // // // // //             ],
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //         // bottomNavigationBar: _buildBottomNavigation(context),
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }

// // // // // // //   /// Section Widget
// // // // // // //   Widget _buildMainStack(BuildContext context) {
// // // // // // //     return SizedBox(
// // // // // // //       height: 292.v,
// // // // // // //       width: double.maxFinite,
// // // // // // //       child: Stack(
// // // // // // //         alignment: Alignment.bottomCenter,
// // // // // // //         children: [
// // // // // // //           Align(
// // // // // // //             alignment: Alignment.topCenter,
// // // // // // //             child: Container(
// // // // // // //               width: double.maxFinite,
// // // // // // //               padding: EdgeInsets.symmetric(vertical: 20.v),
// // // // // // //               decoration: BoxDecoration(
// // // // // // //                 borderRadius: BorderRadiusStyle.customBorderBR100,
// // // // // // //                 image: DecorationImage(
// // // // // // //                   image: fs.Svg(
// // // // // // //                     ImageConstant.imgGroup62,
// // // // // // //                   ),
// // // // // // //                   fit: BoxFit.cover,
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //               child: Column(
// // // // // // //                 mainAxisSize: MainAxisSize.min,
// // // // // // //                 mainAxisAlignment: MainAxisAlignment.center,
// // // // // // //                 children: [
// // // // // // //                   CustomAppBar(
// // // // // // //                     leadingWidth: 58.h,
// // // // // // //                     leading: AppbarLeadingImage(
// // // // // // //                       imagePath: ImageConstant.imgMegaphone,
// // // // // // //                       onPressed: () => _openMenu(context),
// // // // // // //                       margin: EdgeInsets.only(left: 20.h),
// // // // // // //                     ),
// // // // // // //                   ),
// // // // // // //                   SizedBox(height: 68.v),
// // // // // // //                   Container(
// // // // // // //                     width: double.maxFinite,
// // // // // // //                     margin: EdgeInsets.symmetric(horizontal: 16.h),
// // // // // // //                     child: Row(
// // // // // // //                       children: [
// // // // // // //                         Expanded(
// // // // // // //                           child: _buildProcessedColumn(
// // // // // // //                             context,
// // // // // // //                             titleText: "En cours",
// // // // // // //                             statNumber: "51",
// // // // // // //                           ),
// // // // // // //                         ),
// // // // // // //                         SizedBox(width: 6.h),
// // // // // // //                         Expanded(
// // // // // // //                           child: _buildProcessedColumn(
// // // // // // //                             context,
// // // // // // //                             titleText: "Traitées",
// // // // // // //                             statNumber: "40",
// // // // // // //                           ),
// // // // // // //                         ),
// // // // // // //                         SizedBox(width: 6.h),
// // // // // // //                         Expanded(
// // // // // // //                           child: _buildProcessedColumn(
// // // // // // //                             context,
// // // // // // //                             titleText: "Refusées",
// // // // // // //                             statNumber: "5",
// // // // // // //                           ),
// // // // // // //                         )
// // // // // // //                       ],
// // // // // // //                     ),
// // // // // // //                   )
// // // // // // //                 ],
// // // // // // //               ),
// // // // // // //             ),
// // // // // // //           ),
// // // // // // //           Padding(
// // // // // // //             padding: EdgeInsets.symmetric(horizontal: 12.h),
// // // // // // //             child: Row(
// // // // // // //               children: [
// // // // // // //                 Expanded(
// // // // // // //                   child: _buildProcessedColumn(
// // // // // // //                     context,
// // // // // // //                     titleText: "Appel d’offre",
// // // // // // //                     statNumber: "6",
// // // // // // //                   ),
// // // // // // //                 ),
// // // // // // //                 SizedBox(width: 6.h),
// // // // // // //                 Expanded(
// // // // // // //                   child: _buildProcessedColumn(
// // // // // // //                     context,
// // // // // // //                     titleText: "Demande de prix",
// // // // // // //                     statNumber: "14",
// // // // // // //                   ),
// // // // // // //                 ),
// // // // // // //                 SizedBox(width: 6.h),
// // // // // // //                 Expanded(
// // // // // // //                   child: _buildProcessedColumn(
// // // // // // //                     context,
// // // // // // //                     titleText: "Avenant",
// // // // // // //                     statNumber: "20",
// // // // // // //                   ),
// // // // // // //                 )
// // // // // // //               ],
// // // // // // //             ),
// // // // // // //           )
// // // // // // //         ],
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }

// // // // // // //   /// Section Widget
// // // // // // //   Widget _buildFilterRow(BuildContext context) {
// // // // // // //     return Container(
// // // // // // //       padding: EdgeInsets.symmetric(horizontal: 6.h),
// // // // // // //       width: double.maxFinite,
// // // // // // //       child: Row(
// // // // // // //         children: [
// // // // // // //           Expanded(
// // // // // // //             child: Container(
// // // // // // //               height: 36.v,
// // // // // // //               width: 270.h,
// // // // // // //               decoration: BoxDecoration(
// // // // // // //                 color: appTheme.gray400,
// // // // // // //                 borderRadius: BorderRadius.circular(
// // // // // // //                   5.h,
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //             ),
// // // // // // //           ),
// // // // // // //           SizedBox(width: 4.h),
// // // // // // //           Container(
// // // // // // //             height: 36.v,
// // // // // // //             width: 60.h,
// // // // // // //             decoration: AppDecoration.fillGray400.copyWith(
// // // // // // //               borderRadius: BorderRadiusStyle.roundedBorder5,
// // // // // // //             ),
// // // // // // //             child: Stack(
// // // // // // //               alignment: Alignment.center,
// // // // // // //               children: [
// // // // // // //                 CustomImageView(
// // // // // // //                   imagePath: ImageConstant.imgFilter,
// // // // // // //                   height: 18.adaptSize,
// // // // // // //                   width: 18.adaptSize,
// // // // // // //                 )
// // // // // // //               ],
// // // // // // //             ),
// // // // // // //           )
// // // // // // //         ],
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }

// // // // // // //   /// Section Widget
// // // // // // //   Widget _buildDetailsList(BuildContext context) {
// // // // // // //     return SizedBox(
// // // // // // //       width: double.maxFinite,
// // // // // // //       child: ListView.separated(
// // // // // // //         physics: NeverScrollableScrollPhysics(),
// // // // // // //         shrinkWrap: true,
// // // // // // //         separatorBuilder: (context, index) {
// // // // // // //           return SizedBox(
// // // // // // //             height: 6.v,
// // // // // // //           );
// // // // // // //         },
// // // // // // //         itemCount: 5,
// // // // // // //         itemBuilder: (context, index) {
// // // // // // //           return DetailslistItemWidget();
// // // // // // //         },
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }

// // // // // // //   /// Section Widget
// // // // // // //   // Widget _buildBottomNavigation(BuildContext context) {
// // // // // // //   //   return CustomBottomBar(
// // // // // // //   //     onChanged: (BottomBarEnum type) {
// // // // // // //   //       Navigator.pushNamed(
// // // // // // //   //           navigatorKey.currentContext!, getCurrentRoute(type));
// // // // // // //   //     },
// // // // // // //   //   );
// // // // // // //   // }

// // // // // // //   /// Common widget
// // // // // // //   Widget _buildProcessedColumn(
// // // // // // //     BuildContext context, {
// // // // // // //     required String titleText,
// // // // // // //     required String statNumber,
// // // // // // //   }) {
// // // // // // //     return Container(
// // // // // // //       decoration: AppDecoration.fillBluegray700.copyWith(
// // // // // // //         borderRadius: BorderRadiusStyle.roundedBorder10,
// // // // // // //       ),
// // // // // // //       child: Column(
// // // // // // //         mainAxisSize: MainAxisSize.min,
// // // // // // //         children: [
// // // // // // //           SizedBox(height: 10.v),
// // // // // // //           Text(
// // // // // // //             titleText,
// // // // // // //             style: CustomTextStyles.titleMedium16.copyWith(
// // // // // // //               color: appTheme.whiteA700,
// // // // // // //             ),
// // // // // // //           ),
// // // // // // //           SizedBox(height: 8.v),
// // // // // // //           Container(
// // // // // // //             width: double.maxFinite,
// // // // // // //             padding: EdgeInsets.symmetric(vertical: 6.v),
// // // // // // //             decoration: AppDecoration.fillGray400,
// // // // // // //             child: Column(
// // // // // // //               mainAxisAlignment: MainAxisAlignment.center,
// // // // // // //               children: [
// // // // // // //                 SizedBox(height: 2.v),
// // // // // // //                 Text(
// // // // // // //                   statNumber,
// // // // // // //                   style: theme.textTheme.titleLarge!.copyWith(
// // // // // // //                     color: appTheme.whiteA700,
// // // // // // //                   ),
// // // // // // //                 )
// // // // // // //               ],
// // // // // // //             ),
// // // // // // //           )
// // // // // // //         ],
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }

// // // // // // //   ///Handling route based on bottom click actions
// // // // // // //   // String getCurrentRoute(BottomBarEnum type) {
// // // // // // //   //   switch (type) {
// // // // // // //   //     case BottomBarEnum.Home:
// // // // // // //   //       return AppRoutes.homePage;
// // // // // // //   //     case BottomBarEnum.Call:
// // // // // // //   //       return "/";
// // // // // // //   //     case BottomBarEnum.Clock:
// // // // // // //   //       return "/";
// // // // // // //   //     default:
// // // // // // //   //       return "/";
// // // // // // //   //   }
// // // // // // //   // }

// // // // // // //   // ///Handling page based on route
// // // // // // //   // Widget getCurrentPage(String currentRoute) {
// // // // // // //   //   switch (currentRoute) {
// // // // // // //   //     case AppRoutes.homePage:
// // // // // // //   //       return HomePage();
// // // // // // //   //     default:
// // // // // // //   //       return DefaultWidget();
// // // // // // //   //   }
// // // // // // //   // }
// // // // // // // }
// // // import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
// // // import 'package:flutter/material.dart';
// // // import 'package:gecimmoa/api_service.dart';
// // // import 'package:gecimmoa/presentation/appel_doffre_screen/widgets/detailslist_item_widget.dart';
// // // import 'package:gecimmoa/widgets/app_bar/appbar_leading_image.dart';
// // // import 'package:gecimmoa/widgets/app_bar/custom_app_bar.dart';
// // // import '../../../core/app_export.dart'; // Assurez-vous d'importer les ressources nécessaires

// // // // ignore: must_be_immutable
// // // class AppelDoffreScreen extends StatelessWidget {
// // //   AppelDoffreScreen({Key? key}) : super(key: key);

// // //   void _openMenu(BuildContext context) {
// // //     Navigator.pushNamed(context, AppRoutes.menuScreen);
// // //   }

// // //   GlobalKey<NavigatorState> navigatorKey = GlobalKey();

// // //   Future<Map<String, dynamic>> _fetchData() async {

// // //     final stats = await ApiService.fetchStatistics();
// // //     final detailsList = await ApiService.fetchDetailsList();

// // //     return {'stats': stats, 'detailsList': detailsList};
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return SafeArea(
// // //       child: Scaffold(
// // //         body: FutureBuilder<Map<String, dynamic>>(
// // //           future: _fetchData(),
// // //           builder: (context, snapshot) {
// // //             if (snapshot.connectionState == ConnectionState.waiting) {
// // //               return Center(child: CircularProgressIndicator());
// // //             } else if (snapshot.hasError) {
// // //               return Center(child: Text('Error: ${snapshot.error}'));
// // //             } else if (snapshot.hasData) {
// // //               final stats = snapshot.data!['stats'];
// // //               final detailsList = snapshot.data!['detailsList'];

// // //               return SizedBox(
// // //                 width: 400.h,
// // //                 child: Column(
// // //                   children: [
// // //                     _buildMainStack(context, stats),
// // //                     Container(
// // //                       width: 400.h,
// // //                       padding: EdgeInsets.symmetric(horizontal: 7.h),
// // //                       child: Column(
// // //                         children: [
// // //                           SizedBox(height: 30.v),
// // //                           _buildFilterRow(context),
// // //                           SizedBox(height: 20.v),
// // //                           _buildDetailsList(context, detailsList)
// // //                         ],
// // //                       ),
// // //                     )
// // //                   ],
// // //                 ),
// // //               );
// // //             } else {
// // //               return Center(child: Text('Aucune donnée disponible'));
// // //             }
// // //           },
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildMainStack(BuildContext context, Map<String, dynamic> stats) {
// // //     return SizedBox(
// // //       height: 292.v,
// // //       width: double.maxFinite,
// // //       child: Stack(
// // //         alignment: Alignment.bottomCenter,
// // //         children: [
// // //           Align(
// // //             alignment: Alignment.topCenter,
// // //             child: Container(
// // //               width: double.maxFinite,
// // //               padding: EdgeInsets.symmetric(vertical: 20.v),
// // //               decoration: BoxDecoration(
// // //                 borderRadius: BorderRadiusStyle.customBorderBR100,
// // //                 image: DecorationImage(
// // //                   image: fs.Svg(
// // //                     ImageConstant.imgGroup62,
// // //                   ),
// // //                   fit: BoxFit.cover,
// // //                 ),
// // //               ),
// // //               child: Column(
// // //                 mainAxisSize: MainAxisSize.min,
// // //                 mainAxisAlignment: MainAxisAlignment.center,
// // //                 children: [
// // //                   CustomAppBar(
// // //                     leadingWidth: 58.h,
// // //                     leading: AppbarLeadingImage(
// // //                       imagePath: ImageConstant.imgMegaphone,
// // //                       onPressed: () => _openMenu(context),
// // //                       margin: EdgeInsets.only(left: 20.h),
// // //                     ),
// // //                   ),
// // //                   SizedBox(height: 68.v),
// // //                   Container(
// // //                     width: double.maxFinite,
// // //                     margin: EdgeInsets.symmetric(horizontal: 16.h),
// // //                     child: Row(
// // //                       children: [
// // //                         Expanded(
// // //                           child: _buildProcessedColumn(
// // //                             context,
// // //                             titleText: "En cours",
// // //                             statNumber: stats["enCours"].toString(),
// // //                           ),
// // //                         ),
// // //                         SizedBox(width: 6.h),
// // //                         Expanded(
// // //                           child: _buildProcessedColumn(
// // //                             context,
// // //                             titleText: "Traitées",
// // //                             statNumber: stats["traitees"].toString(),
// // //                           ),
// // //                         ),
// // //                         SizedBox(width: 6.h),
// // //                         Expanded(
// // //                           child: _buildProcessedColumn(
// // //                             context,
// // //                             titleText: "Refusées",
// // //                             statNumber: stats["refusees"].toString(),
// // //                           ),
// // //                         )
// // //                       ],
// // //                     ),
// // //                   )
// // //                 ],
// // //               ),
// // //             ),
// // //           ),
// // //           Padding(
// // //             padding: EdgeInsets.symmetric(horizontal: 12.h),
// // //             child: Row(
// // //               children: [
// // //                 Expanded(
// // //                   child: _buildProcessedColumn(
// // //                     context,
// // //                     titleText: "Appel d’offre",
// // //                     statNumber: stats["appelOffre"].toString(),
// // //                   ),
// // //                 ),
// // //                 SizedBox(width: 6.h),
// // //                 Expanded(
// // //                   child: _buildProcessedColumn(
// // //                     context,
// // //                     titleText: "Demande de prix",
// // //                     statNumber: stats["demandePrix"].toString(),
// // //                   ),
// // //                 ),
// // //                 SizedBox(width: 6.h),
// // //                 Expanded(
// // //                   child: _buildProcessedColumn(
// // //                     context,
// // //                     titleText: "Avenant",
// // //                     statNumber: stats["avenant"].toString(),
// // //                   ),
// // //                 )
// // //               ],
// // //             ),
// // //           )
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildFilterRow(BuildContext context) {
// // //     return Container(
// // //       padding: EdgeInsets.symmetric(horizontal: 6.h),
// // //       width: double.maxFinite,
// // //       child: Row(
// // //         children: [
// // //           Expanded(
// // //             child: Container(
// // //               height: 36.v,
// // //               width: 270.h,
// // //               decoration: BoxDecoration(
// // //                 color: appTheme.gray400,
// // //                 borderRadius: BorderRadius.circular(5.h),
// // //               ),
// // //             ),
// // //           ),
// // //           SizedBox(width: 4.h),
// // //           Container(
// // //             height: 36.v,
// // //             width: 60.h,
// // //             decoration: AppDecoration.fillGray400.copyWith(
// // //               borderRadius: BorderRadiusStyle.roundedBorder5,
// // //             ),
// // //             child: Stack(
// // //               alignment: Alignment.center,
// // //               children: [
// // //                 CustomImageView(
// // //                   imagePath: ImageConstant.imgFilter,
// // //                   height: 18.adaptSize,
// // //                   width: 18.adaptSize,
// // //                 )
// // //               ],
// // //             ),
// // //           )
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildDetailsList(BuildContext context, List<dynamic> detailsList) {
// // //     return SizedBox(
// // //       width: double.maxFinite,
// // //       child: ListView.separated(
// // //         physics: NeverScrollableScrollPhysics(),
// // //         shrinkWrap: true,
// // //         separatorBuilder: (context, index) {
// // //           return SizedBox(height: 6.v);
// // //         },
// // //         itemCount: detailsList.length,
// // //         itemBuilder: (context, index) {
// // //           final item = detailsList[index];
// // //           return DetailslistItemWidget(
// // //             projet: item['projet'],
// // //             demandeur: item['demandeur'],
// // //             destinataire: item['destinataire'],
// // //             validation: item['validation'],
// // //             dateLivraison: item['dateLivraison'],
// // //             dateTraitement: item['dateTraitement'],
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildProcessedColumn(
// // //     BuildContext context, {
// // //     required String titleText,
// // //     required String statNumber,
// // //   }) {
// // //     return Container(
// // //       decoration: AppDecoration.fillBluegray700.copyWith(
// // //         borderRadius: BorderRadiusStyle.roundedBorder10,
// // //       ),
// // //       child: Column(
// // //         mainAxisSize: MainAxisSize.min,
// // //         children: [
// // //           SizedBox(height: 10.v),
// // //           Text(
// // //             titleText,
// // //             style: CustomTextStyles.titleMedium16.copyWith(
// // //               color: appTheme.whiteA700,
// // //             ),
// // //           ),
// // //           SizedBox(height: 8.v),
// // //           Container(
// // //             width: double.maxFinite,
// // //             padding: EdgeInsets.symmetric(vertical: 6.v),
// // //             decoration: AppDecoration.fillGray400,
// // //             child: Column(
// // //               mainAxisAlignment: MainAxisAlignment.center,
// // //               children: [
// // //                 SizedBox(height: 2.v),
// // //                 Text(
// // //                   statNumber,
// // //                   style: theme.textTheme.titleLarge!.copyWith(
// // //                     color: appTheme.whiteA700,
// // //                   ),
// // //                 )
// // //               ],
// // //             ),
// // //           )
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'dart:convert';
// // import 'dart:js';

// // import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
// // import 'package:flutter/material.dart';
// // import 'package:gecimmoa/api_service.dart';
// // import 'package:gecimmoa/presentation/appel_doffre_screen/widgets/detailslist_item_widget.dart';
// // import 'package:gecimmoa/widgets/app_bar/appbar_leading_image.dart';
// // import 'package:gecimmoa/widgets/app_bar/custom_app_bar.dart';
// // import 'package:provider/provider.dart';
// // import '../../../core/app_export.dart'; // Assurez-vous d'importer les ressources nécessaires

// // //ignore: must_be_immutable
// // // class AppelDoffreScreen extends StatelessWidget {
// // //   AppelDoffreScreen({Key? key}) : super(key: key);

// // //   void _openMenu(BuildContext context) {
// // //     Navigator.pushNamed(context, AppRoutes.menuScreen);
// // //   }

// // //   GlobalKey<NavigatorState> navigatorKey = GlobalKey();

// // //   Future<Map<String, dynamic>> _fetchData() async {
// // //     final stats = await ApiService.fetchStatistics();
// // //     final detailsList = await ApiService.fetchDetailsList();
// // //     print(stats);
// // //     return {'stats': stats, 'detailsList': detailsList};
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return SafeArea(
// // //       child: Scaffold(
// // //         body: FutureBuilder<Map<String, dynamic>>(
// // //           future: _fetchData(),
// // //           builder: (context, snapshot) {
// // //             if (snapshot.connectionState == ConnectionState.waiting) {
// // //               return Center(child: CircularProgressIndicator());
// // //             } else if (snapshot.hasError) {
// // //               return Center(child: Text('Error: ${snapshot.error}'));
// // //             } else if (snapshot.hasData) {
// // //               final stats = snapshot.data!['stats'];
// // //               final detailsList = snapshot.data!['detailsList'];
// // //               return SizedBox(
// // //                 width: 400.h,
// // //                 child: Column(
// // //                   children: [
// // //                     _buildMainStack(context, stats),
// // //                     Container(
// // //                       width: 400.h,
// // //                       padding: EdgeInsets.symmetric(horizontal: 7.h),
// // //                       child: Column(
// // //                         children: [
// // //                           SizedBox(height: 30.v),
// // //                           _buildFilterRow(context),
// // //                           SizedBox(height: 20.v),
// // //                           _buildDetailsList(context, detailsList)
// // //                         ],
// // //                       ),
// // //                     )
// // //                   ],
// // //                 ),
// // //               );
// // //             } else {
// // //               return Center(child: Text('Aucune donnée disponible'));
// // //             }
// // //           },
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildMainStack(BuildContext context, Map<String, dynamic> stats) {
// // //     return SizedBox(
// // //       height: 292.v,
// // //       width: double.maxFinite,
// // //       child: Stack(
// // //         alignment: Alignment.bottomCenter,
// // //         children: [
// // //           Align(
// // //             alignment: Alignment.topCenter,
// // //             child: Container(
// // //               width: double.maxFinite,
// // //               padding: EdgeInsets.symmetric(vertical: 20.v),
// // //               decoration: BoxDecoration(
// // //                 borderRadius: BorderRadiusStyle.customBorderBR100,
// // //                 image: DecorationImage(
// // //                   image: fs.Svg(ImageConstant.imgGroup62),
// // //                   fit: BoxFit.cover,
// // //                 ),
// // //               ),
// // //               child: Column(
// // //                 mainAxisSize: MainAxisSize.min,
// // //                 mainAxisAlignment: MainAxisAlignment.center,
// // //                 children: [
// // //                   // CustomAppBar(
// // //                   //   leadingWidth: 58.h,
// // //                   //   leading: AppbarLeadingImage(
// // //                   //     imagePath: ImageConstant.imgMegaphone,
// // //                   //     onPressed: () => _openMenu(context),
// // //                   //     margin: EdgeInsets.only(left: 20.h),
// // //                   //   ),
// // //                   // ),
// // //                 CustomAppBar(
// // //                       leadingWidth: 58.h,
// // //                       leading: IconButton(
// // //                         icon: Icon(
// // //                           Icons.menu, // Icône de menu
// // //                           color: Colors.white, // Couleur de l'icône
// // //                         ),
// // //                         onPressed: () => _openMenu(context),
// // //                         padding: EdgeInsets.only(left: 20.h),
// // //                       ),
// // //                       title: Container(
// // //                         width: 700.h, // Largeur du texte
// // //                         margin: EdgeInsets.only(top: 55.h, left: 76.h), // Marges du texte
// // //                         child: Center(
// // //                           child: Text(
// // //                             'Votre Titre', // Titre de la barre d'applications
// // //                             style: TextStyle(
// // //                               color: Colors.white, // Couleur du titre
// // //                               fontSize: 20.h, // Taille du texte du titre
// // //                             ),
// // //                             overflow: TextOverflow.ellipsis, // Pour gérer les débordements si le texte est trop long
// // //                           ),
// // //                         ),
// // //                       ),
// // //                       // title:Container(
// // //                       //   width: 289.h, // Largeur du texte
// // //                       //   margin: EdgeInsets.only(top: 55.h, left: 76.h), // Marges du texte
// // //                       //   child: Center(child: Text(
// // //                       //   'Demande d’achat', // Titre de la barre d'applications
// // //                       //   style: TextStyle(
// // //                       //     color: Colors.white, // Couleur du titre
// // //                       //     fontSize: 20.h, // Taille du texte du titre
// // //                       //     fontWeight: FontWeight.w700, // Gras du texte du titre
// // //                       //   ),
// // //                       //   )),
// // //                       // ),

// // //                       bottom: PreferredSize(
// // //                         preferredSize: Size.fromHeight(1.h), // Hauteur de la ligne de séparation
// // //                         child: Container(
// // //                           color: Colors.grey[800], // Couleur de la ligne de séparation
// // //                           height: 1.h, // Hauteur de la ligne de séparation
// // //                         ),
// // //                       ),
// // //                     ),

// // //                   // CustomAppBar(
// // //                   //   leadingWidth: 58.h,
// // //                   //   leading: IconButton(
// // //                   //     icon: Icon(Icons.menu), // Remplacez ceci par l'icône que vous souhaitez utiliser
// // //                   //     onPressed: () => _openMenu(context),
// // //                   //     padding: EdgeInsets.only(left: 20.h),
// // //                   //   ),
// // //                   // ),
// // //                   SizedBox(height: 68.v),
// // //                   Container(
// // //                     width: double.maxFinite,
// // //                     margin: EdgeInsets.symmetric(horizontal: 16.h),
// // //                     child: Row(
// // //                       children: [
// // //                         Expanded(
// // //                           child: _buildProcessedColumn(
// // //                             context,
// // //                             titleText: "En cours",
// // //                             statNumber: stats["enCours"]?.toString() ?? '0',
// // //                           ),
// // //                         ),
// // //                         SizedBox(width: 6.h),
// // //                         Expanded(
// // //                           child: _buildProcessedColumn(
// // //                             context,
// // //                             titleText: "Traitées",
// // //                             statNumber: stats["traitees"]?.toString() ?? '0',
// // //                           ),
// // //                         ),
// // //                         SizedBox(width: 6.h),
// // //                         Expanded(
// // //                           child: _buildProcessedColumn(
// // //                             context,
// // //                             titleText: "Refusées",
// // //                             statNumber: stats["refusees"]?.toString() ?? '0',
// // //                           ),
// // //                         )
// // //                       ],
// // //                     ),
// // //                   )
// // //                 ],
// // //               ),
// // //             ),
// // //           ),
// // //           Padding(
// // //             padding: EdgeInsets.symmetric(horizontal: 12.h),
// // //             child: Row(
// // //               children: [
// // //                 Expanded(
// // //                   child: _buildProcessedColumn(
// // //                     context,
// // //                     titleText: "Appel d’offre",
// // //                     statNumber: stats["appelOffre"]?.toString() ?? '0',
// // //                   ),
// // //                 ),
// // //                 SizedBox(width: 6.h),
// // //                 Expanded(
// // //                   child: _buildProcessedColumn(
// // //                     context,
// // //                     titleText: "Demande de prix",
// // //                     statNumber: stats["demandePrix"]?.toString() ?? '0',
// // //                   ),
// // //                 ),
// // //                 SizedBox(width: 6.h),
// // //                 Expanded(
// // //                   child: _buildProcessedColumn(
// // //                     context,
// // //                     titleText: "Avenant",
// // //                     statNumber: stats["avenant"]?.toString() ?? '0',
// // //                   ),
// // //                 )
// // //               ],
// // //             ),
// // //           )
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildFilterRow(BuildContext context) {
// // //     return Container(
// // //       padding: EdgeInsets.symmetric(horizontal: 6.h),
// // //       width: double.maxFinite,
// // //       child: Row(
// // //         children: [
// // //           Expanded(
// // //             child: Container(
// // //               height: 36.v,
// // //               width: 270.h,
// // //               decoration: BoxDecoration(
// // //                 color: appTheme.gray400,
// // //                 borderRadius: BorderRadius.circular(5.h),
// // //               ),
// // //             ),
// // //           ),
// // //           SizedBox(width: 4.h),
// // //           Container(
// // //             height: 36.v,
// // //             width: 60.h,
// // //             decoration: AppDecoration.fillGray400.copyWith(
// // //               borderRadius: BorderRadiusStyle.roundedBorder5,
// // //             ),
// // //             child: Stack(
// // //               alignment: Alignment.center,
// // //               children: [
// // //                 CustomImageView(
// // //                   imagePath: ImageConstant.imgFilter,
// // //                   height: 18.adaptSize,
// // //                   width: 18.adaptSize,
// // //                 )
// // //               ],
// // //             ),
// // //           )
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildDetailsList(BuildContext context, List<dynamic> detailsList) {
// // //     return SizedBox(
// // //       width: double.maxFinite,
// // //       child: ListView.separated(
// // //         physics: NeverScrollableScrollPhysics(),
// // //         shrinkWrap: true,
// // //         separatorBuilder: (context, index) => SizedBox(height: 6.v),
// // //         itemCount: detailsList.length,
// // //         itemBuilder: (context, index) {
// // //           final item = detailsList[index];
// // //           return DetailslistItemWidget(
// // //             projet: item['projet'] ?? 'aymen',
// // //             demandeur: item['demandeur'] ?? 'nnnn',
// // //             destinataire: item['destinataire'] ?? 'fsjnsjgn',
// // //             validation: item['validation'] ?? 'valide',
// // //             dateLivraison: item['dateLivraison'] ?? '',
// // //             dateTraitement: item['dateTraitement'] ?? '',
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildProcessedColumn(
// // //     BuildContext context, {
// // //     required String titleText,
// // //     required String statNumber,
// // //   }) {
// // //     return Container(
// // //       decoration: AppDecoration.fillBluegray700.copyWith(
// // //         borderRadius: BorderRadiusStyle.roundedBorder10,
// // //       ),
// // //       child: Column(
// // //         mainAxisSize: MainAxisSize.min,
// // //         children: [
// // //           SizedBox(height: 10.v),
// // //           Text(
// // //             titleText,
// // //             style: CustomTextStyles.titleMedium16.copyWith(
// // //               color: appTheme.whiteA700,
// // //             ),
// // //           ),
// // //           SizedBox(height: 8.v),
// // //           Container(
// // //             width: double.maxFinite,
// // //             padding: EdgeInsets.symmetric(vertical: 6.v),
// // //             decoration: AppDecoration.fillGray400,
// // //             child: Column(
// // //               mainAxisAlignment: MainAxisAlignment.center,
// // //               children: [
// // //                 SizedBox(height: 2.v),
// // //                 Text(
// // //                   statNumber,
// // //                   style: theme.textTheme.titleLarge!.copyWith(
// // //                     color: appTheme.whiteA700,
// // //                   ),
// // //                 )
// // //               ],
// // //             ),
// // //           )
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }

// // // ignore: must_be_immutable
// // // class AppelDoffreScreen extends StatelessWidget {
// // //   AppelDoffreScreen({Key? key}) : super(key: key);

// // //   void _openMenu(BuildContext context) {
// // //     Navigator.pushNamed(context, '/menuScreen'); // Remplacez par le bon nom de route
// // //   }

// // //   GlobalKey<NavigatorState> navigatorKey = GlobalKey();

// // //   Future<Map<String, dynamic>> _fetchData() async {
// // //     final idDa = 'DA001'; // Replace with actual idDa
// // //     final stats = await ApiService.fetchStatistics();
// // //     final detailsList = await ApiService.fetchDetailsList();
// // //     final demandeAchatDetails = await ApiService.fetchDetailsDemandeAchat(idDa,);

// // //     print(stats);
// // //     return {
// // //       'stats': stats,
// // //       'detailsList': detailsList,
// // //       'demandeAchatDetails': demandeAchatDetails,
// // //     };
// // //   }
// // //   // Future<Map<String, dynamic>> _fetchData() async {
// // //   //   final stats = await ApiService.fetchStatistics();
// // //   //   final detailsList = await ApiService.fetchDetailsList();
// // //   //   print(stats);
// // //   //   return {'stats': stats, 'detailsList': detailsList};
// // //   // }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return SafeArea(
// // //       child: Scaffold(
// // //         body: FutureBuilder<Map<String, dynamic>>(
// // //           future: _fetchData(),
// // //           builder: (context, snapshot) {
// // //             if (snapshot.connectionState == ConnectionState.waiting) {
// // //               return Center(child: CircularProgressIndicator());
// // //             } else if (snapshot.hasError) {
// // //               return Center(child: Text('Error: ${snapshot.error}'));
// // //             } else if (snapshot.hasData) {
// // //               final stats = snapshot.data!['stats'];
// // //               final detailsList = snapshot.data!['detailsList'];
// // //               return SizedBox(
// // //                 width: 400,
// // //                 child: Column(
// // //                   children: [
// // //                     _buildMainStack(context, stats),
// // //                     Container(
// // //                       width: 400,
// // //                       padding: EdgeInsets.symmetric(horizontal: 7),
// // //                       child: Column(
// // //                         children: [
// // //                           SizedBox(height: 30),
// // //                           _buildFilterRow(context),
// // //                           SizedBox(height: 20),
// // //                           _buildDetailsList(context, detailsList),
// // //                         ],
// // //                       ),
// // //                     ),
// // //                   ],
// // //                 ),
// // //               );
// // //             } else {
// // //               return Center(child: Text('Aucune donnée disponible'));
// // //             }
// // //           },
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildMainStack(BuildContext context, Map<String, dynamic> stats) {
// // //     return SizedBox(
// // //       height: 292,
// // //       width: double.maxFinite,
// // //       child: Stack(
// // //         alignment: Alignment.bottomCenter,
// // //         children: [
// // //           Align(
// // //             alignment: Alignment.topCenter,
// // //             child: Container(
// // //               width: double.maxFinite,
// // //               padding: EdgeInsets.symmetric(vertical: 20),
// // //               decoration: BoxDecoration(
// // //                 borderRadius: BorderRadius.circular(10),
// // //                 image: DecorationImage(
// // //                   image: AssetImage('assets/images/group62.png'), // Assurez-vous que l'image existe
// // //                   fit: BoxFit.cover,
// // //                 ),
// // //               ),
// // //               child: Column(
// // //                 mainAxisSize: MainAxisSize.min,
// // //                 mainAxisAlignment: MainAxisAlignment.center,
// // //                 children: [
// // //                   CustomAppBar(
// // //                     leadingWidth: 58,
// // //                     leading: IconButton(
// // //                       icon: Icon(
// // //                         Icons.menu,
// // //                         color: Colors.white,
// // //                       ),
// // //                       onPressed: () => _openMenu(context),
// // //                       padding: EdgeInsets.only(left: 20),
// // //                     ),
// // //                     title: Container(
// // //                       width: 289,
// // //                       margin: EdgeInsets.only(top: 55, left: 76),
// // //                       child: Center(
// // //                         child: Text(
// // //                           'Votre Titre',
// // //                           style: TextStyle(
// // //                             color: Colors.white,
// // //                             fontSize: 20,
// // //                           ),
// // //                           overflow: TextOverflow.ellipsis,
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                   SizedBox(height: 68),
// // //                   Container(
// // //                     width: double.maxFinite,
// // //                     margin: EdgeInsets.symmetric(horizontal: 16),
// // //                     child: Row(
// // //                       children: [
// // //                         Expanded(
// // //                           child: _buildProcessedColumn(
// // //                             context,
// // //                             titleText: "En cours",
// // //                             statNumber: stats["enCours"]?.toString() ?? '0',
// // //                           ),
// // //                         ),
// // //                         SizedBox(width: 6),
// // //                         Expanded(
// // //                           child: _buildProcessedColumn(
// // //                             context,
// // //                             titleText: "Traitées",
// // //                             statNumber: stats["traitees"]?.toString() ?? '0',
// // //                           ),
// // //                         ),
// // //                         SizedBox(width: 6),
// // //                         Expanded(
// // //                           child: _buildProcessedColumn(
// // //                             context,
// // //                             titleText: "Refusées",
// // //                             statNumber: stats["refusees"]?.toString() ?? '0',
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                 ],
// // //               ),
// // //             ),
// // //           ),
// // //           Padding(
// // //             padding: EdgeInsets.symmetric(horizontal: 12),
// // //             child: Row(
// // //               children: [
// // //                 Expanded(
// // //                   child: _buildProcessedColumn(
// // //                     context,
// // //                     titleText: "Appel d’offre",
// // //                     statNumber: stats["appelOffre"]?.toString() ?? '0',
// // //                   ),
// // //                 ),
// // //                 SizedBox(width: 6),
// // //                 Expanded(
// // //                   child: _buildProcessedColumn(
// // //                     context,
// // //                     titleText: "Demande de prix",
// // //                     statNumber: stats["demandePrix"]?.toString() ?? '0',
// // //                   ),
// // //                 ),
// // //                 SizedBox(width: 6),
// // //                 Expanded(
// // //                   child: _buildProcessedColumn(
// // //                     context,
// // //                     titleText: "Avenant",
// // //                     statNumber: stats["avenant"]?.toString() ?? '0',
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildFilterRow(BuildContext context) {
// // //     return Container(
// // //       padding: EdgeInsets.symmetric(horizontal: 6),
// // //       width: double.maxFinite,
// // //       child: Row(
// // //         children: [
// // //           Expanded(
// // //             child: Container(
// // //               height: 36,
// // //               width: 270,
// // //               decoration: BoxDecoration(
// // //                 color: Colors.grey[400],
// // //                 borderRadius: BorderRadius.circular(5),
// // //               ),
// // //             ),
// // //           ),
// // //           SizedBox(width: 4),
// // //           Container(
// // //             height: 36,
// // //             width: 60,
// // //             decoration: BoxDecoration(
// // //               color: Colors.grey[400],
// // //               borderRadius: BorderRadius.circular(5),
// // //             ),
// // //             child: Stack(
// // //               alignment: Alignment.center,
// // //               children: [
// // //                 Icon(
// // //                   Icons.filter_list,
// // //                   size: 18,
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildDetailsList(BuildContext context, List<dynamic> detailsList) {
// // //     return SizedBox(
// // //       width: double.maxFinite,
// // //       child: ListView.separated(
// // //         physics: NeverScrollableScrollPhysics(),
// // //         shrinkWrap: true,
// // //         separatorBuilder: (context, index) => SizedBox(height: 6),
// // //         itemCount: detailsList.length,
// // //         itemBuilder: (context, index) {
// // //           final item = detailsList[index];
// // //           return ListTile(
// // //             title: Text(item['projet'] ?? ''),
// // //             subtitle: Column(
// // //               crossAxisAlignment: CrossAxisAlignment.start,
// // //               children: [
// // //                 Text('Demandeur: ${item['demandeur'] ?? ''}'),
// // //                 Text('Destinataire: ${item['destinataire'] ?? ''}'),
// // //                 Text('Validation: ${item['validation'] ?? ''}'),
// // //                 Text('Date Livraison: ${item['dateLivraison'] ?? ''}'),
// // //                 Text('Date Traitement: ${item['dateTraitement'] ?? ''}'),
// // //               ],
// // //             ),
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildProcessedColumn(
// // //     BuildContext context, {
// // //     required String titleText,
// // //     required String statNumber,
// // //   }) {
// // //     return Container(
// // //       decoration: BoxDecoration(
// // //         color: Colors.blueGrey[700],
// // //         borderRadius: BorderRadius.circular(10),
// // //       ),
// // //       child: Column(
// // //         mainAxisSize: MainAxisSize.min,
// // //         children: [
// // //           SizedBox(height: 10),
// // //           Text(
// // //             titleText,
// // //             style: TextStyle(
// // //               color: Colors.white,
// // //               fontSize: 16,
// // //             ),
// // //           ),
// // //           SizedBox(height: 8),
// // //           Container(
// // //             width: double.maxFinite,
// // //             padding: EdgeInsets.symmetric(vertical: 6),
// // //             decoration: BoxDecoration(
// // //               color: Colors.grey[400],
// // //             ),
// // //             child: Column(
// // //               mainAxisAlignment: MainAxisAlignment.center,
// // //               children: [
// // //                 SizedBox(height: 2),
// // //                 Text(
// // //                   statNumber,
// // //                   style: TextStyle(
// // //                     color: Colors.white,
// // //                     fontSize: 20,
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }
// // // class AppelDoffreScreen extends StatelessWidget {
// // //   AppelDoffreScreen({Key? key}) : super(key: key);

// // //   void _openMenu(BuildContext context) {
// // //     Navigator.pushNamed(context, '/menuScreen'); // Remplacez par le bon nom de route
// // //   }

// // //   GlobalKey<NavigatorState> navigatorKey = GlobalKey();

// // //   Future<Map<String, dynamic>> _fetchData() async {
// // //     final idDc = 'DC001'; // Replace with actual idDc
// // //     final token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiNjZhNmIwZTAyMjk1NGU2ZjY3M2Q0YjYwIn0sImlhdCI6MTcyMjIxNTk2NCwiZXhwIjoxNzIyMjE5NTY0fQ.s5xBAt5dQo_pIFHBrjeRyjHo0jmK3pXn2XbwPj0tMEk'; // Replace with actual token
// // //     final stats = await ApiService.fetchStatistics();
// // //     final detailsList = await ApiService.fetchDetailsList();
// // //     final demandeAchatDetails = await ApiService.fetchDetailsDemandeAchat(token, idDc);

// // //     print(stats);
// // //     return {
// // //       'stats': stats,
// // //       'detailsList': detailsList,
// // //       'demandeAchatDetails': demandeAchatDetails,
// // //     };
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return SafeArea(
// // //       child: Scaffold(
// // //         body: FutureBuilder<Map<String, dynamic>>(
// // //           future: _fetchData(),
// // //           builder: (context, snapshot) {
// // //             if (snapshot.connectionState == ConnectionState.waiting) {
// // //               return Center(child: CircularProgressIndicator());
// // //             } else if (snapshot.hasError) {
// // //               return Center(child: Text('Error: ${snapshot.error}'));
// // //             } else if (snapshot.hasData) {
// // //               final stats = snapshot.data!['stats'];
// // //               final detailsList = snapshot.data!['detailsList'];
// // //               final demandeAchatDetails = snapshot.data!['demandeAchatDetails'];
// // //               return SizedBox(
// // //                 width: 400,
// // //                 child: Column(
// // //                   children: [
// // //                     _buildMainStack(context, stats),
// // //                     Container(
// // //                       width: 400,
// // //                       padding: EdgeInsets.symmetric(horizontal: 7),
// // //                       child: Column(
// // //                         children: [
// // //                           SizedBox(height: 30),
// // //                           _buildFilterRow(context),
// // //                           SizedBox(height: 20),
// // //                           _buildDetailsList(context, detailsList),
// // //                           SizedBox(height: 20),
// // //                           _buildDemandeAchatDetails(context, demandeAchatDetails),
// // //                         ],
// // //                       ),
// // //                     ),
// // //                   ],
// // //                 ),
// // //               );
// // //             } else {
// // //               return Center(child: Text('Aucune donnée disponible'));
// // //             }
// // //           },
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildMainStack(BuildContext context, Map<String, dynamic> stats) {
// // //     return SizedBox(
// // //       height: 292,
// // //       width: double.maxFinite,
// // //       child: Stack(
// // //         alignment: Alignment.bottomCenter,
// // //         children: [
// // //           Align(
// // //             alignment: Alignment.topCenter,
// // //             child: Container(
// // //               width: double.maxFinite,
// // //               padding: EdgeInsets.symmetric(vertical: 20),
// // //               decoration: BoxDecoration(
// // //                 borderRadius: BorderRadius.circular(10),
// // //                 image: DecorationImage(
// // //                   image: AssetImage('assets/images/group62.png'), // Assurez-vous que l'image existe
// // //                   fit: BoxFit.cover,
// // //                 ),
// // //               ),
// // //               child: Column(
// // //                 mainAxisSize: MainAxisSize.min,
// // //                 mainAxisAlignment: MainAxisAlignment.center,
// // //                 children: [
// // //                   CustomAppBar(
// // //                     leadingWidth: 58,
// // //                     leading: IconButton(
// // //                       icon: Icon(
// // //                         Icons.menu,
// // //                         color: Colors.white,
// // //                       ),
// // //                       onPressed: () => _openMenu(context),
// // //                       padding: EdgeInsets.only(left: 20),
// // //                     ),
// // //                     title: Container(
// // //                       width: 289,
// // //                       margin: EdgeInsets.only(top: 55, left: 76),
// // //                       child: Center(
// // //                         child: Text(
// // //                           'Votre Titre',
// // //                           style: TextStyle(
// // //                             color: Colors.white,
// // //                             fontSize: 20,
// // //                           ),
// // //                           overflow: TextOverflow.ellipsis,
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                   SizedBox(height: 68),
// // //                   Container(
// // //                     width: double.maxFinite,
// // //                     margin: EdgeInsets.symmetric(horizontal: 16),
// // //                     child: Row(
// // //                       children: [
// // //                         Expanded(
// // //                           child: _buildProcessedColumn(
// // //                             context,
// // //                             titleText: "En cours",
// // //                             statNumber: stats["enCours"]?.toString() ?? '0',
// // //                           ),
// // //                         ),
// // //                         SizedBox(width: 6),
// // //                         Expanded(
// // //                           child: _buildProcessedColumn(
// // //                             context,
// // //                             titleText: "Traitées",
// // //                             statNumber: stats["traitees"]?.toString() ?? '0',
// // //                           ),
// // //                         ),
// // //                         SizedBox(width: 6),
// // //                         Expanded(
// // //                           child: _buildProcessedColumn(
// // //                             context,
// // //                             titleText: "Refusées",
// // //                             statNumber: stats["refusees"]?.toString() ?? '0',
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                 ],
// // //               ),
// // //             ),
// // //           ),
// // //           Padding(
// // //             padding: EdgeInsets.symmetric(horizontal: 12),
// // //             child: Row(
// // //               children: [
// // //                 Expanded(
// // //                   child: _buildProcessedColumn(
// // //                     context,
// // //                     titleText: "Appel d’offre",
// // //                     statNumber: stats["appelOffre"]?.toString() ?? '0',
// // //                   ),
// // //                 ),
// // //                 SizedBox(width: 6),
// // //                 Expanded(
// // //                   child: _buildProcessedColumn(
// // //                     context,
// // //                     titleText: "Demande de prix",
// // //                     statNumber: stats["demandePrix"]?.toString() ?? '0',
// // //                   ),
// // //                 ),
// // //                 SizedBox(width: 6),
// // //                 Expanded(
// // //                   child: _buildProcessedColumn(
// // //                     context,
// // //                     titleText: "Avenant",
// // //                     statNumber: stats["avenant"]?.toString() ?? '0',
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildFilterRow(BuildContext context) {
// // //     return Container(
// // //       padding: EdgeInsets.symmetric(horizontal: 6),
// // //       width: double.maxFinite,
// // //       child: Row(
// // //         children: [
// // //           Expanded(
// // //             child: Container(
// // //               height: 36,
// // //               width: 270,
// // //               decoration: BoxDecoration(
// // //                 color: Colors.grey[400],
// // //                 borderRadius: BorderRadius.circular(5),
// // //               ),
// // //             ),
// // //           ),
// // //           SizedBox(width: 4),
// // //           Container(
// // //             height: 36,
// // //             width: 60,
// // //             decoration: BoxDecoration(
// // //               color: Colors.grey[400],
// // //               borderRadius: BorderRadius.circular(5),
// // //             ),
// // //             child: Stack(
// // //               alignment: Alignment.center,
// // //               children: [
// // //                 Icon(
// // //                   Icons.filter_list,
// // //                   size: 18,
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildDetailsList(BuildContext context, List<dynamic> detailsList) {
// // //     return SizedBox(
// // //       width: double.maxFinite,
// // //       child: ListView.separated(
// // //         physics: NeverScrollableScrollPhysics(),
// // //         shrinkWrap: true,
// // //         separatorBuilder: (context, index) => SizedBox(height: 6),
// // //         itemCount: detailsList.length,
// // //         itemBuilder: (context, index) {
// // //           final item = detailsList[index];
// // //           return ListTile(
// // //             title: Text(item['projet'] ?? ''),
// // //             subtitle: Column(
// // //               crossAxisAlignment: CrossAxisAlignment.start,
// // //               children: [
// // //                 Text('Demandeur: ${item['demandeur'] ?? ''}'),
// // //                 Text('Destinataire: ${item['destinataire'] ?? ''}'),
// // //                 Text('Validation: ${item['validation'] ?? ''}'),
// // //                 Text('Date Livraison: ${item['dateLivraison'] ?? ''}'),
// // //                 Text('Date Traitement: ${item['dateTraitement'] ?? ''}'),
// // //               ],
// // //             ),
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildDemandeAchatDetails(BuildContext context, Map<String, dynamic> demandeAchatDetails) {
// // //     if (demandeAchatDetails.containsKey('error')) {
// // //       return Center(child: Text(demandeAchatDetails['error']));
// // //     }
// // //     return Container(
// // //       padding: EdgeInsets.all(16),
// // //       decoration: BoxDecoration(
// // //         color: Colors.white,
// // //         borderRadius: BorderRadius.circular(8),
// // //         boxShadow: [
// // //           BoxShadow(
// // //             color: Colors.grey.withOpacity(0.3),
// // //             spreadRadius: 2,
// // //             blurRadius: 5,
// // //           ),
// // //         ],
// // //       ),
// // //       child: Column(
// // //         crossAxisAlignment: CrossAxisAlignment.start,
// // //         children: [
// // //           Text('ID: ${demandeAchatDetails['id']}'),
// // //           Text('Name: ${demandeAchatDetails['name']}'),
// // //           Text('Description: ${demandeAchatDetails['description']}'),
// // //           // Add more fields as needed
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildProcessedColumn(
// // //     BuildContext context, {
// // //     required String titleText,
// // //     required String statNumber,
// // //   }) {
// // //     return Container(
// // //       decoration: BoxDecoration(
// // //         color: Colors.blueGrey[700],
// // //         borderRadius: BorderRadius.circular(10),
// // //       ),
// // //       child: Column(
// // //         mainAxisSize: MainAxisSize.min,
// // //         children: [
// // //           SizedBox(height: 10),
// // //           Text(
// // //             titleText,
// // //             style: TextStyle(
// // //               color: Colors.white,
// // //               fontSize: 16,
// // //             ),
// // //           ),
// // //           SizedBox(height: 8),
// // //           Container(
// // //             width: double.maxFinite,
// // //             padding: EdgeInsets.symmetric(vertical: 6),
// // //             decoration: BoxDecoration(
// // //               color: Colors.grey[400],
// // //             ),
// // //             child: Column(
// // //               mainAxisAlignment: MainAxisAlignment.center,
// // //               children: [
// // //                 SizedBox(height: 2),
// // //                 Text(
// // //                   statNumber,
// // //                   style: TextStyle(
// // //                     color: Colors.white,
// // //                     fontSize: 20,
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }
// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
// // // // // // import 'package:gecimmoa/api_service.dart';
// // // // // // import 'package:gecimmoa/widgets/app_bar/appbar_leading_image.dart';
// // // // // // import 'package:gecimmoa/widgets/app_bar/custom_app_bar.dart';
// // // // // // import '../../../core/app_export.dart'; // Assurez-vous d'importer les ressources nécessaires

// // // // // // // ignore: must_be_immutable
// // // // // // class AppelDoffreScreen extends StatelessWidget {
// // // // // //   AppelDoffreScreen({Key? key}) : super(key: key);

// // // // // //   void _openMenu(BuildContext context) {
// // // // // //     Navigator.pushNamed(context, AppRoutes.menuScreen);
// // // // // //   }

// // // // // //   Future<Map<String, dynamic>> _fetchDemandeAchatDetails() async {
// // // // // //     try {
// // // // // //       final details = await ApiService.fetchDemandeAchatDetails('1');
// // // // // //       return {'details': details};
// // // // // //     } catch (error) {
// // // // // //       print('Error fetching details: $error');
// // // // // //       return {'details': null};
// // // // // //     }
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return SafeArea(
// // // // // //       child: Scaffold(
// // // // // //         appBar: CustomAppBar(
// // // // // //           leadingWidth: 58.h,
// // // // // //           leading: AppbarLeadingImage(
// // // // // //             imagePath: ImageConstant.imgMegaphone,
// // // // // //             onPressed: () => _openMenu(context),
// // // // // //             margin: EdgeInsets.only(left: 20.h),
// // // // // //           ),
// // // // // //         ),
// // // // // //         body: FutureBuilder<Map<String, dynamic>>(
// // // // // //           future: _fetchDemandeAchatDetails(),
// // // // // //           builder: (context, snapshot) {
// // // // // //             if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // //               return Center(child: CircularProgressIndicator());
// // // // // //             } else if (snapshot.hasError) {
// // // // // //               return Center(child: Text('Error: ${snapshot.error}'));
// // // // // //             } else if (snapshot.hasData) {
// // // // // //               final details = snapshot.data!['details'];
// // // // // //               if (details == null) {
// // // // // //                 return Center(child: Text('No details found.'));
// // // // // //               }

// // // // // //               return Padding(
// // // // // //                 padding: const EdgeInsets.all(16.0),
// // // // // //                 child: Column(
// // // // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //                   children: [
// // // // // //                     Text('Numero DA: ${details['NumeroDA']}'),
// // // // // //                     Text('Date: ${details['Date']}'),
// // // // // //                     // Add more fields as needed
// // // // // //                   ],
// // // // // //                 ),
// // // // // //               );
// // // // // //             } else {
// // // // // //               return Center(child: Text('Aucune donnée disponible'));
// // // // // //             }
// // // // // //           },
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }
// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
// // // // // // import 'package:gecimmoa/api_service.dart';
// // // // // // import 'package:gecimmoa/widgets/app_bar/appbar_leading_image.dart';
// // // // // // import 'package:gecimmoa/widgets/app_bar/custom_app_bar.dart';
// // // // // // import '../../../core/app_export.dart'; // Assurez-vous d'importer les ressources nécessaires

// // // // // // // ignore: must_be_immutable
// // // // // // class AppelDoffreScreen extends StatelessWidget {
// // // // // //   AppelDoffreScreen({Key? key}) : super(key: key);

// // // // // //   void _openMenu(BuildContext context) {
// // // // // //     Navigator.pushNamed(context, AppRoutes.menuScreen);
// // // // // //   }

// // // // // //   Future<Map<String, dynamic>> _fetchDemandeAchatDetails() async {
// // // // // //     try {
// // // // // //       final details = await ApiService.fetchDemandeAchatDetails('1');
// // // // // //       return {'details': details};
// // // // // //     } catch (error) {
// // // // // //       print('Error fetching details: $error');
// // // // // //       throw Exception('Failed to load demande achat details');
// // // // // //     }
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return SafeArea(
// // // // // //       child: Scaffold(
// // // // // //         appBar: CustomAppBar(
// // // // // //           leadingWidth: 58.h,
// // // // // //           leading: AppbarLeadingImage(
// // // // // //             imagePath: ImageConstant.imgMegaphone,
// // // // // //             onPressed: () => _openMenu(context),
// // // // // //             margin: EdgeInsets.only(left: 20.h),
// // // // // //           ),
// // // // // //         ),
// // // // // //         body: FutureBuilder<Map<String, dynamic>>(
// // // // // //           future: _fetchDemandeAchatDetails(),
// // // // // //           builder: (context, snapshot) {
// // // // // //             if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // //               return Center(child: CircularProgressIndicator());
// // // // // //             } else if (snapshot.hasError) {
// // // // // //               return Center(child: Text('Error: ${snapshot.error}'));
// // // // // //             } else if (snapshot.hasData) {
// // // // // //               final details = snapshot.data!['details'];
// // // // // //               if (details == null) {
// // // // // //                 return Center(child: Text('No details found.'));
// // // // // //               }

// // // // // //               return Padding(
// // // // // //                 padding: const EdgeInsets.all(16.0),
// // // // // //                 child: Column(
// // // // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //                   children: [
// // // // // //                     Text('Numero DA: ${details['NumeroDA']}'),
// // // // // //                     Text('Date: ${details['Date']}'),
// // // // // //                     // Add more fields as needed
// // // // // //                   ],
// // // // // //                 ),
// // // // // //               );
// // // // // //             } else {
// // // // // //               return Center(child: Text('Aucune donnée disponible'));
// // // // // //             }
// // // // // //           },
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }
// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
// // // // // // import 'package:gecimmoa/api_service.dart';
// // // // // // import 'package:gecimmoa/presentation/appel_doffre_screen/widgets/detailslist_item_widget.dart';
// // // // // // import 'package:gecimmoa/widgets/app_bar/appbar_leading_image.dart';
// // // // // // import 'package:gecimmoa/widgets/app_bar/custom_app_bar.dart';
// // // // // // import '../../../core/app_export.dart'; // Assurez-vous d'importer les ressources nécessaires

// // // // // // // ignore: must_be_immutable
// // // // // // class AppelDoffreScreen extends StatelessWidget {
// // // // // //   AppelDoffreScreen({Key? key}) : super(key: key);

// // // // // //   void _openMenu(BuildContext context) {
// // // // // //     Navigator.pushNamed(context, AppRoutes.menuScreen);
// // // // // //   }

// // // // // //   Future<Map<String, dynamic>> _fetchDemandeAchatDetails() async {
// // // // // //     try {
// // // // // //       final details = await ApiService.fetchDemandeAchatDetails('1');
// // // // // //       return {'details': details};
// // // // // //     } catch (error) {
// // // // // //       print('Error fetching details: $error');
// // // // // //       throw Exception('Failed to load demande achat details');
// // // // // //     }
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return SafeArea(
// // // // // //       child: Scaffold(
// // // // // //         appBar: CustomAppBar(
// // // // // //           leadingWidth: 58.h,
// // // // // //           leading: AppbarLeadingImage(
// // // // // //             imagePath: ImageConstant.imgMegaphone,
// // // // // //             onPressed: () => _openMenu(context),
// // // // // //             margin: EdgeInsets.only(left: 20.h),
// // // // // //           ),
// // // // // //         ),
// // // // // //         body: FutureBuilder<Map<String, dynamic>>(
// // // // // //           future: _fetchDemandeAchatDetails(),
// // // // // //           builder: (context, snapshot) {
// // // // // //             if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // //               return Center(child: CircularProgressIndicator());
// // // // // //             } else if (snapshot.hasError) {
// // // // // //               return Center(child: Text('Error: ${snapshot.error}'));
// // // // // //             } else if (snapshot.hasData) {
// // // // // //               final details = snapshot.data!['details'];
// // // // // //               if (details == null) {
// // // // // //                 return Center(child: Text('No details found.'));
// // // // // //               }

// // // // // //               return Padding(
// // // // // //                 padding: const EdgeInsets.all(16.0),
// // // // // //                 child: Column(
// // // // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //                   children: [
// // // // // //                     Text('Numero DA: ${details['NumeroDA']}'),
// // // // // //                     Text('Date: ${details['Date']}'),
// // // // // //                     // Affichez la liste des détails ici
// // // // // //                     _buildDetailsList(context, details['detailsList']),
// // // // // //                   ],
// // // // // //                 ),
// // // // // //               );
// // // // // //             } else {
// // // // // //               return Center(child: Text('Aucune donnée disponible'));
// // // // // //             }
// // // // // //           },
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   Widget _buildDetailsList(BuildContext context, List<dynamic> detailsList) {
// // // // // //     return SizedBox(
// // // // // //       width: double.maxFinite,
// // // // // //       child: ListView.separated(
// // // // // //         physics: NeverScrollableScrollPhysics(),
// // // // // //         shrinkWrap: true,
// // // // // //         separatorBuilder: (context, index) => SizedBox(height: 6.v),
// // // // // //         itemCount: detailsList.length,
// // // // // //         itemBuilder: (context, index) {
// // // // // //           final item = detailsList[index];
// // // // // //           return DetailslistItemWidget(
// // // // // //             projet: item['projet'] ?? '',
// // // // // //             demandeur: item['demandeur'] ?? '',
// // // // // //             destinataire: item['destinataire'] ?? '',
// // // // // //             validation: item['validation'] ?? '',
// // // // // //             dateLivraison: item['dateLivraison'] ?? '',
// // // // // //             dateTraitement: item['dateTraitement'] ?? '',
// // // // // //           );
// // // // // //         },
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }
// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:gecimmoa/api_service.dart';
// // // // // // import '../../api_service.dart';

// // // // // // class AppelDoffreScreen extends StatefulWidget {
// // // // // //   @override
// // // // // //   AppelsDoffreScreenState createState() => AppelsDoffreScreenState();
// // // // // // }

// // // // // // class AppelsDoffreScreenState extends State<AppelDoffreScreen> {
// // // // // //   late Future<Map<String, dynamic>> futureDemandeAchat;

// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     futureDemandeAchat = ApiService().getDetailsDemandeAchat('1');
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       appBar: AppBar(
// // // // // //         title: Text('Détails Demande d\'Achat'),
// // // // // //       ),
// // // // // //       body: FutureBuilder<Map<String, dynamic>>(
// // // // // //         future: futureDemandeAchat,
// // // // // //         builder: (context, snapshot) {
// // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // //             return Center(child: CircularProgressIndicator());
// // // // // //           } else if (snapshot.hasError) {
// // // // // //             return Center(child: Text('Erreur: ${snapshot.error}'));
// // // // // //           } else if (!snapshot.hasData) {
// // // // // //             return Center(child: Text('Aucune donnée trouvée'));
// // // // // //           } else {
// // // // // //             final demandeAchat = snapshot.data!;
// // // // // //             return ListView(
// // // // // //               children: [
// // // // // //                 ListTile(
// // // // // //                   title: Text('ID: ${demandeAchat['id']}'),
// // // // // //                   subtitle: Text('Description: ${demandeAchat['description']}'),
// // // // // //                 ),
// // // // // //                 ListTile(
// // // // // //                   title: Text('Date de Création: ${demandeAchat['createdAt']}'),
// // // // // //                 ),
// // // // // //                 ListTile(
// // // // // //                   title: Text('Statut: ${demandeAchat['status']}'),
// // // // // //                 ),
// // // // // //                 ListTile(
// // // // // //                   title: Text('Montant: ${demandeAchat['amount']}'),
// // // // // //                 ),
// // // // // //                 ListTile(
// // // // // //                   title: Text('Demandeur: ${demandeAchat['requester']}'),
// // // // // //                 ),
// // // // // //                 ListTile(
// // // // // //                   title: Text('Fournisseur: ${demandeAchat['supplier']}'),
// // // // // //                 ),
// // // // // //                 ListTile(
// // // // // //                   title: Text('Date de Livraison: ${demandeAchat['deliveryDate']}'),
// // // // // //                 ),
// // // // // //                 // Ajoutez d'autres champs selon les données de votre API
// // // // // //               ],
// // // // // //             );
// // // // // //           }
// // // // // //         },
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }
// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:gecimmoa/api_service.dart';

// // // // // // class AppelDoffreScreen extends StatefulWidget {
// // // // // //   @override
// // // // // //   _AppelsDoffreScreenState createState() => _AppelsDoffreScreenState();
// // // // // // }

// // // // // // class _AppelsDoffreScreenState extends State<AppelDoffreScreen> {
// // // // // //   late Future<Map<String, dynamic>> futureDemandeAchat;

// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     futureDemandeAchat = ApiService.fetchDemandeAchatDetails('1');
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       appBar: AppBar(
// // // // // //         title: Text('Détails Demande d\'Achat'),
// // // // // //       ),
// // // // // //       body: FutureBuilder<Map<String, dynamic>>(
// // // // // //         future: futureDemandeAchat,
// // // // // //         builder: (context, snapshot) {
// // // // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // //             return Center(child: CircularProgressIndicator());
// // // // // //           } else if (snapshot.hasError) {
// // // // // //             return Center(child: Text('Erreur: ${snapshot.error}'));
// // // // // //           } else if (snapshot.data?.containsKey('error') ?? false) {
// // // // // //             return Center(child: Text('Erreur: ${snapshot.data!['error']}'));
// // // // // //           } else if (!snapshot.hasData) {
// // // // // //             return Center(child: Text('Aucune donnée trouvée'));
// // // // // //           } else {
// // // // // //             final demandeAchat = snapshot.data!;
// // // // // //             return ListView(
// // // // // //               children: [
// // // // // //                 ListTile(
// // // // // //                   title: Text('ID: ${demandeAchat['id']}'),
// // // // // //                   subtitle: Text('Description: ${demandeAchat['description']}'),
// // // // // //                 ),
// // // // // //                 // Ajoutez d'autres champs selon les données de votre API
// // // // // //               ],
// // // // // //             );
// // // // // //           }
// // // // // //         },
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }
// // // // import 'package:flutter/material.dart';
// // // // import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
// // // // import 'package:gecimmoa/api_service.dart';
// // // // import 'package:gecimmoa/presentation/appel_doffre_screen/widgets/detailslist_item_widget.dart';
// // // // import 'package:gecimmoa/widgets/app_bar/appbar_leading_image.dart';
// // // // import 'package:gecimmoa/widgets/app_bar/custom_app_bar.dart';
// // // // import '../../../core/app_export.dart'; // Assurez-vous d'importer les ressources nécessaires

// // // // // class AppelDoffreScreen extends StatelessWidget {
// // // // //   AppelDoffreScreen({Key? key}) : super(key: key);

// // // // //   void _openMenu(BuildContext context) {
// // // // //     Navigator.pushNamed(context, AppRoutes.menuScreen);
// // // // //   }

// // // // //   Future<Map<String, dynamic>> _fetchData() async {
// // // // //     final apiService = ApiService(); // Créez une instance d'ApiService
// // // // //     final stats = await apiService.fetchStatistics();
// // // // //     final detailsList = await apiService.fetchDetailsList();
// // // // //     print(stats);
// // // // //     return {'stats': stats, 'detailsList': detailsList};
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return SafeArea(
// // // // //       child: Scaffold(
// // // // //         body: FutureBuilder<Map<String, dynamic>>(
// // // // //           future: _fetchData(),
// // // // //           builder: (context, snapshot) {
// // // // //             if (snapshot.connectionState == ConnectionState.waiting) {
// // // // //               return Center(child: CircularProgressIndicator());
// // // // //             } else if (snapshot.hasError) {
// // // // //               return Center(child: Text('Error: ${snapshot.error}'));
// // // // //             } else if (snapshot.hasData) {
// // // // //               final stats = snapshot.data!['stats'] as Map<String, dynamic>;
// // // // //               final detailsList = snapshot.data!['detailsList'] as List<dynamic>;
// // // // //               return SizedBox(
// // // // //                 width: 400.h,
// // // // //                 child: Column(
// // // // //                   children: [
// // // // //                     _buildMainStack(context, stats),
// // // // //                     Container(
// // // // //                       width: 400.h,
// // // // //                       padding: EdgeInsets.symmetric(horizontal: 7.h),
// // // // //                       child: Column(
// // // // //                         children: [
// // // // //                           SizedBox(height: 30.v),
// // // // //                           _buildFilterRow(context),
// // // // //                           SizedBox(height: 20.v),
// // // // //                           _buildDetailsList(context, detailsList)
// // // // //                         ],
// // // // //                       ),
// // // // //                     )
// // // // //                   ],
// // // // //                 ),
// // // // //               );
// // // // //             } else {
// // // // //               return Center(child: Text('Aucune donnée disponible'));
// // // // //             }
// // // // //           },
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _buildMainStack(BuildContext context, Map<String, dynamic> stats) {
// // // // //     return SizedBox(
// // // // //       height: 292.v,
// // // // //       width: double.maxFinite,
// // // // //       child: Stack(
// // // // //         alignment: Alignment.bottomCenter,
// // // // //         children: [
// // // // //           Align(
// // // // //             alignment: Alignment.topCenter,
// // // // //             child: Container(
// // // // //               width: double.maxFinite,
// // // // //               padding: EdgeInsets.symmetric(vertical: 20.v),
// // // // //               decoration: BoxDecoration(
// // // // //                 borderRadius: BorderRadiusStyle.customBorderBR100,
// // // // //                 image: DecorationImage(
// // // // //                   image: AssetImage('assets/images/your_image.png'), // Changez selon votre image
// // // // //                   fit: BoxFit.cover,
// // // // //                 ),
// // // // //               ),
// // // // //               child: Column(
// // // // //                 mainAxisSize: MainAxisSize.min,
// // // // //                 mainAxisAlignment: MainAxisAlignment.center,
// // // // //                 children: [
// // // // //                   CustomAppBar(
// // // // //                     leadingWidth: 58.h,
// // // // //                     leading: AppbarLeadingImage(
// // // // //                       imagePath: 'assets/images/megaphone.png', // Changez selon votre image
// // // // //                       onPressed: () => _openMenu(context),
// // // // //                       margin: EdgeInsets.only(left: 20.h),
// // // // //                     ),
// // // // //                   ),
// // // // //                   SizedBox(height: 68.v),
// // // // //                   Container(
// // // // //                     width: double.maxFinite,
// // // // //                     margin: EdgeInsets.symmetric(horizontal: 16.h),
// // // // //                     child: Row(
// // // // //                       children: [
// // // // //                         Expanded(
// // // // //                           child: _buildProcessedColumn(
// // // // //                             context,
// // // // //                             titleText: "En cours",
// // // // //                             statNumber: stats["enCours"]?.toString() ?? '0',
// // // // //                           ),
// // // // //                         ),
// // // // //                         SizedBox(width: 6.h),
// // // // //                         Expanded(
// // // // //                           child: _buildProcessedColumn(
// // // // //                             context,
// // // // //                             titleText: "Traitées",
// // // // //                             statNumber: stats["traitees"]?.toString() ?? '0',
// // // // //                           ),
// // // // //                         ),
// // // // //                         SizedBox(width: 6.h),
// // // // //                         Expanded(
// // // // //                           child: _buildProcessedColumn(
// // // // //                             context,
// // // // //                             titleText: "Refusées",
// // // // //                             statNumber: stats["refusees"]?.toString() ?? '0',
// // // // //                           ),
// // // // //                         )
// // // // //                       ],
// // // // //                     ),
// // // // //                   )
// // // // //                 ],
// // // // //               ),
// // // // //             ),
// // // // //           ),
// // // // //           Padding(
// // // // //             padding: EdgeInsets.symmetric(horizontal: 12.h),
// // // // //             child: Row(
// // // // //               children: [
// // // // //                 Expanded(
// // // // //                   child: _buildProcessedColumn(
// // // // //                     context,
// // // // //                     titleText: "Appel d’offre",
// // // // //                     statNumber: stats["appelOffre"]?.toString() ?? '0',
// // // // //                   ),
// // // // //                 ),
// // // // //                 SizedBox(width: 6.h),
// // // // //                 Expanded(
// // // // //                   child: _buildProcessedColumn(
// // // // //                     context,
// // // // //                     titleText: "Demande de prix",
// // // // //                     statNumber: stats["demandePrix"]?.toString() ?? '0',
// // // // //                   ),
// // // // //                 ),
// // // // //                 SizedBox(width: 6.h),
// // // // //                 Expanded(
// // // // //                   child: _buildProcessedColumn(
// // // // //                     context,
// // // // //                     titleText: "Avenant",
// // // // //                     statNumber: stats["avenant"]?.toString() ?? '0',
// // // // //                   ),
// // // // //                 )
// // // // //               ],
// // // // //             ),
// // // // //           )
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _buildFilterRow(BuildContext context) {
// // // // //     return Container(
// // // // //       padding: EdgeInsets.symmetric(horizontal: 6.h),
// // // // //       width: double.maxFinite,
// // // // //       child: Row(
// // // // //         children: [
// // // // //           Expanded(
// // // // //             child: Container(
// // // // //               height: 36.v,
// // // // //               width: 270.h,
// // // // //               decoration: BoxDecoration(
// // // // //                 color: Colors.grey[400],
// // // // //                 borderRadius: BorderRadius.circular(5.h),
// // // // //               ),
// // // // //             ),
// // // // //           ),
// // // // //           SizedBox(width: 4.h),
// // // // //           Container(
// // // // //             height: 36.v,
// // // // //             width: 60.h,
// // // // //             decoration: BoxDecoration(
// // // // //               color: Colors.grey[400],
// // // // //               borderRadius: BorderRadius.circular(5.h),
// // // // //             ),
// // // // //             child: Stack(
// // // // //               alignment: Alignment.center,
// // // // //               children: [
// // // // //                 Image.asset('assets/images/filter.png', height: 18, width: 18) // Changez selon votre image
// // // // //               ],
// // // // //             ),
// // // // //           )
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _buildDetailsList(BuildContext context, List<dynamic> detailsList) {
// // // // //     return SizedBox(
// // // // //       width: double.maxFinite,
// // // // //       child: ListView.separated(
// // // // //         physics: NeverScrollableScrollPhysics(),
// // // // //         shrinkWrap: true,
// // // // //         separatorBuilder: (context, index) => SizedBox(height: 6.v),
// // // // //         itemCount: detailsList.length,
// // // // //         itemBuilder: (context, index) {
// // // // //           final item = detailsList[index];
// // // // //           return DetailslistItemWidget(
// // // // //             projet: item['projet'] ?? '',
// // // // //             demandeur: item['demandeur'] ?? '',
// // // // //             destinataire: item['destinataire'] ?? '',
// // // // //             validation: item['validation'] ?? '',
// // // // //             dateLivraison: item['dateLivraison'] ?? '',
// // // // //             dateTraitement: item['dateTraitement'] ?? '',
// // // // //           );
// // // // //         },
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _buildProcessedColumn(
// // // // //     BuildContext context, {
// // // // //     required String titleText,
// // // // //     required String statNumber,
// // // // //   }) {
// // // // //     return Container(
// // // // //       decoration: BoxDecoration(
// // // // //         color: Colors.blueGrey[700],
// // // // //         borderRadius: BorderRadius.circular(10),
// // // // //       ),
// // // // //       child: Column(
// // // // //         mainAxisSize: MainAxisSize.min,
// // // // //         children: [
// // // // //           SizedBox(height: 10.h),
// // // // //           Text(
// // // // //             titleText,
// // // // //             style: TextStyle(
// // // // //               color: Colors.white,
// // // // //               fontSize: 16,
// // // // //               fontWeight: FontWeight.bold,
// // // // //             ),
// // // // //           ),
// // // // //           SizedBox(height: 8.h),
// // // // //           Container(
// // // // //             width: double.maxFinite,
// // // // //             padding: EdgeInsets.symmetric(vertical: 6.h),
// // // // //             decoration: BoxDecoration(
// // // // //               color: Colors.grey[400],
// // // // //             ),
// // // // //             child: Column(
// // // // //               mainAxisAlignment: MainAxisAlignment.center,
// // // // //               children: [
// // // // //                 SizedBox(height: 2.h),
// // // // //                 Text(
// // // // //                   statNumber,
// // // // //                   style: TextStyle(
// // // // //                     color: Colors.white,
// // // // //                     fontSize: 20,
// // // // //                     fontWeight: FontWeight.bold,
// // // // //                   ),
// // // // //                 )
// // // // //               ],
// // // // //             ),
// // // // //           )
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }
// // // // // // ignore: must_be_immutable
// // // // class AppelDoffreScreen extends StatelessWidget {
// // // //   AppelDoffreScreen({Key? key}) : super(key: key);

// // // //   void _openMenu(BuildContext context) {
// // // //     Navigator.pushNamed(context, AppRoutes.menuScreen);
// // // //   }

// // // //   GlobalKey<NavigatorState> navigatorKey = GlobalKey();
// // // // //   Future<Map<String, dynamic>> _fetchData() async {
// // // // //     final apiService = ApiService(); // Créez une instance d'ApiService
// // // // //     final stats = await apiService.fetchStatistics();
// // // // //     final detailsList = await apiService.fetchDetailsList();
// // // // //     print(stats);
// // // // //     return {'stats': stats, 'detailsList': detailsList};
// // // // //   }
// // // //   Future<Map<String, dynamic>> _fetchData() async {
// // // //     final stats = await ApiService.fetchStatistics();
// // // // //     final detailsList = await apiService.fetchDetailsList();
// // // //     final detailsList = await ApiService.fetchDetailsList();

// // // //     return {
// // // //       'stats': stats ?? {},
// // // //       'detailsList': detailsList ?? [],
// // // //     };
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return SafeArea(
// // // //       child: Scaffold(
// // // //         body: FutureBuilder<Map<String, dynamic>>(
// // // //           future: _fetchData(),
// // // //           builder: (context, snapshot) {
// // // //             if (snapshot.connectionState == ConnectionState.waiting) {
// // // //               return Center(child: CircularProgressIndicator());
// // // //             } else if (snapshot.hasError) {
// // // //               return Center(child: Text('Error: ${snapshot.error}'));
// // // //             } else if (snapshot.hasData) {
// // // //               final stats = snapshot.data!['stats'] as Map<String, dynamic>;
// // // //               final detailsList = snapshot.data!['detailsList'] as List<dynamic>;

// // // //               return SizedBox(
// // // //                 width: 400.h,
// // // //                 child: Column(
// // // //                   children: [
// // // //                     _buildMainStack(context, stats),
// // // //                     Container(
// // // //                       width: 400.h,
// // // //                       padding: EdgeInsets.symmetric(horizontal: 7.h),
// // // //                       child: Column(
// // // //                         children: [
// // // //                           SizedBox(height: 30.v),
// // // //                           _buildFilterRow(context),
// // // //                           SizedBox(height: 20.v),
// // // //                           _buildDetailsList(context, detailsList)
// // // //                         ],
// // // //                       ),
// // // //                     )
// // // //                   ],
// // // //                 ),
// // // //               );
// // // //             } else {
// // // //               return Center(child: Text('Aucune donnée disponible'));
// // // //             }
// // // //           },
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildMainStack(BuildContext context, Map<String, dynamic> stats) {
// // // //     return SizedBox(
// // // //       height: 292.v,
// // // //       width: double.maxFinite,
// // // //       child: Stack(
// // // //         alignment: Alignment.bottomCenter,
// // // //         children: [
// // // //           Align(
// // // //             alignment: Alignment.topCenter,
// // // //             child: Container(
// // // //               width: double.maxFinite,
// // // //               padding: EdgeInsets.symmetric(vertical: 20.v),
// // // //               decoration: BoxDecoration(
// // // //                 borderRadius: BorderRadiusStyle.customBorderBR100,
// // // //                 image: DecorationImage(
// // // //                   image: fs.Svg(ImageConstant.imgGroup62),
// // // //                   fit: BoxFit.cover,
// // // //                 ),
// // // //               ),
// // // //               child: Column(
// // // //                 mainAxisSize: MainAxisSize.min,
// // // //                 mainAxisAlignment: MainAxisAlignment.center,
// // // //                 children: [
// // // //                   CustomAppBar(
// // // //                     leadingWidth: 58.h,
// // // //                     leading: AppbarLeadingImage(
// // // //                       imagePath: ImageConstant.imgMegaphone,
// // // //                       onPressed: () => _openMenu(context),
// // // //                       margin: EdgeInsets.only(left: 20.h),
// // // //                     ),
// // // //                   ),
// // // //                   SizedBox(height: 68.v),
// // // //                   Container(
// // // //                     width: double.maxFinite,
// // // //                     margin: EdgeInsets.symmetric(horizontal: 16.h),
// // // //                     child: Row(
// // // //                       children: [
// // // //                         Expanded(
// // // //                           child: _buildProcessedColumn(
// // // //                             context,
// // // //                             titleText: "En cours",
// // // //                             statNumber: stats["enCours"]?.toString() ?? '0',
// // // //                           ),
// // // //                         ),
// // // //                         SizedBox(width: 6.h),
// // // //                         Expanded(
// // // //                           child: _buildProcessedColumn(
// // // //                             context,
// // // //                             titleText: "Traitées",
// // // //                             statNumber: stats["traitees"]?.toString() ?? '0',
// // // //                           ),
// // // //                         ),
// // // //                         SizedBox(width: 6.h),
// // // //                         Expanded(
// // // //                           child: _buildProcessedColumn(
// // // //                             context,
// // // //                             titleText: "Refusées",
// // // //                             statNumber: stats["refusees"]?.toString() ?? '0',
// // // //                           ),
// // // //                         )
// // // //                       ],
// // // //                     ),
// // // //                   )
// // // //                 ],
// // // //               ),
// // // //             ),
// // // //           ),
// // // //           Padding(
// // // //             padding: EdgeInsets.symmetric(horizontal: 12.h),
// // // //             child: Row(
// // // //               children: [
// // // //                 Expanded(
// // // //                   child: _buildProcessedColumn(
// // // //                     context,
// // // //                     titleText: "Appel d’offre",
// // // //                     statNumber: stats["appelOffre"]?.toString() ?? '0',
// // // //                   ),
// // // //                 ),
// // // //                 SizedBox(width: 6.h),
// // // //                 Expanded(
// // // //                   child: _buildProcessedColumn(
// // // //                     context,
// // // //                     titleText: "Demande de prix",
// // // //                     statNumber: stats["demandePrix"]?.toString() ?? '0',
// // // //                   ),
// // // //                 ),
// // // //                 SizedBox(width: 6.h),
// // // //                 Expanded(
// // // //                   child: _buildProcessedColumn(
// // // //                     context,
// // // //                     titleText: "Avenant",
// // // //                     statNumber: stats["avenant"]?.toString() ?? '0',
// // // //                   ),
// // // //                 )
// // // //               ],
// // // //             ),
// // // //           )
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildFilterRow(BuildContext context) {
// // // //     return Container(
// // // //       padding: EdgeInsets.symmetric(horizontal: 6.h),
// // // //       width: double.maxFinite,
// // // //       child: Row(
// // // //         children: [
// // // //           Expanded(
// // // //             child: Container(
// // // //               height: 36.v,
// // // //               width: 270.h,
// // // //               decoration: BoxDecoration(
// // // //                 color: appTheme.gray400,
// // // //                 borderRadius: BorderRadius.circular(5.h),
// // // //               ),
// // // //             ),
// // // //           ),
// // // //           SizedBox(width: 4.h),
// // // //           Container(
// // // //             height: 36.v,
// // // //             width: 60.h,
// // // //             decoration: AppDecoration.fillGray400.copyWith(
// // // //               borderRadius: BorderRadiusStyle.roundedBorder5,
// // // //             ),
// // // //             child: Stack(
// // // //               alignment: Alignment.center,
// // // //               children: [
// // // //                 CustomImageView(
// // // //                   imagePath: ImageConstant.imgFilter,
// // // //                   height: 18.adaptSize,
// // // //                   width: 18.adaptSize,
// // // //                 )
// // // //               ],
// // // //             ),
// // // //           )
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildDetailsList(BuildContext context, List<dynamic> detailsList) {
// // // //     return SizedBox(
// // // //       width: double.maxFinite,
// // // //       child: ListView.separated(
// // // //         physics: NeverScrollableScrollPhysics(),
// // // //         shrinkWrap: true,
// // // //         separatorBuilder: (context, index) => SizedBox(height: 6.v),
// // // //         itemCount: detailsList.length,
// // // //         itemBuilder: (context, index) {
// // // //           final item = detailsList[index];
// // // //           return DetailslistItemWidget(
// // // //             projet: item['projet'] ?? '',
// // // //             demandeur: item['demandeur'] ?? '',
// // // //             destinataire: item['destinataire'] ?? '',
// // // //             validation: item['validation'] ?? '',
// // // //             dateLivraison: item['dateLivraison'] ?? '',
// // // //             dateTraitement: item['dateTraitement'] ?? '',
// // // //           );
// // // //         },
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildProcessedColumn(
// // // //     BuildContext context, {
// // // //     required String titleText,
// // // //     required String statNumber,
// // // //   }) {
// // // //     return Container(
// // // //       decoration: AppDecoration.fillBluegray700.copyWith(
// // // //         borderRadius: BorderRadiusStyle.roundedBorder10,
// // // //       ),
// // // //       child: Column(
// // // //         mainAxisSize: MainAxisSize.min,
// // // //         children: [
// // // //           SizedBox(height: 10.v),
// // // //           Text(
// // // //             titleText,
// // // //             style: CustomTextStyles.titleMedium16.copyWith(
// // // //               color: appTheme.whiteA700,
// // // //             ),
// // // //           ),
// // // //           SizedBox(height: 8.v),
// // // //           Container(
// // // //             width: double.maxFinite,
// // // //             padding: EdgeInsets.symmetric(vertical: 6.v),
// // // //             decoration: AppDecoration.fillGray400,
// // // //             child: Column(
// // // //               mainAxisAlignment: MainAxisAlignment.center,
// // // //               children: [
// // // //                 SizedBox(height: 2.v),
// // // //                 Text(
// // // //                   statNumber,
// // // //                   style: theme.textTheme.titleLarge!.copyWith(
// // // //                     color: appTheme.whiteA700,
// // // //                   ),
// // // //                 )
// // // //               ],
// // // //             ),
// // // //           )
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // // // import 'package:flutter/material.dart';
// // // // import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
// // // // import 'package:gecimmoa/api_service.dart';
// // // // import 'package:gecimmoa/presentation/appel_doffre_screen/widgets/detailslist_item_widget.dart';
// // // // import 'package:gecimmoa/widgets/app_bar/appbar_leading_image.dart';
// // // // import 'package:gecimmoa/widgets/app_bar/custom_app_bar.dart';
// // // // import '../../../core/app_export.dart'; // Assurez-vous d'importer les ressources nécessaires

// // // // // ignore: must_be_immutable
// // // // class AppelDoffreScreen extends StatelessWidget {
// // // //   final apiService = ApiService();

// // // //   AppelDoffreScreen({Key? key}) : super(key: key);

// // // //   void _openMenu(BuildContext context) {
// // // //     Navigator.pushNamed(context, AppRoutes.menuScreen);
// // // //   }

// // // //   GlobalKey<NavigatorState> navigatorKey = GlobalKey();

// // // //   Future<Map<String, dynamic>> _fetchData() async {
// // // //     final stats = await apiService.fetchStatistics();
// // // //     final detailsList = await apiService.fetchDetailsList();

// // // //     return {
// // // //       'stats': stats ?? {},
// // // //       'detailsList': detailsList ?? [],
// // // //     };
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return SafeArea(
// // // //       child: Scaffold(
// // // //         body: FutureBuilder<Map<String, dynamic>>(
// // // //           future: _fetchData(),
// // // //           builder: (context, snapshot) {
// // // //             if (snapshot.connectionState == ConnectionState.waiting) {
// // // //               return Center(child: CircularProgressIndicator());
// // // //             } else if (snapshot.hasError) {
// // // //               return Center(child: Text('Error: ${snapshot.error}'));
// // // //             } else if (snapshot.hasData) {
// // // //               final stats = snapshot.data!['stats'] as Map<String, dynamic>;
// // // //               final detailsList = snapshot.data!['detailsList'] as List<dynamic>;

// // // //               return SizedBox(
// // // //                 width: 400.h,
// // // //                 child: Column(
// // // //                   children: [
// // // //                     _buildMainStack(context, stats),
// // // //                     Container(
// // // //                       width: 400.h,
// // // //                       padding: EdgeInsets.symmetric(horizontal: 7.h),
// // // //                       child: Column(
// // // //                         children: [
// // // //                           SizedBox(height: 30.v),
// // // //                           _buildFilterRow(context),
// // // //                           SizedBox(height: 20.v),
// // // //                           _buildDetailsList(context, detailsList)
// // // //                         ],
// // // //                       ),
// // // //                     )
// // // //                   ],
// // // //                 ),
// // // //               );
// // // //             } else {
// // // //               return Center(child: Text('Aucune donnée disponible'));
// // // //             }
// // // //           },
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildMainStack(BuildContext context, Map<String, dynamic> stats) {
// // // //     return SizedBox(
// // // //       height: 292.v,
// // // //       width: double.maxFinite,
// // // //       child: Stack(
// // // //         alignment: Alignment.bottomCenter,
// // // //         children: [
// // // //           Align(
// // // //             alignment: Alignment.topCenter,
// // // //             child: Container(
// // // //               width: double.maxFinite,
// // // //               padding: EdgeInsets.symmetric(vertical: 20.v),
// // // //               decoration: BoxDecoration(
// // // //                 borderRadius: BorderRadiusStyle.customBorderBR100,
// // // //                 image: DecorationImage(
// // // //                   image: fs.Svg(ImageConstant.imgGroup62),
// // // //                   fit: BoxFit.cover,
// // // //                 ),
// // // //               ),
// // // //               child: Column(
// // // //                 mainAxisSize: MainAxisSize.min,
// // // //                 mainAxisAlignment: MainAxisAlignment.center,
// // // //                 children: [
// // // //                   CustomAppBar(
// // // //                     leadingWidth: 58.h,
// // // //                     leading: AppbarLeadingImage(
// // // //                       imagePath: ImageConstant.imgMegaphone,
// // // //                       onPressed: () => _openMenu(context),
// // // //                       margin: EdgeInsets.only(left: 20.h),
// // // //                     ),
// // // //                   ),
// // // //                   SizedBox(height: 68.v),
// // // //                   Container(
// // // //                     width: double.maxFinite,
// // // //                     margin: EdgeInsets.symmetric(horizontal: 16.h),
// // // //                     child: Row(
// // // //                       children: [
// // // //                         Expanded(
// // // //                           child: _buildProcessedColumn(
// // // //                             context,
// // // //                             titleText: "En cours",
// // // //                             statNumber: stats["enCours"]?.toString() ?? '0',
// // // //                           ),
// // // //                         ),
// // // //                         SizedBox(width: 6.h),
// // // //                         Expanded(
// // // //                           child: _buildProcessedColumn(
// // // //                             context,
// // // //                             titleText: "Traitées",
// // // //                             statNumber: stats["traitees"]?.toString() ?? '0',
// // // //                           ),
// // // //                         ),
// // // //                         SizedBox(width: 6.h),
// // // //                         Expanded(
// // // //                           child: _buildProcessedColumn(
// // // //                             context,
// // // //                             titleText: "Refusées",
// // // //                             statNumber: stats["refusees"]?.toString() ?? '0',
// // // //                           ),
// // // //                         )
// // // //                       ],
// // // //                     ),
// // // //                   )
// // // //                 ],
// // // //               ),
// // // //             ),
// // // //           ),
// // // //           Padding(
// // // //             padding: EdgeInsets.symmetric(horizontal: 12.h),
// // // //             child: Row(
// // // //               children: [
// // // //                 Expanded(
// // // //                   child: _buildProcessedColumn(
// // // //                     context,
// // // //                     titleText: "Appel d’offre",
// // // //                     statNumber: stats["appelOffre"]?.toString() ?? '0',
// // // //                   ),
// // // //                 ),
// // // //                 SizedBox(width: 6.h),
// // // //                 Expanded(
// // // //                   child: _buildProcessedColumn(
// // // //                     context,
// // // //                     titleText: "Demande de prix",
// // // //                     statNumber: stats["demandePrix"]?.toString() ?? '0',
// // // //                   ),
// // // //                 ),
// // // //                 SizedBox(width: 6.h),
// // // //                 Expanded(
// // // //                   child: _buildProcessedColumn(
// // // //                     context,
// // // //                     titleText: "Avenant",
// // // //                     statNumber: stats["avenant"]?.toString() ?? '0',
// // // //                   ),
// // // //                 )
// // // //               ],
// // // //             ),
// // // //           )
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildFilterRow(BuildContext context) {
// // // //     return Container(
// // // //       padding: EdgeInsets.symmetric(horizontal: 6.h),
// // // //       width: double.maxFinite,
// // // //       child: Row(
// // // //         children: [
// // // //           Expanded(
// // // //             child: Container(
// // // //               height: 36.v,
// // // //               width: 270.h,
// // // //               decoration: BoxDecoration(
// // // //                 color: appTheme.gray400,
// // // //                 borderRadius: BorderRadius.circular(5.h),
// // // //               ),
// // // //             ),
// // // //           ),
// // // //           SizedBox(width: 4.h),
// // // //           Container(
// // // //             height: 36.v,
// // // //             width: 60.h,
// // // //             decoration: AppDecoration.fillGray400.copyWith(
// // // //               borderRadius: BorderRadiusStyle.roundedBorder5,
// // // //             ),
// // // //             child: Stack(
// // // //               alignment: Alignment.center,
// // // //               children: [
// // // //                 CustomImageView(
// // // //                   imagePath: ImageConstant.imgFilter,
// // // //                   height: 18.adaptSize,
// // // //                   width: 18.adaptSize,
// // // //                 )
// // // //               ],
// // // //             ),
// // // //           )
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildDetailsList(BuildContext context, List<dynamic> detailsList) {
// // // //     return SizedBox(
// // // //       width: double.maxFinite,
// // // //       child: ListView.separated(
// // // //         physics: NeverScrollableScrollPhysics(),
// // // //         shrinkWrap: true,
// // // //         separatorBuilder: (context, index) => SizedBox(height: 6.v),
// // // //         itemCount: detailsList.length,
// // // //         itemBuilder: (context, index) {
// // // //           final item = detailsList[index];
// // // //           return DetailslistItemWidget(
// // // //             projet: item['projet'] ?? '',
// // // //             demandeur: item['demandeur'] ?? '',
// // // //             destinataire: item['destinataire'] ?? '',
// // // //             validation: item['validation'] ?? '',
// // // //             dateLivraison: item['dateLivraison'] ?? '',
// // // //             dateTraitement: item['dateTraitement'] ?? '',
// // // //           );
// // // //         },
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildProcessedColumn(
// // // //     BuildContext context, {
// // // //     required String titleText,
// // // //     required String statNumber,
// // // //   }) {
// // // //     return Container(
// // // //       decoration: AppDecoration.fillBluegray700.copyWith(
// // // //         borderRadius: BorderRadiusStyle.roundedBorder10,
// // // //       ),
// // // //       child: Column(
// // // //         mainAxisSize: MainAxisSize.min,
// // // //         children: [
// // // //           SizedBox(height: 10.v),
// // // //           Text(
// // // //             titleText,
// // // //             style: CustomTextStyles.titleMedium16.copyWith(
// // // //               color: appTheme.whiteA700,
// // // //             ),
// // // //           ),
// // // //           SizedBox(height: 8.v),
// // // //           Container(
// // // //             width: double.maxFinite,
// // // //             padding: EdgeInsets.symmetric(vertical: 6.v),
// // // //             decoration: AppDecoration.fillGray400,
// // // //             child: Column(
// // // //               mainAxisAlignment: MainAxisAlignment.center,
// // // //               children: [
// // // //                 SizedBox(height: 2.v),
// // // //                 Text(
// // // //                   statNumber,
// // // //                   style: CustomTextStyles.titleLarge22.copyWith(
// // // //                     color: appTheme.whiteA700,
// // // //                   ),
// // // //                 ),
// // // //               ],
// // // //             ),
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // ignore_for_file: must_be_immutable
// // // class AppelDoffreScreen extends StatelessWidget {
// // //   AppelDoffreScreen({Key? key})
// // //       : super(
// // //           key: key,
// // //         );
// // //   void _openMenu(BuildContext context) {
// // //     Navigator.pushNamed(context, AppRoutes.menuScreen);
// // //   }

// // //   GlobalKey<NavigatorState> navigatorKey = GlobalKey();

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return SafeArea(
// // //       child: Scaffold(
// // //         body: SizedBox(
// // //           width: 400.h,
// // //           child: Column(
// // //             children: [
// // //               _buildMainStack(context),
// // //               Container(
// // //                 width: 400.h,
// // //                 padding: EdgeInsets.symmetric(horizontal: 7.h),
// // //                 child: Column(
// // //                   children: [
// // //                     SizedBox(height: 30.v),
// // //                     _buildFilterRow(context),
// // //                     SizedBox(height: 20.v),
// // //                     _buildDetailsList(context)
// // //                   ],
// // //                 ),
// // //               )
// // //             ],
// // //           ),
// // //         ),
// // //         // bottomNavigationBar: _buildBottomNavigation(context),
// // //       ),
// // //     );
// // //   }

// // //   /// Section Widget
// // //   Widget _buildMainStack(BuildContext context) {
// // //     return SizedBox(
// // //       height: 292.v,
// // //       width: double.maxFinite,
// // //       child: Stack(
// // //         alignment: Alignment.bottomCenter,
// // //         children: [
// // //           Align(
// // //             alignment: Alignment.topCenter,
// // //             child: Container(
// // //               width: double.maxFinite,
// // //               padding: EdgeInsets.symmetric(vertical: 20.v),
// // //               decoration: BoxDecoration(
// // //                 borderRadius: BorderRadiusStyle.customBorderBR100,
// // //                 image: DecorationImage(
// // //                   image: fs.Svg(
// // //                     ImageConstant.imgGroup62,
// // //                   ),
// // //                   fit: BoxFit.cover,
// // //                 ),
// // //               ),
// // //               child: Column(
// // //                 mainAxisSize: MainAxisSize.min,
// // //                 mainAxisAlignment: MainAxisAlignment.center,
// // //                 children: [
// // //                 //   CustomAppBar(
// // //                 //     leadingWidth: 58.h,
// // //                 //     leading: AppbarLeadingImage(
// // //                 //       imagePath: ImageConstant.imgMegaphone,
// // //                 //       margin: EdgeInsets.only(left: 20.h), onPressed: () {  },
// // //                 //     ),
// // //                 //   ),
// // //                 CustomAppBar(
// // //                       leadingWidth: 58.h,
// // //                       leading: IconButton(
// // //                         icon: Icon(
// // //                           Icons.menu, // Icône de menu
// // //                           color: Colors.white, // Couleur de l'icône
// // //                         ),
// // //                         onPressed: () => _openMenu(context),
// // //                         padding: EdgeInsets.only(left: 20.h),
// // //                       ),
// // //                       title: Container(
// // //                         width: 700.h, // Largeur du texte
// // //                         margin: EdgeInsets.only(top: 55.h, left: 76.h), // Marges du texte
// // //                         child: Center(
// // //                           child: Text(
// // //                             'Votre Titre', // Titre de la barre d'applications
// // //                             style: TextStyle(
// // //                               color: Colors.white, // Couleur du titre
// // //                               fontSize: 20.h, // Taille du texte du titre
// // //                             ),
// // //                             overflow: TextOverflow.ellipsis, // Pour gérer les débordements si le texte est trop long
// // //                           ),
// // //                         ),
// // //                       ),
// // //                       // title:Container(
// // //                       //   width: 289.h, // Largeur du texte
// // //                       //   margin: EdgeInsets.only(top: 55.h, left: 76.h), // Marges du texte
// // //                       //   child: Center(child: Text(
// // //                       //   'Demande d’achat', // Titre de la barre d'applications
// // //                       //   style: TextStyle(
// // //                       //     color: Colors.white, // Couleur du titre
// // //                       //     fontSize: 20.h, // Taille du texte du titre
// // //                       //     fontWeight: FontWeight.w700, // Gras du texte du titre
// // //                       //   ),
// // //                       //   )),
// // //                       // ),

// // //                       bottom: PreferredSize(
// // //                         preferredSize: Size.fromHeight(1.h), // Hauteur de la ligne de séparation
// // //                         child: Container(
// // //                           color: Colors.grey[800], // Couleur de la ligne de séparation
// // //                           height: 1.h, // Hauteur de la ligne de séparation
// // //                         ),
// // //                       ),
// // //                     ),

// // //                   SizedBox(height: 68.v),
// // //                   Container(
// // //                     width: double.maxFinite,
// // //                     margin: EdgeInsets.symmetric(horizontal: 16.h),
// // //                     child: Row(
// // //                       children: [
// // //                         Expanded(
// // //                           child: _buildProcessedColumn(
// // //                             context,
// // //                             titleText: "En cours",
// // //                             statNumber: "51",
// // //                           ),
// // //                         ),
// // //                         SizedBox(width: 6.h),
// // //                         Expanded(
// // //                           child: _buildProcessedColumn(
// // //                             context,
// // //                             titleText: "Traitées",
// // //                             statNumber: "40",
// // //                           ),
// // //                         ),
// // //                         SizedBox(width: 6.h),
// // //                         Expanded(
// // //                           child: _buildProcessedColumn(
// // //                             context,
// // //                             titleText: "Refusées",
// // //                             statNumber: "5",
// // //                           ),
// // //                         )
// // //                       ],
// // //                     ),
// // //                   )
// // //                 ],
// // //               ),
// // //             ),
// // //           ),
// // //           Padding(
// // //             padding: EdgeInsets.symmetric(horizontal: 12.h),
// // //             child: Row(
// // //               children: [
// // //                 Expanded(
// // //                   child: _buildProcessedColumn(
// // //                     context,
// // //                     titleText: "Appel d’offre",
// // //                     statNumber: "6",
// // //                   ),
// // //                 ),
// // //                 SizedBox(width: 6.h),
// // //                 Expanded(
// // //                   child: _buildProcessedColumn(
// // //                     context,
// // //                     titleText: "Demande de prix",
// // //                     statNumber: "14",
// // //                   ),
// // //                 ),
// // //                 SizedBox(width: 6.h),
// // //                 Expanded(
// // //                   child: _buildProcessedColumn(
// // //                     context,
// // //                     titleText: "Avenant",
// // //                     statNumber: "20",
// // //                   ),
// // //                 )
// // //               ],
// // //             ),
// // //           )
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   /// Section Widget
// // //   Widget _buildFilterRow(BuildContext context) {
// // //     return Container(
// // //       padding: EdgeInsets.symmetric(horizontal: 6.h),
// // //       width: double.maxFinite,
// // //       child: Row(
// // //         children: [
// // //           Expanded(
// // //             child: Container(
// // //               height: 36.v,
// // //               width: 270.h,
// // //               decoration: BoxDecoration(
// // //                 color: appTheme.gray400,
// // //                 borderRadius: BorderRadius.circular(
// // //                   5.h,
// // //                 ),
// // //               ),
// // //             ),
// // //           ),
// // //           SizedBox(width: 4.h),
// // //           Container(
// // //             height: 36.v,
// // //             width: 60.h,
// // //             decoration: AppDecoration.fillGray400.copyWith(
// // //               borderRadius: BorderRadiusStyle.roundedBorder5,
// // //             ),
// // //             child: Stack(
// // //               alignment: Alignment.center,
// // //               children: [
// // //                 CustomImageView(
// // //                   imagePath: ImageConstant.imgFilter,
// // //                   height: 18.adaptSize,
// // //                   width: 18.adaptSize,
// // //                 )
// // //               ],
// // //             ),
// // //           )
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   /// Section Widget
// // //   Widget _buildDetailsList(BuildContext context) {
// // //     return SizedBox(
// // //       width: double.maxFinite,
// // //       child: ListView.separated(
// // //         physics: NeverScrollableScrollPhysics(),
// // //         shrinkWrap: true,
// // //         separatorBuilder: (context, index) {
// // //           return SizedBox(
// // //             height: 6.v,
// // //           );
// // //         },
// // //         itemCount: 5,
// // //         itemBuilder: (context, index) {
// // //           return DetailslistItemWidget(projet: 'r11', demandeur: 'youssef', destinataire: 'yassin', validation: 'valid', dateLivraison: '33', dateTraitement: '33',);
// // //         },
// // //       ),
// // //     );
// // //   }
// // //   Widget _buildProcessedColumn(
// // //     BuildContext context, {
// // //     required String titleText,
// // //     required String statNumber,
// // //   }) {
// // //     return Container(
// // //       decoration: AppDecoration.fillBluegray700.copyWith(
// // //         borderRadius: BorderRadiusStyle.roundedBorder10,
// // //       ),
// // //       child: Column(
// // //         mainAxisSize: MainAxisSize.min,
// // //         children: [
// // //           SizedBox(height: 10.v),
// // //           Text(
// // //             titleText,
// // //             style: CustomTextStyles.titleMedium16.copyWith(
// // //               color: appTheme.whiteA700,
// // //             ),
// // //           ),
// // //           SizedBox(height: 8.v),
// // //           Container(
// // //             width: double.maxFinite,
// // //             padding: EdgeInsets.symmetric(vertical: 6.v),
// // //             decoration: AppDecoration.fillGray400,
// // //             child: Column(
// // //               mainAxisAlignment: MainAxisAlignment.center,
// // //               children: [
// // //                 SizedBox(height: 2.v),
// // //                 Text(
// // //                   statNumber,
// // //                   style: theme.textTheme.titleLarge!.copyWith(
// // //                     color: appTheme.whiteA700,
// // //                   ),
// // //                 )
// // //               ],
// // //             ),
// // //           )
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }
// // /////////////////////////////////////////////////////////////////////////////////////////33
// // // import 'package:http/http.dart' as http;
// // // // ignore: must_be_immutable
// // // class AppelDoffreScreen extends StatelessWidget {
// // //   AppelDoffreScreen({Key? key}) : super(key: key);

// // //   void _openMenu(BuildContext context) {
// // //     Navigator.pushNamed(context, AppRoutes.menuScreen);
// // //   }

// // //   GlobalKey<NavigatorState> navigatorKey = GlobalKey();

// // //    Future<Map<String, dynamic>> fetchDetailsList() async {
// // //     final url = Uri.parse('http://localhost:3000/api/DetailsDemandeAchat?idDa=DA01');
// // //     try {
// // //       final response = await http.get(url);
// // //       if (response.statusCode == 200) {
// // //         final Map<String, dynamic> data = json.decode(response.body);
// // //         print('Réponse complète : $data');
// // //         return data;
// // //       } else {
// // //         print('Erreur HTTP : ${response.statusCode}');
// // //         return {};
// // //       }
// // //     } catch (e) {
// // //       print('Erreur lors de la récupération des données : $e');
// // //       return {};
// // //     }
// // //   }
// // //   // Future<Map<String, dynamic>> _fetchData() async {
// // //   //   final stats = await ApiService.fetchStatistics();
// // //   //   final detailsList = await ApiService.fetchDetailsList();
// // //   //   print(stats);
// // //   //   return {'stats': stats, 'detailsList': detailsList};
// // //   // }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return SafeArea(
// // //       child: Scaffold(
// // //         body: FutureBuilder<Map<String, dynamic>>(
// // //           future: fetchDetailsList(),
// // //           builder: (context, snapshot) {
// // //             if (snapshot.connectionState == ConnectionState.waiting) {
// // //               return Center(child: CircularProgressIndicator());
// // //             } else if (snapshot.hasError) {
// // //               return Center(child: Text('Error: ${snapshot.error}'));
// // //             } else if (snapshot.hasData) {
// // //               final stats = snapshot.data!['stats'];
// // //               final detailsList = snapshot.data!['detailsList'];
// // //               return SizedBox(
// // //                 width: 400.h,
// // //                 child: Column(
// // //                   children: [
// // //                     _buildMainStack(context, stats),
// // //                     Container(
// // //                       width: 400.h,
// // //                       padding: EdgeInsets.symmetric(horizontal: 7.h),
// // //                       child: Column(
// // //                         children: [
// // //                           SizedBox(height: 30.v),
// // //                           _buildFilterRow(context),
// // //                           SizedBox(height: 20.v),
// // //                           _buildDetailsList(context, detailsList)
// // //                         ],
// // //                       ),
// // //                     )
// // //                   ],
// // //                 ),
// // //               );
// // //             } else {
// // //               return Center(child: Text('Aucune donnée disponible'));
// // //             }
// // //           },
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildMainStack(BuildContext context, Map<String, dynamic> stats) {
// // //     return SizedBox(
// // //       height: 292.v,
// // //       width: double.maxFinite,
// // //       child: Stack(
// // //         alignment: Alignment.bottomCenter,
// // //         children: [
// // //           Align(
// // //             alignment: Alignment.topCenter,
// // //             child: Container(
// // //               width: double.maxFinite,
// // //               padding: EdgeInsets.symmetric(vertical: 20.v),
// // //               decoration: BoxDecoration(
// // //                 borderRadius: BorderRadiusStyle.customBorderBR100,
// // //                 image: DecorationImage(
// // //                   image: fs.Svg(ImageConstant.imgGroup62),
// // //                   fit: BoxFit.cover,
// // //                 ),
// // //               ),
// // //               child: Column(
// // //                 mainAxisSize: MainAxisSize.min,
// // //                 mainAxisAlignment: MainAxisAlignment.center,
// // //                 children: [
// // //                   CustomAppBar(
// // //                     leadingWidth: 58,
// // //                     leading: IconButton(
// // //                       icon: Icon(
// // //                         Icons.menu,
// // //                         color: Colors.white,
// // //                       ),
// // //                       onPressed: () => _openMenu(context),
// // //                       padding: EdgeInsets.only(left: 20),
// // //                     ),
// // //                     child: Container(
// // //                       width: 289, // Largeur du Container
// // //                       margin: EdgeInsets.only(top: 55, left: 76), // Marges
// // //                       padding: EdgeInsets.all(
// // //                           8.0), // Ajoutez du padding pour s'assurer que le texte n'est pas collé aux bords
// // //                       decoration: BoxDecoration(
// // //                         color: Colors
// // //                             .blueGrey, // Assurez-vous que la couleur de fond contraste avec la couleur du texte
// // //                         borderRadius: BorderRadius.circular(
// // //                             8), // Ajoutez des coins arrondis pour mieux visualiser le conteneur
// // //                       ),
// // //                       child: Center(
// // //                         child: Text(
// // //                           'Votre Titre',
// // //                           style: TextStyle(
// // //                             color: Colors.white, // Couleur du texte
// // //                             fontSize: 20, // Taille de la police
// // //                           ),
// // //                           overflow: TextOverflow
// // //                               .ellipsis, // Gère le débordement du texte
// // //                           textAlign: TextAlign
// // //                               .center, // Centrer le texte horizontalement
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                   SizedBox(height: 68.v),
// // //                   Container(
// // //                     width: double.maxFinite,
// // //                     margin: EdgeInsets.symmetric(horizontal: 16.h),
// // //                     child: Row(
// // //                       children: [
// // //                         Expanded(
// // //                           child: _buildProcessedColumn(
// // //                             context,
// // //                             titleText: "En cours",
// // //                             statNumber: stats["enCours"]?.toString() ?? '30',
// // //                           ),
// // //                         ),
// // //                         SizedBox(width: 6.h),
// // //                         Expanded(
// // //                           child: _buildProcessedColumn(
// // //                             context,
// // //                             titleText: "Traitées",
// // //                             statNumber: stats["traitees"]?.toString() ?? '25',
// // //                           ),
// // //                         ),
// // //                         SizedBox(width: 6.h),
// // //                         Expanded(
// // //                           child: _buildProcessedColumn(
// // //                             context,
// // //                             titleText: "Refusées",
// // //                             statNumber: stats["refusees"]?.toString() ?? '7',
// // //                           ),
// // //                         )
// // //                       ],
// // //                     ),
// // //                   )
// // //                 ],
// // //               ),
// // //             ),
// // //           ),
// // //           Padding(
// // //             padding: EdgeInsets.symmetric(horizontal: 12.h),
// // //             child: Row(
// // //               children: [
// // //                 Expanded(
// // //                   child: _buildProcessedColumn(
// // //                     context,
// // //                     titleText: "Appel d’offre",
// // //                     statNumber: stats["appelOffre"]?.toString() ?? '12',
// // //                   ),
// // //                 ),
// // //                 SizedBox(width: 6.h),
// // //                 Expanded(
// // //                   child: _buildProcessedColumn(
// // //                     context,
// // //                     titleText: "Demande de prix",
// // //                     statNumber: stats["demandePrix"]?.toString() ?? '11',
// // //                   ),
// // //                 ),
// // //                 SizedBox(width: 6.h),
// // //                 Expanded(
// // //                   child: _buildProcessedColumn(
// // //                     context,
// // //                     titleText: "Avenant",
// // //                     statNumber: stats["avenant"]?.toString() ?? '2',
// // //                   ),
// // //                 )
// // //               ],
// // //             ),
// // //           )
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildFilterRow(BuildContext context) {
// // //     return Container(
// // //       padding: EdgeInsets.symmetric(horizontal: 6.h),
// // //       width: double.maxFinite,
// // //       child: Row(
// // //         children: [
// // //           Expanded(
// // //             child: Container(
// // //               height: 36.v,
// // //               width: 270.h,
// // //               decoration: BoxDecoration(
// // //                 color: appTheme.gray400,
// // //                 borderRadius: BorderRadius.circular(5.h),
// // //               ),
// // //             ),
// // //           ),
// // //           SizedBox(width: 4.h),
// // //           Container(
// // //             height: 36.v,
// // //             width: 60.h,
// // //             decoration: AppDecoration.fillGray400.copyWith(
// // //               borderRadius: BorderRadiusStyle.roundedBorder5,
// // //             ),
// // //             child: Stack(
// // //               alignment: Alignment.center,
// // //               children: [
// // //                 CustomImageView(
// // //                   imagePath: ImageConstant.imgFilter,
// // //                   height: 18.adaptSize,
// // //                   width: 18.adaptSize,
// // //                 )
// // //               ],
// // //             ),
// // //           )
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildDetailsList(BuildContext context, List<dynamic> detailsList) {
// // //     return SizedBox(
// // //       width: double.maxFinite,
// // //       child: ListView.separated(
// // //         physics: NeverScrollableScrollPhysics(),
// // //         shrinkWrap: true,
// // //         separatorBuilder: (context, index) => SizedBox(height: 6.v),
// // //         itemCount: detailsList.length,
// // //         itemBuilder: (context, index) {
// // //           final item = detailsList[index];
// // //           return DetailslistItemWidget(
// // //             projet: item['projet'] ?? 'p33',
// // //             demandeur: item['demandeur'] ?? 'aymen',
// // //             destinataire: item['destinataire'] ?? 'yassin',
// // //             validation: item['validation'] ?? 'valid',
// // //             dateLivraison: item['dateLivraison'] ?? '13-05-2024',
// // //             dateTraitement: item['dateTraitement'] ?? '24-05-2024',
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildProcessedColumn(
// // //     BuildContext context, {
// // //     required String titleText,
// // //     required String statNumber,
// // //   }) {
// // //     return Container(
// // //       decoration: AppDecoration.fillBluegray700.copyWith(
// // //         borderRadius: BorderRadiusStyle.roundedBorder10,
// // //       ),
// // //       child: Column(
// // //         mainAxisSize: MainAxisSize.min,
// // //         children: [
// // //           SizedBox(height: 10.v),
// // //           Text(
// // //             titleText,
// // //             style: CustomTextStyles.titleMedium16.copyWith(
// // //               color: appTheme.whiteA700,
// // //             ),
// // //           ),
// // //           SizedBox(height: 8.v),
// // //           Container(
// // //             width: double.maxFinite,
// // //             padding: EdgeInsets.symmetric(vertical: 6.v),
// // //             decoration: AppDecoration.fillGray400,
// // //             child: Column(
// // //               mainAxisAlignment: MainAxisAlignment.center,
// // //               children: [
// // //                 SizedBox(height: 2.v),
// // //                 Text(
// // //                   statNumber,
// // //                   style: theme.textTheme.titleLarge!.copyWith(
// // //                     color: appTheme.whiteA700,
// // //                   ),
// // //                 )
// // //               ],
// // //             ),
// // //           )
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }
// // // class AppelDoffreScreen extends StatelessWidget {
// // //   AppelDoffreScreen({Key? key}) : super(key: key);

// // //   void _openMenu(BuildContext context) {
// // //     Navigator.pushNamed(context, AppRoutes.menuScreen);
// // //   }

// // //   final ApiService apiService = ApiService('http://localhost:3000/api'); // Update base URL

// // //   Future<Map<String, dynamic>> _fetchData() async {
// // //     try {
// // //       final stats = await apiService.fetchStatistics();
// // //       final detailsList = await ApiService.fetchDetailsList();
// // //       return {'stats': stats, 'detailsList': detailsList};
// // //     } catch (e) {
// // //       print('Failed to load data: $e');
// // //       throw Exception('Failed to load data: $e');
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return SafeArea(
// // //       child: Scaffold(
// // //         body: FutureBuilder<Map<String, dynamic>>(
// // //           future: _fetchData(),
// // //           builder: (context, snapshot) {
// // //             if (snapshot.connectionState == ConnectionState.waiting) {
// // //               return Center(child: CircularProgressIndicator());
// // //             } else if (snapshot.hasError) {
// // //               return Center(child: Text('Error: ${snapshot.error}'));
// // //             } else if (snapshot.hasData) {
// // //               final stats = snapshot.data!['stats'];
// // //               final detailsList = snapshot.data!['detailsList'];
// // //               return SizedBox(
// // //                 width: 400, // Adjusted to appropriate width
// // //                 child: Column(
// // //                   children: [
// // //                     _buildMainStack(context, stats),
// // //                     Container(
// // //                       width: 400, // Adjusted to appropriate width
// // //                       padding: EdgeInsets.symmetric(horizontal: 7),
// // //                       child: Column(
// // //                         children: [
// // //                           SizedBox(height: 30),
// // //                           _buildFilterRow(context),
// // //                           SizedBox(height: 20),
// // //                           _buildDetailsList(context, detailsList)
// // //                         ],
// // //                       ),
// // //                     )
// // //                   ],
// // //                 ),
// // //               );
// // //             } else {
// // //               return Center(child: Text('No data available'));
// // //             }
// // //           },
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildMainStack(BuildContext context, Map<String, dynamic> stats) {
// // //     return SizedBox(
// // //       height: 292,
// // //       width: double.infinity,
// // //       child: Stack(
// // //         alignment: Alignment.bottomCenter,
// // //         children: [
// // //           Align(
// // //             alignment: Alignment.topCenter,
// // //             child: Container(
// // //               width: double.infinity,
// // //               padding: EdgeInsets.symmetric(vertical: 20),
// // //               decoration: BoxDecoration(
// // //                 borderRadius: BorderRadius.vertical(bottom: Radius.circular(100)),
// // //                 image: DecorationImage(
// // //                   image: AssetImage('assets/imgGroup62.png'), // Adjust path accordingly
// // //                   fit: BoxFit.cover,
// // //                 ),
// // //               ),
// // //               child: Column(
// // //                 mainAxisSize: MainAxisSize.min,
// // //                 mainAxisAlignment: MainAxisAlignment.center,
// // //                 children: [
// // //                   CustomAppBar(
// // //                     leadingWidth: 58,
// // //                     leading: IconButton(
// // //                       icon: Icon(
// // //                         Icons.menu,
// // //                         color: Colors.white,
// // //                       ),
// // //                       onPressed: () => _openMenu(context),
// // //                       padding: EdgeInsets.only(left: 20),
// // //                     ),
// // //                     child: Container(
// // //                       width: 289,
// // //                       margin: EdgeInsets.only(top: 55, left: 76),
// // //                       padding: EdgeInsets.all(8.0),
// // //                       decoration: BoxDecoration(
// // //                         color: Colors.blueGrey,
// // //                         borderRadius: BorderRadius.circular(8),
// // //                       ),
// // //                       child: Center(
// // //                         child: Text(
// // //                           'Votre Titre',
// // //                           style: TextStyle(
// // //                             color: Colors.white,
// // //                             fontSize: 20,
// // //                           ),
// // //                           overflow: TextOverflow.ellipsis,
// // //                           textAlign: TextAlign.center,
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                   SizedBox(height: 68),
// // //                   Container(
// // //                     width: double.infinity,
// // //                     margin: EdgeInsets.symmetric(horizontal: 16),
// // //                     child: Row(
// // //                       children: [
// // //                         Expanded(
// // //                           child: _buildProcessedColumn(
// // //                             context,
// // //                             titleText: "En cours",
// // //                             statNumber: stats["enCours"]?.toString() ?? '30',
// // //                           ),
// // //                         ),
// // //                         SizedBox(width: 6),
// // //                         Expanded(
// // //                           child: _buildProcessedColumn(
// // //                             context,
// // //                             titleText: "Traitées",
// // //                             statNumber: stats["traitees"]?.toString() ?? '25',
// // //                           ),
// // //                         ),
// // //                         SizedBox(width: 6),
// // //                         Expanded(
// // //                           child: _buildProcessedColumn(
// // //                             context,
// // //                             titleText: "Refusées",
// // //                             statNumber: stats["refusees"]?.toString() ?? '7',
// // //                           ),
// // //                         )
// // //                       ],
// // //                     ),
// // //                   )
// // //                 ],
// // //               ),
// // //             ),
// // //           ),
// // //           Padding(
// // //             padding: EdgeInsets.symmetric(horizontal: 12),
// // //             child: Row(
// // //               children: [
// // //                 Expanded(
// // //                   child: _buildProcessedColumn(
// // //                     context,
// // //                     titleText: "Appel d’offre",
// // //                     statNumber: stats["appelOffre"]?.toString() ?? '12',
// // //                   ),
// // //                 ),
// // //                 SizedBox(width: 6),
// // //                 Expanded(
// // //                   child: _buildProcessedColumn(
// // //                     context,
// // //                     titleText: "Demande de prix",
// // //                     statNumber: stats["demandePrix"]?.toString() ?? '11',
// // //                   ),
// // //                 ),
// // //                 SizedBox(width: 6),
// // //                 Expanded(
// // //                   child: _buildProcessedColumn(
// // //                     context,
// // //                     titleText: "Avenant",
// // //                     statNumber: stats["avenant"]?.toString() ?? '2',
// // //                   ),
// // //                 )
// // //               ],
// // //             ),
// // //           )
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildFilterRow(BuildContext context) {
// // //     return Container(
// // //       padding: EdgeInsets.symmetric(horizontal: 6),
// // //       width: double.infinity,
// // //       child: Row(
// // //         children: [
// // //           Expanded(
// // //             child: Container(
// // //               height: 36,
// // //               width: 270,
// // //               decoration: BoxDecoration(
// // //                 color: Colors.grey[400],
// // //                 borderRadius: BorderRadius.circular(5),
// // //               ),
// // //             ),
// // //           ),
// // //           SizedBox(width: 4),
// // //           Container(
// // //             height: 36,
// // //             width: 60,
// // //             decoration: BoxDecoration(
// // //               color: Colors.grey[400],
// // //               borderRadius: BorderRadius.circular(5),
// // //             ),
// // //             child: Center(
// // //               child: Icon(
// // //                 Icons.filter_list,
// // //                 size: 18,
// // //                 color: Colors.white,
// // //               ),
// // //             ),
// // //           )
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildDetailsList(BuildContext context, List<dynamic> detailsList) {
// // //     return SizedBox(
// // //       width: double.infinity,
// // //       child: ListView.separated(
// // //         physics: NeverScrollableScrollPhysics(),
// // //         shrinkWrap: true,
// // //         separatorBuilder: (context, index) => SizedBox(height: 6),
// // //         itemCount: detailsList.length,
// // //         itemBuilder: (context, index) {
// // //           final item = detailsList[index];
// // //           return DetailslistItemWidget(
// // //             projet: item['projet'] ?? 'p33',
// // //             demandeur: item['demandeur'] ?? 'aymen',
// // //             destinataire: item['destinataire'] ?? 'yassin',
// // //             validation: item['validation'] ?? 'valid',
// // //             dateLivraison: item['dateLivraison'] ?? '13-05-2024',
// // //             dateTraitement: item['dateTraitement'] ?? '24-05-2024',
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildProcessedColumn(
// // //     BuildContext context, {
// // //     required String titleText,
// // //     required String statNumber,
// // //   }) {
// // //     return Container(
// // //       decoration: BoxDecoration(
// // //         color: Colors.blueGrey[700],
// // //         borderRadius: BorderRadius.circular(10),
// // //       ),
// // //       child: Column(
// // //         mainAxisSize: MainAxisSize.min,
// // //         children: [
// // //           SizedBox(height: 10),
// // //           Text(
// // //             titleText,
// // //             style: TextStyle(
// // //               color: Colors.white,
// // //               fontSize: 16,
// // //             ),
// // //           ),
// // //           SizedBox(height: 8),
// // //           Container(
// // //             width: double.infinity,
// // //             padding: EdgeInsets.symmetric(vertical: 6),
// // //             decoration: BoxDecoration(
// // //               color: Colors.grey[400],
// // //             ),
// // //             child: Center(
// // //               child: Text(
// // //                 statNumber,
// // //                 style: TextStyle(
// // //                   color: Colors.white,
// // //                   fontSize: 24,
// // //                 ),
// // //               ),
// // //             ),
// // //           )
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }
// // // import 'package:http/http.dart' as http;
// // // final ApiService apiService = ApiService('http://localhost:3000/api');
// // // class AppelDoffreScreen extends StatelessWidget {
// // //   Future<List<dynamic>> fetchDetailsList() async {
// // //   final url = Uri.parse('http://localhost:3000/api/DetailsDemandeAchat?idDa=DA01');
// // //   try {
// // //     final response = await http.get(url);
// // //     print('Réponse Status Code: ${response.statusCode}');
// // //     print('Réponse Headers: ${response.headers}');
// // //     if (response.statusCode == 200) {
// // //       try {
// // //         final Map<String, dynamic> data = json.decode(response.body);
// // //         print('Réponse complète : $data');
// // //         if (data['data'] != null) {
// // //           return List<dynamic>.from(data['data']);
// // //         } else {
// // //           print('Aucune donnée trouvée dans la réponse.');
// // //           return [];
// // //         }
// // //       } catch (e) {
// // //         print('Erreur de décodage JSON : $e');
// // //         return [];
// // //       }
// // //     } else {
// // //       print('Erreur HTTP : ${response.statusCode}');
// // //       return [];
// // //     }
// // //   } catch (e) {
// // //     print('Erreur lors de la récupération des données : $e');
// // //     return [];
// // //   }
// // // }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('Details Grid'),
// // //       ),
// // //       body: FutureBuilder<List<dynamic>>(
// // //         future: fetchDetailsList(),
// // //         builder: (context, snapshot) {
// // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // //             return Center(child: CircularProgressIndicator());
// // //           } else if (snapshot.hasError) {
// // //             return Center(child: Text('Error: ${snapshot.error}'));
// // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // //             return Center(child: Text('No data found'));
// // //           } else {
// // //             final details = snapshot.data!;
// // //             return GridView.builder(
// // //               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// // //                 crossAxisCount: 2, // Change this based on your layout needs
// // //                 crossAxisSpacing: 10.0,
// // //                 mainAxisSpacing: 10.0,
// // //               ),
// // //               itemCount: details.length,
// // //               itemBuilder: (context, index) {
// // //                 final item = details[index];
// // //                 return Card(
// // //                   child: Center(
// // //                     child: Text(item.toString()), // Customize this based on your data structure
// // //                   ),
// // //                 );
// // //               },
// // //             );
// // //           }
// // //         },
// // //       ),
// // //     );
// // //   }
// // // }
// // //   Future<Map<String, dynamic>> fetchDetailsList() async {
// // //     final url = Uri.parse('http://localhost:3000/api/DetailsDemandeAchat?idDa=DA01');
// // //     try {
// // //       final response = await http.get(url);
// // //       if (response.statusCode == 200) {
// // //         final Map<String, dynamic> data = json.decode(response.body);
// // //         print('Réponse complète : $data');
// // //         return data;
// // //       } else {
// // //         print('Erreur HTTP : ${response.statusCode}');
// // //         return {};
// // //       }
// // //     } catch (e) {
// // //       print('Erreur lors de la récupération des données : $e');
// // //       return {};
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('Details Grid'),
// // //         backgroundColor: Color(0xFF293855), // Match the app bar color
// // //       ),
// // //       body: FutureBuilder<Map<String, dynamic>>(
// // //         future: fetchDetailsList(),
// // //         builder: (context, snapshot) {
// // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // //             return Center(child: CircularProgressIndicator());
// // //           } else if (snapshot.hasError) {
// // //             return Center(child: Text('Error: ${snapshot.error}'));
// // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // //             return Center(child: Text('No data found'));
// // //           } else {
// // //             final data = snapshot.data!;
// // //             final List<dynamic> articles = data['R_DemandeAchat_Article'] ?? [];
// // //             return Column(
// // //               children: [
// // //                 Container(
// // //                   padding: EdgeInsets.all(16.0),
// // //                   color: Color(0xFF293855), // Background color for the top section
// // //                   child: Column(
// // //                     children: [
// // //                       Row(
// // //                         mainAxisAlignment: MainAxisAlignment.spaceAround,
// // //                         children: [
// // //                           _buildStatusCard('En cours', '51'),
// // //                           _buildStatusCard('Traitée', '40'),
// // //                           _buildStatusCard('Refusée', '5'),
// // //                         ],
// // //                       ),
// // //                       SizedBox(height: 10),
// // //                       Row(
// // //                         mainAxisAlignment: MainAxisAlignment.spaceAround,
// // //                         children: [
// // //                           _buildStatusCard('Appel d\'offre', '6'),
// // //                           _buildStatusCard('Demande de prix', '14'),
// // //                           _buildStatusCard('Avenant', '20'),
// // //                         ],
// // //                       ),
// // //                       SizedBox(height: 20),
// // //                       ElevatedButton(
// // //                         onPressed: () {},
// // //                         style: ElevatedButton.styleFrom(
// // //                           backgroundColor: Color(0xFFCFAF97), // Match button color
// // //                         ),
// // //                         child: Text('Créer Une Demande D\'achat'),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ),
// // //                 Expanded(
// // //                   child: GridView.builder(
// // //                     padding: EdgeInsets.all(16.0),
// // //                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// // //                       crossAxisCount: 2, // Change this based on your layout needs
// // //                       crossAxisSpacing: 10.0,
// // //                       mainAxisSpacing: 10.0,
// // //                     ),
// // //                     itemCount: articles.length,
// // //                     itemBuilder: (context, index) {
// // //                       final item = articles[index];
// // //                       return Card(
// // //                         color: Colors.white,
// // //                         shape: RoundedRectangleBorder(
// // //                           borderRadius: BorderRadius.circular(10.0),
// // //                         ),
// // //                         child: Padding(
// // //                           padding: const EdgeInsets.all(8.0),
// // //                           child: Column(
// // //                             crossAxisAlignment: CrossAxisAlignment.start,
// // //                             children: [
// // //                               Text(
// // //                                 'Projet : ${item['project']}',
// // //                                 style: TextStyle(fontWeight: FontWeight.bold),
// // //                               ),
// // //                               Text('Demandeur : ${item['requester']}'),
// // //                               Text('Destinataire : ${item['recipient']}'),
// // //                               Text('Validation : ${item['validation']}'),
// // //                               Text('Date Livraison : ${item['deliveryDate']}'),
// // //                               Text('Date Traitement : ${item['processingDate']}'),
// // //                             ],
// // //                           ),
// // //                         ),
// // //                       );
// // //                     },
// // //                   ),
// // //                 ),
// // //               ],
// // //             );
// // //           }
// // //         },
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildStatusCard(String title, String count) {
// // //     return Card(
// // //       color: Color(0xFFCFAF97), // Background color for the cards
// // //       child: Padding(
// // //         padding: const EdgeInsets.all(8.0),
// // //         child: Column(
// // //           children: [
// // //             Text(
// // //               title,
// // //               style: TextStyle(color: Colors.white),
// // //             ),
// // //             Text(
// // //               count,
// // //               style: TextStyle(color: Colors.white, fontSize: 20.0),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // //  Future<Map<String, dynamic>> fetchDetailsList() async {
// // //     final url = Uri.parse('http://localhost:3000/api/DetailsDemandeAchat?idDa=DA01');
// // //     try {
// // //       final response = await http.get(url);
// // //       if (response.statusCode == 200) {
// // //         final Map<String, dynamic> data = json.decode(response.body);
// // //         print('Réponse complète : $data');
// // //         return data;
// // //       } else {
// // //         print('Erreur HTTP : ${response.statusCode}');
// // //         return {};
// // //       }
// // //     } catch (e) {
// // //       print('Erreur lors de la récupération des données : $e');
// // //       return {};
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('Details Grid'),
// // //         backgroundColor: Color(0xFF293855), // Match the app bar color
// // //       ),
// // //       body: FutureBuilder<Map<String, dynamic>>(
// // //         future: fetchDetailsList(),
// // //         builder: (context, snapshot) {
// // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // //             return Center(child: CircularProgressIndicator());
// // //           } else if (snapshot.hasError) {
// // //             return Center(child: Text('Error: ${snapshot.error}'));
// // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // //             return Center(child: Text('No data found'));
// // //           } else {
// // //             final data = snapshot.data!;
// // //             print('Data in snapshot: $data');
// // //             final List<dynamic> articles = data['R_DemandeAchat_Article'] ?? [];
// // //             print('Articles list: $articles');
// // //             return Column(
// // //               children: [
// // //                 Container(
// // //                   padding: EdgeInsets.all(16.0),
// // //                   color: Color(0xFF293855), // Background color for the top section
// // //                   child: Column(
// // //                     children: [
// // //                       Row(
// // //                         mainAxisAlignment: MainAxisAlignment.spaceAround,
// // //                         children: [
// // //                           _buildStatusCard('En cours', '51'),
// // //                           _buildStatusCard('Traitée', '40'),
// // //                           _buildStatusCard('Refusée', '5'),
// // //                         ],
// // //                       ),
// // //                       SizedBox(height: 10),
// // //                       Row(
// // //                         mainAxisAlignment: MainAxisAlignment.spaceAround,
// // //                         children: [
// // //                           _buildStatusCard('Appel d\'offre', '6'),
// // //                           _buildStatusCard('Demande de prix', '14'),
// // //                           _buildStatusCard('Avenant', '20'),
// // //                         ],
// // //                       ),
// // //                       SizedBox(height: 20),
// // //                       ElevatedButton(
// // //                         onPressed: () {},
// // //                         style: ElevatedButton.styleFrom(
// // //                           backgroundColor: Color(0xFFCFAF97), // Match button color
// // //                         ),
// // //                         child: Text('Créer Une Demande D\'achat'),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ),
// // //                 Expanded(
// // //                   child: GridView.builder(
// // //                     padding: EdgeInsets.all(16.0),
// // //                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// // //                       crossAxisCount: 2, // Change this based on your layout needs
// // //                       crossAxisSpacing: 10.0,
// // //                       mainAxisSpacing: 10.0,
// // //                     ),
// // //                     itemCount: articles.length,
// // //                     itemBuilder: (context, index) {
// // //                       final item = articles[index];
// // //                       print('Current item: $item');
// // //                       return Card(
// // //                         color: Color.fromRGBO(245, 245, 244, 1),
// // //                         shape: RoundedRectangleBorder(
// // //                           borderRadius: BorderRadius.circular(10.0),
// // //                         ),
// // //                         child: Padding(
// // //                           padding: const EdgeInsets.all(8.0),
// // //                           child: Column(
// // //                             crossAxisAlignment: CrossAxisAlignment.start,
// // //                             children: [
// // //                               Text('Projet : ${item['project']}',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
// // //                               Text('Demandeur : ${item['requester']}',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
// // //                               Text('Destinataire : ${item['recipient']}',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
// // //                               Text('Validation : ${item['validation']}',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
// // //                               Text('Date Livraison : ${item['deliveryDate']}',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
// // //                               Text('Date Traitement : ${item['processingDate']}',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
// // //                             ],
// // //                           ),
// // //                         ),
// // //                       );
// // //                     },
// // //                   ),
// // //                 ),
// // //               ],
// // //             );
// // //           }
// // //         },
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildStatusCard(String title, String count) {
// // //     return Card(
// // //       color: Color(0xFFCFAF97), // Background color for the cards
// // //       child: Padding(
// // //         padding: const EdgeInsets.all(8.0),
// // //         child: Column(
// // //           children: [
// // //             Text(
// // //               title,
// // //               style: TextStyle(color: Colors.white),
// // //             ),
// // //             Text(
// // //               count,
// // //               style: TextStyle(color: Colors.white, fontSize: 20.0),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // //   Future<Map<String, dynamic>> fetchDetailsList() async {
// // //     final url = Uri.parse('http://localhost:3000/api/DetailsDemandeAchat?idDa=DA01');
// // //     try {
// // //       final response = await http.get(url);
// // //       if (response.statusCode == 200) {
// // //         final Map<String, dynamic> data = json.decode(response.body);
// // //         print('Réponse complète : $data');
// // //         return data;
// // //       } else {
// // //         print('Erreur HTTP : ${response.statusCode}');
// // //         return {};
// // //       }
// // //     } catch (e) {
// // //       print('Erreur lors de la récupération des données : $e');
// // //       return {};
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('Details Grid'),
// // //         backgroundColor: Color(0xFF293855), // Match the app bar color
// // //       ),
// // //       body: FutureBuilder<Map<String, dynamic>>(
// // //         future: fetchDetailsList(),
// // //         builder: (context, snapshot) {
// // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // //             return Center(child: CircularProgressIndicator());
// // //           } else if (snapshot.hasError) {
// // //             return Center(child: Text('Error: ${snapshot.error}'));
// // //           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // //             return Center(child: Text('No data found'));
// // //           } else {
// // //             final data = snapshot.data!;
// // //             print('Data in snapshot: $data');
// // //             final List<dynamic> articles = data['R_DemandeAchat_Article'] ?? [];
// // //             print('Articles list: $articles');
// // //             return Column(
// // //               children: [
// // //                 Container(
// // //                   padding: EdgeInsets.all(16.0),
// // //                   color: Color(0xFF293855), // Background color for the top section
// // //                   child: Column(
// // //                     children: [
// // //                       Row(
// // //                         mainAxisAlignment: MainAxisAlignment.spaceAround,
// // //                         children: [
// // //                           _buildStatusCard('En cours', '51'),
// // //                           _buildStatusCard('Traitée', '40'),
// // //                           _buildStatusCard('Refusée', '5'),
// // //                         ],
// // //                       ),
// // //                       SizedBox(height: 10),
// // //                       Row(
// // //                         mainAxisAlignment: MainAxisAlignment.spaceAround,
// // //                         children: [
// // //                           _buildStatusCard('Appel d\'offre', '6'),
// // //                           _buildStatusCard('Demande de prix', '14'),
// // //                           _buildStatusCard('Avenant', '20'),
// // //                         ],
// // //                       ),
// // //                       SizedBox(height: 20),
// // //                       ElevatedButton(
// // //                         onPressed: () {},
// // //                         style: ElevatedButton.styleFrom(
// // //                           backgroundColor: Color(0xFFCFAF97), // Match button color
// // //                         ),
// // //                         child: Text('Créer Une Demande D\'achat'),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ),
// // //                 Expanded(
// // //                   child: GridView.builder(
// // //                     padding: EdgeInsets.all(16.0),
// // //                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// // //                       crossAxisCount: 2, // Change this based on your layout needs
// // //                       crossAxisSpacing: 10.0,
// // //                       mainAxisSpacing: 10.0,
// // //                       childAspectRatio: 0.75, // Adjust to make cells taller
// // //                     ),
// // //                     itemCount: articles.length,
// // //                     itemBuilder: (context, index) {
// // //                       final item = articles[index];
// // //                       print('Current item: $item');
// // //                       return Card(
// // //                         color: Colors.white,
// // //                         shape: RoundedRectangleBorder(
// // //                           borderRadius: BorderRadius.circular(10.0),
// // //                         ),
// // //                         child: Padding(
// // //                           padding: const EdgeInsets.all(8.0),
// // //                           child: Column(
// // //                             crossAxisAlignment: CrossAxisAlignment.start,
// // //                             children: [
// // //                               Flexible(
// // //                                 child: Text(
// // //                                   'Article : ${item['Article']}',
// // //                                   style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
// // //                                   overflow: TextOverflow.ellipsis,
// // //                                 ),
// // //                               ),
// // //                               SizedBox(height: 4),
// // //                               Flexible(
// // //                                 child: Text(
// // //                                   'Quantité : ${item['Qte']}',
// // //                                   overflow: TextOverflow.ellipsis,
// // //                                   style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
// // //                                 ),
// // //                               ),
// // //                               SizedBox(height: 4),
// // //                               Flexible(
// // //                                 child: Text(
// // //                                   'Date Prévue de Livraison : ${item['DatePrevLivraison']}',
// // //                                   overflow: TextOverflow.ellipsis,
// // //                                   style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
// // //                                 ),
// // //                               ),
// // //                               SizedBox(height: 4),
// // //                               Flexible(
// // //                                 child: Text(
// // //                                   'ID : ${item['_id']}',
// // //                                   overflow: TextOverflow.ellipsis,
// // //                                   style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
// // //                                 ),
// // //                               ),
// // //                             ],
// // //                           ),
// // //                         ),
// // //                       );
// // //                     },
// // //                   ),
// // //                 ),
// // //               ],
// // //             );
// // //           }
// // //         },
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildStatusCard(String title, String count) {
// // //     return Card(
// // //       color: Color(0xFFCFAF97), // Background color for the cards
// // //       child: Padding(
// // //         padding: const EdgeInsets.all(8.0),
// // //         child: Column(
// // //           children: [
// // //             Text(
// // //               title,
// // //               style: TextStyle(color: Colors.white),
// // //             ),
// // //             Text(
// // //               count,
// // //               style: TextStyle(color: Colors.white, fontSize: 20.0),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // class AppelDoffreScreen extends StatefulWidget {
// //   @override
// //   _AppelDoffreScreenState createState() => _AppelDoffreScreenState();
// // }

// // class _AppelDoffreScreenState extends State<AppelDoffreScreen> {
// //   String? _selectedFilter; // Variable pour stocker le filtre sélectionné
// //   List<Map<String, String>> demandes = [
// //     {
// //       "projet": "FA-111",
// //       "demandeur": "Alae Test",
// //       "destinataire": "Yassine",
// //       "validation": "Validé",
// //       "dateLivraison": "11/11/2023",
// //       "dateTraitement": "01/11/2023"
// //     },
// //     {
// //       "projet": "FA-121",
// //       "demandeur": "Alae Test",
// //       "destinataire": "Ahmed",
// //       "validation": "Non Validé",
// //       "dateLivraison": "21/11/2023",
// //       "dateTraitement": "01/11/2023"
// //     },
// //     {
// //       "projet": "FA-121",
// //       "demandeur": "Alae Test",
// //       "destinataire": "Ahmed",
// //       "validation": "Non Validé",
// //       "dateLivraison": "21/11/2023",
// //       "dateTraitement": "01/11/2023"
// //     }
// //   ]; // Liste des demandes

// //   @override
// //   Widget build(BuildContext context) {
// //     final screenWidth = MediaQuery.of(context).size.width;
// //     final screenHeight = MediaQuery.of(context).size.height;

// //     return SafeArea(
// //       child: Scaffold(
// //         body: Column(
// //           children: [
// //             _buildMainStack(context, screenWidth, screenHeight),
// //             Expanded(
// //               child: Padding(
// //                 padding: EdgeInsets.symmetric(horizontal: 7.h),
// //                 child: Column(
// //                   children: [
// //                     SizedBox(height: 30.v),
// //                     _buildFilterRow(context),
// //                     SizedBox(height: 20.v),
// //                     Expanded(child: _buildDemandList(context))
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //         // bottomNavigationBar: _buildBottomNavigation(context),
// //       ),
// //     );
// //   }

// //   Widget _buildMainStack(
// //       BuildContext context, double screenWidth, double screenHeight) {
// //     return SizedBox(
// //       height: 292.v,
// //       width: screenWidth,
// //       child: Stack(
// //         alignment: Alignment.bottomCenter,
// //         children: [
// //           Align(
// //             alignment: Alignment.topCenter,
// //             child: Container(
// //               width: screenWidth,
// //               padding: EdgeInsets.symmetric(vertical: 20.v),
// //               decoration: BoxDecoration(
// //                 borderRadius:
// //                     BorderRadius.circular(20), // Adjusted for better styling
// //                 image: DecorationImage(
// //                   image: AssetImage(
// //                       ImageConstant.imgGroup62), // Assuming local asset
// //                   fit: BoxFit.cover,
// //                 ),
// //               ),
// //               child: Column(
// //                 mainAxisSize: MainAxisSize.min,
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   CustomAppBar(
// //                     // leadingWidth: 38.h,
// //                     // leading: IconButton(
// //                     //   icon: Icon(
// //                     //     Icons.menu, // Icône de menu
// //                     //     color: Colors.white, // Couleur de l'icône
// //                     //   ),
// //                     //   onPressed: () => _openMenu(context),
// //                     //   padding: EdgeInsets.only(left: 20.h),
// //                     // ),
// //                     leadingWidth: 35.h,
// //                     leading: GestureDetector(
// //                         onTap: () => _openMenu(context),
// //                         child: Padding(
// //                         padding: EdgeInsets.only(left: 20.h),
// //                         child: Icon(
// //                         Icons.menu, // Icône de menu
// //                         color: Colors.white, // Couleur de l'icône
// //                         ),
// //                       ),
// //                     ),

// //                     title: Container(
// //                       width: 1000.h, // Largeur du texte
// //                       // margin: EdgeInsets.only(
// //                       //     bottom: 5.h,
// //                       //     right: 20.v), // Marges du texte
// //                       child: Center(
// //                         child: Text(
// //                           'Demande d’achat', // Titre de la barre d'applications
// //                           style: TextStyle(
// //                             color: Color.fromARGB(255, 255, 255, 255), // Couleur du titre
// //                             fontSize: 30.h, // Taille du texte du titre
// //                           ),
// //                           overflow: TextOverflow
// //                               .ellipsis, // Pour gérer les débordements si le texte est trop long
// //                         ),
// //                       ),
// //                     ),
// //                     bottom: PreferredSize(
// //                       preferredSize: Size.fromHeight(
// //                           1.h), // Hauteur de la ligne de séparation
// //                       child: Container(
// //                         color: Colors
// //                             .grey[800], // Couleur de la ligne de séparation
// //                         height: 1.h, // Hauteur de la ligne de séparation
// //                       ),
// //                     ),
// //                   ),
// //                   Padding(
// //                     padding: const EdgeInsets.symmetric(vertical: 20.0), // Espace de 10 pixels en haut et en bas du Divider
// //                     child: Divider(
// //                       color: Colors.white,
// //                       thickness: 2.0,
// //                       height: 1.0,
// //                       indent: 20.0,
// //                       endIndent: 20.0,
// //                     ),
// //                   ),
// //                   // Divider(color: Colors.white,thickness: 2.0,
// //                   // height: 1.h,
// //                   // indent: 20.h,
// //                   // endIndent: 20.h,
// //                   // ),
// //                   // SizedBox(height: 68.v),
// //                   SizedBox(height: 30.h),
// //                   Container(
// //                     width: screenWidth,
// //                     margin: EdgeInsets.symmetric(horizontal: 16.h),
// //                     child: Row(
// //                       children: [
// //                         Expanded(
// //                           child: _buildProcessedColumn(
// //                             context,
// //                             titleText: "En cours",
// //                             statNumber: "51",
// //                           ),
// //                         ),
// //                         SizedBox(width: 6.h),
// //                         Expanded(
// //                           child: _buildProcessedColumn(
// //                             context,
// //                             titleText: "Traitées",
// //                             statNumber: "40",
// //                           ),
// //                         ),
// //                         SizedBox(width: 6.h),
// //                         Expanded(
// //                           child: _buildProcessedColumn(
// //                             context,
// //                             titleText: "Refusées",
// //                             statNumber: "5",
// //                           ),
// //                         )
// //                       ],
// //                     ),
// //                   )
// //                 ],
// //               ),
// //             ),
// //           ),
// //           Padding(
// //             padding: EdgeInsets.symmetric(horizontal: 12.h),
// //             child: Row(
// //               children: [
// //                 Expanded(
// //                   child: _buildProcessedColumn(
// //                     context,
// //                     titleText: "Appel d’offre",
// //                     statNumber: "6",
// //                   ),
// //                 ),
// //                 SizedBox(width: 6.h),
// //                 Expanded(
// //                   child: _buildProcessedColumn(
// //                     context,
// //                     titleText: "Demande de prix",
// //                     statNumber: "14",
// //                   ),
// //                 ),
// //                 SizedBox(width: 6.h),
// //                 Expanded(
// //                   child: _buildProcessedColumn(
// //                     context,
// //                     titleText: "Avenant",
// //                     statNumber: "20",
// //                   ),
// //                 )
// //               ],
// //             ),
// //           )
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildFilterRow(BuildContext context) {
// //     return Container(
// //       padding: EdgeInsets.symmetric(horizontal: 6.h),
// //       width: double.infinity,
// //       child: Row(
// //         children: [
// //           Expanded(
// //             child: Container(
// //               height: 36.v,
// //               decoration: BoxDecoration(
// //                 color: appTheme.gray400,
// //                 borderRadius: BorderRadius.circular(5.h),
// //               ),
// //               child: GestureDetector(
// //                 onTap: () => _showFilterOptions(context),
// //                 child: Center(
// //                   child: Text(
// //                     _selectedFilter ?? "Sélectionner un filtre",
// //                     style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //           SizedBox(width: 4.h),
// //           Container(
// //             height: 36.v,
// //             width: 60.h,
// //             decoration: AppDecoration.fillGray400.copyWith(
// //               borderRadius: BorderRadius.circular(5.h),
// //             ),
// //             child: Center(
// //               child: CustomImageView(
// //                 onTap:() => _createDemande(context),
// //                 imagePath: ImageConstant.imgFilter,
// //                 height: 18.h,
// //                 width: 18.h,
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// //   // Widget _buildFilterRow(BuildContext context) {
// //   //   return Container(
// //   //     padding: EdgeInsets.symmetric(horizontal: 6.h),
// //   //     width: double.infinity,
// //   //     child: Row(
// //   //       children: [
// //   //         Expanded(
// //   //           child: Container(
// //   //             height: 36.h,
// //   //             decoration: BoxDecoration(
// //   //               color: Colors.grey[400],
// //   //               borderRadius: BorderRadius.circular(5.h),
// //   //             ),
// //   //             child: GestureDetector(
// //   //               onTap: () => _showFilterOptions(context),
// //   //               child: Center(
// //   //                 child: Text(
// //   //                   _selectedFilter ?? "Sélectionner un filtre",
// //   //                   style: TextStyle(color: Colors.black54),
// //   //                 ),
// //   //               ),
// //   //             ),
// //   //           ),
// //   //         ),
// //   //         SizedBox(width: 4.h),
// //   //         Container(
// //   //           height: 36.h,
// //   //           width: 60.h,
// //   //           decoration: BoxDecoration(
// //   //             color: Colors.grey[400],
// //   //             borderRadius: BorderRadius.circular(5.h),
// //   //           ),
// //   //           child: Center(
// //   //             child: Icon(
// //   //               Icons.filter_alt, // Utilisation d'une icône de filtre
// //   //               size: 18.h,
// //   //               color: Colors.black54,
// //   //             ),
// //   //           ),
// //   //         ),
// //   //       ],
// //   //     ),
// //   //   );
// //   // }
// //   Widget _buildDemandList(BuildContext context) {
// //   List<Map<String, String>> filteredDemandes = _selectedFilter != null
// //       ? demandes
// //           .where((demande) => demande["validation"] == _selectedFilter)
// //           .toList()
// //       : demandes;

// //   return ListView.builder(
// //     itemCount: filteredDemandes.length,
// //     itemBuilder: (context, index) {
// //       return _buildDemandCard(context, filteredDemandes[index]);
// //     },
// //   );
// // }

// // Widget _buildDemandCard(BuildContext context, Map<String, String> demande) {
// //   return GestureDetector(
// //     onTap: () {
// //       // Utiliser le context de l'application pour afficher le dialogue
// //       showDialog(
// //         context: context,
// //         barrierDismissible: true, // Permet de fermer le dialogue en cliquant en dehors
// //         builder: (BuildContext dialogContext) {
// //           return AlertDialog(
// //             title: Text("Détails de la demande"),
// //             content: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               mainAxisSize: MainAxisSize.min,
// //               children: [
// //                 Text(
// //                   "Projet : ${demande["projet"]}",
// //                   style: TextStyle(color: Colors.black),
// //                 ),
// //                 Text(
// //                   "Demandeur : ${demande["demandeur"]}",
// //                   style: TextStyle(color: Colors.black),
// //                 ),
// //                 Text(
// //                   "Destinataire : ${demande["destinataire"]}",
// //                   style: TextStyle(color: Colors.black),
// //                 ),
// //                 Text(
// //                   "Validation : ${demande["validation"]}",
// //                   style: TextStyle(color: Colors.black),
// //                 ),
// //                 Text(
// //                   "Date Livraison : ${demande["dateLivraison"]}",
// //                   style: TextStyle(color: Colors.black),
// //                 ),
// //                 Text(
// //                   "Date Traitement : ${demande["dateTraitement"]}",
// //                   style: TextStyle(color: Colors.black),
// //                 ),
// //               ],
// //             ),
// //           );
// //         },
// //       );
// //     },
// //     child: Card(
// //       margin: EdgeInsets.symmetric(vertical: 8.0),
// //       child: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.stretch,
// //           children: [
// //             Text(
// //               "Projet : ${demande["projet"]}",
// //               style: TextStyle(
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.black,
// //               ),
// //             ),
// //             SizedBox(height: 4.0),
// //             Text(
// //               "Demandeur : ${demande["demandeur"]}",
// //               style: TextStyle(
// //                 color: Colors.black,
// //               ),
// //             ),
// //             Text(
// //               "Destinataire : ${demande["destinataire"]}",
// //               style: TextStyle(
// //                 color: Colors.black,
// //               ),
// //             ),
// //             SizedBox(height: 4.0),
// //             Text(
// //               "Validation : ${demande["validation"]}",
// //               style: TextStyle(
// //                 color: Colors.black,
// //               ),
// //             ),
// //             Text(
// //               "Date Livraison : ${demande["dateLivraison"]}",
// //               style: TextStyle(
// //                 color: Colors.black,
// //               ),
// //             ),
// //             Text(
// //               "Date Traitement : ${demande["dateTraitement"]}",
// //               style: TextStyle(
// //                 color: Colors.black,
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     ),
// //   );
// // }

// // // Widget _buildDemandList(BuildContext context) {
// // //   List<Map<String, String>> filteredDemandes = _selectedFilter != null
// // //       ? demandes
// // //           .where((demande) => demande["validation"] == _selectedFilter)
// // //           .toList()
// // //       : demandes;

// // //   return ListView.builder(
// // //     itemCount: filteredDemandes.length,
// // //     itemBuilder: (context, index) {
// // //       return _buildDemandCard(context, filteredDemandes[index]);
// // //     },
// // //   );
// // // }

// // // Widget _buildDemandCard(BuildContext context, Map<String, String> demande) {
// // //   return MouseRegion(
// // //     onEnter: (_) {
// // //       // Utiliser le context de l'application pour afficher le dialogue
// // //       showDialog(
// // //         context: context,
// // //         builder: (BuildContext dialogContext) {
// // //           return AlertDialog(
// // //             title: Text("Détails de la demande"),
// // //             content: Column(
// // //               crossAxisAlignment: CrossAxisAlignment.start,
// // //               mainAxisSize: MainAxisSize.min,
// // //               children: [
// // //                 Text(
// // //                   "Projet : ${demande["projet"]}",
// // //                   style: TextStyle(color: Colors.black),
// // //                 ),
// // //                 Text(
// // //                   "Demandeur : ${demande["demandeur"]}",
// // //                   style: TextStyle(color: Colors.black),
// // //                 ),
// // //                 Text(
// // //                   "Destinataire : ${demande["destinataire"]}",
// // //                   style: TextStyle(color: Colors.black),
// // //                 ),
// // //                 Text(
// // //                   "Validation : ${demande["validation"]}",
// // //                   style: TextStyle(color: Colors.black),
// // //                 ),
// // //                 Text(
// // //                   "Date Livraison : ${demande["dateLivraison"]}",
// // //                   style: TextStyle(color: Colors.black),
// // //                 ),
// // //                 Text(
// // //                   "Date Traitement : ${demande["dateTraitement"]}",
// // //                   style: TextStyle(color: Colors.black),
// // //                 ),
// // //               ],
// // //             ),
// // //             actions: [
// // //               TextButton(
// // //                 onPressed: () {
// // //                   Navigator.of(dialogContext).pop(); // Ferme le dialogue
// // //                 },
// // //                 child: Text("Fermer"),
// // //               ),
// // //             ],
// // //           );
// // //         },
// // //       );
// // //     },
// // //     child: Card(
// // //       margin: EdgeInsets.symmetric(vertical: 8.0),
// // //       child: Padding(
// // //         padding: const EdgeInsets.all(16.0),
// // //         child: Column(
// // //           crossAxisAlignment: CrossAxisAlignment.stretch,
// // //           children: [
// // //             Text(
// // //               "Projet : ${demande["projet"]}",
// // //               style: TextStyle(
// // //                 fontWeight: FontWeight.bold,
// // //                 color: Colors.black,
// // //               ),
// // //             ),
// // //             SizedBox(height: 4.0),
// // //             Text(
// // //               "Demandeur : ${demande["demandeur"]}",
// // //               style: TextStyle(
// // //                 color: Colors.black,
// // //               ),
// // //             ),
// // //             Text(
// // //               "Destinataire : ${demande["destinataire"]}",
// // //               style: TextStyle(
// // //                 color: Colors.black,
// // //               ),
// // //             ),
// // //             SizedBox(height: 4.0),
// // //             Text(
// // //               "Validation : ${demande["validation"]}",
// // //               style: TextStyle(
// // //                 color: Colors.black,
// // //               ),
// // //             ),
// // //             Text(
// // //               "Date Livraison : ${demande["dateLivraison"]}",
// // //               style: TextStyle(
// // //                 color: Colors.black,
// // //               ),
// // //             ),
// // //             Text(
// // //               "Date Traitement : ${demande["dateTraitement"]}",
// // //               style: TextStyle(
// // //                 color: Colors.black,
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     ),
// // //   );
// // // }

// //   // Widget _buildDemandList(BuildContext context) {
// //   //   List<Map<String, String>> filteredDemandes = _selectedFilter != null
// //   //       ? demandes
// //   //           .where((demande) => demande["validation"] == _selectedFilter)
// //   //           .toList()
// //   //       : demandes;

// //   //   return ListView.builder(
// //   //     itemCount: filteredDemandes.length,
// //   //     itemBuilder: (context, index) {
// //   //       return _buildDemandCard(context, filteredDemandes[index]);
// //   //     },
// //   //   );
// //   // }

// //   // Widget _buildDemandCard(Map<String, String> demande) {
// //   //   return Card(
// //   //     margin: EdgeInsets.symmetric(vertical: 8.0),
// //   //     child: Padding(
// //   //       padding: const EdgeInsets.all(16.0),
// //   //       child: Column(
// //   //         crossAxisAlignment: CrossAxisAlignment.stretch,
// //   //         children: [
// //   //           Text(
// //   //             "Projet : ${demande["projet"]}",
// //   //             style: TextStyle(
// //   //               fontWeight: FontWeight.bold,
// //   //               color: Colors.black,
// //   //             ),
// //   //           ),
// //   //           SizedBox(height: 4.0),
// //   //           Text(
// //   //             "Demandeur : ${demande["demandeur"]}",
// //   //             style: TextStyle(
// //   //               color: Colors.black,
// //   //             ),
// //   //           ),
// //   //           Text(
// //   //             "Destinataire : ${demande["destinataire"]}",
// //   //             style: TextStyle(
// //   //               color: Colors.black,
// //   //             ),
// //   //           ),
// //   //           SizedBox(height: 4.0),
// //   //           Text(
// //   //             "Validation : ${demande["validation"]}",
// //   //             style: TextStyle(
// //   //               color: Colors.black,
// //   //             ),
// //   //           ),
// //   //           Text(
// //   //             "Date Livraison : ${demande["dateLivraison"]}",
// //   //             style: TextStyle(
// //   //               color: Colors.black,
// //   //             ),
// //   //           ),
// //   //           Text(
// //   //             "Date Traitement : ${demande["dateTraitement"]}",
// //   //             style: TextStyle(
// //   //               color: Colors.black,
// //   //             ),
// //   //           ),
// //   //         ],
// //   //       ),
// //   //     ),
// //   //   );
// //   // }
// // //   Widget _buildDemandCard(BuildContext context, Map<String, String> demande) {
// // //     return MouseRegion(
// // //         onEnter: (event) {
// // //           // Utiliser le BuildContext du parent ici
// // //           showDialog(
// // //             context: context,
// // //             builder: (BuildContext context) {
// // //               return AlertDialog(
// // //                 title: Text("Détails de la demande"),
// // //                 content: Column(
// // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                   mainAxisSize: MainAxisSize.min,
// // //                   children: [
// // //                     Text("Projet : ${demande["projet"]}"),
// // //                     Text("Demandeur : ${demande["demandeur"]}"),
// // //                     Text("Destinataire : ${demande["destinataire"]}"),
// // //                     Text("Validation : ${demande["validation"]}"),
// // //                     Text("Date Livraison : ${demande["dateLivraison"]}"),
// // //                     Text("Date Traitement : ${demande["dateTraitement"]}"),
// // //                   ],
// // //                 ),
// // //                 actions: [
// // //                   TextButton(
// // //                     onPressed: () {
// // //                       Navigator.of(context).pop();
// // //                     },
// // //                     child: Text("Fermer"),
// // //                   ),
// // //                 ],
// // //               );
// // //             },
// // //           );
// // //         },
// // // //     return MouseRegion(
// // // //       cursor: SystemMouseCursors.click,
// // // //       child: Tooltip(
// // // //         message: '''
// // // // Projet : ${demande["projet"]}
// // // // Demandeur : ${demande["demandeur"]}
// // // // Destinataire : ${demande["destinataire"]}
// // // // Validation : ${demande["validation"]}
// // // // Date Livraison : ${demande["dateLivraison"]}
// // // // Date Traitement : ${demande["dateTraitement"]}
// // // // ''',
// // // //         textStyle: TextStyle(
// // // //           color: Colors.white,
// // // //         ),
// // // //         decoration: BoxDecoration(
// // // //           color: Colors.black,
// // // //           borderRadius: BorderRadius.circular(10),
// // // //         ),
// // //         child: Card(
// // //             margin: EdgeInsets.symmetric(vertical: 8.0),
// // //             child: Padding(
// // //               padding: const EdgeInsets.all(16.0),
// // //               child: Column(
// // //                 crossAxisAlignment: CrossAxisAlignment.stretch,
// // //                 children: [
// // //                   Text(
// // //                     "Projet : ${demande["projet"]}",
// // //                     style: TextStyle(
// // //                       fontWeight: FontWeight.bold,
// // //                       color: Colors.black,
// // //                     ),
// // //                   ),
// // //                   SizedBox(height: 4.0),
// // //                   Text(
// // //                     "Demandeur : ${demande["demandeur"]}",
// // //                     style: TextStyle(
// // //                       color: Colors.black,
// // //                     ),
// // //                   ),
// // //                   Text(
// // //                     "Destinataire : ${demande["destinataire"]}",
// // //                     style: TextStyle(
// // //                       color: Colors.black,
// // //                     ),
// // //                   ),
// // //                   SizedBox(height: 4.0),
// // //                   Text(
// // //                     "Validation : ${demande["validation"]}",
// // //                     style: TextStyle(
// // //                       color: Colors.black,
// // //                     ),
// // //                   ),
// // //                   Text(
// // //                     "Date Livraison : ${demande["dateLivraison"]}",
// // //                     style: TextStyle(
// // //                       color: Colors.black,
// // //                     ),
// // //                   ),
// // //                   Text(
// // //                     "Date Traitement : ${demande["dateTraitement"]}",
// // //                     style: TextStyle(
// // //                       color: Colors.black,
// // //                     ),
// // //                   ),
// // //                 ],
// // //               ),
// // //             )));
// // //   }
// //   //  Widget _buildDemandCard(BuildContext context, Map<String, String> demande) {
// //   //   return MouseRegion(
// //   //     onEnter: (event) {
// //   //       showDialog(
// //   //         context: context, // Utiliser le contexte de l'application
// //   //         builder: (BuildContext context) {
// //   //           return AlertDialog(
// //   //             title: Text("Détails de la demande"),
// //   //             content: Column(
// //   //               crossAxisAlignment: CrossAxisAlignment.start,
// //   //               mainAxisSize: MainAxisSize.min,
// //   //               children: [
// //   //                 Text(
// //   //                   "Projet : ${demande["projet"]}",
// //   //                   style: TextStyle(color: Colors.black),
// //   //                 ),
// //   //                 Text(
// //   //                   "Demandeur : ${demande["demandeur"]}",
// //   //                   style: TextStyle(color: Colors.black),
// //   //                 ),
// //   //                 Text(
// //   //                   "Destinataire : ${demande["destinataire"]}",
// //   //                   style: TextStyle(color: Colors.black),
// //   //                 ),
// //   //                 Text(
// //   //                   "Validation : ${demande["validation"]}",
// //   //                   style: TextStyle(color: Colors.black),
// //   //                 ),
// //   //                 Text(
// //   //                   "Date Livraison : ${demande["dateLivraison"]}",
// //   //                   style: TextStyle(color: Colors.black),
// //   //                 ),
// //   //                 Text(
// //   //                   "Date Traitement : ${demande["dateTraitement"]}",
// //   //                   style: TextStyle(color: Colors.black),
// //   //                 ),
// //   //               ],
// //   //             ),
// //   //             actions: [
// //   //               TextButton(
// //   //                 onPressed: () {
// //   //                    Navigator.of(context).pop();// Ferme le dialogue
// //   //                 },
// //   //                 child: Text("Fermer"),
// //   //               ),
// //   //             ],
// //   //           );
// //   //         },
// //   //       );
// //   //     },
// //   //     child: Card(
// //   //       margin: EdgeInsets.symmetric(vertical: 8.0),
// //   //       child: Padding(
// //   //         padding: const EdgeInsets.all(16.0),
// //   //         child: Column(
// //   //           crossAxisAlignment: CrossAxisAlignment.stretch,
// //   //           children: [
// //   //             Text(
// //   //               "Projet : ${demande["projet"]}",
// //   //               style: TextStyle(
// //   //                 fontWeight: FontWeight.bold,
// //   //                 color: Colors.black,
// //   //               ),
// //   //             ),
// //   //             SizedBox(height: 4.0),
// //   //             Text(
// //   //               "Demandeur : ${demande["demandeur"]}",
// //   //               style: TextStyle(
// //   //                 color: Colors.black,
// //   //               ),
// //   //             ),
// //   //             Text(
// //   //               "Destinataire : ${demande["destinataire"]}",
// //   //               style: TextStyle(
// //   //                 color: Colors.black,
// //   //               ),
// //   //             ),
// //   //             SizedBox(height: 4.0),
// //   //             Text(
// //   //               "Validation : ${demande["validation"]}",
// //   //               style: TextStyle(
// //   //                 color: Colors.black,
// //   //               ),
// //   //             ),
// //   //             Text(
// //   //               "Date Livraison : ${demande["dateLivraison"]}",
// //   //               style: TextStyle(
// //   //                 color: Colors.black,
// //   //               ),
// //   //             ),
// //   //             Text(
// //   //               "Date Traitement : ${demande["dateTraitement"]}",
// //   //               style: TextStyle(
// //   //                 color: Colors.black,
// //   //               ),
// //   //             ),
// //   //           ],
// //   //         ),
// //   //       ),
// //   //     ),
// //   //   );
// //   // }

// // // Widget _buildDemandCard(Map<String, String> demande) {
// // //   return Container(
// // //     padding: EdgeInsets.symmetric(horizontal: 12.0),
// // //     decoration: BoxDecoration(
// // //       color: Colors.white, // Couleur de fond du conteneur
// // //       borderRadius: BorderRadius.circular(10.0),
// // //       boxShadow: [ // Ombre pour un effet visuel
// // //         BoxShadow(
// // //           color: Colors.grey.withOpacity(0.2),
// // //           spreadRadius: 2,
// // //           blurRadius: 5,
// // //           offset: Offset(0, 3), // Décalage de l'ombre
// // //         ),
// // //       ],
// // //     ),
// // //     child: Row(
// // //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //       crossAxisAlignment: CrossAxisAlignment.start, // Alignement en haut
// // //       children: [
// // //         Expanded(
// // //           flex: 1,
// // //           child: RichText(
// // //             text: TextSpan(
// // //               children: [
// // //                 TextSpan(
// // //                   text: "Projet: ",
// // //                   style: TextStyle(
// // //                     fontWeight: FontWeight.bold,
// // //                     color: Colors.black,
// // //                   ),
// // //                 ),
// // //                 TextSpan(
// // //                   text: "${demande["projet"]}\n",
// // //                   style: TextStyle(
// // //                     color: Colors.black,
// // //                   ),
// // //                 ),
// // //                 TextSpan(
// // //                   text: "Demandeur: ",
// // //                   style: TextStyle(
// // //                     fontWeight: FontWeight.bold,
// // //                     color: Colors.black,
// // //                   ),
// // //                 ),
// // //                 TextSpan(
// // //                   text: "${demande["demandeur"]}\n",
// // //                   style: TextStyle(
// // //                     color: Colors.black,
// // //                   ),
// // //                 ),
// // //                 TextSpan(
// // //                   text: "Destinataire: ",
// // //                   style: TextStyle(
// // //                     fontWeight: FontWeight.bold,
// // //                     color: Colors.black,
// // //                   ),
// // //                 ),
// // //                 TextSpan(
// // //                   text: "${demande["destinataire"]}",
// // //                   style: TextStyle(
// // //                     color: Colors.black,
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //             textAlign: TextAlign.left,
// // //           ),
// // //         ),
// // //         SizedBox(
// // //           width: 190.0, // Ajustez la largeur selon vos besoins
// // //           child: RichText(
// // //             text: TextSpan(
// // //               children: [
// // //                 TextSpan(
// // //                   text: "Validation: ",
// // //                   style: TextStyle(
// // //                     fontWeight: FontWeight.bold,
// // //                     color: Colors.black,
// // //                   ),
// // //                 ),
// // //                 TextSpan(
// // //                   text: "${demande["validation"]}\n",
// // //                   style: TextStyle(
// // //                     color: Colors.black,
// // //                   ),
// // //                 ),
// // //                 TextSpan(
// // //                   text: "Date Livraison: ",
// // //                   style: TextStyle(
// // //                     fontWeight: FontWeight.bold,
// // //                     color: Colors.black,
// // //                   ),
// // //                 ),
// // //                 TextSpan(
// // //                   text: "${demande["dateLivraison"]}\n",
// // //                   style: TextStyle(
// // //                     color: Colors.black,
// // //                   ),
// // //                 ),
// // //                 TextSpan(
// // //                   text: "Date Traitement: ",
// // //                   style: TextStyle(
// // //                     fontWeight: FontWeight.bold,
// // //                     color: Colors.black,
// // //                   ),
// // //                 ),
// // //                 TextSpan(
// // //                   text: "${demande["dateTraitement"]}",
// // //                   style: TextStyle(
// // //                     color: Colors.black,
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //             textAlign: TextAlign.left,
// // //           ),
// // //         ),
// // //       ],
// // //     ),
// // //   );
// // // }

// //   void _showFilterOptions(BuildContext context) {
// //     showModalBottomSheet(
// //       context: context,
// //       builder: (context) {
// //         return Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: Column(
// //             mainAxisSize: MainAxisSize.min,
// // // //             ListTile(
// // // //               leading: Icon(Icons.all_inclusive, color: Colors.blue),
// // // //               title: Text("Tout"),
// // // //               onTap: () {
// // // //                 setState(() {
// // // //                   _selectedFilter = null;
// // // //                 });
// // // //                 Navigator.pop(context);
// // // //               },
// // // //             ),
// // // //             ListTile(
// // // //               leading: Icon(Icons.check_circle, color: Colors.green),
// // // //               title: Text("Validé"),
// // // //               onTap: () {
// // // //                 setState(() {
// // // //                   _selectedFilter = "Validé";
// // // //                 });
// // // //                 Navigator.pop(context);
// // // //               },
// // // //             ),
// // // //             ListTile(
// // // //               leading: Icon(Icons.cancel, color: Colors.red),
// // // //               title: Text("Non Validé"),
// // // //               onTap: () {
// // // //                 setState(() {
// // // //                   _selectedFilter = "Non Validé";
// // // //                 });
// // // //                 Navigator.pop(context);
// // // //               },
// // // //             ),
// // // //             // Ajoutez d'autres options de filtre ici
// // // //           ],
// // // //         ),
// // // //       );
// // // //     },
// // // //   );
// //             children: [
// //               ListTile(
// //                 leading: Icon(Icons.all_inclusive, color: Colors.blue),
// //                 title: Text("Tout"),
// //                 onTap: () {
// //                   setState(() {
// //                     _selectedFilter = null;
// //                   });
// //                   Navigator.pop(context);
// //                 },
// //               ),
// //               ListTile(
// //                 leading: Icon(Icons.check_circle, color: Colors.green),
// //                 title: Text("Validé"),
// //                 onTap: () {
// //                   setState(() {
// //                     _selectedFilter = "Validé";
// //                   });
// //                   Navigator.pop(context);
// //                 },
// //               ),
// //               ListTile(
// //                 leading: Icon(Icons.cancel, color: Colors.red),
// //                 title: Text("Non Validé"),
// //                 onTap: () {
// //                   setState(() {
// //                     _selectedFilter = "Non Validé";
// //                   });
// //                   Navigator.pop(context);
// //                 },
// //               ),
// //               // Ajoutez d'autres options de filtre ici
// //             ],
// //           ),
// //         );
// //       },
// //     );
// //   }

// //   Widget _buildProcessedColumn(
// //     BuildContext context, {
// //     required String titleText,
// //     required String statNumber,
// //   }) {
// //     return Container(
// //       decoration: AppDecoration.fillBluegray700.copyWith(
// //         borderRadius: BorderRadius.circular(10),
// //       ),
// //       child: Column(
// //         mainAxisSize: MainAxisSize.min,
// //         children: [
// //           SizedBox(height: 10.v),
// //           Text(
// //             titleText,
// //             style: CustomTextStyles.titleMedium16.copyWith(
// //               color: appTheme.whiteA700,
// //             ),
// //           ),
// //           SizedBox(height: 8.v),
// //           Container(
// //             width: double.infinity,
// //             padding: EdgeInsets.symmetric(vertical: 6.v),
// //             decoration: AppDecoration.fillGray400,
// //             child: Center(
// //               child: Text(
// //                 statNumber,
// //                 style: theme.textTheme.titleLarge!.copyWith(
// //                   color: appTheme.whiteA700,
// //                 ),
// //               ),
// //             ),
// //           )
// //         ],
// //       ),
// //     );
// //   }

// //   void _openMenu(BuildContext context) {
// //     Navigator.pushNamed(context, AppRoutes.menuScreen);
// //   }     
// //   void _createDemande(BuildContext context) {
// //     print("Navigating to create demand screen");
// //     Navigator.pushNamed(context, AppRoutes.createDemandeScreen);
// //   }
// // }

// // // import 'package:flutter/material.dart';
// // // import 'package:gecimmoa/api_service.dart'; // Assurez-vous d'avoir un fichier api_service.dart

// // // class AppelDoffreScreen extends StatefulWidget {
// // //   @override
// // //   _AppelDoffreScreenState createState() => _AppelDoffreScreenState();
// // // }

// // // class _AppelDoffreScreenState extends State<AppelDoffreScreen> {
// // //   final ApiService apiService = ApiService('http://localhost:3000/api/demandes');
// // //   late Future<List<dynamic>> futureDemandes;

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     futureDemandes = apiService.getDemandes();
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return SafeArea(
// // //       child: Scaffold(
// // //         appBar: AppBar(
// // //           title: Text('Demandes'),
// // //           backgroundColor: Colors.blue, // Couleur de la barre d'application
// // //         ),
// // //         body: FutureBuilder<List<dynamic>>(
// // //           future: futureDemandes,
// // //           builder: (context, snapshot) {
// // //             if (snapshot.connectionState == ConnectionState.waiting) {
// // //               return Center(child: CircularProgressIndicator());
// // //             } else if (snapshot.hasError) {
// // //               return Center(child: Text('Échec de chargement des demandes'));
// // //             } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // //               return Center(child: Text('Aucune demande disponible'));
// // //             } else {
// // //               return Padding(
// // //                 padding: const EdgeInsets.all(8.0),
// // //                 child: Column(
// // //                   children: [
// // //                     _buildFilterRow(),
// // //                     Expanded(
// // //                       child: ListView.builder(
// // //                         itemCount: snapshot.data!.length,
// // //                         itemBuilder: (context, index) {
// // //                           final demande = snapshot.data![index];
// // //                           return Card(
// // //                             margin: EdgeInsets.symmetric(vertical: 8.0),
// // //                             child: ListTile(
// // //                               title: Text(demande['projet']),
// // //                               subtitle: Text('Demandeur: ${demande['demandeur']}'),
// // //                               onTap: () {
// // //                                 Navigator.push(
// // //                                   context,
// // //                                   MaterialPageRoute(
// // //                                     builder: (context) => DemandeDetailScreen(demande: demande),
// // //                                   ),
// // //                                 );
// // //                               },
// // //                             ),
// // //                           );
// // //                         },
// // //                       ),
// // //                     ),
// // //                   ],
// // //                 ),
// // //               );
// // //             }
// // //           },
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildFilterRow() {
// // //     return Container(
// // //       padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
// // //       child: Row(
// // //         children: [
// // //           Expanded(
// // //             child: Container(
// // //               height: 40.0,
// // //               decoration: BoxDecoration(
// // //                 color: Colors.grey[200],
// // //                 borderRadius: BorderRadius.circular(5.0),
// // //               ),
// // //               child: Center(
// // //                 child: Text(
// // //                   'Sélectionner un filtre',
// // //                   style: TextStyle(color: Colors.black),
// // //                 ),
// // //               ),
// // //             ),
// // //           ),
// // //           SizedBox(width: 8.0),
// // //           Container(
// // //             height: 40.0,
// // //             width: 40.0,
// // //             decoration: BoxDecoration(
// // //               color: Colors.blue,
// // //               borderRadius: BorderRadius.circular(5.0),
// // //             ),
// // //             child: IconButton(
// // //               icon: Icon(Icons.filter_list, color: Colors.white),
// // //               onPressed: () {
// // //                 // TODO: Ajouter la fonctionnalité de filtre
// // //               },
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }

// // // class DemandeDetailScreen extends StatelessWidget {
// // //   final dynamic demande;

// // //   DemandeDetailScreen({required this.demande});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text(demande['projet']),
// // //         backgroundColor: Colors.blue, // Couleur de la barre d'application
// // //       ),
// // //       body: Padding(
// // //         padding: const EdgeInsets.all(16.0),
// // //         child: Column(
// // //           crossAxisAlignment: CrossAxisAlignment.start,
// // //           children: [
// // //             Text('Projet: ${demande['projet']}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
// // //             SizedBox(height: 8),
// // //             Text('Demandeur: ${demande['demandeur']}', style: TextStyle(fontSize: 16)),
// // //             SizedBox(height: 8),
// // //             Text('Destinataire: ${demande['destinataire']}', style: TextStyle(fontSize: 16)),
// // //             SizedBox(height: 8),
// // //             Text('Validation: ${demande['validation']}', style: TextStyle(fontSize: 16)),
// // //             SizedBox(height: 8),
// // //             Text('Date Livraison: ${demande['dateLivraison']}', style: TextStyle(fontSize: 16)),
// // //             SizedBox(height: 8),
// // //             Text('Date Traitement: ${demande['dateTraitement']}', style: TextStyle(fontSize: 16)),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// import 'package:flutter/material.dart';
// import 'package:gecimmoa/api_service.dart';// Assurez-vous d'avoir un fichier api_service.dart

// class AppelDoffreScreen extends StatefulWidget {
//   @override
//   _AppelDoffreScreenState createState() => _AppelDoffreScreenState();
// }

// class _AppelDoffreScreenState extends State<AppelDoffreScreen> {
//   final ApiService apiService = ApiService('http://localhost:3000/api/demandes');
//   late Future<List<dynamic>> futureDemandes;

//   @override
//   void initState() {
//     super.initState();
//     futureDemandes = apiService.getDemandes();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Demandes'),
//           backgroundColor: Colors.blue, // Couleur de la barre d'application
//         ),
//         body: FutureBuilder<List<dynamic>>(
//           future: futureDemandes,
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return Center(child: CircularProgressIndicator());
//             } else if (snapshot.hasError) {
//               return Center(child: Text('Échec de chargement des demandes'));
//             } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//               return Center(child: Text('Aucune demande disponible'));
//             } else {
//               return Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   children: [
//                     _buildFilterRow(),
//                     Expanded(
//                       child: ListView.builder(
//                         itemCount: snapshot.data!.length,
//                         itemBuilder: (context, index) {
//                           final demande = snapshot.data![index];
//                           return Card(
//                             margin: EdgeInsets.symmetric(vertical: 8.0),
//                             child: ListTile(
//                               title: Text(demande['projet']),
//                               subtitle: Text('Demandeur: ${demande['demandeur']}'),
//                               onTap: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => DemandeDetailScreen(demande: demande),
//                                   ),
//                                 );
//                               },
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }

//   Widget _buildFilterRow() {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
//       child: Row(
//         children: [
//           Expanded(
//             child: Container(
//               height: 40.0,
//               decoration: BoxDecoration(
//                 color: Colors.grey[200],
//                 borderRadius: BorderRadius.circular(5.0),
//               ),
//               child: Center(
//                 child: Text(
//                   'Sélectionner un filtre',
//                   style: TextStyle(color: Colors.black),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(width: 8.0),
//           Container(
//             height: 40.0,
//             width: 40.0,
//             decoration: BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.circular(5.0),
//             ),
//             child: IconButton(
//               icon: Icon(Icons.filter_list, color: Colors.white),
//               onPressed: () {
//                 // TODO: Ajouter la fonctionnalité de filtre
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class DemandeDetailScreen extends StatelessWidget {
//   final dynamic demande;

//   DemandeDetailScreen({required this.demande});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(demande['projet']),
//         backgroundColor: Colors.blue, // Couleur de la barre d'application
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('Projet: ${demande['projet']}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             SizedBox(height: 8),
//             Text('Demandeur: ${demande['demandeur']}', style: TextStyle(fontSize: 16)),
//             SizedBox(height: 8),
//             Text('Destinataire: ${demande['destinataire']}', style: TextStyle(fontSize: 16)),
//             SizedBox(height: 8),
//             Text('Validation: ${demande['validation']}', style: TextStyle(fontSize: 16)),
//             SizedBox(height: 8),
//             Text('Date Livraison: ${demande['dateLivraison']}', style: TextStyle(fontSize: 16)),
//             SizedBox(height: 8),
//             Text('Date Traitement: ${demande['dateTraitement']}', style: TextStyle(fontSize: 16)),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:gecimmoa/api_service.dart'; // Assurez-vous d'avoir un fichier api_service.dart

// class AppelDoffreScreen extends StatefulWidget {
//   @override
//   _AppelDoffreScreenState createState() => _AppelDoffreScreenState();
// }

// class _AppelDoffreScreenState extends State<AppelDoffreScreen> {
//   final ApiService apiService = ApiService('http://localhost:3000/api/demandes');
//   late Future<List<dynamic>> futureDemandes;
//   String selectedFilter = 'Tous';

//   @override
//   void initState() {
//     super.initState();
//     futureDemandes = apiService.getDemandes();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Demandes'),
//           backgroundColor: Colors.blue,
//         ),
//         body: FutureBuilder<List<dynamic>>(
//           future: futureDemandes,
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return Center(child: CircularProgressIndicator());
//             } else if (snapshot.hasError) {
//               return Center(child: Text('Échec de chargement des demandes'));
//             } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//               return Center(child: Text('Aucune demande disponible'));
//             } else {
//               List<dynamic> filteredDemandes = snapshot.data!;
//               if (selectedFilter != 'Tous') {
//                 filteredDemandes = filteredDemandes.where((demande) {
//                   return demande['validation'] == selectedFilter;
//                 }).toList();
//               }
//               return Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   children: [
//                     _buildFilterRow(),
//                     Expanded(
//                       child: ListView.builder(
//                         itemCount: filteredDemandes.length,
//                         itemBuilder: (context, index) {
//                           final demande = filteredDemandes[index];
//                           return Card(
//                             margin: EdgeInsets.symmetric(vertical: 8.0),
//                             child: ListTile(
//                               title: Text(demande['projet']),
//                               subtitle: Text('Demandeur: ${demande['demandeur']}'),
//                               onTap: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => DemandeDetailScreen(demande: demande),
//                                   ),
//                                 );
//                               },
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }

//   Widget _buildFilterRow() {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
//       child: Row(
//         children: [
//           Expanded(
//             child: DropdownButton<String>(
//               value: selectedFilter,
//               items: <String>['Tous', 'Validé', 'Non Validé'].map((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Text(value),
//                 );
//               }).toList(),
//               onChanged: (String? newValue) {
//                 setState(() {
//                   selectedFilter = newValue!;
//                 });
//               },
//             ),
//           ),
//           SizedBox(width: 8.0),
//           Container(
//             height: 40.0,
//             width: 40.0,
//             decoration: BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.circular(5.0),
//             ),
//             child: Icon(Icons.filter_list, color: Colors.white),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class DemandeDetailScreen extends StatelessWidget {
//   final dynamic demande;

//   DemandeDetailScreen({required this.demande});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(demande['projet']),
//         backgroundColor: Colors.blue,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('Projet: ${demande['projet']}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             SizedBox(height: 8),
//             Text('Demandeur: ${demande['demandeur']}', style: TextStyle(fontSize: 16)),
//             SizedBox(height: 8),
//             Text('Destinataire: ${demande['destinataire']}', style: TextStyle(fontSize: 16)),
//             SizedBox(height: 8),
//             Text('Validation: ${demande['validation']}', style: TextStyle(fontSize: 16)),
//             SizedBox(height: 8),
//             Text('Date Livraison: ${demande['dateLivraison']}', style: TextStyle(fontSize: 16)),
//             SizedBox(height: 8),
//             Text('Date Traitement: ${demande['dateTraitement']}', style: TextStyle(fontSize: 16)),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // // import 'dart:convert';
// // // import 'package:flutter/material.dart';
// // // import 'package:gecimmoa/core/app_export.dart';
// // // import 'package:gecimmoa/core/utils/image_constant.dart';
// // // import 'package:http/http.dart' as http; // Assurez-vous d'avoir cette dépendance

// // // class AppelDoffreScreen extends StatefulWidget {
// // //   @override
// // //   _AppelDoffreScreenState createState() => _AppelDoffreScreenState();
// // // }

// // // class _AppelDoffreScreenState extends State<AppelDoffreScreen> {
// // //   String? _selectedFilter;
  
// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     // Charger les demandes au démarrage
// // //     fetchDemandes();
// // //   }

// // //   Future<List<Map<String, dynamic>>> fetchDemandes() async {
// // //     final response = await http.get(Uri.parse('http://localhost:3000/api/demandes'));

// // //     if (response.statusCode == 200) {
// // //       List<dynamic> data = json.decode(response.body);
// // //       return data.map((demande) => demande as Map<String, dynamic>).toList();
// // //     } else {
// // //       throw Exception('Failed to load demandes');
// // //     }
// // //   }
// // //   Widget _buildFilterRow(BuildContext context) {
// // //     return Container(
// // //       padding: EdgeInsets.symmetric(horizontal: 6.h),
// // //       width: double.infinity,
// // //       child: Row(
// // //         children: [
// // //           Expanded(
// // //             child: Container(
// // //               height: 36.v,
// // //               decoration: BoxDecoration(
// // //                 color: appTheme.gray400,
// // //                 borderRadius: BorderRadius.circular(5.h),
// // //               ),
// // //               child: GestureDetector(
// // //                 onTap: () => _showFilterOptions(context),
// // //                 child: Center(
// // //                   child: Text(
// // //                     _selectedFilter ?? "Sélectionner un filtre",
// // //                     style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
// // //                   ),
// // //                 ),
// // //               ),
// // //             ),
// // //           ),
// // //           SizedBox(width: 4.h),
// // //           Container(
// // //             height: 36.v,
// // //             width: 60.h,
// // //             decoration: AppDecoration.fillGray400.copyWith(
// // //               borderRadius: BorderRadius.circular(5.h),
// // //             ),
// // //             child: Center(
// // //               child: CustomImageView(
// // //                 onTap:() => _createDemande(context),
// // //                 imagePath: ImageConstant.imgFilter,
// // //                 height: 18.h,
// // //                 width: 18.h,
// // //               ),
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // //   // Widget _buildFilterRow(BuildContext context) {
// // //   //   return Container(
// // //   //     padding: EdgeInsets.symmetric(horizontal: 6.h),
// // //   //     width: double.infinity,
// // //   //     child: Row(
// // //   //       children: [
// // //   //         Expanded(
// // //   //           child: Container(
// // //   //             height: 36.v,
// // //   //             decoration: BoxDecoration(
// // //   //               color: appTheme.gray400,
// // //   //               borderRadius: BorderRadius.circular(5.h),
// // //   //             ),
// // //   //             child: GestureDetector(
// // //   //               onTap: () => _showFilterOptions(context),
// // //   //               child: Center(
// // //   //                 child: Text(
// // //   //                   _selectedFilter ?? "Sélectionner un filtre",
// // //   //                   style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
// // //   //                 ),
// // //   //               ),
// // //   //             ),
// // //   //           ),
// // //   //         ),
// // //   //         SizedBox(width: 4.h),
// // //   //         Container(
// // //   //           height: 36.v,
// // //   //           width: 60.h,
// // //   //           decoration: AppDecoration.fillGray400.copyWith(
// // //   //             borderRadius: BorderRadius.circular(5.h),
// // //   //           ),
// // //   //           child: Center(
// // //   //             child: CustomImageView(
// // //   //               onTap:() => _createDemande(context),
// // //   //               imagePath: ImageConstant.imgFilter,
// // //   //               height: 18.h,
// // //   //               width: 18.h,
// // //   //             ),
// // //   //           ),
// // //   //         ),
// // //   //       ],
// // //   //     ),
// // //   //   );
// // //   // }

// // //   Widget _buildDemandList(BuildContext context) {
// // //     return FutureBuilder<List<Map<String, dynamic>>>(
// // //       future: fetchDemandes(),
// // //       builder: (context, snapshot) {
// // //         if (snapshot.connectionState == ConnectionState.waiting) {
// // //           return Center(child: CircularProgressIndicator());
// // //         } else if (snapshot.hasError) {
// // //           return Center(child: Text('Failed to load demandes'));
// // //         } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // //           return Center(child: Text('No demandes available'));
// // //         }

// // //         List<Map<String, dynamic>> demandes = snapshot.data!;
// // //         List<Map<String, dynamic>> filteredDemandes = _selectedFilter != null
// // //             ? demandes
// // //                 .where((demande) => demande["validation"] == _selectedFilter)
// // //                 .toList()
// // //             : demandes;

// // //         return ListView.builder(
// // //           itemCount: filteredDemandes.length,
// // //           itemBuilder: (context, index) {
// // //             return _buildDemandCard(context, filteredDemandes[index]);
// // //           },
// // //         );
// // //       },
// // //     );
// // //   }

// // //   Widget _buildDemandCard(BuildContext context, Map<String, dynamic> demande) {
// // //     return GestureDetector(
// // //       onTap: () {
// // //         showDialog(
// // //           context: context,
// // //           barrierDismissible: true,
// // //           builder: (BuildContext dialogContext) {
// // //             return AlertDialog(
// // //               title: Text("Détails de la demande"),
// // //               content: Column(
// // //                 crossAxisAlignment: CrossAxisAlignment.start,
// // //                 mainAxisSize: MainAxisSize.min,
// // //                 children: [
// // //                   Text("Projet : ${demande["projet"]}", style: TextStyle(color: Colors.black)),
// // //                   Text("Demandeur : ${demande["demandeur"]}", style: TextStyle(color: Colors.black)),
// // //                   Text("Destinataire : ${demande["destinataire"]}", style: TextStyle(color: Colors.black)),
// // //                   Text("Validation : ${demande["validation"]}", style: TextStyle(color: Colors.black)),
// // //                   Text("Date Livraison : ${demande["dateLivraison"]}", style: TextStyle(color: Colors.black)),
// // //                   Text("Date Traitement : ${demande["dateTraitement"]}", style: TextStyle(color: Colors.black)),
// // //                 ],
// // //               ),
// // //             );
// // //           },
// // //         );
// // //       },
// // //       child: Card(
// // //         margin: EdgeInsets.symmetric(vertical: 8.0),
// // //         child: Padding(
// // //           padding: const EdgeInsets.all(16.0),
// // //           child: Column(
// // //             crossAxisAlignment: CrossAxisAlignment.stretch,
// // //             children: [
// // //               Text("Projet : ${demande["projet"]}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
// // //               SizedBox(height: 4.0),
// // //               Text("Demandeur : ${demande["demandeur"]}", style: TextStyle(color: Colors.black)),
// // //               Text("Destinataire : ${demande["destinataire"]}", style: TextStyle(color: Colors.black)),
// // //               SizedBox(height: 4.0),
// // //               Text("Validation : ${demande["validation"]}", style: TextStyle(color: Colors.black)),
// // //               Text("Date Livraison : ${demande["dateLivraison"]}", style: TextStyle(color: Colors.black)),
// // //               Text("Date Traitement : ${demande["dateTraitement"]}", style: TextStyle(color: Colors.black)),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   void _showFilterOptions(BuildContext context) {
// // //     showModalBottomSheet(
// // //       context: context,
// // //       builder: (context) {
// // //         return Padding(
// // //           padding: const EdgeInsets.all(16.0),
// // //           child: Column(
// // //             mainAxisSize: MainAxisSize.min,
// // //             children: [
// // //               ListTile(
// // //                 leading: Icon(Icons.all_inclusive, color: Colors.blue),
// // //                 title: Text("Tout"),
// // //                 onTap: () {
// // //                   setState(() {
// // //                     _selectedFilter = null;
// // //                   });
// // //                   Navigator.pop(context);
// // //                 },
// // //               ),
// // //               ListTile(
// // //                 leading: Icon(Icons.check_circle, color: Colors.green),
// // //                 title: Text("Validé"),
// // //                 onTap: () {
// // //                   setState(() {
// // //                     _selectedFilter = "Validé";
// // //                   });
// // //                   Navigator.pop(context);
// // //                 },
// // //               ),
// // //               ListTile(
// // //                 leading: Icon(Icons.cancel, color: Colors.red),
// // //                 title: Text("Non Validé"),
// // //                 onTap: () {
// // //                   setState(() {
// // //                     _selectedFilter = "Non Validé";
// // //                   });
// // //                   Navigator.pop(context);
// // //                 },
// // //               ),
// // //             ],
// // //           ),
// // //         );
// // //       },
// // //     );
// // //   }

// // //   void _createDemande(BuildContext context) {
// // //     Navigator.pushNamed(context, '/create_demande'); // Assurez-vous que la route est définie dans votre routeur
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text("Appel d'Offre"),
// // //       ),
// // //       body: Column(
// // //         children: [
// // //           _buildFilterRow(context),
// // //           Expanded(child: _buildDemandList(context)),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }

// // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
// // // // // // // // // // import 'package:gecimmoa/api_service.dart';
// // // // // // // // // // import 'package:gecimmoa/presentation/appel_doffre_screen/widgets/detailslist_item_widget.dart';
// // // // // // // // // // import 'package:gecimmoa/widgets/app_bar/appbar_leading_image.dart';
// // // // // // // // // // import 'package:http/http.dart' as http;
// // // // // // // // // // import 'dart:convert';
// // // // // // // // // // import 'package:gecimmoa/widgets/app_bar/custom_app_bar.dart';
// // // // // // // // // // import '../../../core/app_export.dart'; // Assurez-vous d'importer les ressources nécessaires
// // // // // // // // // // class AppelDoffreScreen extends StatefulWidget {
// // // // // // // // // //   @override
// // // // // // // // // //   _AppelDoffreScreenState createState() => _AppelDoffreScreenState();
// // // // // // // // // // }

// // // // // // // // // // class _AppelDoffreScreenState extends State<AppelDoffreScreen> {
// // // // // // // // // //   String? _selectedFilter; // Variable pour stocker le filtre sélectionné
// // // // // // // // // //   List<Map<String, String>> demandes = [
// // // // // // // // // //     {
// // // // // // // // // //       "projet": "FA-111",
// // // // // // // // // //       "demandeur": "Alae Test",
// // // // // // // // // //       "destinataire": "Yassine",
// // // // // // // // // //       "validation": "Validé",
// // // // // // // // // //       "dateLivraison": "11/11/2023",
// // // // // // // // // //       "dateTraitement": "01/11/2023"
// // // // // // // // // //     },
// // // // // // // // // //     {
// // // // // // // // // //       "projet": "FA-121",
// // // // // // // // // //       "demandeur": "Alae Test",
// // // // // // // // // //       "destinataire": "Ahmed",
// // // // // // // // // //       "validation": "Non Validé",
// // // // // // // // // //       "dateLivraison": "21/11/2023",
// // // // // // // // // //       "dateTraitement": "01/11/2023"
// // // // // // // // // //     },
// // // // // // // // // //     {
// // // // // // // // // //       "projet": "FA-121",
// // // // // // // // // //       "demandeur": "Alae Test",
// // // // // // // // // //       "destinataire": "Ahmed",
// // // // // // // // // //       "validation": "Non Validé",
// // // // // // // // // //       "dateLivraison": "21/11/2023",
// // // // // // // // // //       "dateTraitement": "01/11/2023"
// // // // // // // // // //     }
// // // // // // // // // //   ]; // Liste des demandes
  
// // // // // // // // // //   @override
// // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // //     final screenWidth = MediaQuery.of(context).size.width;
// // // // // // // // // //     final screenHeight = MediaQuery.of(context).size.height;
// // // // // // // // // //     final String baseUrl = 'http://localhost:3000';

// // // // // // // // // //   Future<Map<String, dynamic>> fetchDemandeDetails(String token, String idDa) async {
// // // // // // // // // //     final response = await http.get(
// // // // // // // // // //       Uri.parse('$baseUrl/api/DetailsDemandeAchat?token=$token&idDa=$idDa'),
// // // // // // // // // //     );

// // // // // // // // // //     if (response.statusCode == 200) {
// // // // // // // // // //       return json.decode(response.body);
// // // // // // // // // //     } else {
// // // // // // // // // //       throw Exception('Failed to load demande details');
// // // // // // // // // //     }
// // // // // // // // // //   }


// // // // // // // // // //     return SafeArea(
// // // // // // // // // //       child: Scaffold(
// // // // // // // // // //         body: Column(
// // // // // // // // // //           children: [
// // // // // // // // // //             _buildMainStack(context, screenWidth, screenHeight),
// // // // // // // // // //             Expanded(
// // // // // // // // // //               child: Padding(
// // // // // // // // // //                 padding: EdgeInsets.symmetric(horizontal: 7.h),
// // // // // // // // // //                 child: Column(
// // // // // // // // // //                   children: [
// // // // // // // // // //                     SizedBox(height: 30.v),
// // // // // // // // // //                     _buildFilterRow(context),
// // // // // // // // // //                     SizedBox(height: 20.v),
// // // // // // // // // //                     Expanded(child: _buildDemandList(context))
// // // // // // // // // //                   ],
// // // // // // // // // //                 ),
// // // // // // // // // //               ),
// // // // // // // // // //             ),
// // // // // // // // // //           ],
// // // // // // // // // //         ),
// // // // // // // // // //         // bottomNavigationBar: _buildBottomNavigation(context),
// // // // // // // // // //       ),
// // // // // // // // // //     );
// // // // // // // // // //   }

// // // // // // // // // //   Widget _buildMainStack(
// // // // // // // // // //       BuildContext context, double screenWidth, double screenHeight) {
// // // // // // // // // //     return SizedBox(
// // // // // // // // // //       height: 292.v,
// // // // // // // // // //       width: screenWidth,
// // // // // // // // // //       child: Stack(
// // // // // // // // // //         alignment: Alignment.bottomCenter,
// // // // // // // // // //         children: [
// // // // // // // // // //           Align(
// // // // // // // // // //             alignment: Alignment.topCenter,
// // // // // // // // // //             child: Container(
// // // // // // // // // //               width: screenWidth,
// // // // // // // // // //               padding: EdgeInsets.symmetric(vertical: 20.v),
// // // // // // // // // //               decoration: BoxDecoration(
// // // // // // // // // //                 borderRadius:
// // // // // // // // // //                     BorderRadius.circular(20), // Adjusted for better styling
// // // // // // // // // //                 image: DecorationImage(
// // // // // // // // // //                   image: AssetImage(
// // // // // // // // // //                       ImageConstant.imgGroup62), // Assuming local asset
// // // // // // // // // //                   fit: BoxFit.cover,
// // // // // // // // // //                 ),
// // // // // // // // // //               ),
// // // // // // // // // //               child: Column(
// // // // // // // // // //                 mainAxisSize: MainAxisSize.min,
// // // // // // // // // //                 mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // //                 children: [
// // // // // // // // // //                   CustomAppBar(
// // // // // // // // // //                     leadingWidth: 35.h,
// // // // // // // // // //                     leading: GestureDetector(
// // // // // // // // // //                         onTap: () => _openMenu(context),
// // // // // // // // // //                         child: Padding(
// // // // // // // // // //                         padding: EdgeInsets.only(left: 20.h),
// // // // // // // // // //                         child: Icon(
// // // // // // // // // //                         Icons.menu, // Icône de menu
// // // // // // // // // //                         color: Colors.white, // Couleur de l'icône
// // // // // // // // // //                         ),
// // // // // // // // // //                       ),
// // // // // // // // // //                     ),

// // // // // // // // // //                     title: Container(
// // // // // // // // // //                       width: 1000.h, // Largeur du texte
// // // // // // // // // //                       child: Center(
// // // // // // // // // //                         child: Text(
// // // // // // // // // //                           'Demande d’achat', // Titre de la barre d'applications
// // // // // // // // // //                           style: TextStyle(
// // // // // // // // // //                             color: Color.fromARGB(255, 255, 255, 255), // Couleur du titre
// // // // // // // // // //                             fontSize: 30.h, // Taille du texte du titre
// // // // // // // // // //                           ),
// // // // // // // // // //                           overflow: TextOverflow
// // // // // // // // // //                               .ellipsis, // Pour gérer les débordements si le texte est trop long
// // // // // // // // // //                         ),
// // // // // // // // // //                       ),
// // // // // // // // // //                     ),
// // // // // // // // // //                     bottom: PreferredSize(
// // // // // // // // // //                       preferredSize: Size.fromHeight(
// // // // // // // // // //                           1.h), // Hauteur de la ligne de séparation
// // // // // // // // // //                       child: Container(
// // // // // // // // // //                         color: Colors
// // // // // // // // // //                             .grey[800], // Couleur de la ligne de séparation
// // // // // // // // // //                         height: 1.h, // Hauteur de la ligne de séparation
// // // // // // // // // //                       ),
// // // // // // // // // //                     ),
// // // // // // // // // //                   ),
// // // // // // // // // //                   Padding(
// // // // // // // // // //                     padding: const EdgeInsets.symmetric(vertical: 20.0), // Espace de 10 pixels en haut et en bas du Divider
// // // // // // // // // //                     child: Divider(
// // // // // // // // // //                       color: Colors.white,
// // // // // // // // // //                       thickness: 2.0,
// // // // // // // // // //                       height: 1.0,
// // // // // // // // // //                       indent: 20.0,
// // // // // // // // // //                       endIndent: 20.0,
// // // // // // // // // //                     ),
// // // // // // // // // //                   ),
// // // // // // // // // //                   SizedBox(height: 30.h),
// // // // // // // // // //                   Container(
// // // // // // // // // //                     width: screenWidth,
// // // // // // // // // //                     margin: EdgeInsets.symmetric(horizontal: 16.h),
// // // // // // // // // //                     child: Row(
// // // // // // // // // //                       children: [
// // // // // // // // // //                         Expanded(
// // // // // // // // // //                           child: _buildProcessedColumn(
// // // // // // // // // //                             context,
// // // // // // // // // //                             titleText: "En cours",
// // // // // // // // // //                             statNumber: "51",
// // // // // // // // // //                           ),
// // // // // // // // // //                         ),
// // // // // // // // // //                         SizedBox(width: 6.h),
// // // // // // // // // //                         Expanded(
// // // // // // // // // //                           child: _buildProcessedColumn(
// // // // // // // // // //                             context,
// // // // // // // // // //                             titleText: "Traitées",
// // // // // // // // // //                             statNumber: "40",
// // // // // // // // // //                           ),
// // // // // // // // // //                         ),
// // // // // // // // // //                         SizedBox(width: 6.h),
// // // // // // // // // //                         Expanded(
// // // // // // // // // //                           child: _buildProcessedColumn(
// // // // // // // // // //                             context,
// // // // // // // // // //                             titleText: "Refusées",
// // // // // // // // // //                             statNumber: "5",
// // // // // // // // // //                           ),
// // // // // // // // // //                         )
// // // // // // // // // //                       ],
// // // // // // // // // //                     ),
// // // // // // // // // //                   )
// // // // // // // // // //                 ],
// // // // // // // // // //               ),
// // // // // // // // // //             ),
// // // // // // // // // //           ),
// // // // // // // // // //           Padding(
// // // // // // // // // //             padding: EdgeInsets.symmetric(horizontal: 12.h),
// // // // // // // // // //             child: Row(
// // // // // // // // // //               children: [
// // // // // // // // // //                 Expanded(
// // // // // // // // // //                   child: _buildProcessedColumn(
// // // // // // // // // //                     context,
// // // // // // // // // //                     titleText: "Appel d’offre",
// // // // // // // // // //                     statNumber: "6",
// // // // // // // // // //                   ),
// // // // // // // // // //                 ),
// // // // // // // // // //                 SizedBox(width: 6.h),
// // // // // // // // // //                 Expanded(
// // // // // // // // // //                   child: _buildProcessedColumn(
// // // // // // // // // //                     context,
// // // // // // // // // //                     titleText: "Demande de prix",
// // // // // // // // // //                     statNumber: "14",
// // // // // // // // // //                   ),
// // // // // // // // // //                 ),
// // // // // // // // // //                 SizedBox(width: 6.h),
// // // // // // // // // //                 Expanded(
// // // // // // // // // //                   child: _buildProcessedColumn(
// // // // // // // // // //                     context,
// // // // // // // // // //                     titleText: "Avenant",
// // // // // // // // // //                     statNumber: "20",
// // // // // // // // // //                   ),
// // // // // // // // // //                 )
// // // // // // // // // //               ],
// // // // // // // // // //             ),
// // // // // // // // // //           )
// // // // // // // // // //         ],
// // // // // // // // // //       ),
// // // // // // // // // //     );
// // // // // // // // // //   }

// // // // // // // // // //   Widget _buildFilterRow(BuildContext context) {
// // // // // // // // // //     return Container(
// // // // // // // // // //       padding: EdgeInsets.symmetric(horizontal: 6.h),
// // // // // // // // // //       width: double.infinity,
// // // // // // // // // //       child: Row(
// // // // // // // // // //         children: [
// // // // // // // // // //           Expanded(
// // // // // // // // // //             child: Container(
// // // // // // // // // //               height: 36.v,
// // // // // // // // // //               decoration: BoxDecoration(
// // // // // // // // // //                 color: appTheme.gray400,
// // // // // // // // // //                 borderRadius: BorderRadius.circular(5.h),
// // // // // // // // // //               ),
// // // // // // // // // //               child: GestureDetector(
// // // // // // // // // //                 onTap: () => _showFilterOptions(context),
// // // // // // // // // //                 child: Center(
// // // // // // // // // //                   child: Text(
// // // // // // // // // //                     _selectedFilter ?? "Sélectionner un filtre",
// // // // // // // // // //                     style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
// // // // // // // // // //                   ),
// // // // // // // // // //                 ),
// // // // // // // // // //               ),
// // // // // // // // // //             ),
// // // // // // // // // //           ),
// // // // // // // // // //           SizedBox(width: 4.h),
// // // // // // // // // //           Container(
// // // // // // // // // //             height: 36.v,
// // // // // // // // // //             width: 60.h,
// // // // // // // // // //             decoration: AppDecoration.fillGray400.copyWith(
// // // // // // // // // //               borderRadius: BorderRadius.circular(5.h),
// // // // // // // // // //             ),
// // // // // // // // // //             child: Center(
// // // // // // // // // //               child: CustomImageView(
// // // // // // // // // //                 onTap:() => _createDemande(context),
// // // // // // // // // //                 imagePath: ImageConstant.imgFilter,
// // // // // // // // // //                 height: 18.h,
// // // // // // // // // //                 width: 18.h,
// // // // // // // // // //               ),
// // // // // // // // // //             ),
// // // // // // // // // //           ),
// // // // // // // // // //         ],
// // // // // // // // // //       ),
// // // // // // // // // //     );
// // // // // // // // // //   }
// // // // // // // // // //   Widget _buildDemandList(BuildContext context) {
// // // // // // // // // //   List<Map<String, String>> filteredDemandes = _selectedFilter != null
// // // // // // // // // //       ? demandes
// // // // // // // // // //           .where((demande) => demande["validation"] == _selectedFilter)
// // // // // // // // // //           .toList()
// // // // // // // // // //       : demandes;

// // // // // // // // // //   return ListView.builder(
// // // // // // // // // //     itemCount: filteredDemandes.length,
// // // // // // // // // //     itemBuilder: (context, index) {
// // // // // // // // // //       return _buildDemandCard(context, filteredDemandes[index]);
// // // // // // // // // //     },
// // // // // // // // // //   );
// // // // // // // // // // }

// // // // // // // // // // Widget _buildDemandCard(BuildContext context, Map<String, String> demande) {
// // // // // // // // // //   return GestureDetector(
// // // // // // // // // //     onTap: () {
// // // // // // // // // //       // Utiliser le context de l'application pour afficher le dialogue
// // // // // // // // // //       showDialog(
// // // // // // // // // //         context: context,
// // // // // // // // // //         barrierDismissible: true, // Permet de fermer le dialogue en cliquant en dehors
// // // // // // // // // //         builder: (BuildContext dialogContext) {
// // // // // // // // // //           return AlertDialog(
// // // // // // // // // //             title: Text("Détails de la demande"),
// // // // // // // // // //             content: Column(
// // // // // // // // // //               crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // //               mainAxisSize: MainAxisSize.min,
// // // // // // // // // //               children: [
// // // // // // // // // //                 Text(
// // // // // // // // // //                   "Projet : ${demande["projet"]}",
// // // // // // // // // //                   style: TextStyle(color: Colors.black),
// // // // // // // // // //                 ),
// // // // // // // // // //                 Text(
// // // // // // // // // //                   "Demandeur : ${demande["demandeur"]}",
// // // // // // // // // //                   style: TextStyle(color: Colors.black),
// // // // // // // // // //                 ),
// // // // // // // // // //                 Text(
// // // // // // // // // //                   "Destinataire : ${demande["destinataire"]}",
// // // // // // // // // //                   style: TextStyle(color: Colors.black),
// // // // // // // // // //                 ),
// // // // // // // // // //                 Text(
// // // // // // // // // //                   "Validation : ${demande["validation"]}",
// // // // // // // // // //                   style: TextStyle(color: Colors.black),
// // // // // // // // // //                 ),
// // // // // // // // // //                 Text(
// // // // // // // // // //                   "Date Livraison : ${demande["dateLivraison"]}",
// // // // // // // // // //                   style: TextStyle(color: Colors.black),
// // // // // // // // // //                 ),
// // // // // // // // // //                 Text(
// // // // // // // // // //                   "Date Traitement : ${demande["dateTraitement"]}",
// // // // // // // // // //                   style: TextStyle(color: Colors.black),
// // // // // // // // // //                 ),
// // // // // // // // // //               ],
// // // // // // // // // //             ),
// // // // // // // // // //           );
// // // // // // // // // //         },
// // // // // // // // // //       );
// // // // // // // // // //     },
// // // // // // // // // //     child: Card(
// // // // // // // // // //       margin: EdgeInsets.symmetric(vertical: 8.0),
// // // // // // // // // //       child: Padding(
// // // // // // // // // //         padding: const EdgeInsets.all(16.0),
// // // // // // // // // //         child: Column(
// // // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.stretch,
// // // // // // // // // //           children: [
// // // // // // // // // //             Text(
// // // // // // // // // //               "Projet : ${demande["projet"]}",
// // // // // // // // // //               style: TextStyle(
// // // // // // // // // //                 fontWeight: FontWeight.bold,
// // // // // // // // // //                 color: Colors.black,
// // // // // // // // // //               ),
// // // // // // // // // //             ),
// // // // // // // // // //             SizedBox(height: 4.0),
// // // // // // // // // //             Text(
// // // // // // // // // //               "Demandeur : ${demande["demandeur"]}",
// // // // // // // // // //               style: TextStyle(
// // // // // // // // // //                 color: Colors.black,
// // // // // // // // // //               ),
// // // // // // // // // //             ),
// // // // // // // // // //             Text(
// // // // // // // // // //               "Destinataire : ${demande["destinataire"]}",
// // // // // // // // // //               style: TextStyle(
// // // // // // // // // //                 color: Colors.black,
// // // // // // // // // //               ),
// // // // // // // // // //             ),
// // // // // // // // // //             SizedBox(height: 4.0),
// // // // // // // // // //             Text(
// // // // // // // // // //               "Validation : ${demande["validation"]}",
// // // // // // // // // //               style: TextStyle(
// // // // // // // // // //                 color: Colors.black,
// // // // // // // // // //               ),
// // // // // // // // // //             ),
// // // // // // // // // //             Text(
// // // // // // // // // //               "Date Livraison : ${demande["dateLivraison"]}",
// // // // // // // // // //               style: TextStyle(
// // // // // // // // // //                 color: Colors.black,
// // // // // // // // // //               ),
// // // // // // // // // //             ),
// // // // // // // // // //             Text(
// // // // // // // // // //               "Date Traitement : ${demande["dateTraitement"]}",
// // // // // // // // // //               style: TextStyle(
// // // // // // // // // //                 color: Colors.black,
// // // // // // // // // //               ),
// // // // // // // // // //             ),
// // // // // // // // // //           ],
// // // // // // // // // //         ),
// // // // // // // // // //       ),
// // // // // // // // // //     ),
// // // // // // // // // //   );
// // // // // // // // // // }

// // // // // // // // // //   void _showFilterOptions(BuildContext context) {
// // // // // // // // // //     showModalBottomSheet(
// // // // // // // // // //       context: context,
// // // // // // // // // //       builder: (context) {
// // // // // // // // // //         return Padding(
// // // // // // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // // // // // //           child: Column(
// // // // // // // // // //             mainAxisSize: MainAxisSize.min,
// // // // // // // // // //             children: [
// // // // // // // // // //               ListTile(
// // // // // // // // // //                 leading: Icon(Icons.all_inclusive, color: Colors.blue),
// // // // // // // // // //                 title: Text("Tout"),
// // // // // // // // // //                 onTap: () {
// // // // // // // // // //                   setState(() {
// // // // // // // // // //                     _selectedFilter = null;
// // // // // // // // // //                   });
// // // // // // // // // //                   Navigator.pop(context);
// // // // // // // // // //                 },
// // // // // // // // // //               ),
// // // // // // // // // //               ListTile(
// // // // // // // // // //                 leading: Icon(Icons.check_circle, color: Colors.green),
// // // // // // // // // //                 title: Text("Validé"),
// // // // // // // // // //                 onTap: () {
// // // // // // // // // //                   setState(() {
// // // // // // // // // //                     _selectedFilter = "Validé";
// // // // // // // // // //                   });
// // // // // // // // // //                   Navigator.pop(context);
// // // // // // // // // //                 },
// // // // // // // // // //               ),
// // // // // // // // // //               ListTile(
// // // // // // // // // //                 leading: Icon(Icons.cancel, color: Colors.red),
// // // // // // // // // //                 title: Text("Non Validé"),
// // // // // // // // // //                 onTap: () {
// // // // // // // // // //                   setState(() {
// // // // // // // // // //                     _selectedFilter = "Non Validé";
// // // // // // // // // //                   });
// // // // // // // // // //                   Navigator.pop(context);
// // // // // // // // // //                 },
// // // // // // // // // //               ),
// // // // // // // // // //               // Ajoutez d'autres options de filtre ici
// // // // // // // // // //             ],
// // // // // // // // // //           ),
// // // // // // // // // //         );
// // // // // // // // // //       },
// // // // // // // // // //     );
// // // // // // // // // //   }

// // // // // // // // // //   Widget _buildProcessedColumn(
// // // // // // // // // //     BuildContext context, {
// // // // // // // // // //     required String titleText,
// // // // // // // // // //     required String statNumber,
// // // // // // // // // //   }) {
// // // // // // // // // //     return Container(
// // // // // // // // // //       decoration: AppDecoration.fillBluegray700.copyWith(
// // // // // // // // // //         borderRadius: BorderRadius.circular(10),
// // // // // // // // // //       ),
// // // // // // // // // //       child: Column(
// // // // // // // // // //         mainAxisSize: MainAxisSize.min,
// // // // // // // // // //         children: [
// // // // // // // // // //           SizedBox(height: 10.v),
// // // // // // // // // //           Text(
// // // // // // // // // //             titleText,
// // // // // // // // // //             style: CustomTextStyles.titleMedium16.copyWith(
// // // // // // // // // //               color: appTheme.whiteA700,
// // // // // // // // // //             ),
// // // // // // // // // //           ),
// // // // // // // // // //           SizedBox(height: 8.v),
// // // // // // // // // //           Container(
// // // // // // // // // //             width: double.infinity,
// // // // // // // // // //             padding: EdgeInsets.symmetric(vertical: 6.v),
// // // // // // // // // //             decoration: AppDecoration.fillGray400,
// // // // // // // // // //             child: Center(
// // // // // // // // // //               child: Text(
// // // // // // // // // //                 statNumber,
// // // // // // // // // //                 style: theme.textTheme.titleLarge!.copyWith(
// // // // // // // // // //                   color: appTheme.whiteA700,
// // // // // // // // // //                 ),
// // // // // // // // // //               ),
// // // // // // // // // //             ),
// // // // // // // // // //           )
// // // // // // // // // //         ],
// // // // // // // // // //       ),
// // // // // // // // // //     );
// // // // // // // // // //   }

// // // // // // // // // //   void _openMenu(BuildContext context) {
// // // // // // // // // //     Navigator.pushNamed(context, AppRoutes.menuScreen);
// // // // // // // // // //   }     
// // // // // // // // // //   void _createDemande(BuildContext context) {
// // // // // // // // // //     print("Navigating to create demand screen");
// // // // // // // // // //     Navigator.pushNamed(context, AppRoutes.createDemandeScreen);
// // // // // // // // // //   }
// // // // // // // // // // }

// // import 'package:flutter/material.dart';
// // import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
// // import 'package:gecimmoa/api_service.dart';
// // import 'package:gecimmoa/presentation/appel_doffre_screen/widgets/detailslist_item_widget.dart';
// // import 'package:gecimmoa/widgets/app_bar/appbar_leading_image.dart';
// // import 'package:http/http.dart' as http;
// // import 'dart:convert';
// // import 'package:gecimmoa/widgets/app_bar/custom_app_bar.dart';
// // import '../../../core/app_export.dart'; // Assurez-vous d'importer les ressources nécessaires
// // class AppelDoffreScreen extends StatefulWidget {
// //   @override
// //   _AppelDoffreScreenState createState() => _AppelDoffreScreenState();
// // }

// // abstract class _AppelDoffreScreenState extends State<AppelDoffreScreen> {
// //   String? _selectedFilter; // Variable pour stocker le filtre sélectionné
// //   @override
// //   void initState() {
// //     super.initState();
// //     // Charger les demandes au démarrage
// //     fetchDemandes();
// //   }

// //   Future<List<Map<String, dynamic>>> fetchDemandes() async {
// //     final response = await http.get(Uri.parse('http://localhost:3000/api/demandes'));

// //     if (response.statusCode == 200) {
// //       List<dynamic> data = json.decode(response.body);
// //       return data.map((demande) => demande as Map<String, dynamic>).toList();
// //     } else {
// //       throw Exception('Failed to load demandes');
// //     }
// //   }
// // return SafeArea(
// //   // ignore: deprecated_colon_for_default_value
// //   child: Scaffold(
// //     body: Column(
// //       children: [
// //         _buildMainStack(context, screenWidth, screenHeight),
// //         Expanded(
// //           child: Padding(
// //             padding: EdgeInsets.symmetric(horizontal: 7.h),
// //             child: Column(
// //               children: [
// //                 SizedBox(height: 30.v),
// //                 _buildFilterRow(context),
// //                 SizedBox(height: 20.v),
// //                 Expanded(child: _buildDemandList(context)),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ],
// //     ),
// //     // Uncomment the following line if you want to add a bottom navigation bar
// //     // bottomNavigationBar: _buildBottomNavigation(context),
// //   ),
// // );

// //   //   return SafeArea(
// //   //     child: Scaffold(
// //   //       body: Column(
// //   //         children: [
// //   //           _buildMainStack(context, screenWidth, screenHeight),
// //   //           Expanded(
// //   //             child: Padding(
// //   //               padding: EdgeInsets.symmetric(horizontal: 7.h),
// //   //               child: Column(
// //   //                 children: [
// //   //                   SizedBox(height: 30.v),
// //   //                   _buildFilterRow(context),
// //   //                   SizedBox(height: 20.v),
// //   //                   Expanded(child: _buildDemandList(context))
// //   //                 ],
// //   //               ),
// //   //             ),
// //   //           ),
// //   //         ],
// //   //       ),
// //   //       // bottomNavigationBar: _buildBottomNavigation(context),
// //   //     ),
// //   //   );
// //   // }

// //   Widget _buildMainStack(
// //       BuildContext context, double screenWidth, double screenHeight) {
// //     return SizedBox(
// //       height: 292.v,
// //       width: screenWidth,
// //       child: Stack(
// //         alignment: Alignment.bottomCenter,
// //         children: [
// //           Align(
// //             alignment: Alignment.topCenter,
// //             child: Container(
// //               width: screenWidth,
// //               padding: EdgeInsets.symmetric(vertical: 20.v),
// //               decoration: BoxDecoration(
// //                 borderRadius:
// //                     BorderRadius.circular(20), // Adjusted for better styling
// //                 image: DecorationImage(
// //                   image: AssetImage(
// //                       ImageConstant.imgGroup62), // Assuming local asset
// //                   fit: BoxFit.cover,
// //                 ),
// //               ),
// //               child: Column(
// //                 mainAxisSize: MainAxisSize.min,
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   CustomAppBar(
// //                     leadingWidth: 35.h,
// //                     leading: GestureDetector(
// //                         onTap: () => _openMenu(context),
// //                         child: Padding(
// //                         padding: EdgeInsets.only(left: 20.h),
// //                         child: Icon(
// //                         Icons.menu, // Icône de menu
// //                         color: Colors.white, // Couleur de l'icône
// //                         ),
// //                       ),
// //                     ),

// //                     title: Container(
// //                       width: 1000.h, // Largeur du texte
// //                       child: Center(
// //                         child: Text(
// //                           'Demande d’achat', // Titre de la barre d'applications
// //                           style: TextStyle(
// //                             color: Color.fromARGB(255, 255, 255, 255), // Couleur du titre
// //                             fontSize: 30.h, // Taille du texte du titre
// //                           ),
// //                           overflow: TextOverflow
// //                               .ellipsis, // Pour gérer les débordements si le texte est trop long
// //                         ),
// //                       ),
// //                     ),
// //                     bottom: PreferredSize(
// //                       preferredSize: Size.fromHeight(
// //                           1.h), // Hauteur de la ligne de séparation
// //                       child: Container(
// //                         color: Colors
// //                             .grey[800], // Couleur de la ligne de séparation
// //                         height: 1.h, // Hauteur de la ligne de séparation
// //                       ),
// //                     ),
// //                   ),
// //                   Padding(
// //                     padding: const EdgeInsets.symmetric(vertical: 20.0), // Espace de 10 pixels en haut et en bas du Divider
// //                     child: Divider(
// //                       color: Colors.white,
// //                       thickness: 2.0,
// //                       height: 1.0,
// //                       indent: 20.0,
// //                       endIndent: 20.0,
// //                     ),
// //                   ),
// //                   SizedBox(height: 30.h),
// //                   Container(
// //                     width: screenWidth,
// //                     margin: EdgeInsets.symmetric(horizontal: 16.h),
// //                     child: Row(
// //                       children: [
// //                         Expanded(
// //                           child: _buildProcessedColumn(
// //                             context,
// //                             titleText: "En cours",
// //                             statNumber: "51",
// //                           ),
// //                         ),
// //                         SizedBox(width: 6.h),
// //                         Expanded(
// //                           child: _buildProcessedColumn(
// //                             context,
// //                             titleText: "Traitées",
// //                             statNumber: "40",
// //                           ),
// //                         ),
// //                         SizedBox(width: 6.h),
// //                         Expanded(
// //                           child: _buildProcessedColumn(
// //                             context,
// //                             titleText: "Refusées",
// //                             statNumber: "5",
// //                           ),
// //                         )
// //                       ],
// //                     ),
// //                   )
// //                 ],
// //               ),
// //             ),
// //           ),
// //           Padding(
// //             padding: EdgeInsets.symmetric(horizontal: 12.h),
// //             child: Row(
// //               children: [
// //                 Expanded(
// //                   child: _buildProcessedColumn(
// //                     context,
// //                     titleText: "Appel d’offre",
// //                     statNumber: "6",
// //                   ),
// //                 ),
// //                 SizedBox(width: 6.h),
// //                 Expanded(
// //                   child: _buildProcessedColumn(
// //                     context,
// //                     titleText: "Demande de prix",
// //                     statNumber: "14",
// //                   ),
// //                 ),
// //                 SizedBox(width: 6.h),
// //                 Expanded(
// //                   child: _buildProcessedColumn(
// //                     context,
// //                     titleText: "Avenant",
// //                     statNumber: "20",
// //                   ),
// //                 )
// //               ],
// //             ),
// //           )
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildFilterRow(BuildContext context) {
// //     return Container(
// //       padding: EdgeInsets.symmetric(horizontal: 6.h),
// //       width: double.infinity,
// //       child: Row(
// //         children: [
// //           Expanded(
// //             child: Container(
// //               height: 36.v,
// //               decoration: BoxDecoration(
// //                 color: appTheme.gray400,
// //                 borderRadius: BorderRadius.circular(5.h),
// //               ),
// //               child: GestureDetector(
// //                 onTap: () => _showFilterOptions(context),
// //                 child: Center(
// //                   child: Text(
// //                     _selectedFilter ?? "Sélectionner un filtre",
// //                     style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //           SizedBox(width: 4.h),
// //           Container(
// //             height: 36.v,
// //             width: 60.h,
// //             decoration: AppDecoration.fillGray400.copyWith(
// //               borderRadius: BorderRadius.circular(5.h),
// //             ),
// //             child: Center(
// //               child: CustomImageView(
// //                 onTap:() => _createDemande(context),
// //                 imagePath: ImageConstant.imgFilter,
// //                 height: 18.h,
// //                 width: 18.h,
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// //     Widget _buildDemandList(BuildContext context) {
// //     return FutureBuilder<List<Map<String, dynamic>>>(
// //       future: fetchDemandes(),
// //       builder: (context, snapshot) {
// //         if (snapshot.connectionState == ConnectionState.waiting) {
// //           return Center(child: CircularProgressIndicator());
// //         } else if (snapshot.hasError) {
// //           return Center(child: Text('Failed to load demandes'));
// //         } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// //           return Center(child: Text('No demandes available'));
// //         }

// //         List<Map<String, dynamic>> demandes = snapshot.data!;
// //         List<Map<String, dynamic>> filteredDemandes = _selectedFilter != null
// //             ? demandes
// //                 .where((demande) => demande["validation"] == _selectedFilter)
// //                 .toList()
// //             : demandes;

// //         return ListView.builder(
// //           itemCount: filteredDemandes.length,
// //           itemBuilder: (context, index) {
// //             return _buildDemandCard(context, filteredDemandes[index]);
// //           },
// //         );
// //       },
// //     );
// //   }

// //   Widget _buildDemandCard(BuildContext context, Map<String, dynamic> demande) {
// //     return GestureDetector(
// //       onTap: () {
// //         showDialog(
// //           context: context,
// //           barrierDismissible: true,
// //           builder: (BuildContext dialogContext) {
// //             return AlertDialog(
// //               title: Text("Détails de la demande"),
// //               content: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 mainAxisSize: MainAxisSize.min,
// //                 children: [
// //                   Text("Projet : ${demande["projet"]}", style: TextStyle(color: Colors.black)),
// //                   Text("Demandeur : ${demande["demandeur"]}", style: TextStyle(color: Colors.black)),
// //                   Text("Destinataire : ${demande["destinataire"]}", style: TextStyle(color: Colors.black)),
// //                   Text("Validation : ${demande["validation"]}", style: TextStyle(color: Colors.black)),
// //                   Text("Date Livraison : ${demande["dateLivraison"]}", style: TextStyle(color: Colors.black)),
// //                   Text("Date Traitement : ${demande["dateTraitement"]}", style: TextStyle(color: Colors.black)),
// //                 ],
// //               ),
// //             );
// //           },
// //         );
// //       },
// //       child: Card(
// //         margin: EdgeInsets.symmetric(vertical: 8.0),
// //         child: Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.stretch,
// //             children: [
// //               Text("Projet : ${demande["projet"]}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
// //               SizedBox(height: 4.0),
// //               Text("Demandeur : ${demande["demandeur"]}", style: TextStyle(color: Colors.black)),
// //               Text("Destinataire : ${demande["destinataire"]}", style: TextStyle(color: Colors.black)),
// //               SizedBox(height: 4.0),
// //               Text("Validation : ${demande["validation"]}", style: TextStyle(color: Colors.black)),
// //               Text("Date Livraison : ${demande["dateLivraison"]}", style: TextStyle(color: Colors.black)),
// //               Text("Date Traitement : ${demande["dateTraitement"]}", style: TextStyle(color: Colors.black)),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// // //   Widget _buildDemandList(BuildContext context) {
// // //   List<Map<String, String>> filteredDemandes = _selectedFilter != null
// // //       ? demandes
// // //           .where((demande) => demande["validation"] == _selectedFilter)
// // //           .toList()
// // //       : demandes;

// // //   return ListView.builder(
// // //     itemCount: filteredDemandes.length,
// // //     itemBuilder: (context, index) {
// // //       return _buildDemandCard(context, filteredDemandes[index]);
// // //     },
// // //   );
// // // }

// // Widget _buildDemandCard(BuildContext context, Map<String, String> demande) {
// //   return GestureDetector(
// //     onTap: () {
// //       // Utiliser le context de l'application pour afficher le dialogue
// //       showDialog(
// //         context: context,
// //         barrierDismissible: true, // Permet de fermer le dialogue en cliquant en dehors
// //         builder: (BuildContext dialogContext) {
// //           return AlertDialog(
// //             title: Text("Détails de la demande"),
// //             content: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               mainAxisSize: MainAxisSize.min,
// //               children: [
// //                 Text(
// //                   "Projet : ${demande["projet"]}",
// //                   style: TextStyle(color: Colors.black),
// //                 ),
// //                 Text(
// //                   "Demandeur : ${demande["demandeur"]}",
// //                   style: TextStyle(color: Colors.black),
// //                 ),
// //                 Text(
// //                   "Destinataire : ${demande["destinataire"]}",
// //                   style: TextStyle(color: Colors.black),
// //                 ),
// //                 Text(
// //                   "Validation : ${demande["validation"]}",
// //                   style: TextStyle(color: Colors.black),
// //                 ),
// //                 Text(
// //                   "Date Livraison : ${demande["dateLivraison"]}",
// //                   style: TextStyle(color: Colors.black),
// //                 ),
// //                 Text(
// //                   "Date Traitement : ${demande["dateTraitement"]}",
// //                   style: TextStyle(color: Colors.black),
// //                 ),
// //               ],
// //             ),
// //           );
// //         },
// //       );
// //     },
// //     child: Card(
// //       margin: EdgeInsets.symmetric(vertical: 8.0),
// //       child: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.stretch,
// //           children: [
// //             Text(
// //               "Projet : ${demande["projet"]}",
// //               style: TextStyle(
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.black,
// //               ),
// //             ),
// //             SizedBox(height: 4.0),
// //             Text(
// //               "Demandeur : ${demande["demandeur"]}",
// //               style: TextStyle(
// //                 color: Colors.black,
// //               ),
// //             ),
// //             Text(
// //               "Destinataire : ${demande["destinataire"]}",
// //               style: TextStyle(
// //                 color: Colors.black,
// //               ),
// //             ),
// //             SizedBox(height: 4.0),
// //             Text(
// //               "Validation : ${demande["validation"]}",
// //               style: TextStyle(
// //                 color: Colors.black,
// //               ),
// //             ),
// //             Text(
// //               "Date Livraison : ${demande["dateLivraison"]}",
// //               style: TextStyle(
// //                 color: Colors.black,
// //               ),
// //             ),
// //             Text(
// //               "Date Traitement : ${demande["dateTraitement"]}",
// //               style: TextStyle(
// //                 color: Colors.black,
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     ),
// //   );
// // }

// //   void _showFilterOptions(BuildContext context) {
// //     showModalBottomSheet(
// //       context: context,
// //       builder: (context) {
// //         return Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: Column(
// //             mainAxisSize: MainAxisSize.min,
// //             children: [
// //               ListTile(
// //                 leading: Icon(Icons.all_inclusive, color: Colors.blue),
// //                 title: Text("Tout"),
// //                 onTap: () {
// //                   setState(() {
// //                     _selectedFilter = null;
// //                   });
// //                   Navigator.pop(context);
// //                 },
// //               ),
// //               ListTile(
// //                 leading: Icon(Icons.check_circle, color: Colors.green),
// //                 title: Text("Validé"),
// //                 onTap: () {
// //                   setState(() {
// //                     _selectedFilter = "Validé";
// //                   });
// //                   Navigator.pop(context);
// //                 },
// //               ),
// //               ListTile(
// //                 leading: Icon(Icons.cancel, color: Colors.red),
// //                 title: Text("Non Validé"),
// //                 onTap: () {
// //                   setState(() {
// //                     _selectedFilter = "Non Validé";
// //                   });
// //                   Navigator.pop(context);
// //                 },
// //               ),
// //               // Ajoutez d'autres options de filtre ici
// //             ],
// //           ),
// //         );
// //       },
// //     );
// //   }

// //   Widget _buildProcessedColumn(
// //     BuildContext context, {
// //     required String titleText,
// //     required String statNumber,
// //   }) {
// //     return Container(
// //       decoration: AppDecoration.fillBluegray700.copyWith(
// //         borderRadius: BorderRadius.circular(10),
// //       ),
// //       child: Column(
// //         mainAxisSize: MainAxisSize.min,
// //         children: [
// //           SizedBox(height: 10.v),
// //           Text(
// //             titleText,
// //             style: CustomTextStyles.titleMedium16.copyWith(
// //               color: appTheme.whiteA700,
// //             ),
// //           ),
// //           SizedBox(height: 8.v),
// //           Container(
// //             width: double.infinity,
// //             padding: EdgeInsets.symmetric(vertical: 6.v),
// //             decoration: AppDecoration.fillGray400,
// //             child: Center(
// //               child: Text(
// //                 statNumber,
// //                 style: theme.textTheme.titleLarge!.copyWith(
// //                   color: appTheme.whiteA700,
// //                 ),
// //               ),
// //             ),
// //           )
// //         ],
// //       ),
// //     );
// //   }

// //   void _openMenu(BuildContext context) {
// //     Navigator.pushNamed(context, AppRoutes.menuScreen);
// //   }     
// //   void _createDemande(BuildContext context) {
// //     print("Navigating to create demand screen");
// //     Navigator.pushNamed(context, AppRoutes.createDemandeScreen);
// //   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:gecimmoa/api_service.dart';
import 'package:gecimmoa/presentation/appel_doffre_screen/widgets/detailslist_item_widget.dart';
import 'package:gecimmoa/widgets/app_bar/appbar_leading_image.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:gecimmoa/widgets/app_bar/custom_app_bar.dart';
import '../../../core/app_export.dart';
class AppelDoffreScreen extends StatefulWidget {
  @override
  _AppelDoffreScreenState createState() => _AppelDoffreScreenState();
}

class _AppelDoffreScreenState extends State<AppelDoffreScreen> {
  String? _selectedFilter; // Variable to store the selected filter

  @override
  void initState() {
    super.initState();
    // Load the requests on startup
    fetchDemandes();
  }

  Future<List<Map<String, dynamic>>> fetchDemandes() async {
    final response = await http.get(Uri.parse('http://localhost:3000/api/demandes'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((demande) => demande as Map<String, dynamic>).toList();
    } else {
      throw Exception('Failed to load demandes');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            _buildMainStack(context, MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    _buildFilterRow(context),
                    SizedBox(height: 20),
                    Expanded(child: _buildDemandList(context)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // // Widget _buildMainStack(BuildContext context, double screenWidth, double screenHeight) {
  // //   return SizedBox(
  // //     height: 292,
  // //     width: screenWidth,
  // //     child: Stack(
  // //       alignment: Alignment.bottomCenter,
  // //       children: [
  // //         Align(
  // //           alignment: Alignment.topCenter,
  // //           child: Container(
  // //             width: screenWidth,
  // //             padding: EdgeInsets.symmetric(vertical: 20),
  // //             decoration: BoxDecoration(
  // //               borderRadius: BorderRadius.circular(20),
  // //               image: DecorationImage(
  // //                 image: AssetImage('assets/images/your_image.jpg'), // Update with the correct asset path
  // //                 fit: BoxFit.cover,
  // //               ),
  // //             ),
  // //             child: Column(
  // //               mainAxisSize: MainAxisSize.min,
  // //               mainAxisAlignment: MainAxisAlignment.center,
  // //               children: [
  // //                 CustomAppBar(
  // //                   leadingWidth: 35,
  // //                   leading: GestureDetector(
  // //                     onTap: () => _openMenu(context),
  // //                     child: Padding(
  // //                       padding: EdgeInsets.only(left: 20),
  // //                       child: Icon(
  // //                         Icons.menu,
  // //                         color: Colors.white,
  // //                       ),
  // //                     ),
  // //                   ),
  // //                   title: Container(
  // //                     width: 200, // Adjust the width as needed
  // //                     child: Center(
  // //                       child: Text(
  // //                         'Demande d’achat',
  // //                         style: TextStyle(
  // //                           color: Colors.white,
  // //                           fontSize: 30,
  // //                         ),
  // //                         overflow: TextOverflow.ellipsis,
  // //                       ),
  // //                     ),
  // //                   ),
  // //                   bottom: PreferredSize(
  // //                     preferredSize: Size.fromHeight(1),
  // //                     child: Container(
  // //                       color: Colors.grey[800],
  // //                       height: 1,
  // //                     ),
  // //                   ),
  // //                 ),
  // //                 Padding(
  // //                   padding: const EdgeInsets.symmetric(vertical: 20),
  // //                   child: Divider(
  // //                     color: Colors.white,
  // //                     thickness: 2.0,
  // //                     height: 1.0,
  // //                     indent: 20.0,
  // //                     endIndent: 20.0,
  // //                   ),
  // //                 ),
  // //                 SizedBox(height: 30),
  // //                 Container(
  // //                   width: screenWidth,
  // //                   margin: EdgeInsets.symmetric(horizontal: 16),
  // //                   child: Row(
  // //                     children: [
  // //                       Expanded(
  // //                         child: _buildProcessedColumn(
  // //                           context,
  // //                           titleText: "En cours",
  // //                           statNumber: "51",
  // //                         ),
  // //                       ),
  // //                       SizedBox(width: 6),
  // //                       Expanded(
  // //                         child: _buildProcessedColumn(
  // //                           context,
  // //                           titleText: "Traitées",
  // //                           statNumber: "40",
  // //                         ),
  // //                       ),
  // //                       SizedBox(width: 6),
  // //                       Expanded(
  // //                         child: _buildProcessedColumn(
  // //                           context,
  // //                           titleText: "Refusées",
  // //                           statNumber: "5",
  // //                         ),
  // //                       )
  // //                     ],
  // //                   ),
  // //                 ),
  // //               ],
  // //             ),
  // //           ),
  // //         ),
  // //       ],
  // //     ),
  // //   );
  // // }
   Widget _buildMainStack(
      BuildContext context, double screenWidth, double screenHeight) {
    return SizedBox(
      height: 292.v,
      width: screenWidth,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: screenWidth,
              padding: EdgeInsets.symmetric(vertical: 20.v),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(20), // Adjusted for better styling
                image: DecorationImage(
                  image: AssetImage(
                      ImageConstant.imgGroup62), // Assuming local asset
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomAppBar(
                    leadingWidth: 35.h,
                    leading: GestureDetector(
                        onTap: () => _openMenu(context),
                        child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Icon(
                        Icons.menu, // Icône de menu
                        color: Colors.white, // Couleur de l'icône
                        ),
                      ),
                    ),

                    title: Container(
                      width: 1000.h, // Largeur du texte
                      child: Center(
                        child: Text(
                          'Demande d’achat', // Titre de la barre d'applications
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255), // Couleur du titre
                            fontSize: 30.h, // Taille du texte du titre
                          ),
                          overflow: TextOverflow
                              .ellipsis, // Pour gérer les débordements si le texte est trop long
                        ),
                      ),
                    ),
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(
                          1.h), // Hauteur de la ligne de séparation
                      child: Container(
                        color: Colors
                            .grey[800], // Couleur de la ligne de séparation
                        height: 1.h, // Hauteur de la ligne de séparation
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0), // Espace de 10 pixels en haut et en bas du Divider
                    child: Divider(
                      color: Colors.white,
                      thickness: 2.0,
                      height: 1.0,
                      indent: 20.0,
                      endIndent: 20.0,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Container(
                    width: screenWidth,
                    margin: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Row(
                      children: [
                        Expanded(
                          child: _buildProcessedColumn(
                            context,
                            titleText: "En cours",
                            statNumber: "51",
                          ),
                        ),
                        SizedBox(width: 6.h),
                        Expanded(
                          child: _buildProcessedColumn(
                            context,
                            titleText: "Traitées",
                            statNumber: "40",
                          ),
                        ),
                        SizedBox(width: 6.h),
                        Expanded(
                          child: _buildProcessedColumn(
                            context,
                            titleText: "Refusées",
                            statNumber: "5",
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: Row(
              children: [
                Expanded(
                  child: _buildProcessedColumn(
                    context,
                    titleText: "Appel d’offre",
                    statNumber: "6",
                  ),
                ),
                SizedBox(width: 6.h),
                Expanded(
                  child: _buildProcessedColumn(
                    context,
                    titleText: "Demande de prix",
                    statNumber: "14",
                  ),
                ),
                SizedBox(width: 6.h),
                Expanded(
                  child: _buildProcessedColumn(
                    context,
                    titleText: "Avenant",
                    statNumber: "20",
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFilterRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 36,
              decoration: BoxDecoration(
                color: appTheme.gray400,
                borderRadius: BorderRadius.circular(5),
              ),
              child: GestureDetector(
                onTap: () => _showFilterOptions(context),
                child: Center(
                  child: Text(
                    _selectedFilter ?? "Sélectionner un filtre",
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 4),
          Container(
            height: 36,
            width: 60,
              decoration: AppDecoration.fillGray400.copyWith(
              borderRadius: BorderRadius.circular(5.h),
            ),
            child: Center(
              child: CustomImageView(
                onTap:() => _createDemande(context),
                imagePath: ImageConstant.imgFilter,
                height: 18.h,
                width: 18.h,
            ),
          ),
          ),
        ],
      ),
    );
  }

  Widget _buildDemandList(BuildContext context) {
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: fetchDemandes(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Failed to load demandes'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No demandes available'));
        }

        List<Map<String, dynamic>> demandes = snapshot.data!;
        List<Map<String, dynamic>> filteredDemandes = _selectedFilter != null
            ? demandes.where((demande) => demande["validation"] == _selectedFilter).toList()
            : demandes;

        return ListView.builder(
          itemCount: filteredDemandes.length,
          itemBuilder: (context, index) {
            return _buildDemandCard(context, filteredDemandes[index]);
          },
        );
      },
    );
  }

  Widget _buildDemandCard(BuildContext context, Map<String, dynamic> demande) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          barrierDismissible: true,
          builder: (BuildContext dialogContext) {
            return AlertDialog(
              title: Text("Détails de la demande"),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Projet : ${demande["projet"]}", style: TextStyle(color: Colors.black)),
                  Text("Demandeur : ${demande["demandeur"]}", style: TextStyle(color: Colors.black)),
                  Text("Destinataire : ${demande["destinataire"]}", style: TextStyle(color: Colors.black)),
                  Text("Validation : ${demande["validation"]}", style: TextStyle(color: Colors.black)),
                  Text("Date Livraison : ${demande["dateLivraison"]}", style: TextStyle(color: Colors.black)),
                  Text("Date Traitement : ${demande["dateTraitement"]}", style: TextStyle(color: Colors.black)),
                ],
              ),
            );
          },
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Projet : ${demande["projet"]}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
              SizedBox(height: 4.0),
              Text("Demandeur : ${demande["demandeur"]}", style: TextStyle(color: Colors.black)),
              Text("Destinataire : ${demande["destinataire"]}", style: TextStyle(color: Colors.black)),
              SizedBox(height: 4.0),
              Text("Validation : ${demande["validation"]}", style: TextStyle(color: Colors.black)),
              Text("Date Livraison : ${demande["dateLivraison"]}", style: TextStyle(color: Colors.black)),
              Text("Date Traitement : ${demande["dateTraitement"]}", style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProcessedColumn(
    BuildContext context, {
    required String titleText,
    required String statNumber,
  }) {
    return Container(
      decoration: AppDecoration.fillBluegray700.copyWith(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10.v),
          Text(
            titleText,
            style: CustomTextStyles.titleMedium16.copyWith(
              color: appTheme.whiteA700,
            ),
          ),
          SizedBox(height: 8.v),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 6.v),
            decoration: AppDecoration.fillGray400,
            child: Center(
              child: Text(
                statNumber,
                style: theme.textTheme.titleLarge!.copyWith(
                  color: appTheme.whiteA700,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

 void _showFilterOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.all_inclusive, color: Colors.blue),
                title: Text("Tout"),
                onTap: () {
                  setState(() {
                    _selectedFilter = null;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green),
                title: Text("Validé"),
                onTap: () {
                  setState(() {
                    _selectedFilter = "Validé";
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.cancel, color: Colors.red),
                title: Text("Non Validé"),
                onTap: () {
                  setState(() {
                    _selectedFilter = "Non Validé";
                  });
                  Navigator.pop(context);
                },
              ),
              // Ajoutez d'autres options de filtre ici
            ],
          ),
        );
      },
    );
  }

  void _openMenu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuScreen);
  }     
  void _createDemande(BuildContext context) {
    print("Navigating to create demand screen");
    Navigator.pushNamed(context, AppRoutes.createDemandeScreen);
  }
}
