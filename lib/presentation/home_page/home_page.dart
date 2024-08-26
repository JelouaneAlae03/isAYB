// // // import 'package:flutter/material.dart';
// // // import 'package:gecimmoa/presentation/home_page/widgets/ProgressBarWidget.dart';
// // // import '../../core/app_export.dart';
// // // import '../../widgets/app_bar/appbar_leading_image.dart';
// // // import '../../widgets/app_bar/appbar_trailing_image.dart';
// // // import '../../widgets/app_bar/custom_app_bar.dart';
// // // import 'widgets/pricerequestsgrid_item_widget.dart';
// // // import 'package:fl_chart/fl_chart.dart';
// // //  // ignore_for_file: must_be_immutable

// // // class HomePage extends StatelessWidget {
// // //   const HomePage({Key? key})
// // //       : super(
// // //           key: key,
// // //         );

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return SafeArea(
// // //       child: Scaffold(
// // //         appBar: _buildAppBar(context),
// // //         body: Padding(
// // //           padding: EdgeInsets.only(top: 36.v),
// // //           child: SingleChildScrollView(
// // //             child: Container(
// // //               width: 374.h,
// // //               padding: EdgeInsets.symmetric(horizontal: 12.h),
// // //               child: Column(
// // //                 children: [
// // //                   _buildPriceRequestsGrid(context),
// // //                   SizedBox(height: 18.v),
// // //                   Container(
// // //                     width: double.maxFinite,
// // //                     margin: EdgeInsets.only(right: 14.h),
// // //                     child: _buildOrderSummaryRow(
// // //                       context,
// // //                       titleText: "Bons de commande par projet",
// // //                     ),
// // //                   ),
// // //                   SizedBox(height: 14.v),
// // //                   _buildDesignStack(context),
// // //                   SizedBox(height: 26.v),
// // //                   Container(
// // //                     width: double.maxFinite,
// // //                     margin: EdgeInsets.symmetric(horizontal: 8.h),
// // //                     child: _buildOrderSummaryRow(
// // //                       context,
// // //                       titleText: "Bons de commande par projet",
// // //                     ),
// // //                   ),
// // //                   SizedBox(height: 30.v),
// // //                   Container(
// // //                     width: double.maxFinite,
// // //                     margin: EdgeInsets.symmetric(horizontal: 64.h),
// // //                     child: SizedBox(
// // //                       height: 220.adaptSize,
// // //                       width: 220.adaptSize,
// // //                       child: CircularProgressIndicator(
// // //                         value: 0.5,
// // //                         strokeWidth: 19.h,
// // //                       ),
// // //                     ),
// // //                   )
// // //                 ],
// // //               ),
// // //             ),
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   /// Section Widget
// // //   PreferredSizeWidget _buildAppBar(BuildContext context) {
// // //     return CustomAppBar(
// // //       height: 92.v,
// // //       leadingWidth: 55.h,
// // //       leading: AppbarLeadingImage(
// // //         imagePath: ImageConstant.imgMegaphone,
// // //         margin: EdgeInsets.only(
// // //           left: 17.h,
// // //           top: 44.v,
// // //           bottom: 24.v,
// // //         ),
// // //         onTap: () {
// // //           onTapMegaphoneone(context);
// // //         },
// // //       ),
// // //       title: Container(
// // //         height: 32.v,
// // //         width: 184.h,
// // //         margin: EdgeInsets.only(
// // //           left: 29.h,
// // //           top: 40.v,
// // //           bottom: 20.v,
// // //         ),
// // //         decoration: BoxDecoration(
// // //           color: appTheme.whiteA700,
// // //           borderRadius: BorderRadius.circular(
// // //             6.h,
// // //           ),
// // //         ),
// // //       ),
// // //       actions: [
// // //         AppbarTrailingImage(
// // //           imagePath: ImageConstant.imgRewind,
// // //           margin: EdgeInsets.only(
// // //             top: 40.v,
// // //             right: 20.h,
// // //           ),
// // //         ),
// // //         AppbarTrailingImage(
// // //           imagePath: ImageConstant.imgNotifications,
// // //           margin: EdgeInsets.only(
// // //             left: 12.h,
// // //             top: 40.v,
// // //             right: 34.h,
// // //           ),
// // //         )
// // //       ],
// // //       styleType: Style.bgStyle,
// // //     );
// // //   }

// // //   /// Section Widget
// // //   Widget _buildPriceRequestsGrid(BuildContext context) {
// // //     return SizedBox(
// // //       width: double.maxFinite,
// // //       child: GridView.builder(
// // //         shrinkWrap: true,
// // //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// // //           mainAxisExtent: 137.v,
// // //           crossAxisCount: 2,
// // //           mainAxisSpacing: 8.h,
// // //           crossAxisSpacing: 8.h,
// // //         ),
// // //         physics: NeverScrollableScrollPhysics(),
// // //         itemCount: 4,
// // //         itemBuilder: (context, index) {
// // //           return PricerequestsgridItemWidget();
// // //         },
// // //       ),
// // //     );
// // //   }

// // //   /// Section Widget
// // //   // Widget _buildDesignStack(BuildContext context) {
// // //   //   return SizedBox(
// // //   //     height: 206.v,
// // //   //     width: double.maxFinite,
// // //   //     child: Stack(
// // //   //       alignment: Alignment.center,
// // //   //       children: [
// // //   //         CustomImageView(
// // //   //           imagePath: ImageConstant.imgUntitledDesign,
// // //   //           height: 206.v,
// // //   //           width: double.maxFinite,
// // //   //           radius: BorderRadius.circular(
// // //   //             10.h,
// // //   //           ),
// // //   //         ),
// // //   //         Padding(
// // //   //           padding: EdgeInsets.symmetric(horizontal: 22.h),
// // //   //           child: Column(
// // //   //             mainAxisSize: MainAxisSize.min,
// // //   //             crossAxisAlignment: CrossAxisAlignment.start,
// // //   //             children: [
// // //   //               Text(
// // //   //                 "90",
// // //   //                 style: theme.textTheme.bodySmall,
// // //   //               ),
// // //   //               SizedBox(height: 28.v),
// // //   //               Text(
// // //   //                 "60",
// // //   //                 style: theme.textTheme.bodySmall,
// // //   //               ),
// // //   //               SizedBox(height: 28.v),
// // //   //               Text(
// // //   //                 "30",
// // //   //                 style: theme.textTheme.bodySmall,
// // //   //               )
// // //   //             ],
// // //   //           ),
// // //   //         )
// // //   //       ],
// // //   //     ),
// // //   //   );
// // //   Widget _buildDesignStack(BuildContext context) {
// // //   return SizedBox(
// // //     height: 206,
// // //     width: double.maxFinite,
// // //     child: Stack(
// // //       alignment: Alignment.center,
// // //       children: [
// // //         // Padding(
// // //         //   padding: EdgeInsets.symmetric(horizontal: 22),
// // //         //   child: Column(
// // //         //     mainAxisSize: MainAxisSize.min,
// // //         //     crossAxisAlignment: CrossAxisAlignment.start,
// // //         //     children: [
// // //         //       Text(
// // //         //         "90",
// // //         //         style: Theme.of(context).textTheme.bodyText1,
// // //         //       ),
// // //         //       SizedBox(height: 28),
// // //         //       Text(
// // //         //         "60",
// // //         //         style: Theme.of(context).textTheme.bodyText1,
// // //         //       ),
// // //         //       SizedBox(height: 28),
// // //         //       Text(
// // //         //         "30",
// // //         //         style: Theme.of(context).textTheme.bodyText1,
// // //         //       )
// // //         //     ],
// // //         //   ),
// // //         // ),
// // //         Positioned.fill(
// // //           child: Padding(
// // //             padding: EdgeInsets.symmetric(horizontal: 22),
// // //             child: AspectRatio(
// // //               aspectRatio: 2,
// // //               child: BarChart(
// // //                 BarChartData(
// // //                   backgroundColor: Colors.white, // Définir le fond en blanc
// // //                   barGroups: [
// // //                     _generateGroupData(0, 90),
// // //                     _generateGroupData(1, 60),
// // //                     _generateGroupData(2, 4),
// // //                   ],
// // //                   barTouchData: BarTouchData(
// // //                     enabled: true,
// // //                     touchTooltipData: BarTouchTooltipData(
// // //                       tooltipBgColor: const Color.fromARGB(255, 23, 121, 171),
// // //                       getTooltipItem: (group, groupIndex, rod, rodIndex) {
// // //                         return BarTooltipItem(
// // //                           rod.y.round().toString(),
// // //                           TextStyle(
// // //                             color: Colors.white,
// // //                             fontWeight: FontWeight.bold,
// // //                           ),
// // //                         );
// // //                       },
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ),
// // //             ),
// // //           ),
// // //         ),
// // //       ],
// // //     ),
// // //   );
// // // }

// // // BarChartGroupData _generateGroupData(int x, int y) {
// // //   return BarChartGroupData(
// // //     x: x,
// // //     barRods: [
// // //       BarChartRodData(y: y.toDouble()),
// // //     ],
// // //   );
// // // }

// // //   }
// // // // Widget _buildOrderSummaryRow(BuildContext context, {required String titleText}) {
// // // //   return ProgressBarWidget();
// // // // }
// // //   // Common widget
// // //   Widget _buildOrderSummaryRow(
// // //     BuildContext context, {
// // //     required String titleText,
// // //   }) {
// // //     return Row(
// // //       mainAxisAlignment: MainAxisAlignment.center,
// // //       children: [
// // //         CustomImageView(
// // //           imagePath: ImageConstant.imgClose,
// // //           height: 50.adaptSize,
// // //           width: 50.adaptSize,
// // //         ),
// // //         SizedBox(width: 10.h),
// // //         Text(
// // //           titleText,
// // //           style: CustomTextStyles.titleLargeMedium.copyWith(
// // //             color: appTheme.whiteA700,
// // //           ),
// // //         )
// // //       ],
// // //     );
// // //   }
// // // onTapMegaphoneone(BuildContext context) {
// // //     Navigator.pushNamed(context, AppRoutes.menuScreen);
// // //   }
// // // import 'package:flutter/material.dart';
// // // import 'package:gecimmoa/presentation/home_page/widgets/ProgressBarWidget.dart';
// // // import '../../core/app_export.dart';
// // // import '../../widgets/app_bar/appbar_leading_image.dart';
// // // import '../../widgets/app_bar/appbar_trailing_image.dart';
// // // import '../../widgets/app_bar/custom_app_bar.dart';
// // // import 'widgets/pricerequestsgrid_item_widget.dart';
// // // import 'package:fl_chart/fl_chart.dart';
// // // import 'package:percent_indicator/percent_indicator.dart';


// // // // ignore_for_file: must_be_immutable

// // // class HomePage extends StatelessWidget {
// // //   const HomePage({Key? key}) : super(key: key);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return SafeArea(
// // //       child: Scaffold(
// // //         appBar: _buildAppBar(context),
// // //         body: Padding(
// // //           padding: EdgeInsets.only(top: 36.v),
// // //           child: SingleChildScrollView(
// // //             child: Container(
// // //               width: 374.h,
// // //               padding: EdgeInsets.symmetric(horizontal: 12.h),
// // //               child: Column(
// // //                 children: [
// // //                   _buildPriceRequestsGrid(context),
// // //                   SizedBox(height: 18.v),
// // //                   Container(
// // //                     width: double.maxFinite,
// // //                     margin: EdgeInsets.only(right: 14.h),
// // //                     child: _buildOrderSummaryRow(
// // //                       context,
// // //                       titleText: "Bons de commande par projet",
// // //                     ),
// // //                   ),
// // //                   SizedBox(height: 18.v),
// // //                   _buildDesignStack(context),
// // //                   SizedBox(height: 26.v),
// // //                   Container(
// // //                     width: double.maxFinite,
// // //                     margin: EdgeInsets.only(right: 14.h),
// // //                     child: _buildOrderSummaryRow(
// // //                       context,
// // //                       titleText: "Bons de commande par projet",
// // //                   // SizedBox(height: 18.v),
// // //                   // _buildDesignStack(context),
// // //                   // SizedBox(height: 26.v),
// // //                   // Container(
// // //                   //   width: double.maxFinite,
// // //                   //   margin: EdgeInsets.symmetric(horizontal: 14.h),
// // //                   //   child: _buildOrderSummaryRow(
// // //                   //     context,
// // //                   //     titleText: "Bons de commande par projet",
// // //                     ),
// // //                   ),
// // //                   // SizedBox(height: 30.v),
// // //                   // Container(
// // //                   //   width: double.maxFinite,
// // //                   //   margin: EdgeInsets.symmetric(horizontal: 64.h),
// // //                   //   child: SizedBox(
// // //                   //     height: 220.adaptSize,
// // //                   //     width: 220.adaptSize,
// // //                     SizedBox(height: 30.v),
// // //                     Container(
// // //                     width: double.maxFinite,
// // //                     margin: EdgeInsets.symmetric(horizontal: 64.h),
// // //                     child: ProgressBarWidget(), // Use the ProgressBarWidget here
// // //                   ),
// // //                       // child: CircularProgressIndicator(
// // //                       //   value: 0.5,
// // //                       //   strokeWidth: 19.h,
// // //                       // ),
// // //                 ],
// // //               ),
// // //             ),
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   PreferredSizeWidget _buildAppBar(BuildContext context) {
// // //     return CustomAppBar(
// // //       height: 92.v,
// // //       leadingWidth: 55.h,
// // //       leading: AppbarLeadingImage(
// // //         imagePath: ImageConstant.imgMegaphone,
// // //         margin: EdgeInsets.only(
// // //           left: 17.h,
// // //           top: 44.v,
// // //           bottom: 24.v,
// // //         ),
// // //         onTap: () {
// // //           onTapMegaphoneone(context);
// // //         },
// // //       ),
// // //       title: Container(
// // //         height: 32.v,
// // //         width: 184.h,
// // //         margin: EdgeInsets.only(
// // //           left: 29.h,
// // //           top: 40.v,
// // //           bottom: 20.v,
// // //         ),
// // //         decoration: BoxDecoration(
// // //           color: appTheme.whiteA700,
// // //           borderRadius: BorderRadius.circular(6.h),
// // //         ),
// // //       ),
// // //       actions: [
// // //         AppbarTrailingImage(
// // //           imagePath: ImageConstant.imgRewind,
// // //           margin: EdgeInsets.only(
// // //             top: 40.v,
// // //             right: 20.h,
// // //           ),
// // //         ),
// // //         AppbarTrailingImage(
// // //           imagePath: ImageConstant.imgNotifications,
// // //           margin: EdgeInsets.only(
// // //             left: 12.h,
// // //             top: 40.v,
// // //             right: 34.h,
// // //           ),
// // //         ),
// // //       ],
// // //       styleType: Style.bgStyle,
// // //     );
// // //   }

// // //   Widget _buildPriceRequestsGrid(BuildContext context) {
// // //     return SizedBox(
// // //       width: double.maxFinite,
// // //       child: GridView.builder(
// // //         shrinkWrap: true,
// // //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// // //           mainAxisExtent: 137.v,
// // //           crossAxisCount: 2,
// // //           mainAxisSpacing: 8.h,
// // //           crossAxisSpacing: 8.h,
// // //         ),
// // //         physics: NeverScrollableScrollPhysics(),
// // //         itemCount: 4,
// // //         itemBuilder: (context, index) {
// // //           return PricerequestsgridItemWidget();
// // //         },
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildDesignStack(BuildContext context) {
// // //     return SizedBox(
// // //       height: 206,
// // //       width: double.maxFinite,
// // //       child: Stack(
// // //         alignment: Alignment.center,
// // //         children: [
// // //           Positioned.fill(
// // //             child: Padding(
// // //               padding: EdgeInsets.symmetric(horizontal: 22),
// // //               child: AspectRatio(
// // //                 aspectRatio: 2,
// // //                 child: BarChart(
// // //                   BarChartData(
// // //                     backgroundColor: Colors.white,
// // //                     barGroups: [
// // //                       _generateGroupData(0, 90),
// // //                       _generateGroupData(1, 60),
// // //                       _generateGroupData(2, 4),
// // //                     ],
// // //                     barTouchData: BarTouchData(
// // //                       enabled: true,
// // //                       touchTooltipData: BarTouchTooltipData(
// // //                         tooltipBgColor: const Color.fromARGB(255, 23, 121, 171),
// // //                         getTooltipItem: (group, groupIndex, rod, rodIndex) {
// // //                           return BarTooltipItem(
// // //                             rod.y.round().toString(),
// // //                             TextStyle(
// // //                               color: Colors.white,
// // //                               fontWeight: FontWeight.bold,
// // //                             ),
// // //                           );
// // //                         },
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ),
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   BarChartGroupData _generateGroupData(int x, int y) {
// // //     return BarChartGroupData(
// // //       x: x,
// // //       barRods: [
// // //         BarChartRodData(y: y.toDouble()),
// // //       ],
// // //     );
// // //   }

// // //   // Widget _buildOrderSummaryRow(BuildContext context, {required String titleText}) {
// // //   //   return Row(
// // //   //     mainAxisAlignment: MainAxisAlignment.center,
// // //   //     children: [
// // //   //       CustomImageView(
// // //   //         imagePath: ImageConstant.imgClose,
// // //   //         height: 50.adaptSize,
// // //   //         width: 50.adaptSize,
// // //   //       ),
// // //   //       SizedBox(width: 10.h),
// // //   //       Text(
// // //   //         titleText,
// // //   //         style: CustomTextStyles.titleLargeMedium.copyWith(
// // //   //           color: appTheme.whiteA700,
// // //   //         ),
// // //   //       ),
// // //   //     ],
// // //   //   );
// // //   // }
  
// // //     Widget _buildOrderSummaryRow(BuildContext context, {required String titleText}) {
// // //     // return Row(
// // //     //   mainAxisAlignment: MainAxisAlignment.center,
// // //     //   children: [
// // //     //     CustomImageView(
// // //     //       imagePath: ImageConstant.imgClose,
// // //     //       height: 50.adaptSize,
// // //     //       width: 50.adaptSize,
// // //     //     ),
// // //     //     SizedBox(width: 10.h),
// // //     //     Text(
// // //     //       titleText,
// // //     //       style: CustomTextStyles.titleLargeMedium.copyWith(
// // //     //         color: appTheme.whiteA700,
// // //     //       ),
// // //     //     ),
// // //     //   ],
// // //     // );
// // //     return Scaffold(
// // //       backgroundColor: Color(0xFF2C3E50),
// // //       body: Center(
// // //         child: CircularPercentIndicator(
// // //           radius: 100.0,
// // //           lineWidth: 15.0,
// // //           animation: true,
// // //           percent: 0.75, // Adjust the percentage as needed
// // //           center: Column(
// // //             mainAxisAlignment: MainAxisAlignment.center,
// // //             children: [
// // //               Text(
// // //                 "Traité",
// // //                 style: TextStyle(
// // //                   fontSize: 20.0,
// // //                   fontWeight: FontWeight.bold,
// // //                   color: Colors.white,
// // //                 ),
// // //               ),
// // //               Text(
// // //                 "123",
// // //                 style: TextStyle(
// // //                   fontSize: 40.0,
// // //                   fontWeight: FontWeight.bold,
// // //                   color: Colors.white,
// // //                 ),
// // //               ),
// // //             ],
// // //           ),
// // //           circularStrokeCap: CircularStrokeCap.round,
// // //           backgroundColor: Colors.grey.shade300,
// // //           progressColor: Color(0xFFBE9B7B),
// // //           header: Padding(
// // //             padding: const EdgeInsets.all(8.0),
// // //             child: Column(
// // //               children: [
// // //                 Icon(
// // //                   Icons.assignment,
// // //                   color: Color(0xFFBE9B7B),
// // //                   size: 40.0,
// // //                 ),
// // //                 Text(
// // //                   "Bons de commande par projet",
// // //                   style: TextStyle(
// // //                     fontSize: 16.0,
// // //                     color: Colors.white,
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   void onTapMegaphoneone(BuildContext context) {
// // //     Navigator.pushNamed(context, AppRoutes.menuScreen);
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:gecimmoa/presentation/home_page/widgets/ProgressBarWidget.dart';
// // import '../../core/app_export.dart';
// // import '../../widgets/app_bar/appbar_leading_image.dart';
// // import '../../widgets/app_bar/appbar_trailing_image.dart';
// // import '../../widgets/app_bar/custom_app_bar.dart';
// // import 'widgets/pricerequestsgrid_item_widget.dart';
// // import 'package:fl_chart/fl_chart.dart';
// // import 'package:percent_indicator/percent_indicator.dart';

// // class HomePage extends StatelessWidget {
// //   const HomePage({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return SafeArea(
// //       child: Scaffold(
// //         appBar: _buildAppBar(context),
// //         body: Padding(
// //           padding: EdgeInsets.only(top: 36.v),
// //           child: SingleChildScrollView(
// //             child: Container(
// //               width: 374.h,
// //               padding: EdgeInsets.symmetric(horizontal: 12.h),
// //               child: Column(
// //                 children: [
// //                   _buildPriceRequestsGrid(context),
// //                   SizedBox(height: 18.v),
// //                   Container(
// //                     width: double.maxFinite,
// //                     margin: EdgeInsets.only(right: 14.h),
// //                     child: _buildOrderSummaryRow(
// //                       context,
// //                       titleText: "Bons de commande par projet",
// //                     ),
// //                   ),
// //                   SizedBox(height: 18.v),
// //                   _buildDesignStack(context),
// //                   SizedBox(height: 26.v),
// //                   Container(
// //                     width: double.maxFinite,
// //                     margin: EdgeInsets.only(right: 14.h),
// //                     child: _buildOrderSummaryRow(
// //                       context,
// //                       titleText: "Bons de commande par projet",
// //                     ),
// //                   ),
// //                   SizedBox(height: 10.v),
// //                   Container(
// //                     width: double.maxFinite,
// //                     margin: EdgeInsets.symmetric(horizontal: 1.h ,vertical:10.v),
// //                     child: ProgressBarWidget(),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   PreferredSizeWidget _buildAppBar(BuildContext context) {
// //     return CustomAppBar(
// //       height: 92.v,
// //       leadingWidth: 55.h,
// //       leading: AppbarLeadingImage(
// //         imagePath: ImageConstant.imgMegaphone,
// //         margin: EdgeInsets.only(
// //           left: 17.h,
// //           top: 44.v,
// //           bottom: 24.v,
// //         ),
// //         onTap: () {
// //           onTapMegaphoneone(context);
// //         },
// //       ),
// //       title: Container(
// //         height: 32.v,
// //         width: 184.h,
// //         margin: EdgeInsets.only(
// //           left: 29.h,
// //           top: 40.v,
// //           bottom: 20.v,
// //         ),
// //         decoration: BoxDecoration(
// //           color: appTheme.whiteA700,
// //           borderRadius: BorderRadius.circular(6.h),
// //         ),
// //       ),
// //       actions: [
// //         AppbarTrailingImage(
// //           imagePath: ImageConstant.imgRewind,
// //           margin: EdgeInsets.only(
// //             top: 40.v,
// //             right: 20.h,
// //           ),
// //         ),
// //         AppbarTrailingImage(
// //           imagePath: ImageConstant.imgNotifications,
// //           margin: EdgeInsets.only(
// //             left: 12.h,
// //             top: 40.v,
// //             right: 34.h,
// //           ),
// //         ),
// //       ],
// //       styleType: Style.bgStyle,
// //     );
// //   }

// //   Widget _buildPriceRequestsGrid(BuildContext context) {
// //     return SizedBox(
// //       width: double.maxFinite,
// //       child: GridView.builder(
// //         shrinkWrap: true,
// //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //           mainAxisExtent: 137.v,
// //           crossAxisCount: 2,
// //           mainAxisSpacing: 8.h,
// //           crossAxisSpacing: 8.h,
// //         ),
// //         physics: NeverScrollableScrollPhysics(),
// //         itemCount: 4,
// //         itemBuilder: (context, index) {
// //           return PricerequestsgridItemWidget();
// //         },
// //       ),
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
// //                     barGroups: [
// //                       _generateGroupData(0, 90),
// //                       _generateGroupData(1, 60),
// //                       _generateGroupData(2, 4),
// //                     ],
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

// //   BarChartGroupData _generateGroupData(int x, int y) {
// //     return BarChartGroupData(
// //       x: x,
// //       barRods: [
// //         BarChartRodData(y: y.toDouble()),
// //       ],
// //     );
// //   }

// //   Widget _buildOrderSummaryRow(BuildContext context, {required String titleText}) {
// //     return Row(
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: [
// //         CustomImageView(
// //           imagePath: ImageConstant.imgClose,
// //           height: 50.adaptSize,
// //           width: 50.adaptSize,
// //         ),
// //         SizedBox(width: 10.h),
// //         Text(
// //           titleText,
// //           style: CustomTextStyles.titleLargeMedium.copyWith(
// //             color: appTheme.whiteA700,
// //           ),
// //         ),
// //       ],
// //     );
// //   }

// //   void onTapMegaphoneone(BuildContext context) {
// //     Navigator.pushNamed(context, AppRoutes.menuScreen);
// //   }
// // }
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:gecimmoa/presentation/home_page/widgets/ProgressBarWidget.dart';
// import 'package:percent_indicator/percent_indicator.dart';
// import '../../core/app_export.dart';
// import '../../widgets/app_bar/appbar_leading_image.dart';
// import '../../widgets/app_bar/appbar_trailing_image.dart';
// import '../../widgets/app_bar/custom_app_bar.dart';
// import 'widgets/pricerequestsgrid_item_widget.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//   void _openMenu(BuildContext context) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Menu button pressed')),
//     );
//   }

//   void _performSearch(BuildContext context) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Search button pressed')),
//     );
//   }

//   void _showNotifications(BuildContext context) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Notification button pressed')),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: _buildAppBar(context),
//         body: Padding(
//           padding: EdgeInsets.only(top: 36.v),
//           child: SingleChildScrollView(
//             child: Container(
//               width: 374.h,
//               padding: EdgeInsets.symmetric(horizontal: 12.h),
//               child: Column(
//                 children: [
//                   _buildPriceRequestsGrid(context),
//                   SizedBox(height: 18.v),
//                   Container(
//                     width: double.maxFinite,
//                     margin: EdgeInsets.only(right: 14.h),
//                     child: _buildOrderSummaryRow(
//                       context,
//                       titleText: "Bons de commande par projet",
//                     ),
//                   ),
//                   SizedBox(height: 18.v),
//                   _buildDesignStack(context),
//                   SizedBox(height: 26.v),
//                   Container(
//                     width: double.maxFinite,
//                     margin: EdgeInsets.only(right: 14.h),
//                     child: _buildOrderSummaryRow(
//                       context,
//                       titleText: "Bons de commande par projet",
//                     ),
//                   ),
//                   SizedBox(height: 30.v),
//                   SizedBox(height: 10.v),
//                   Container(
//                     width: double.maxFinite,
//                     margin: EdgeInsets.symmetric(horizontal: 1.h, vertical: 20.v), // Added bottom margin here
//                     child: SemiCircularProgressBar(
//                       percent: 0.02, // Adjust the percentage as needed
//                       centerText: "Traité",
//                       count: 123,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   PreferredSizeWidget _buildAppBar(BuildContext context) {
//   return AppBar(
//     backgroundColor: Color(0xFFDCC1B2), // Background color matching the image
//     leading: IconButton(
//       icon: Icon(Icons.menu),
//       onPressed: () {
//         // _openMenu
//         onTapMegaphoneone(context);
//       },
//     ),
//     title: Container(
//       height: 40,
//       child: TextField(
//         decoration: InputDecoration(
//           filled: true,
//           fillColor: Colors.white,
//           hintText: 'Recherche Par Mot Clé',
//           hintStyle: TextStyle(color: Colors.grey),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(8.0),
//             borderSide: BorderSide.none,
//           ),
//           contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
//         ),
//       ),
//     ),
//     actions: <Widget>[
//       IconButton(
//         icon: Icon(Icons.search),
//         onPressed: () {
//           _performSearch(context);
//         },
//       ),
//       IconButton(
//         icon: Icon(Icons.notifications),
//         onPressed: () {
//           _showNotifications(context);
//         },
//       ),
//     ],
//   );
// }


//   Widget _buildPriceRequestsGrid(BuildContext context) {
//     return SizedBox(
//       width: double.maxFinite,
//       child: GridView.builder(
//         shrinkWrap: true,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           mainAxisExtent: 137.v,
//           crossAxisCount: 2,
//           mainAxisSpacing: 8.h,
//           crossAxisSpacing: 8.h,
//         ),
//         physics: NeverScrollableScrollPhysics(),
//         itemCount: 4,
//         itemBuilder: (context, index) {
//           return PricerequestsgridItemWidget();
//         },
//       ),
//     );
//   }

//   Widget _buildDesignStack(BuildContext context) {
//     return SizedBox(
//       height: 206,
//       width: double.maxFinite,
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           Positioned.fill(
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 22),
//               child: AspectRatio(
//                 aspectRatio: 2,
//                 child: BarChart(
//                   BarChartData(
//                     backgroundColor: Colors.white,
//                     barGroups: [
//                       _generateGroupData(0, 90),
//                       _generateGroupData(1, 60),
//                       _generateGroupData(2, 4),
//                     ],
//                     barTouchData: BarTouchData(
//                       enabled: true,
//                       touchTooltipData: BarTouchTooltipData(
//                         tooltipBgColor: const Color.fromARGB(255, 23, 121, 171),
//                         getTooltipItem: (group, groupIndex, rod, rodIndex) {
//                           return BarTooltipItem(
//                             rod.y.round().toString(),
//                             TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   BarChartGroupData _generateGroupData(int x, int y) {
//     return BarChartGroupData(
//       x: x,
//       barRods: [
//         BarChartRodData(y: y.toDouble()),
//       ],
//     );
//   }

//   Widget _buildOrderSummaryRow(BuildContext context, {required String titleText}) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         CustomImageView(
//           imagePath: ImageConstant.imgClose,
//           height: 50.adaptSize,
//           width: 50.adaptSize,
//         ),
//         SizedBox(width: 10.h),
//         Text(
//           titleText,
//           style: CustomTextStyles.titleLargeMedium.copyWith(
//             color: appTheme.whiteA700,
//           ),
//         ),
//       ],
//     );
//   }

//   void onTapMegaphoneone(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.menuScreen);
//   }
// }
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:gecimmoa/presentation/home_page/widgets/ProgressBarWidget.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/pricerequestsgrid_item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _openMenu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuScreen);
  }

  void _performSearch(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Search button pressed')),
    );
  }

  void _showNotifications(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Notification button pressed')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(top: 36.v),
          child: SingleChildScrollView(
            child: Container(
              width: 374.h,
              padding: EdgeInsets.symmetric(horizontal: 12.h),
              child: Column(
                children: [
                  _buildPriceRequestsGrid(context),
                  SizedBox(height: 18.v),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(right: 5.h),
                    child: _buildOrderSummaryRow(
                      context,
                      titleText: "Bons de commande par projet",
                    ),
                  ),
                  SizedBox(height: 18.v),
                  _buildDesignStack(context),
                  SizedBox(height: 26.v),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(right: 5.h),
                    child: _buildOrderSummaryRow(
                      context,
                      titleText: "Bons de commande par projet",
                    ),
                  ),
                  SizedBox(height: 30.v),
                  SizedBox(height: 10.v),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 1.h, vertical: 20.v),
                    child: SemiCircularProgressBar(
                      percent: 0.02,
                      centerText: "Traité",
                      count: 123,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFDCC1B2),
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () => _openMenu(context),
      ),
      title: Container(
        height: 40,
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(255, 245, 243, 243),
            hintText: 'Recherche Par Mot Clé',
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
          ),
          style: TextStyle(color: Colors.black), // Texte en noir
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            _performSearch(context);
          },
        ),
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            _showNotifications(context);
          },
        ),
      ],
    );
  }
  Widget _buildPriceRequestsGrid(BuildContext context) {
  final List<Map<String, String>> gridData = [
    {
      'title': 'Demandes de prix 1',
      'number': '65',
      'value': '31 622 634,16',
    },
    {
      'title': 'Demandes de prix 2',
      'number': '23',
      'value': '15 120 422,35',
    },
    {
      'title': 'Demandes de prix 3',
      'number': '78',
      'value': '22 345 123,78',
    },
    {
      'title': 'Demandes de prix 4',
      'number': '12',
      'value': '8 987 654,00',
    },
  ];

  return SizedBox(
    width: double.maxFinite,
    child: GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 137.v,
        crossAxisCount: 2,
        mainAxisSpacing: 8.h,
        crossAxisSpacing: 8.h,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: gridData.length,
      itemBuilder: (context, index) {
        final data = gridData[index];
        return PricerequestsgridItemWidget(
          title: data['title']!,
          number: data['number']!,
          value: data['value']!,
        );
      },
    ),
  );
}

  // Widget _buildPriceRequestsGrid(BuildContext context) {
  //   return SizedBox(
  //     width: double.maxFinite,
  //     child: GridView.builder(
  //       shrinkWrap: true,
  //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //         mainAxisExtent: 137.v,
  //         crossAxisCount: 2,
  //         mainAxisSpacing: 8.h,
  //         crossAxisSpacing: 8.h,
  //       ),
  //       physics: NeverScrollableScrollPhysics(),
  //       itemCount: 4,
  //       itemBuilder: (context, index) {
  //         return PricerequestsgridItemWidget();
  //       },
  //     ),
  //   );
  // }

  Widget _buildDesignStack(BuildContext context) {
    return SizedBox(
      height: 206,
      width: double.maxFinite,
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
                    barGroups: [
                      _generateGroupData(0, 90),
                      _generateGroupData(1, 60),
                      _generateGroupData(2, 4),
                    ],
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
    );
  }

  BarChartGroupData _generateGroupData(int x, int y) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(y: y.toDouble()),
      ],
    );
  }

  Widget _buildOrderSummaryRow(BuildContext context, {required String titleText}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgClose,
          height: 50.adaptSize,
          width: 50.adaptSize,
        ),
        SizedBox(width: 10.h),
        Text(
          titleText,
          style: CustomTextStyles.titleLargeMedium.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
      ],
    );
  }
}
