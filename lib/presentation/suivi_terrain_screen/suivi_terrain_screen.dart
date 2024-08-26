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
// //                     leadingWidth: 20.h,
// //                     leading: IconButton(
// //                       icon: Icon(
// //                         Icons.menu, // Icône de menu
// //                         color: Colors.white, // Couleur de l'icône
// //                       ),
// //                       onPressed: () => _openMenu(context),
// //                       padding: EdgeInsets.only(left: 20.h),
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
// // }
// // import 'package:flutter/material.dart';

// // class SuiviTerrainScreen extends StatelessWidget {
// //   final List<Map<String, String>> tasks = [
// //     {
// //       'libelle': 'Libelle',
// //       'description': 'Description',
// //       'dateDebut': '06/08/2018',
// //       'dateFinPrev': '24/08/2018',
// //       'chefChantier': 'Elachouri'
// //     },
// //     {
// //       'libelle': 'Libelle 2',
// //       'description': 'Description 2',
// //       'dateDebut': '06/08/2018',
// //       'dateFinPrev': '25/08/2018',
// //       'chefChantier': 'Rizqui'
// //     },
// //     {
// //       'libelle': 'Chantier N° 001',
// //       'description': 'Description 3',
// //       'dateDebut': '05/09/2018',
// //       'dateFinPrev': '20/09/2018',
// //       'chefChantier': 'Elachouri'
// //     },
// //   ];

// //   // SuiviTerrainScreen(BuildContext context);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Gestion de suivi des chantiers'),
// //       ),
// //       body: Column(
// //         children: [
// //           Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: SingleChildScrollView(
// //               scrollDirection: Axis.horizontal,
// //               child: Row(
// //                 children: [
// //                   ElevatedButton(
// //                     onPressed: () {
// //                       // Add task action
// //                     },
// //                     child: Text('Ajouter un chantier'),
// //                     style: ElevatedButton.styleFrom(
// //                       backgroundColor: Colors.blue,
// //                     ),
// //                   ),
// //                   SizedBox(width: 8.0),
// //                   ElevatedButton(
// //                     onPressed: () {
// //                       // Assign personnel action
// //                     },
// //                     child: Text('Affecter des personnel'),
// //                     style: ElevatedButton.styleFrom(
// //                       backgroundColor: Colors.green,
// //                     ),
// //                   ),
// //                   SizedBox(width: 8.0),
// //                   ElevatedButton(
// //                     onPressed: () {
// //                       // Attendance agenda action
// //                     },
// //                     child: Text('Agenda des présences'),
// //                     style: ElevatedButton.styleFrom(
// //                       backgroundColor: Colors.orange,
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //           Expanded(
// //             child: SingleChildScrollView(
// //               scrollDirection: Axis.horizontal,
// //               child: DataTable(
// //                 columns: [
// //                   DataColumn(label: Text('Libellé')),
// //                   DataColumn(label: Text('Description')),
// //                   DataColumn(label: Text('Date Début')),
// //                   DataColumn(label: Text('Date Fin Prev.')),
// //                   DataColumn(label: Text('Chef Chantier')),
// //                   DataColumn(label: Text('Actions')),
// //                 ],
// //                 rows: tasks.map((task) {
// //                   return DataRow(cells: [
// //                     DataCell(Text(task['libelle']!)),
// //                     DataCell(Text(task['description']!)),
// //                     DataCell(Text(task['dateDebut']!)),
// //                     DataCell(Text(task['dateFinPrev']!)),
// //                     DataCell(Text(task['chefChantier']!)),
// //                     DataCell(Row(
// //                       children: [
// //                         TextButton(
// //                           onPressed: () {
// //                             // Delete task action
// //                           },
// //                           child: Text('Supprimer', style: TextStyle(color: Colors.blue)),
// //                         ),
// //                         TextButton(
// //                           onPressed: () {
// //                             // Add attendance action
// //                           },
// //                           child: Text('Ajouter les présences', style: TextStyle(color: Colors.blue)),
// //                         ),
// //                         TextButton(
// //                           onPressed: () {
// //                             // Attendance agenda action
// //                           },
// //                           child: Text('Agenda des présences', style: TextStyle(color: Colors.blue)),
// //                         ),
// //                       ],
// //                     )),
// //                   ]);
// //                 }).toList(),
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:gecimmoa/core/app_export.dart';
// import 'package:gecimmoa/presentation/suivi_terrain_screen/widgets/AddChantierForm.dart';
// import 'package:gecimmoa/widgets/app_bar/custom_app_bar.dart';

// class TaskManagementScreen extends StatelessWidget {
//   @override
//   TaskManagementScreen({Key? key})
//       : super(
//           key: key,
//         );
//   List<Map<String, String>> tasks = [
//     {
//       'libelle': 'Libelle',
//       'description': 'Description',
//       'dateDebut': '06/08/2018',
//       'dateFinPrev': '24/08/2018',
//       'chefChantier': 'Elachouri'
//     },
//     {
//       'libelle': 'Libelle',
//       'description': 'Description',
//       'dateDebut': '06/08/2018',
//       'dateFinPrev': '24/08/2018',
//       'chefChantier': 'Elachouri'
//     },
//     {
//       'libelle': 'Libelle',
//       'description': 'Description',
//       'dateDebut': '06/08/2018',
//       'dateFinPrev': '24/08/2018',
//       'chefChantier': 'Elachouri'
//     },
//     {
//       'libelle': 'Libelle',
//       'description': 'Description',
//       'dateDebut': '06/08/2018',
//       'dateFinPrev': '24/08/2018',
//       'chefChantier': 'Elachouri'
//     },
//     {
//       'libelle': 'Libelle',
//       'description': 'Description',
//       'dateDebut': '06/08/2018',
//       'dateFinPrev': '24/08/2018',
//       'chefChantier': 'Elachouri'
//     },
//     {
//       'libelle': 'Libelle',
//       'description': 'Description',
//       'dateDebut': '06/08/2018',
//       'dateFinPrev': '24/08/2018',
//       'chefChantier': 'Elachouri'
//     },
//     {
//       'libelle': 'Libelle',
//       'description': 'Description',
//       'dateDebut': '06/08/2018',
//       'dateFinPrev': '24/08/2018',
//       'chefChantier': 'Elachouri'
//     },
//     {
//       'libelle': 'Libelle',
//       'description': 'Description',
//       'dateDebut': '06/08/2018',
//       'dateFinPrev': '24/08/2018',
//       'chefChantier': 'Elachouri'
//     },
//     {
//       'libelle': 'Libelle',
//       'description': 'Description',
//       'dateDebut': '06/08/2018',
//       'dateFinPrev': '24/08/2018',
//       'chefChantier': 'Elachouri'
//     },
//     {
//       'libelle': 'Libelle',
//       'description': 'Description',
//       'dateDebut': '06/08/2018',
//       'dateFinPrev': '24/08/2018',
//       'chefChantier': 'Elachouri'
//     },
//     {
//       'libelle': 'Libelle',
//       'description': 'Description',
//       'dateDebut': '06/08/2018',
//       'dateFinPrev': '24/08/2018',
//       'chefChantier': 'Elachouri'
//     },
//     {
//       'libelle': 'Libelle',
//       'description': 'Description',
//       'dateDebut': '06/08/2018',
//       'dateFinPrev': '24/08/2018',
//       'chefChantier': 'Elachouri'
//     },
//     {
//       'libelle': 'Libelle',
//       'description': 'Description',
//       'dateDebut': '06/08/2018',
//       'dateFinPrev': '24/08/2018',
//       'chefChantier': 'Elachouri'
//     },
//     {
//       'libelle': 'Libelle',
//       'description': 'Description',
//       'dateDebut': '06/08/2018',
//       'dateFinPrev': '24/08/2018',
//       'chefChantier': 'Elachouri'
//     },
//     {
//       'libelle': 'Libelle',
//       'description': 'Description',
//       'dateDebut': '06/08/2018',
//       'dateFinPrev': '24/08/2018',
//       'chefChantier': 'Elachouri'
//     },
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
//     {
//       'libelle': 'Chantier N° 001',
//       'description': 'Description 3',
//       'dateDebut': '05/09/2018',
//       'dateFinPrev': '20/09/2018',
//       'chefChantier': 'Elachouri'
//     },
//   ];

//   // @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     appBar: CustomAppBar( // Set as appBar in Scaffold
//   //       leadingWidth: 20.h,
//   //       leading: GestureDetector(
//   //         onTap: () => _openMenu(context),
//   //         child: Padding(
//   //           padding: EdgeInsets.only(left: 20.h),
//   //           child: Icon(
//   //             Icons.menu, // Icône de menu
//   //             color: Colors.white, // Couleur de l'icône
//   //           ),
//   //         ),
//   //       ),
//   //       title: Container(
//   //         width: 1000.h, // Largeur du texte
//   //         child: Center(
//   //           child: Text(
//   //             'Demande d’achat', // Titre de la barre d'applications
//   //             style: TextStyle(
//   //               color: Color.fromARGB(255, 255, 255, 255), // Couleur du titre
//   //               fontSize: 30.h, // Taille du texte du titre
//   //             ),
//   //             overflow: TextOverflow.ellipsis, // Pour gérer les débordements si le texte est trop long
//   //           ),
//   //         ),
//   //       ),
//   //       bottom: PreferredSize(
//   //         preferredSize: Size.fromHeight(1.h), // Hauteur de la ligne de séparation
//   //         child: Container(
//   //           color: Colors.grey[800], // Couleur de la ligne de séparation
//   //           height: 1.h, // Hauteur de la ligne de séparation
//   //         ),
//   //       ),
//   //     ),
//   //     body: Column(
//   //       children: [
//   //         Padding(
//   //           padding: const EdgeInsets.symmetric(vertical: 20.0), // Espace de 20 pixels en haut et en bas du Divider
//   //           child: Divider(
//   //             color: Colors.white,
//   //             thickness: 2.0,
//   //             height: 1.0,
//   //             indent: 20.0,
//   //             endIndent: 20.0,
//   //           ),
//   //         ),
//   //         Padding(
//   //           padding: const EdgeInsets.all(50.0),
//   //           child:SingleChildScrollView(
//   //             scrollDirection: Axis.horizontal,
//   //             child: Row(
//   //               children: [
//   //                 ElevatedButton(
//   //                   onPressed: () {
//   //                     // Button action
//   //                   },
//   //                   style: ElevatedButton.styleFrom(
//   //                     backgroundColor: Colors.blue, // Button background color
//   //                     foregroundColor: Colors.white, // Text color
//   //                     padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0), // Padding
//   //                     shape: RoundedRectangleBorder( // Rounded corners
//   //                       borderRadius: BorderRadius.circular(12.0),
//   //                     ),
//   //                     elevation: 5, // Elevation for shadow effect
//   //                     textStyle: TextStyle( // Custom text style
//   //                       fontSize: 16.0,
//   //                       fontWeight: FontWeight.bold,
//   //                     ),
//   //                   ),
//   //                   child: Text('Ajouter un chantier'),
//   //                 ),
//   //                 SizedBox(width: 40.0),
//   //                 ElevatedButton(
//   //                   onPressed: () {
//   //                     // Button action
//   //                   },
//   //                   style: ElevatedButton.styleFrom(
//   //                     backgroundColor: Colors.green, // Button background color
//   //                     foregroundColor: Colors.white, // Text color
//   //                     padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0), // Padding
//   //                     shape: RoundedRectangleBorder( // Rounded corners
//   //                       borderRadius: BorderRadius.circular(12.0),
//   //                     ),
//   //                     elevation: 5, // Elevation for shadow effect
//   //                     textStyle: TextStyle( // Custom text style
//   //                       fontSize: 16.0,
//   //                       fontWeight: FontWeight.bold,
//   //                     ),
//   //                   ),
//   //                   child: Text('Affecter des personnel'),
//   //                 ),
//   //                 SizedBox(width: 40.0),
//   //                 ElevatedButton(
//   //                   onPressed: () {
//   //                     // Button action
//   //                   },
//   //                   style: ElevatedButton.styleFrom(
//   //                     backgroundColor: Colors.orange, // Button background color
//   //                     foregroundColor: Colors.white, // Text color
//   //                     padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0), // Padding
//   //                     shape: RoundedRectangleBorder( // Rounded corners
//   //                       borderRadius: BorderRadius.circular(12.0),
//   //                     ),
//   //                     elevation: 5, // Elevation for shadow effect
//   //                     textStyle: TextStyle( // Custom text style
//   //                       fontSize: 16.0,
//   //                       fontWeight: FontWeight.bold,
//   //                     ),
//   //                   ),
//   //                   child: Text('Agenda des présences'),
//   //                 ),
//   //               ],
//   //             ),
//   //           ),
//   //         ),

//   //         Expanded(
//   //           child: SingleChildScrollView(
//   //             scrollDirection: Axis.vertical,
//   //             child: SingleChildScrollView(
//   //               scrollDirection: Axis.horizontal,
//   //               child: DataTable(
//   //                 columns: [
//   //                   DataColumn(label: Text('Libellé')),
//   //                   DataColumn(label: Text('Description')),
//   //                   DataColumn(label: Text('Date Début')),
//   //                   DataColumn(label: Text('Date Fin Prev.')),
//   //                   DataColumn(label: Text('Chef Chantier')),
//   //                   DataColumn(label: Text('Actions')),
//   //                 ],
//   //                 rows: tasks.map((task) {
//   //                   return DataRow(cells: [
//   //                     DataCell(Text(task['libelle']!)),
//   //                     DataCell(Text(task['description']!)),
//   //                     DataCell(Text(task['dateDebut']!)),
//   //                     DataCell(Text(task['dateFinPrev']!)),
//   //                     DataCell(Text(task['chefChantier']!)),
//   //                     DataCell(Row(
//   //                       children: [
//   //                         TextButton(
//   //                           onPressed: () {
//   //                             // Delete task action
//   //                           },
//   //                           child: Text('Supprimer', style: TextStyle(color: Colors.blue)),
//   //                         ),
//   //                         TextButton(
//   //                           onPressed: () {
//   //                             // Add attendance action
//   //                           },
//   //                           child: Text('Ajouter les présences', style: TextStyle(color: Colors.blue)),
//   //                         ),
//   //                         TextButton(
//   //                           onPressed: () {
//   //                             // Attendance agenda action
//   //                           },
//   //                           child: Text('Agenda des présences', style: TextStyle(color: Colors.blue)),
//   //                         ),
//   //                       ],
//   //                     )),
//   //                   ]);
//   //                 }).toList(),
//   //               ),
//   //             ),
//   //           ),
//   //         ),
//   //       ],
//   //     ),
//   //   );
//   // }

// //   void _openMenu(BuildContext context) {
// //     Navigator.pushNamed(context, AppRoutes.menuScreen);
// //   }
// // }
// //  @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: CustomAppBar( // Set as appBar in Scaffold
// //         leadingWidth: 35.h,
// //         leading: GestureDetector(
// //           onTap: () => _openMenu(context),
// //           child: Padding(
// //             padding: EdgeInsets.only(left: 20.h),
// //             child: Icon(
// //               Icons.menu, // Icône de menu
// //               color: Colors.white, // Couleur de l'icône
// //             ),
// //           ),
// //         ),
// //         title: Container(
// //           width: 1000.h, // Largeur du texte
// //           margin: EdgeInsets.only(
// //             top: 20.h,
// //               bottom: 5.h,
// //               right: 20.v),
// //           child: Center(
// //             child: Text(
// //               'Demande d’achat', // Titre de la barre d'applications
// //               style: TextStyle(
// //                 color: Color.fromARGB(255, 255, 255, 255), // Couleur du titre
// //                 fontSize: 30.h, // Taille du texte du titre
// //               ),
// //               overflow: TextOverflow.ellipsis, // Pour gérer les débordements si le texte est trop long
// //             ),
// //           ),
// //         ),
// //         bottom: PreferredSize(
// //           preferredSize: Size.fromHeight(1.h), // Hauteur de la ligne de séparation
// //           child: Container(
// //             color: Colors.grey[800], // Couleur de la ligne de séparation
// //             height: 1.h, // Hauteur de la ligne de séparation
// //           ),
// //         ),
// //       ),
// //       body: Column(
// //         children: [
// //           // Padding(
// //           //   padding: const EdgeInsets.symmetric(vertical: 20.0), // Espace de 20 pixels en haut et en bas du Divider
// //             // child:
// //             Divider(
// //               color: Colors.white,
// //               thickness: 2.0,
// //               height: 1.0,
// //               indent: 20.0,
// //               endIndent: 20.0,
// //             ),
// //           // ),
// //           Padding(
// //             padding: const EdgeInsets.all(50.0),
// //             child: SingleChildScrollView(
// //               scrollDirection: Axis.horizontal,
// //               child: Row(
// //                 children: [
// //                   ElevatedButton(
// //                     onPressed: () {
// //                       // Button action
// //                     },
// //                     style: ElevatedButton.styleFrom(
// //                       backgroundColor: Colors.blue, // Button background color
// //                       foregroundColor: Colors.white, // Text color
// //                       padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0), // Padding
// //                       shape: RoundedRectangleBorder( // Rounded corners
// //                         borderRadius: BorderRadius.circular(12.0),
// //                       ),
// //                       elevation: 5, // Elevation for shadow effect
// //                       textStyle: TextStyle( // Custom text style
// //                         fontSize: 16.0,
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                     ),
// //                     child: Text('Ajouter un chantier'),
// //                   ),
// //                   SizedBox(width: 50.0),
// //                   ElevatedButton(
// //                     onPressed: () {
// //                       // Button action
// //                     },
// //                     style: ElevatedButton.styleFrom(
// //                       backgroundColor: Colors.green, // Button background color
// //                       foregroundColor: Colors.white, // Text color
// //                       padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0), // Padding
// //                       shape: RoundedRectangleBorder( // Rounded corners
// //                         borderRadius: BorderRadius.circular(12.0),
// //                       ),
// //                       elevation: 5, // Elevation for shadow effect
// //                       textStyle: TextStyle( // Custom text style
// //                         fontSize: 16.0,
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                     ),
// //                     child: Text('Affecter des personnel'),
// //                   ),
// //                   SizedBox(width: 50.0),
// //                   ElevatedButton(
// //                     onPressed: () {
// //                       // Button action
// //                     },
// //                     style: ElevatedButton.styleFrom(
// //                       backgroundColor: Colors.orange, // Button background color
// //                       foregroundColor: Colors.white, // Text color
// //                       padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0), // Padding
// //                       shape: RoundedRectangleBorder( // Rounded corners
// //                         borderRadius: BorderRadius.circular(12.0),
// //                       ),
// //                       elevation: 5, // Elevation for shadow effect
// //                       textStyle: TextStyle( // Custom text style
// //                         fontSize: 16.0,
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                     ),
// //                     child: Text('Agenda des présences'),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //           Expanded(
// //             child: SingleChildScrollView(
// //               scrollDirection: Axis.vertical,
// //               child: SingleChildScrollView(
// //                 scrollDirection: Axis.horizontal,
// //                 child: DataTable(
// //                   columns: [
// //                     DataColumn(label: Text('Libellé')),
// //                     DataColumn(label: Text('Description')),
// //                     DataColumn(label: Text('Date Début')),
// //                     DataColumn(label: Text('Date Fin Prev.')),
// //                     DataColumn(label: Text('Chef Chantier')),
// //                     DataColumn(label: Text('Actions')),
// //                   ],
// //                   rows: tasks.map((task) {
// //                     return DataRow(cells: [
// //                       DataCell(Text(task['libelle']!)),
// //                       DataCell(Text(task['description']!)),
// //                       DataCell(Text(task['dateDebut']!)),
// //                       DataCell(Text(task['dateFinPrev']!)),
// //                       DataCell(Text(task['chefChantier']!)),
// //                       DataCell(Row(
// //                         children: [
// //                           TextButton(
// //                             onPressed: () {
// //                               // Delete task action
// //                             },
// //                             child: Text('Supprimer', style: TextStyle(color: Colors.blue)),
// //                           ),
// //                           TextButton(
// //                             onPressed: () {
// //                               // Add attendance action
// //                             },
// //                             child: Text('Ajouter les présences', style: TextStyle(color: Colors.blue)),
// //                           ),
// //                           TextButton(
// //                             onPressed: () {
// //                               // Attendance agenda action
// //                             },
// //                             child: Text('Agenda des présences', style: TextStyle(color: Colors.blue)),
// //                           ),
// //                         ],
// //                       )),
// //                     ]);
// //                   }).toList(),
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// //   }

// //   void _openMenu(BuildContext context) {
// //     Navigator.pushNamed(context, AppRoutes.menuScreen);
// //     }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(
//             height: 72.v,
//             width: MediaQuery.of(context).size.width,
//             child: Stack(
//               alignment: Alignment.bottomCenter,
//               children: [
//                 Align(
//                   alignment: Alignment.topCenter,
//                   child: Container(
//                     width: MediaQuery.of(context).size.width,
//                     padding: EdgeInsets.symmetric(vertical: 20.v),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       image: DecorationImage(
//                         image: AssetImage(ImageConstant.imgGroup62),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     child: CustomAppBar(
//                       leadingWidth: 35.h,
//                       leading: GestureDetector(
//                         onTap: () => _openMenu(context),
//                         child: Padding(
//                           padding: EdgeInsets.only(left: 20.h),
//                           child: Icon(
//                             Icons.menu,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                       title: Container(
//                         width: 1000.h,
//                         child: Center(
//                           child: Text(
//                             'Demande d’achat',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 30.h,
//                             ),
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                         ),
//                       ),
//                       bottom: PreferredSize(
//                         preferredSize: Size.fromHeight(1.h),
//                         child: Container(
//                           color: Colors.grey[800],
//                           height: 1.h,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // Padding(
//           //   padding: const EdgeInsets.symmetric(vertical: 10.0),
//           //   child:
//           Divider(
//               color: Colors.white,
//               thickness: 2.0,
//               height: 1.0,
//               indent: 20.0,
//               endIndent: 20.0,
//             ),
//           Padding(
//             padding: const EdgeInsets.all(50.0),
//             child: SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {
//                       // Button action
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => AddChantierForm()),
//                         );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.blue,
//                       foregroundColor: Colors.white,
//                       padding: EdgeInsets.symmetric(
//                           horizontal: 24.0, vertical: 12.0),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12.0),
//                       ),
//                       elevation: 5,
//                       textStyle: TextStyle(
//                         fontSize: 16.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     child: Text('Ajouter un chantier'),
//                   ),
//                   SizedBox(width: 50.0),
//                   ElevatedButton(
//                     onPressed: () {
//                       // Button action
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.green,
//                       foregroundColor: Colors.white,
//                       padding: EdgeInsets.symmetric(
//                           horizontal: 24.0, vertical: 12.0),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12.0),
//                       ),
//                       elevation: 5,
//                       textStyle: TextStyle(
//                         fontSize: 16.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     child: Text('Affecter des personnel'),
//                   ),
//                   SizedBox(width: 50.0),
//                   ElevatedButton(
//                     onPressed: () {
//                       // Button action
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.orange,
//                       foregroundColor: Colors.white,
//                       padding: EdgeInsets.symmetric(
//                           horizontal: 24.0, vertical: 12.0),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12.0),
//                       ),
//                       elevation: 5,
//                       textStyle: TextStyle(
//                         fontSize: 16.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     child: Text('Agenda des présences'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: SingleChildScrollView(
//               scrollDirection: Axis.vertical,
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: DataTable(
//                   columns: [
//                     DataColumn(label: Text('Libellé')),
//                     DataColumn(label: Text('Description')),
//                     DataColumn(label: Text('Date Début')),
//                     DataColumn(label: Text('Date Fin Prev.')),
//                     DataColumn(label: Text('Chef Chantier')),
//                     DataColumn(label: Text('Actions')),
//                   ],
//                   rows: tasks.map((task) {
//                     return DataRow(cells: [
//                       DataCell(Text(task['libelle']!)),
//                       DataCell(Text(task['description']!)),
//                       DataCell(Text(task['dateDebut']!)),
//                       DataCell(Text(task['dateFinPrev']!)),
//                       DataCell(Text(task['chefChantier']!)),
//                       DataCell(Row(
//                         children: [
//                           TextButton(
//                             onPressed: () {
//                               // Delete task action
//                             },
//                             child: Text('Supprimer',
//                                 style: TextStyle(color: Colors.blue)),
//                           ),
//                           TextButton(
//                             onPressed: () {
//                               // Add attendance action
//                             },
//                             child: Text('Ajouter les présences',
//                                 style: TextStyle(color: Colors.blue)),
//                           ),
//                           TextButton(
//                             onPressed: () {
//                               // Attendance agenda action
//                             },
//                             child: Text('Agenda des présences',
//                                 style: TextStyle(color: Colors.blue)),
//                           ),
//                         ],
//                       )),
//                     ]);
//                   }).toList(),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _openMenu(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.menuScreen);
//   }
// }

// // @override
// // Widget build(BuildContext context) {
// //   return Scaffold(
// // appBar: AppBar(
// //   title: Text('Gestion de suivi des chantiers'),
// // ),
// // CustomAppBar(
// //               // leadingWidth: 38.h,
// //               // leading: IconButton(
// //               //   icon: Icon(
// //               //     Icons.menu, // Icône de menu
// //               //     color: Colors.white, // Couleur de l'icône
// //               //   ),
// //               //   onPressed: () => _openMenu(context),
// //               //   padding: EdgeInsets.only(left: 20.h),
// //               // ),
// //               leadingWidth: 35.h,
// //               leading: GestureDetector(
// //                   onTap: () => _openMenu(context),
// //                   child: Padding(
// //                   padding: EdgeInsets.only(left: 20.h),
// //                   child: Icon(
// //                   Icons.menu, // Icône de menu
// //                   color: Colors.white, // Couleur de l'icône
// //                   ),
// //                 ),
// //               ),

// //               title: Container(
// //                 width: 1000.h, // Largeur du texte
// //                 // margin: EdgeInsets.only(
// //                 //     bottom: 5.h,
// //                 //     right: 20.v), // Marges du texte
// //                 child: Center(
// //                   child: Text(
// //                     'Demande d’achat', // Titre de la barre d'applications
// //                     style: TextStyle(
// //                       color: Color.fromARGB(255, 255, 255, 255), // Couleur du titre
// //                       fontSize: 30.h, // Taille du texte du titre
// //                     ),
// //                     overflow: TextOverflow
// //                         .ellipsis, // Pour gérer les débordements si le texte est trop long
// //                   ),
// //                 ),
// //               ),
// //               bottom: PreferredSize(
// //                 preferredSize: Size.fromHeight(
// //                     1.h), // Hauteur de la ligne de séparation
// //                 child: Container(
// //                   color: Colors
// //                       .grey[800], // Couleur de la ligne de séparation
// //                   height: 1.h, // Hauteur de la ligne de séparation
// //                 ),
// //               ),
// //             ),
// //       body: Column(
// //         children: [
// //           Padding(
// //             padding: const EdgeInsets.all(50.0),
// //             child: SingleChildScrollView(
// //               scrollDirection: Axis.horizontal,
// //               child: Row(
// //                 children: [
// //                   // ElevatedButton(
// //                   //   onPressed: () {
// //                   //     // Add task action
// //                   //   },
// //                   //   child: Text('Ajouter un chantier'),
// //                   //   style: ElevatedButton.styleFrom(
// //                   //     backgroundColor: Colors.blue,
// //                   //     foregroundColor: Colors.white,
// //                   //   ),
// //                   // ),
// //                   ElevatedButton(
// //                     onPressed: () {
// //                       // Button action
// //                     },
// //                     style: ElevatedButton.styleFrom(
// //                       backgroundColor: Colors.blue,       // Button background color
// //                       foregroundColor: Colors.white,      // Text color
// //                       padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0), // Padding
// //                       shape: RoundedRectangleBorder(      // Rounded corners
// //                         borderRadius: BorderRadius.circular(12.0),
// //                       ),
// //                       elevation: 5,                       // Elevation for shadow effect
// //                       textStyle: TextStyle(               // Custom text style
// //                         fontSize: 16.0,
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                     ),
// //                     child: Text('Ajouter un chantier'),
// //                   ),
// //                   SizedBox(width: 50.0),
// //                   // ElevatedButton(
// //                   //   onPressed: () {
// //                   //     // Assign personnel action
// //                   //   },
// //                   //   child: Text('Affecter des personnel'),
// //                   //   style: ElevatedButton.styleFrom(
// //                   //     backgroundColor: Colors.green,
// //                   //   ),
// //                   // ),
// //                   ElevatedButton(
// //                     onPressed: () {
// //                       // Button action
// //                     },
// //                     style: ElevatedButton.styleFrom(
// //                       backgroundColor: Colors.green,       // Button background color
// //                       foregroundColor: Colors.white,      // Text color
// //                       padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0), // Padding
// //                       shape: RoundedRectangleBorder(      // Rounded corners
// //                         borderRadius: BorderRadius.circular(12.0),
// //                       ),
// //                       elevation: 5,                       // Elevation for shadow effect
// //                       textStyle: TextStyle(               // Custom text style
// //                         fontSize: 16.0,
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                     ),
// //                     child: Text('Affecter des personnel'),
// //                   ),
// //                   SizedBox(width: 50.0),
// //                   // ElevatedButton(
// //                   //   onPressed: () {
// //                   //     // Attendance agenda action
// //                   //   },
// //                   //   child: Text('Agenda des présences'),
// //                   //   style: ElevatedButton.styleFrom(
// //                   //     backgroundColor: Colors.orange,
// //                   //   ),
// //                   // ),
// //                   ElevatedButton(
// //                     onPressed: () {
// //                       // Button action
// //                     },
// //                     style: ElevatedButton.styleFrom(
// //                       backgroundColor: Colors.orange,       // Button background color
// //                       foregroundColor: Colors.white,      // Text color
// //                       padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0), // Padding
// //                       shape: RoundedRectangleBorder(      // Rounded corners
// //                         borderRadius: BorderRadius.circular(12.0),
// //                       ),
// //                       elevation: 5,                       // Elevation for shadow effect
// //                       textStyle: TextStyle(               // Custom text style
// //                         fontSize: 16.0,
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                     ),
// //                     child: Text('Agenda des présences'),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //           Expanded(
// //             child: SingleChildScrollView(
// //               scrollDirection: Axis.vertical,
// //             child: SingleChildScrollView(
// //               scrollDirection: Axis.horizontal,
// //               child: DataTable(
// //                 columns:  [
// //                   DataColumn(label: Text('Libellé')),
// //                   DataColumn(label: Text('Description')),
// //                   DataColumn(label: Text('Date Début')),
// //                   DataColumn(label: Text('Date Fin Prev.')),
// //                   DataColumn(label: Text('Chef Chantier')),
// //                   DataColumn(label: Text('Actions')),
// //                 ],
// //                 rows: tasks.map((task) {
// //                   return DataRow(cells: [
// //                     DataCell(Text(task['libelle']!)),
// //                     DataCell(Text(task['description']!)),
// //                     DataCell(Text(task['dateDebut']!)),
// //                     DataCell(Text(task['dateFinPrev']!)),
// //                     DataCell(Text(task['chefChantier']!)),
// //                     DataCell(Row(
// //                       children: [
// //                         TextButton(
// //                           onPressed: () {
// //                             // Delete task action
// //                           },
// //                           child: Text('Supprimer',
// //                               style: TextStyle(color: Colors.blue)),
// //                         ),
// //                         TextButton(
// //                           onPressed: () {
// //                             // Add attendance action
// //                           },
// //                           child: Text('Ajouter les présences',
// //                               style: TextStyle(color: Colors.blue)),
// //                         ),
// //                         TextButton(
// //                           onPressed: () {
// //                             // Attendance agenda action
// //                           },
// //                           child: Text('Agenda des présences',
// //                               style: TextStyle(color: Colors.blue)),
// //                         ),
// //                       ],
// //                     )),
// //                   ]);
// //                 }).toList(),
// //               ),
// //             ),
// //           ),
// //           )
// //         ],
// //       ),
// //     );
// //   }
// // }
// //  void _openMenu(BuildContext context) {
// //     Navigator.pushNamed(context, AppRoutes.menuScreen);
// //   }
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http; // Add this import
// import 'dart:convert'; // For JSON decoding
// import 'package:gecimmoa/core/app_export.dart';
// import 'package:gecimmoa/presentation/suivi_terrain_screen/widgets/AddChantierForm.dart';
// import 'package:gecimmoa/widgets/app_bar/custom_app_bar.dart';

// class TaskManagementScreen extends StatefulWidget {
//   @override
//   _TaskManagementScreenState createState() => _TaskManagementScreenState();
// }

// class _TaskManagementScreenState extends State<TaskManagementScreen> {
//   List<Map<String, String>> tasks = [];
//   bool isLoading = true;
//   String errorMessage = '';

//   @override
//   void initState() {
//     super.initState();
//     _fetchTasks();
//   }
//   Future<void> _fetchTasks() async {
//   try {
//     final response = await http.get(Uri.parse('http://localhost:3000/addChantier'));
//     print('Response status: ${response.statusCode}');
//     print('Response body: ${response.body}');

//     if (response.statusCode == 200) {
//       final List<dynamic> data = json.decode(response.body);
//       setState(() {
//         tasks = data.map<Map<String, String>>((task) {
//           return {
//             'libelle': task['libelle'] as String? ?? '',
//             'description': task['description'] as String? ?? '',
//             'dateDebut': task['dateDebut'] as String? ?? '',
//             'dateFinPrev': task['dateFinPrev'] as String? ?? '',
//             'chefChantier': task['chefChantier'] as String? ?? '',
//           };
//         }).toList();
//         isLoading = false;
//       });
//     } else {
//       throw Exception('Failed to load tasks. Status code: ${response.statusCode}');
//     }
//   } catch (e) {
//     setState(() {
//       isLoading = false;
//       errorMessage = 'Error fetching tasks: $e';
//     });
//     print(e);
//   }
// }

//   // Future<void> _fetchTasks() async {
//   //   try {
//   //     final response = await http.get(Uri.parse('http://localhost:3000/addChantier'));
//   //     if (response.statusCode == 200) {
//   //       final List<dynamic> data = json.decode(response.body);
//   //       setState(() {
//   //         tasks = data.map<Map<String, String>>((task) {
//   //           return {
//   //             'libelle': task['libelle'] as String? ?? '',
//   //             'description': task['description'] as String? ?? '',
//   //             'dateDebut': task['dateDebut'] as String? ?? '',
//   //             'dateFinPrev': task['dateFinPrev'] as String? ?? '',
//   //             'chefChantier': task['chefChantier'] as String? ?? '',
//   //           };
//   //         }).toList();
//   //         isLoading = false;
//   //       });
//   //     } else {
//   //       throw Exception('Failed to load tasks');
//   //     }
//   //   } catch (e) {
//   //     setState(() {
//   //       isLoading = false;
//   //       errorMessage = 'Error fetching tasks: $e';
//   //     });
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(
//             height: 72.v,
//             width: MediaQuery.of(context).size.width,
//             child: Stack(
//               alignment: Alignment.bottomCenter,
//               children: [
//                 Align(
//                   alignment: Alignment.topCenter,
//                   child: Container(
//                     width: MediaQuery.of(context).size.width,
//                     padding: EdgeInsets.symmetric(vertical: 20.v),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       image: DecorationImage(
//                         image: AssetImage(ImageConstant.imgGroup62),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     child: CustomAppBar(
//                       leadingWidth: 35.h,
//                       leading: GestureDetector(
//                         onTap: () => _openMenu(context),
//                         child: Padding(
//                           padding: EdgeInsets.only(left: 20.h),
//                           child: Icon(
//                             Icons.menu,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                       title: Container(
//                         width: 1000.h,
//                         child: Center(
//                           child: Text(
//                             'Suivi chantier',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 30.h,
//                             ),
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                         ),
//                       ),
//                       bottom: PreferredSize(
//                         preferredSize: Size.fromHeight(1.h),
//                         child: Container(
//                           color: Colors.grey[800],
//                           height: 1.h,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Divider(
//             color: Colors.white,
//             thickness: 2.0,
//             height: 1.0,
//             indent: 20.0,
//             endIndent: 20.0,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(50.0),
//             child: SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => AddChantierForm()),
//                       );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.blue,
//                       foregroundColor: Colors.white,
//                       padding: EdgeInsets.symmetric(
//                           horizontal: 24.0, vertical: 12.0),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12.0),
//                       ),
//                       elevation: 5,
//                       textStyle: TextStyle(
//                         fontSize: 16.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     child: Text('Ajouter un chantier'),
//                   ),
//                   SizedBox(width: 50.0),
//                   ElevatedButton(
//                     onPressed: () {
//                       // Button action
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.green,
//                       foregroundColor: Colors.white,
//                       padding: EdgeInsets.symmetric(
//                           horizontal: 24.0, vertical: 12.0),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12.0),
//                       ),
//                       elevation: 5,
//                       textStyle: TextStyle(
//                         fontSize: 16.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     child: Text('Affecter des personnel'),
//                   ),
//                   SizedBox(width: 50.0),
//                   ElevatedButton(
//                     onPressed: () {
//                       // Button action
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.orange,
//                       foregroundColor: Colors.white,
//                       padding: EdgeInsets.symmetric(
//                           horizontal: 24.0, vertical: 12.0),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12.0),
//                       ),
//                       elevation: 5,
//                       textStyle: TextStyle(
//                         fontSize: 16.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     child: Text('Agenda des présences'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: isLoading
//                 ? Center(child: CircularProgressIndicator())
//                 : errorMessage.isNotEmpty
//                     ? Center(child: Text(errorMessage))
//                     : SingleChildScrollView(
//                         scrollDirection: Axis.vertical,
//                         child: SingleChildScrollView(
//                           scrollDirection: Axis.horizontal,
//                           child: DataTable(
//                             columns: [
//                               DataColumn(label: Text('Libellé')),
//                               DataColumn(label: Text('Description')),
//                               DataColumn(label: Text('Date Début')),
//                               DataColumn(label: Text('Date Fin Prev.')),
//                               DataColumn(label: Text('Chef Chantier')),
//                               DataColumn(label: Text('Actions')),
//                             ],
//                             rows: tasks.map((task) {
//                               return DataRow(cells: [
//                                 DataCell(Text(task['libelle']!)),
//                                 DataCell(Text(task['description']!)),
//                                 DataCell(Text(task['dateDebut']!)),
//                                 DataCell(Text(task['dateFinPrev']!)),
//                                 DataCell(Text(task['chefChantier']!)),
//                                 DataCell(Row(
//                                   children: [
//                                     TextButton(
//                                       onPressed: () {
//                                         // Delete task action
//                                       },
//                                       child: Text('Supprimer',
//                                           style: TextStyle(color: Colors.blue)),
//                                     ),
//                                     TextButton(
//                                       onPressed: () {
//                                         // Add attendance action
//                                       },
//                                       child: Text('Ajouter les présences',
//                                           style: TextStyle(color: Colors.blue)),
//                                     ),
//                                     TextButton(
//                                       onPressed: () {
//                                         // Attendance agenda action
//                                       },
//                                       child: Text('Agenda des présences',
//                                           style: TextStyle(color: Colors.blue)),
//                                     ),
//                                   ],
//                                 )),
//                               ]);
//                             }).toList(),
//                           ),
//                         ),
//                       ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _openMenu(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.menuScreen);
//   }
// }
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:gecimmoa/core/app_export.dart';
import 'package:http/http.dart' as http;
import 'package:gecimmoa/widgets/app_bar/custom_app_bar.dart';
import 'package:gecimmoa/presentation/suivi_terrain_screen/widgets/AddChantierForm.dart';
import 'package:table_calendar/table_calendar.dart';

class TaskManagementScreen extends StatefulWidget {
  @override
  _TaskManagementScreenState createState() => _TaskManagementScreenState();
}

class _TaskManagementScreenState extends State<TaskManagementScreen> {
  List<Map<String, dynamic>> tasks = [];
  bool isLoading = true;
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    _fetchTasks();
  }

  final Map<DateTime, List<String>> _agenda = {};

  Future<void> _fetchTasks() async {
    try {
      final response = await http
          .get(Uri.parse('http://localhost:3000/chantiers'));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        setState(() {
          tasks = data.map<Map<String, dynamic>>((task) {
            return {
              '_id': task['_id'],
              'libelle': task['libelle'],
              'description': task['description'],
              'dateDebut': task['dateDebut'],
              'dateFinPrev': task['dateFinPrev'],
              'chefChantier': task['chefChantier'],
            };
          }).toList();
          isLoading = false;
        });
      } else {
        throw Exception('Failed to load tasks');
      }
    } catch (e) {
      setState(() {
        isLoading = false;
        errorMessage = 'Error fetching tasks: $e';
      });
    }
  }
  //  Future<void> _confirmDeleteTask(BuildContext context, String id) async {
  //   return showDialog<void>(
  //     context: context,
  //     barrierDismissible: false, // User must tap a button to dismiss
  //     builder: (BuildContext context) { 
  //       return Theme(
  //         data: Theme.of(context).copyWith(
  //           dialogBackgroundColor: Colors.grey[900], // Background color
  //           textTheme: TextTheme(
  //             bodyText1: TextStyle(color: Colors.white), // Text color
  //             bodyText2: TextStyle(color: Colors.white),
  //             button: TextStyle(color: Colors.blue), // Button text color
  //           ),
  //         ),
  //         child:AlertDialog(
  //         title: Text('Confirmation'),
  //         content: SingleChildScrollView(
  //           child: ListBody(
  //             children: <Widget>[
  //               Text('Are you sure you want to delete this chantier?'),
  //             ],
  //           ),
  //         ),
  //         actions: <Widget>[
  //           TextButton(
  //             child: Text('Cancel'),
  //             onPressed: () {
  //               Navigator.of(context).pop(); // Close the dialog
  //             },
  //           ),
  //           TextButton(
  //             child: Text('Delete'),
  //             onPressed: () {
  //               Navigator.of(context).pop(); // Close the dialog
  //               _deleteTask(id); // Perform the deletion
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
  Future<void> _confirmDeleteTask(BuildContext context, String id) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Theme(
          data: Theme.of(context).copyWith(
            dialogBackgroundColor: appTheme.gray400, // Background color
            textTheme: TextTheme(
              bodyText1: TextStyle(color: Colors.white), // Text color
              bodyText2: TextStyle(color: Colors.white),
              button: TextStyle(color: Colors.blue), // Button text color
            ),
          ),
          child: AlertDialog(
            title: Text('Confirmation'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Are you sure you want to delete this chantier?'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Text('Delete'),
                onPressed: () {
                  Navigator.of(context).pop();
                  _deleteTask(id);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _deleteTask(String id) async {
    try {
      final response = await http.delete(Uri.parse('http://localhost:3000/chantiers/$id'));

      if (response.statusCode == 200) {
        setState(() {
          tasks.removeWhere((task) => task['_id'] == id);
        });
      } else {
        throw Exception('Failed to delete task');
      }
    } catch (e) {
      setState(() {
        errorMessage = 'Error deleting task: $e';
      });
    }
  }

  // void _showAttendanceAgenda(BuildContext context) {
  // DateTime _selectedDay = DateTime.now();

  // void _addTaskForDay(DateTime day, String task) {
  //   setState(() {
  //     if (_agenda[day] == null) {
  //       _agenda[day] = [];
  //     }
  //     _agenda[day]!.add(task);
  //   });
  // }

  // void _showAddTaskDialog(BuildContext ctx) {
  //   final _taskController = TextEditingController();

  //   showDialog(
  //     context: ctx,
  //     builder: (context) => AlertDialog(
  //       title: Text('Ajouter une tâche'),
  //       content: TextField(
  //         controller: _taskController,
  //         decoration: InputDecoration(hintText: 'Saisir la tâche'),
  //       ),
  //       actions: [
  //         TextButton(
  //           child: Text('Annuler'),
  //           onPressed: () => Navigator.of(context).pop(),
  //         ),
  //         ElevatedButton(
  //           child: Text('Ajouter'),
  //           onPressed: () {
  //             if (_taskController.text.isNotEmpty) {
  //               _addTaskForDay(_selectedDay, _taskController.text);
  //               Navigator.of(context).pop();
  //             }
  //           },
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // showDialog(
  //   context: context,
  //   builder: (ctx) => StatefulBuilder(
  //     builder: (BuildContext context, StateSetter setState) {
  //       return AlertDialog(
  //         title: Text('Agenda des présences'),
  //         content: SizedBox(
  //           width: double.maxFinite, // Set a max width for the dialog content
  //           child: SingleChildScrollView(
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
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
  //                 _agenda[_selectedDay]?.isNotEmpty == true
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
  //         ),
  //         actions: [
  //           TextButton(
  //             child: Text('Annuler'),
  //             onPressed: () => Navigator.of(ctx).pop(),
  //           ),
  //           ElevatedButton(
  //             child: Text('Ajouter tâche'),
  //             onPressed: () => _showAddTaskDialog(ctx),
  //           ),
  //         ],
  //       );
  //     },
  //   ),
  // );
  // }

//   void _showAttendanceAgenda(BuildContext context) {
//   DateTime _selectedDay = DateTime.now();

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
//         title: Text(
//           'Ajouter une tâche',
//           style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo),
//         ),
//         content: TextField(
//           controller: _taskController,
//           decoration: InputDecoration(
//             hintText: 'Saisir la tâche',
//             border: OutlineInputBorder(),
//           ),
//         ),
//         actions: [
//           TextButton(
//             child: Text(
//               'Annuler',
//               style: TextStyle(color: Colors.redAccent),
//             ),
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
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.green,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//             ),
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
//           title: Text(
//             'Agenda des présences',
//             style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo),
//           ),
//           content: SizedBox(
//             width: double.maxFinite,
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   TableCalendar(
//                     calendarStyle: CalendarStyle(
//                       todayDecoration: BoxDecoration(
//                         color: Colors.blueAccent,
//                         shape: BoxShape.circle,
//                       ),
//                       selectedDecoration: BoxDecoration(
//                         color: Colors.orangeAccent,
//                         shape: BoxShape.circle,
//                       ),
//                       outsideDaysVisible: false,
//                       weekendTextStyle: TextStyle(color: Colors.red),
//                       defaultTextStyle: TextStyle(color: Colors.black),
//                     ),
//                     headerStyle: HeaderStyle(
//                       formatButtonVisible: false,
//                       titleCentered: true,
//                       titleTextStyle: TextStyle(
//                         fontSize: 18.0,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.indigo,
//                       ),
//                       leftChevronIcon: Icon(Icons.chevron_left, color: Colors.indigo),
//                       rightChevronIcon: Icon(Icons.chevron_right, color: Colors.indigo),
//                     ),
//                     firstDay: DateTime.utc(2020, 1, 1),
//                     lastDay: DateTime.utc(2100, 12, 31),
//                     focusedDay: _selectedDay,
//                     selectedDayPredicate: (day) => isSameDay(day, _selectedDay),
//                     onDaySelected: (selectedDay, focusedDay) {
//                       setState(() {
//                         _selectedDay = selectedDay;
//                       });
//                     },
//                   ),
//                   SizedBox(height: 16.0),
//                   _agenda[_selectedDay]?.isNotEmpty == true
//                       ? Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: _agenda[_selectedDay]!.map((task) {
//                             return ListTile(
//                               leading: Icon(Icons.check_circle, color: Colors.green),
//                               title: Text(task),
//                               trailing: Icon(Icons.delete, color: Colors.redAccent),
//                               onTap: () {
//                                 setState(() {
//                                   _agenda[_selectedDay]!.remove(task);
//                                 });
//                               },
//                             );
//                           }).toList(),
//                         )
//                       : Center(
//                           child: Text(
//                             'Aucune tâche ajoutée pour ce jour.',
//                             style: TextStyle(color: Colors.grey),
//                           ),
//                         ),
//                 ],
//               ),
//             ),
//           ),
//           actions: [
//             TextButton(
//               child: Text(
//                 'Annuler',
//                 style: TextStyle(color: Colors.redAccent),
//               ),
//               onPressed: () => Navigator.of(ctx).pop(),
//             ),
//             ElevatedButton(
//               child: Text('Ajouter tâche'),
//               onPressed: () => _showAddTaskDialog(ctx),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.green,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//             ),
//           ],
//         );
//       },
//     ),
//   );
// }
// // void _showAttendanceAgenda(BuildContext context) {
// //   DateTime _selectedDay = DateTime.now();

// //   void _addTaskForDay(DateTime day, String task) {
// //     setState(() {
// //       if (_agenda[day] == null) {
// //         _agenda[day] = [];
// //       }
// //       _agenda[day]!.add(task);
// //     });
// //   }

// //   void _showAddTaskDialog(BuildContext ctx) {
// //     final _taskController = TextEditingController();

// //     showDialog(
// //       context: ctx,
// //       builder: (context) => AlertDialog(
// //         title: Text(
// //           'Ajouter une tâche',
// //           style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo),
// //         ),
// //         content: TextField(
// //           controller: _taskController,
// //           style: TextStyle(color: Colors.black), // Set text color to black
// //           decoration: InputDecoration(
// //             hintText: 'Saisir la tâche',
// //             hintStyle: TextStyle(color: Colors.grey), // Set hint text color
// //             border: OutlineInputBorder(
// //               borderRadius: BorderRadius.circular(12), // Rounded corners
// //               borderSide: BorderSide(
// //                 color: Colors.indigo, // Border color
// //                 width: 2, // Border width
// //               ),
// //             ),
// //             focusedBorder: OutlineInputBorder(
// //               borderRadius: BorderRadius.circular(12), // Rounded corners
// //               borderSide: BorderSide(
// //                 color: Colors.indigo, // Border color when focused
// //                 width: 2, // Border width when focused
// //               ),
// //             ),
// //           ),
// //         ),
// //         actions: [
// //           TextButton(
// //             child: Text(
// //               'Annuler',
// //               style: TextStyle(color: Colors.redAccent),
// //             ),
// //             onPressed: () => Navigator.of(context).pop(),
// //           ),
// //           ElevatedButton(
// //             child: Text('Ajouter'),
// //             onPressed: () {
// //               if (_taskController.text.isNotEmpty) {
// //                 _addTaskForDay(_selectedDay, _taskController.text);
// //                 Navigator.of(context).pop();
// //               }
// //             },
// //             style: ElevatedButton.styleFrom(
// //               backgroundColor: Colors.green,
// //               padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
// //               shape: RoundedRectangleBorder(
// //                 borderRadius: BorderRadius.circular(8),
// //               ),
// //               elevation: 5,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   showDialog(
// //     context: context,
// //     builder: (ctx) => StatefulBuilder(
// //       builder: (BuildContext context, StateSetter setState) {
// //         return AlertDialog(
// //           title: Text(
// //             'Agenda des présences',
// //             style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo),
// //           ),
// //           content: SizedBox(
// //             width: double.maxFinite, // Set a fixed width for the dialog
// //             child: SingleChildScrollView(
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   TableCalendar(
// //                     calendarStyle: CalendarStyle(
// //                       todayDecoration: BoxDecoration(
// //                         color: Colors.blueAccent,
// //                         shape: BoxShape.circle,
// //                       ),
// //                       selectedDecoration: BoxDecoration(
// //                         color: Colors.orangeAccent,
// //                         shape: BoxShape.circle,
// //                       ),
// //                       outsideDaysVisible: true, // Ensure outside days are visible
// //                       weekendTextStyle: TextStyle(color: Colors.red),
// //                       defaultTextStyle: TextStyle(color: Colors.black),
// //                     ),
// //                     headerStyle: HeaderStyle(
// //                       formatButtonVisible: false,
// //                       titleCentered: true,
// //                       titleTextStyle: TextStyle(
// //                         fontSize: 18.0,
// //                         fontWeight: FontWeight.bold,
// //                         color: Colors.indigo,
// //                       ),
// //                       leftChevronIcon: Icon(Icons.chevron_left, color: Colors.indigo),
// //                       rightChevronIcon: Icon(Icons.chevron_right, color: Colors.indigo),
// //                     ),
// //                     firstDay: DateTime.utc(2020, 1, 1),
// //                     lastDay: DateTime.utc(2100, 12, 31),
// //                     focusedDay: _selectedDay,
// //                     selectedDayPredicate: (day) => isSameDay(day, _selectedDay),
// //                     onDaySelected: (selectedDay, focusedDay) {
// //                       setState(() {
// //                         _selectedDay = selectedDay;
// //                       });
// //                     },
// //                   ),
// //                   SizedBox(height: 16.0),
// //                   _agenda[_selectedDay]?.isNotEmpty == true
// //                       ? Column(
// //                           crossAxisAlignment: CrossAxisAlignment.start,
// //                           children: _agenda[_selectedDay]!.map((task) {
// //                             return ListTile(
// //                               leading: Icon(Icons.check_circle, color: Colors.green),
// //                               title: Text(task),
// //                               trailing: Icon(Icons.delete, color: Colors.redAccent),
// //                               onTap: () {
// //                                 setState(() {
// //                                   _agenda[_selectedDay]!.remove(task);
// //                                 });
// //                               },
// //                             );
// //                           }).toList(),
// //                         )
// //                       : Center(
// //                           child: Text(
// //                             'Aucune tâche ajoutée pour ce jour.',
// //                             style: TextStyle(color: Colors.grey),
// //                           ),
// //                         ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //           actions: [
// //             TextButton(
// //               child: Text(
// //                 'Annuler',
// //                 style: TextStyle(color: Colors.redAccent),
// //               ),
// //               onPressed: () => Navigator.of(ctx).pop(),
// //             ),
// //             ElevatedButton(
// //               child: Text('Ajouter tâche'),
// //               onPressed: () => _showAddTaskDialog(ctx),
// //               style: ElevatedButton.styleFrom(
// //                 backgroundColor: Colors.green,
// //                 padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
// //                 shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(8),
// //                 ),
// //                 elevation: 5,
// //               ),
// //             ),
// //           ],
// //         );
// //       },
// //     ),
// //   );
// // }



void _showAttendanceAgenda(BuildContext context) {
  DateTime _selectedDay = DateTime.now();

  void _addTaskForDay(DateTime day, String task) async {
    final formattedDate = "${day.year}-${day.month.toString().padLeft(2, '0')}-${day.day.toString().padLeft(2, '0')}";

    final response = await http.post(
      Uri.parse('http://localhost:3000/api/agenda/add-task'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'date': formattedDate,
        'task': task,
      }),
    );

    if (response.statusCode == 201) {
      setState(() {
        if (_agenda[day] == null) {
          _agenda[day] = [];
        }
        _agenda[day]!.add(task);
      });
    } else {
      print('Erreur lors de l\'ajout de la tâche : ${response.body}');
    }
  }
  void _deleteTaskForDay(DateTime day, String task) async {
  final formattedDate = "${day.year}-${day.month.toString().padLeft(2, '0')}-${day.day.toString().padLeft(2, '0')}";

  final response = await http.delete(
    Uri.parse('http://localhost:3000/api/agenda/delete-task'),
    headers: {'Content-Type': 'application/json'},
    body: json.encode({
      'date': formattedDate,
      'task': task,
    }),
  );

  if (response.statusCode == 200) {
    setState(() {
      _agenda[day]?.remove(task);
    });
  } else {
    print('Erreur lors de la suppression de la tâche : ${response.body}');
  }
}

void _validateTaskForDay(DateTime day, String task) async {
  final formattedDate = "${day.year}-${day.month.toString().padLeft(2, '0')}-${day.day.toString().padLeft(2, '0')}";

  final response = await http.post(
    Uri.parse('http://localhost:3000/api/agenda/validate-task'),
    headers: {'Content-Type': 'application/json'},
    body: json.encode({
      'date': formattedDate,
      'task': task,
    }),
  );

  if (response.statusCode == 200) {
    setState(() {
      final index = _agenda[day]?.indexOf(task);
      if (index != null && index >= 0) {
        _agenda[day]![index] += ' (Validée)';
      }
    });
  } else {
    print('Erreur lors de la validation de la tâche : ${response.body}');
  }
}
  void _loadTasksForDay(DateTime day) async {
    final formattedDate = "${day.year}-${day.month.toString().padLeft(2, '0')}-${day.day.toString().padLeft(2, '0')}";

    final response = await http.get(
      Uri.parse('http://localhost:3000/api/agenda/get-tasks/$formattedDate'),
    );

    if (response.statusCode == 200) {
      final tasks = json.decode(response.body)['tasks'];
      setState(() {
        _agenda[day] = List<String>.from(tasks);
      });
    } else if (response.statusCode == 404) {
      setState(() {
        _agenda[day] = [];
      });
    } else {
      print('Erreur lors de la récupération des tâches : ${response.body}');
    }
  }

  void _showAddTaskDialog(BuildContext ctx) {
    final _taskController = TextEditingController();

    showDialog(
      context: ctx,
      builder: (context) => AlertDialog(
        title: Text(
          'Ajouter une tâche',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo),
        ),
        content: TextField(
          controller: _taskController,
          style: TextStyle(color: Colors.black), // Set text color to black
          decoration: InputDecoration(
            hintText: 'Saisir la tâche',
            hintStyle: TextStyle(color: Colors.grey), // Set hint text color
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12), // Rounded corners
              borderSide: BorderSide(
                color: Colors.indigo, // Border color
                width: 2, // Border width
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12), // Rounded corners
              borderSide: BorderSide(
                color: Colors.indigo, // Border color when focused
                width: 2, // Border width when focused
              ),
            ),
          ),
        ),
        actions: [
          TextButton(
            child: Text(
              'Annuler',
              style: TextStyle(color: Colors.redAccent),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          ElevatedButton(
            child: Text('Ajouter'),
            onPressed: () {
              if (_taskController.text.isNotEmpty) {
                _addTaskForDay(_selectedDay, _taskController.text);
                Navigator.of(context).pop();
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 5,
            ),
          ),
        ],
      ),
    );
  }

  showDialog(
    context: context,
    builder: (ctx) => StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return AlertDialog(
          title: Text(
            'Agenda des présences',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo),
          ),
          content: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TableCalendar(
                    calendarStyle: CalendarStyle(
                      todayDecoration: BoxDecoration(
                        color: Colors.blueAccent,
                        shape: BoxShape.circle,
                      ),
                      selectedDecoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        shape: BoxShape.circle,
                      ),
                      outsideDaysVisible: true, // Ensure outside days are visible
                      weekendTextStyle: TextStyle(color: Colors.red),
                      defaultTextStyle: TextStyle(color: Colors.black),
                    ),
                    headerStyle: HeaderStyle(
                      formatButtonVisible: false,
                      titleCentered: true,
                      titleTextStyle: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                      leftChevronIcon: Icon(Icons.chevron_left, color: Colors.indigo),
                      rightChevronIcon: Icon(Icons.chevron_right, color: Colors.indigo),
                    ),
                    firstDay: DateTime.utc(2020, 1, 1),
                    lastDay: DateTime.utc(2100, 12, 31),
                    focusedDay: _selectedDay,
                    selectedDayPredicate: (day) => isSameDay(day, _selectedDay),
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        _selectedDay = selectedDay;
                      });
                      _loadTasksForDay(_selectedDay);
                    },
                  ),
          //         SizedBox(height: 16.0),
          //         _agenda[_selectedDay]?.isNotEmpty == true
          //             ? Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: _agenda[_selectedDay]!.map((task) {
          //                   return ListTile(
          //                     leading: Icon(Icons.check_circle, color: Colors.green),
          //                     title: Text(task),
          //                     trailing: Icon(Icons.delete, color: Colors.redAccent),
          //                     onTap: () {
          //                       setState(() {
          //                         _agenda[_selectedDay]!.remove(task);
          //                       });
          //                     },
          //                   );
          //                 }).toList(),
          //               )
          //             : Center(
          //                 child: Text(
          //                   'Aucune tâche ajoutée pour ce jour.',
          //                   style: TextStyle(color: Colors.grey),
          //                 ),
          //               ),
          //       ],
          //     ),
          //   ),
          // ),
          SizedBox(height: 16.0),
          _agenda[_selectedDay]?.isNotEmpty == true
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _agenda[_selectedDay]!.map((task) {
                    return ListTile(
                      leading: IconButton(
                        icon: Icon(Icons.check_circle, color: Colors.green),
                        onPressed: () {
                          // Validation de la tâche
                          _validateTaskForDay(_selectedDay, task);
                        },
                      ),
                      title: Text(task),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.redAccent),
                        onPressed: () {
                          // Suppression de la tâche
                          _deleteTaskForDay(_selectedDay, task);
                        },
                      ),
                    );
                  }).toList(),
                )
              : Center(
                  child: Text(
                    'Aucune tâche ajoutée pour ce jour.',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                ],
                ),
                ),
                ),
          actions: [
            TextButton(
              child: Text(
                'Annuler',
                style: TextStyle(color: Colors.redAccent),
              ),
              onPressed: () => Navigator.of(ctx).pop(),
            ),
            ElevatedButton(
              child: Text('Ajouter tâche'),
              onPressed: () => _showAddTaskDialog(ctx),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 5,
              ),
            ),
          ],
        );
      },
    ),
  );
}



// void _showAttendanceAgenda(BuildContext context) {
//   DateTime _selectedDay = DateTime.now();

//   void _addTaskForDay(DateTime day, String task) async {
//     final formattedDate = "${day.year}-${day.month.toString().padLeft(2, '0')}-${day.day.toString().padLeft(2, '0')}";

//     final response = await http.post(
//       Uri.parse('http://localhost:3000/api/agenda/add-task'),
//       headers: {'Content-Type': 'application/json'},
//       body: json.encode({
//         'date': formattedDate,
//         'task': task,
//       }),
//     );

//     if (response.statusCode == 201) {
//       setState(() {
//         if (_agenda[day] == null) {
//           _agenda[day] = [];
//         }
//         _agenda[day]!.add(task);
//       });
//     } else {
//       print('Erreur lors de l\'ajout de la tâche : ${response.body}');
//     }
//   }

//   void _loadTasksForDay(DateTime day) async {
//     final formattedDate = "${day.year}-${day.month.toString().padLeft(2, '0')}-${day.day.toString().padLeft(2, '0')}";

//     final response = await http.get(
//       Uri.parse('http://localhost:3000/api/agenda/get-tasks/$formattedDate'),
//     );

//     if (response.statusCode == 200) {
//       final tasks = json.decode(response.body)['tasks'];
//       setState(() {
//         _agenda[day] = List<String>.from(tasks);
//       });
//     } else if (response.statusCode == 404) {
//       setState(() {
//         _agenda[day] = [];
//       });
//     } else {
//       print('Erreur lors de la récupération des tâches : ${response.body}');
//     }
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
//           content: SizedBox(
//             width: double.maxFinite,
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   TableCalendar(
//                     calendarStyle: CalendarStyle(
//                       todayDecoration: BoxDecoration(
//                         color: Colors.blueAccent,
//                         shape: BoxShape.circle,
//                       ),
//                     ),
//                     firstDay: DateTime.utc(2020, 1, 1),
//                     lastDay: DateTime.utc(2100, 12, 31),
//                     focusedDay: _selectedDay,
//                     selectedDayPredicate: (day) => isSameDay(day, _selectedDay),
//                     onDaySelected: (selectedDay, focusedDay) {
//                       setState(() {
//                         _selectedDay = selectedDay;
//                       });
//                       _loadTasksForDay(_selectedDay);
//                     },
//                   ),
//                   SizedBox(height: 16.0),
//                   _agenda[_selectedDay]?.isNotEmpty == true
//                       ? Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: _agenda[_selectedDay]!.map((task) {
//                             return ListTile(
//                               title: Text(task),
//                             );
//                           }).toList(),
//                         )
//                       : Text('Aucune tâche ajoutée pour ce jour.'),
//                 ],
//               ),
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
// }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Your existing UI components like CustomAppBar
          SizedBox(
            height: 72.v,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 20.v),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup62),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: CustomAppBar(
                      leadingWidth: 35.h,
                      leading: GestureDetector(
                        onTap: () => _openMenu(context),
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      title: Container(
                        width: 1000.h,
                        child: Center(
                          child: Text(
                            'Suivi chantier',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.h,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      bottom: PreferredSize(
                        preferredSize: Size.fromHeight(1.h),
                        child: Container(
                          color: Colors.grey[800],
                          height: 1.h,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.white,
            thickness: 2.0,
            height: 1.0,
            indent: 20.0,
            endIndent: 20.0,
          ),
          Padding(
            // padding: const EdgeInsets.all(50.0),
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddChantierForm()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      elevation: 5,
                      textStyle: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: Text('Ajouter un chantier'),
                  ),
                  // SizedBox(width: 50.0),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     // Button action
                  //   },
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: Colors.green,
                  //     foregroundColor: Colors.white,
                  //     padding: EdgeInsets.symmetric(
                  //         horizontal: 24.0, vertical: 12.0),
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(12.0),
                  //     ),
                  //     elevation: 5,
                  //     textStyle: TextStyle(
                  //       fontSize: 16.0,
                  //       fontWeight: FontWeight.bold,
                  //     ),
                  //   ),
                  //   child: Text('Affecter des personnel'),
                  // ),
                  // SizedBox(width: 50.0),
                  SizedBox(width: 40.0),
                  Padding(padding: 
                  EdgeInsets.only(top: 30.0, bottom: 20.0)),
                  ElevatedButton(
                    onPressed: () => _showAttendanceAgenda(context),
                    child: Row(
                      children: [
                        Icon(Icons.calendar_today, color: Color.fromARGB(255, 255, 255, 255)),
                        SizedBox(width: 6),
                        
                        Text(
                          'Agenda des présences',
                          style:TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ), // Couleur du texte
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white, // Définit la couleur du texte et des icônes
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                //   SizedBox(width: 10.0),
                //   ElevatedButton(
                //   onPressed: () => _showAttendanceAgenda(context),
                //   child: Row(
                //     children: [
                //       Icon(Icons.calendar_today, color: Color.fromARGB(255, 255, 255, 255)),
                //       SizedBox(width: 4),
                //       Text('Agenda des présences'),
                //     ],
                //   ),
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Colors.orange,
                //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                //   ),
                // ),

          //         SizedBox(width: 10.0),
          //         ElevatedButton(
          //           onPressed: () {
          //             // Button action
          //           },
          //           style: ElevatedButton.styleFrom(
          //             backgroundColor: Colors.orange,
          //             foregroundColor: Colors.white,
          //             padding: EdgeInsets.symmetric(
          //                 horizontal: 24.0, vertical: 12.0),
          //             shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(12.0),
          //             ),
          //             elevation: 5,
          //             textStyle: TextStyle(
          //               fontSize: 16.0,
          //               fontWeight: FontWeight.bold,
          //             ),
          //           ),
          //           child: Text('Agenda des présences'),
          //         ),
           ],
          ),
           ),
          ),
          Expanded(
            child: isLoading
                ? Center(child: CircularProgressIndicator())
                : errorMessage != null
                    ? Center(child: Text(errorMessage!))
                    : SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: DataTable(
                            columns: [
                              DataColumn(label: Text('Libellé')),
                              DataColumn(label: Text('Description')),
                              DataColumn(label: Text('Date Début')),
                              DataColumn(label: Text('Date Fin Prev.')),
                              DataColumn(label: Text('Chef Chantier')),
                              DataColumn(label: Text('Actions')),
                            ],
                            rows: tasks.map((task) {
                              return DataRow(cells: [
                                DataCell(Text(task['libelle'] ?? '')),
                                DataCell(Text(task['description'] ?? '')),
                                DataCell(Text(task['dateDebut'] ?? '')),
                                DataCell(Text(task['dateFinPrev'] ?? '')),
                                DataCell(Text(task['chefChantier'] ?? '')),
                                DataCell(Row(
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        // Delete task action
                                        //_deleteTask(task['_id']);
                                        _confirmDeleteTask(context, task['_id']);
                                      },
                                      child: Text('Supprimer',
                                          style: TextStyle(color: Colors.blue)),
                                    ),
                                    // TextButton(
                                    //   onPressed: () {
                                    //     // Add attendance action

                                    //   },
                                    //   child: Text('Ajouter les présences',
                                    //       style: TextStyle(color: Colors.blue)),
                                    // ),
                                    TextButton(
                                      onPressed: () {
                                        // Attendance agenda action
                                        _showAttendanceAgenda(context);
                                      },
                                      child: Text('Agenda des présences',
                                          style: TextStyle(color: Colors.blue)),
                                    ),
                                  ],
                                )),
                              ]);
                            }).toList(),
                          ),
                        ),
                      ),
          ),
        ],
      ),
    );
  }

   void _openMenu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuScreen);
  }
}
