import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable
import 'package:flutter/services.dart';
import '../../api_service.dart';

// class LogInScreen extends StatelessWidget {
//   LogInScreen({Key? key})
//       : super(
//           key: key,
//         );

//   TextEditingController emailinputoneController = TextEditingController();

//   TextEditingController emailinputController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: appTheme.whiteA700,
//         resizeToAvoidBottomInset: false,
//         body: Container(
//           height: double.maxFinite,
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               Container(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: 12.h,
//                   vertical: 120.v,
//                 ),
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage(
//                       ImageConstant.imgGroup15812x374,
//                     ),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [_buildHeaderRow(context)],
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Container(
//                   height: 552.v,
//                   child: Stack(
//                     alignment: Alignment.bottomCenter,
//                     children: [
//                       Container(
//                         width: double.maxFinite,
//                         padding: EdgeInsets.symmetric(
//                           horizontal: 20.h,
//                           vertical: 190.v,
//                         ),
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: AssetImage(
//                               ImageConstant.imgGroup5,
//                             ),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             CustomElevatedButton(
//                               height: 54.v,
//                               text: "Continue".toUpperCase(),
//                               onPressed: () {
//                                 onTapContinue(context);
//                               },
//                             )
//                           ],
//                         ),
//                       ),
//                       _buildFormColumn(context)
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildHeaderRow(BuildContext context) {
//     return Expanded(
//       child: Container(
//         margin: EdgeInsets.only(bottom: 512.v),
//         padding: EdgeInsets.symmetric(horizontal: 56.h),
//         child: Row(
//           children: [
//             CustomImageView(
//               imagePath: ImageConstant.imgGecimoLogo1,
//               height: 58.v,
//               width: 46.h,
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: 12.h),
//               child: Text(
//                 "G-TREND".toUpperCase(),
//                 style: CustomTextStyles.headlineLargeInter,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildFormColumn(BuildContext context) {
//     return Align(
//       alignment: Alignment.topCenter,
//       child: Container(
//         width: double.maxFinite,
//         padding: EdgeInsets.symmetric(
//           horizontal: 12.h,
//           vertical: 38.v,
//         ),
//         decoration: AppDecoration.fillBlueGray.copyWith(
//           borderRadius: BorderRadiusStyle.roundedBorder10,
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Container(
//               width: double.maxFinite,
//               padding: EdgeInsets.symmetric(horizontal: 26.h),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Nom d'utilisateur",
//                     style: CustomTextStyles.titleLarge22_1,
//                   ),
//                   SizedBox(height: 12.v),
//                   CustomTextFormField(
//                     controller: emailinputoneController,
//                      textStyle: TextStyle(color: Colors.black),
//                      textInputType: TextInputType.emailAddress,
//                   ),
//                   SizedBox(height: 20.v),
//                   Text(
//                     "Mot de passe",
//                     style: CustomTextStyles.titleLarge22,
//                   ),
//                   SizedBox(height: 2.v),
//                   CustomTextFormField(
//                     controller: emailinputController,
//                     textInputAction: TextInputAction.done,
//                     textStyle: TextStyle(color: Colors.black,),
//                     textInputType: TextInputType.visiblePassword,
//                     obscureText: true,

//                   )
//                 ],
//               ),
//             ),
//             SizedBox(height: 14.v)
//           ],
//         ),
//       ),
//     );
//   }

//   /// Navigates to the homeContainerScreen when the action is triggered.
//   onTapContinue(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
//   }
// }
// class LogInScreen extends StatefulWidget {
//   LogInScreen({Key? key}) : super(key: key);

//   @override
//   _LogInScreenState createState() => _LogInScreenState();
// }

// class _LogInScreenState extends State<LogInScreen> {
//   TextEditingController emailinputoneController = TextEditingController();
//   TextEditingController emailinputController = TextEditingController();
//   bool _isLoading = false;
//   String _errorMessage = '';

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: appTheme.whiteA700,
//         resizeToAvoidBottomInset: false,
//         body: _isLoading
//             ? Center(child: CircularProgressIndicator())
//             : Container(
//                 height: double.maxFinite,
//                 child: Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     Container(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 12.h,
//                         vertical: 120.v,
//                       ),
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage(
//                             ImageConstant.imgGroup15812x374,
//                           ),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [_buildHeaderRow(context)],
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.bottomCenter,
//                       child: Container(
//                         height: 552.v,
//                         child: Stack(
//                           alignment: Alignment.bottomCenter,
//                           children: [
//                             Container(
//                               width: double.maxFinite,
//                               padding: EdgeInsets.symmetric(
//                                 horizontal: 20.h,
//                                 vertical: 190.v,
//                               ),
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                   image: AssetImage(
//                                     ImageConstant.imgGroup5,
//                                   ),
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   CustomElevatedButton(
//                                     height: 54.v,
//                                     text: "Continue".toUpperCase(),
//                                     onPressed: () {
//                                       onTapContinue(context);
//                                     },
//                                   )
//                                 ],
//                               ),
//                             ),
//                             _buildFormColumn(context)
//                           ],
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//       ),
//     );
//   }

//   Widget _buildHeaderRow(BuildContext context) {
//     return Expanded(
//       child: Container(
//         margin: EdgeInsets.only(bottom: 512.v),
//         padding: EdgeInsets.symmetric(horizontal: 56.h),
//         child: Row(
//           children: [
//             CustomImageView(
//               imagePath: ImageConstant.imgGecimoLogo1,
//               height: 58.v,
//               width: 46.h,
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: 12.h),
//               child: Text(
//                 "G-TREND".toUpperCase(),
//                 style: CustomTextStyles.headlineLargeInter,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildFormColumn(BuildContext context) {
//     return Align(
//       alignment: Alignment.topCenter,
//       child: Container(
//         width: double.maxFinite,
//         padding: EdgeInsets.symmetric(
//           horizontal: 12.h,
//           vertical: 35.v,
//         ),
//         decoration: AppDecoration.fillBlueGray.copyWith(
//           borderRadius: BorderRadiusStyle.roundedBorder10,
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Container(
//               width: double.maxFinite,
//               padding: EdgeInsets.symmetric(horizontal: 26.h),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Nom d'utilisateur",
//                     style: CustomTextStyles.titleLarge22_1,
//                   ),
//                   SizedBox(height: 12.v),
//                   CustomTextFormField(
//                     controller: emailinputoneController,
//                     textStyle: TextStyle(color: Colors.black),
//                     textInputType: TextInputType.emailAddress,
//                   ),
//                   SizedBox(height: 20.v),
//                   Text(
//                     "Mot de passe",
//                     style: CustomTextStyles.titleLarge22,
//                   ),
//                   SizedBox(height: 2.v),
//                   CustomTextFormField(
//                     controller: emailinputController,
//                     textInputAction: TextInputAction.done,
//                     textStyle: TextStyle(color: Colors.black),
//                     textInputType: TextInputType.visiblePassword,
//                     obscureText: true,
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(height: 0.3.v),
//             if (_errorMessage.isNotEmpty)
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 0.3),
//                 child: Text(
//                   _errorMessage,
//                   style: TextStyle(color: Color.fromARGB(255, 232, 31, 31)),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }

//   void onTapContinue(BuildContext context) async {
//     setState(() {
//       _isLoading = true;
//       _errorMessage = '';
//     });

//     final email = emailinputoneController.text;
//     final password = emailinputController.text;

//     final response = await ApiService.login(email, password);

//     setState(() {
//       _isLoading = false;
//     });

//     if (response.containsKey('token')) {
//       Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
//     } else {
//       setState(() {
//         _errorMessage = response['message'] ?? 'An error occurred';
//       });
//     }
//   }
// }
// // // // // // // // // // // // // class LogInScreen extends StatefulWidget {
// // // // // // // // // // // // //   LogInScreen({Key? key}) : super(key: key);

// // // // // // // // // // // // //   @override
// // // // // // // // // // // // //   _LogInScreenState createState() => _LogInScreenState();
// // // // // // // // // // // // // }

// // // // // // // // // // // // // class _LogInScreenState extends State<LogInScreen> {
// // // // // // // // // // // // //   TextEditingController emailinputoneController = TextEditingController();
// // // // // // // // // // // // //   TextEditingController emailinputController = TextEditingController();
// // // // // // // // // // // // //   bool _isLoading = false;
// // // // // // // // // // // // //   String _errorMessage = '';

// // // // // // // // // // // // //   @override
// // // // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // // // //     return SafeArea(
// // // // // // // // // // // // //       child: Scaffold(
// // // // // // // // // // // // //         backgroundColor: appTheme.whiteA700,
// // // // // // // // // // // // //         resizeToAvoidBottomInset: false,
// // // // // // // // // // // // //         body: _isLoading
// // // // // // // // // // // // //             ? Center(child: CircularProgressIndicator())
// // // // // // // // // // // // //             : Container(
// // // // // // // // // // // // //                 height: double.maxFinite,
// // // // // // // // // // // // //                 child: Stack(
// // // // // // // // // // // // //                   alignment: Alignment.center,
// // // // // // // // // // // // //                   children: [
// // // // // // // // // // // // //                     Container(
// // // // // // // // // // // // //                       padding: EdgeInsets.symmetric(
// // // // // // // // // // // // //                         horizontal: 12.h,
// // // // // // // // // // // // //                         vertical: 120.v,
// // // // // // // // // // // // //                       ),
// // // // // // // // // // // // //                       decoration: BoxDecoration(
// // // // // // // // // // // // //                         image: DecorationImage(
// // // // // // // // // // // // //                           image: AssetImage(
// // // // // // // // // // // // //                             ImageConstant.imgGroup15812x374,
// // // // // // // // // // // // //                           ),
// // // // // // // // // // // // //                           fit: BoxFit.cover,
// // // // // // // // // // // // //                         ),
// // // // // // // // // // // // //                       ),
// // // // // // // // // // // // //                       child: Row(
// // // // // // // // // // // // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // // //                         children: [_buildHeaderRow(context)],
// // // // // // // // // // // // //                       ),
// // // // // // // // // // // // //                     ),
// // // // // // // // // // // // //                     Align(
// // // // // // // // // // // // //                       alignment: Alignment.bottomCenter,
// // // // // // // // // // // // //                       child: Container(
// // // // // // // // // // // // //                         height: 552.v,
// // // // // // // // // // // // //                         child: Stack(
// // // // // // // // // // // // //                           alignment: Alignment.bottomCenter,
// // // // // // // // // // // // //                           children: [
// // // // // // // // // // // // //                             Container(
// // // // // // // // // // // // //                               width: double.maxFinite,
// // // // // // // // // // // // //                               padding: EdgeInsets.symmetric(
// // // // // // // // // // // // //                                 horizontal: 20.h,
// // // // // // // // // // // // //                                 vertical: 190.v,
// // // // // // // // // // // // //                               ),
// // // // // // // // // // // // //                               decoration: BoxDecoration(
// // // // // // // // // // // // //                                 image: DecorationImage(
// // // // // // // // // // // // //                                   image: AssetImage(
// // // // // // // // // // // // //                                     ImageConstant.imgGroup5,
// // // // // // // // // // // // //                                   ),
// // // // // // // // // // // // //                                   fit: BoxFit.cover,
// // // // // // // // // // // // //                                 ),
// // // // // // // // // // // // //                               ),
// // // // // // // // // // // // //                               child: Column(
// // // // // // // // // // // // //                                 mainAxisSize: MainAxisSize.min,
// // // // // // // // // // // // //                                 mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // // // //                                 children: [
// // // // // // // // // // // // //                                   CustomElevatedButton(
// // // // // // // // // // // // //                                     height: 54.v,
// // // // // // // // // // // // //                                     text: "Continue".toUpperCase(),
// // // // // // // // // // // // //                                     onPressed: () {
// // // // // // // // // // // // //                                       onTapContinue(context);
// // // // // // // // // // // // //                                     },
// // // // // // // // // // // // //                                   )
// // // // // // // // // // // // //                                 ],
// // // // // // // // // // // // //                               ),
// // // // // // // // // // // // //                             ),
// // // // // // // // // // // // //                             _buildFormColumn(context)
// // // // // // // // // // // // //                           ],
// // // // // // // // // // // // //                         ),
// // // // // // // // // // // // //                       ),
// // // // // // // // // // // // //                     )
// // // // // // // // // // // // //                   ],
// // // // // // // // // // // // //                 ),
// // // // // // // // // // // // //               ),
// // // // // // // // // // // // //       ),
// // // // // // // // // // // // //     );
// // // // // // // // // // // // //   }

// // // // // // // // // // // // //   Widget _buildHeaderRow(BuildContext context) {
// // // // // // // // // // // // //     return Expanded(
// // // // // // // // // // // // //       child: Container(
// // // // // // // // // // // // //         margin: EdgeInsets.only(bottom: 512.v),
// // // // // // // // // // // // //         padding: EdgeInsets.symmetric(horizontal: 56.h),
// // // // // // // // // // // // //         child: Row(
// // // // // // // // // // // // //           children: [
// // // // // // // // // // // // //             CustomImageView(
// // // // // // // // // // // // //               imagePath: ImageConstant.imgGecimoLogo1,
// // // // // // // // // // // // //               height: 58.v,
// // // // // // // // // // // // //               width: 46.h,
// // // // // // // // // // // // //             ),
// // // // // // // // // // // // //             Padding(
// // // // // // // // // // // // //               padding: EdgeInsets.only(left: 12.h),
// // // // // // // // // // // // //               child: Text(
// // // // // // // // // // // // //                 "G-TREND".toUpperCase(),
// // // // // // // // // // // // //                 style: CustomTextStyles.headlineLargeInter,
// // // // // // // // // // // // //               ),
// // // // // // // // // // // // //             )
// // // // // // // // // // // // //           ],
// // // // // // // // // // // // //         ),
// // // // // // // // // // // // //       ),
// // // // // // // // // // // // //     );
// // // // // // // // // // // // //   }

// // // // // // // // // // // // //   Widget _buildFormColumn(BuildContext context) {
// // // // // // // // // // // // //     return Align(
// // // // // // // // // // // // //       alignment: Alignment.topCenter,
// // // // // // // // // // // // //       child: Container(
// // // // // // // // // // // // //         width: double.maxFinite,
// // // // // // // // // // // // //         padding: EdgeInsets.symmetric(
// // // // // // // // // // // // //           horizontal: 12.h,
// // // // // // // // // // // // //           vertical: 35.v,
// // // // // // // // // // // // //         ),
// // // // // // // // // // // // //         decoration: AppDecoration.fillBlueGray.copyWith(
// // // // // // // // // // // // //           borderRadius: BorderRadiusStyle.roundedBorder10,
// // // // // // // // // // // // //         ),
// // // // // // // // // // // // //         child: Column(
// // // // // // // // // // // // //           mainAxisSize: MainAxisSize.min,
// // // // // // // // // // // // //           children: [
// // // // // // // // // // // // //             Container(
// // // // // // // // // // // // //               width: double.maxFinite,
// // // // // // // // // // // // //               padding: EdgeInsets.symmetric(horizontal: 26.h),
// // // // // // // // // // // // //               child: Column(
// // // // // // // // // // // // //                 crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // // // // // //                 children: [
// // // // // // // // // // // // //                   Text(
// // // // // // // // // // // // //                     "Nom d'utilisateur",
// // // // // // // // // // // // //                     style: CustomTextStyles.titleLarge22_1,
// // // // // // // // // // // // //                   ),
// // // // // // // // // // // // //                   SizedBox(height: 12.v),
// // // // // // // // // // // // //                   CustomTextFormField(
// // // // // // // // // // // // //                     controller: emailinputoneController,
// // // // // // // // // // // // //                     textStyle: TextStyle(color: Colors.black),
// // // // // // // // // // // // //                     textInputType: TextInputType.emailAddress,
// // // // // // // // // // // // //                   ),
// // // // // // // // // // // // //                   SizedBox(height: 20.v),
// // // // // // // // // // // // //                   Text(
// // // // // // // // // // // // //                     "Mot de passe",
// // // // // // // // // // // // //                     style: CustomTextStyles.titleLarge22,
// // // // // // // // // // // // //                   ),
// // // // // // // // // // // // //                   SizedBox(height: 2.v),
// // // // // // // // // // // // //                   CustomTextFormField(
// // // // // // // // // // // // //                     controller: emailinputController,
// // // // // // // // // // // // //                     textInputAction: TextInputAction.done,
// // // // // // // // // // // // //                     textStyle: TextStyle(color: Colors.black),
// // // // // // // // // // // // //                     textInputType: TextInputType.visiblePassword,
// // // // // // // // // // // // //                     obscureText: true,
// // // // // // // // // // // // //                   )
// // // // // // // // // // // // //                 ],
// // // // // // // // // // // // //               ),
// // // // // // // // // // // // //             ),
// // // // // // // // // // // // //             SizedBox(height: 0.3.v),
// // // // // // // // // // // // //             if (_errorMessage.isNotEmpty)
// // // // // // // // // // // // //               Padding(
// // // // // // // // // // // // //                 padding: const EdgeInsets.symmetric(vertical: 0.3),
// // // // // // // // // // // // //                 child: Text(
// // // // // // // // // // // // //                   _errorMessage,
// // // // // // // // // // // // //                   style: TextStyle(color: Color.fromARGB(255, 232, 31, 31)),
// // // // // // // // // // // // //                 ),
// // // // // // // // // // // // //               ),
// // // // // // // // // // // // //           ],
// // // // // // // // // // // // //         ),
// // // // // // // // // // // // //       ),
// // // // // // // // // // // // //     );
// // // // // // // // // // // // //   }

// // // // // // // // // // // // //   void onTapContinue(BuildContext context) async {
// // // // // // // // // // // // //     setState(() {
// // // // // // // // // // // // //       _isLoading = true;
// // // // // // // // // // // // //       _errorMessage = '';
// // // // // // // // // // // // //     });

// // // // // // // // // // // // //     final email = emailinputoneController.text;
// // // // // // // // // // // // //     final password = emailinputController.text;

// // // // // // // // // // // // //     final response = await ApiService.login(email, password);

// // // // // // // // // // // // //     setState(() {
// // // // // // // // // // // // //       _isLoading = false;
// // // // // // // // // // // // //     });

// // // // // // // // // // // // //     if (response.containsKey('token')) {
// // // // // // // // // // // // //       // Store token securely and navigate to the next screen
// // // // // // // // // // // // //       Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
// // // // // // // // // // // // //     } else {
// // // // // // // // // // // // //       setState(() {
// // // // // // // // // // // // //         _errorMessage = response['error'] ?? 'An error occurred';
// // // // // // // // // // // // //       });
// // // // // // // // // // // // //     }
// // // // // // // // // // // // //   }
// // // // // // // // // // // // // }

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LogInScreen extends StatefulWidget {
  LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController emailinputoneController = TextEditingController();
  TextEditingController emailinputController = TextEditingController();
  bool _isLoading = false;
  String _errorMessage = '';
  final storage = FlutterSecureStorage(); // Initialize storage
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: _isLoading
            ? Center(child: CircularProgressIndicator())
            : Container(
                height: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 120.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup15812x374,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [_buildHeaderRow(context)],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 552.v,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(
                                horizontal: 20.h,
                                vertical: 190.v,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    ImageConstant.imgGroup5,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomElevatedButton(
                                    height: 54.v,
                                    text: "Continue".toUpperCase(),
                                    onPressed: () {
                                      onTapContinue(context);
                                    },
                                  )
                                ],
                              ),
                            ),
                            _buildFormColumn(context)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
      ),
    );
  }

  Widget _buildHeaderRow(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(bottom: 512.v),
        padding: EdgeInsets.symmetric(horizontal: 56.h),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGecimoLogo1,
              height: 58.v,
              width: 46.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Text(
                "G-TREND".toUpperCase(),
                style: CustomTextStyles.headlineLargeInter,
              ),
            )
          ],
        ),
      ),
    );
  }

  // Widget _buildFormColumn(BuildContext context) {
  //   return Align(
  //     alignment: Alignment.topCenter,
  //     child: Container(
  //       width: double.maxFinite,
  //       padding: EdgeInsets.symmetric(
  //         horizontal: 12.h,
  //         vertical: 35.v,
  //       ),
  //       decoration: AppDecoration.fillBlueGray.copyWith(
  //         borderRadius: BorderRadiusStyle.roundedBorder10,
  //       ),
  //       child: Column(
  //         mainAxisSize: MainAxisSize.min,
  //         children: [
  //           Container(
  //             width: double.maxFinite,
  //             padding: EdgeInsets.symmetric(horizontal: 26.h),
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Text(
  //                   "Nom d'utilisateur",
  //                   style: CustomTextStyles.titleLarge22_1,
  //                 ),
  //                 SizedBox(height: 12.v),
  //                 CustomTextFormField(
  //                   controller: emailinputoneController,
  //                   textStyle: TextStyle(color: Colors.black),
  //                   textInputType: TextInputType.emailAddress,
  //                 ),
  //                 SizedBox(height: 20.v),
  //                 Text(
  //                   "Mot de passe",
  //                   style: CustomTextStyles.titleLarge22,
  //                 ),
  //                 SizedBox(height: 2.v),
  //                 CustomTextFormField(
  //                   controller: emailinputController,
  //                   textInputAction: TextInputAction.done,
  //                   textStyle: TextStyle(color: Colors.black),
  //                   textInputType: TextInputType.visiblePassword,
  //                   obscureText: true,
  //                 )
  //               ],
  //             ),
  //           ),
  //           SizedBox(height: 0.3.v),
  //           if (_errorMessage.isNotEmpty)
  //             Padding(
  //               padding: const EdgeInsets.symmetric(vertical: 0.3),
  //               child: Text(
  //                 _errorMessage,
  //                 style: TextStyle(color: Color.fromARGB(255, 232, 31, 31)),
  //               ),
  //             ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
// Widget _buildHeaderRow(BuildContext context) {
//   final screenHeight = MediaQuery.of(context).size.height;
//   final screenWidth = MediaQuery.of(context).size.width;

//   return Expanded(
//     child: Container(
//       margin: EdgeInsets.only(bottom: screenHeight * 0.05),
//       padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
//       child: Row(
//         children: [
//           CustomImageView(
//             imagePath: ImageConstant.imgGecimoLogo1,
//             height: screenHeight * 0.08,
//             width: screenWidth * 0.1,
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: screenWidth * 0.03),
//             child: Text(
//               "G-TREND".toUpperCase(),
//               style: CustomTextStyles.headlineLargeInter,
//             ),
//           )
//         ],
//       ),
//     ),
//   );
// }

Widget _buildFormColumn(BuildContext context) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;

  // return Align(
  //   alignment: Alignment.topCenter,
  //   child: Container(
  //     width: double.maxFinite,
  //     padding: EdgeInsets.symmetric(
  //       horizontal: screenWidth * 0.05,
  //       vertical: screenHeight * 0.03,
  //     ),
  //     decoration: AppDecoration.fillBlueGray.copyWith(
  //       borderRadius: BorderRadiusStyle.roundedBorder10,
  //     ),
  //     child: Column(
  //       mainAxisSize: MainAxisSize.min,
  //       children: [
  //         Container(
  //           width: double.maxFinite,
  //           padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 "Nom d'utilisateur",
  //                 style: CustomTextStyles.titleLarge22_1,
  //               ),
  //               SizedBox(height: screenHeight * 0.015),
  //               CustomTextFormField(
  //                 controller: emailinputoneController,
  //                 textStyle: TextStyle(color: Colors.black),
  //                 textInputType: TextInputType.emailAddress,
  //               ),
  //               SizedBox(height: screenHeight * 0.025),
  //               Text(
  //                 "Mot de passe",
  //                 style: CustomTextStyles.titleLarge22,
  //               ),
  //               SizedBox(height: screenHeight * 0.01),
  //               CustomTextFormField(
  //                 controller: emailinputController,
  //                 textInputAction: TextInputAction.done,
  //                 textStyle: TextStyle(color: Colors.black),
  //                 textInputType: TextInputType.visiblePassword,
  //                 obscureText: true,
  //               )
  //             ],
  //           ),
  //         ),
  //         SizedBox(height: screenHeight * 0.001),
  //         if (_errorMessage.isNotEmpty)
  //           Padding(
  //             padding: EdgeInsets.symmetric(vertical: screenHeight * 0.001),
  //             child: Text(
  //               _errorMessage,
  //               style: TextStyle(color: Color.fromARGB(255, 232, 31, 31)),
  //             ),
  //           ),
  //       ],
  //     ),
  //   ),
  // );
  return Align(
  alignment: Alignment.topCenter,
  child: Container(
    width: screenHeight * 0.43,
    height: screenHeight * 0.37, // Set the height to 50% of the screen height
    padding: EdgeInsets.symmetric(
      horizontal: screenWidth * 0.05,
      vertical: screenHeight * 0.03,
    ),
    decoration: AppDecoration.fillBlueGray.copyWith(
      borderRadius: BorderRadiusStyle.roundedBorder10,
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nom d'utilisateur",
                style: CustomTextStyles.titleLarge22_1,
              ),
              SizedBox(height: screenHeight * 0.015),
              CustomTextFormField(
                controller: emailinputoneController,
                textStyle: TextStyle(color: Colors.black),
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: screenHeight * 0.025),
              Text(
                "Mot de passe",
                style: CustomTextStyles.titleLarge22,
              ),
              SizedBox(height: screenHeight * 0.01),
              CustomTextFormField(
                controller: emailinputController,
                textInputAction: TextInputAction.done,
                textStyle: TextStyle(color: Colors.black),
                textInputType: TextInputType.visiblePassword,
                obscureText: true,
              )
            ],
          ),
        ),
        SizedBox(height: screenHeight * 0.001),
        if (_errorMessage.isNotEmpty)
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.001),
            child: Text(
              _errorMessage,
              style: TextStyle(color: Color.fromARGB(255, 232, 31, 31)),
            ),
          ),
      ],
    ),
  ),
);
}

//   Future<void> onTapContinue(BuildContext context) async {
//     setState(() {
//       _isLoading = true;
//       _errorMessage = '';
//     });

//     final email = emailinputoneController.text;
//     final password = emailinputController.text;

//     try {
//       final Dio dio = Dio();
//       final response = await dio.post(
//         'http://159.69.119.46/AchatTestTEMP/Api/Login',
//         queryParameters: {
//           'username': email,
//           'password': password,
//         },
//       );

//       setState(() {
//         _isLoading = false;
//       });

//       if (response.statusCode == 200) {
//         final token =
//             response.data['token']; // Assuming token is in response data
//         await storage.write(
//             key: 'auth_token', value: token); // Store token in secure storage
//         Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
//         print(token);
//       } else {
//         setState(() {
//           _errorMessage = 'Login failed';
//         });
//       }
//     } catch (error) {
//       setState(() {
//         _isLoading = false;
//         _errorMessage = 'Error: ${error.toString()}';
//       });
//     }
//   }
// }
  Future<void> onTapContinue(BuildContext context) async {
    setState(() {
      _isLoading = true;
      _errorMessage = '';
    });

    final email = emailinputoneController.text;
    final password = emailinputController.text;

    try {
      final Dio dio = Dio();
      final response = await dio.post(
        'http://159.69.119.46/AchatTestTEMP/Api/Login',
        queryParameters: {
          'username': email,
          'password': password,
        },
      );

      setState(() {
        _isLoading = false;
      });

      // Check if the response is successful and contains the correct data
      if (response.statusCode == 200 && response.data['err'] == false) {
        final token = response.data['msg']; // Use 'msg' as the token field
        // print('Token received: $token'); // Print the token to the console

        // Store the token in Flutter Secure Storage
        await storage.write(key: 'auth_token', value: token);

        // Navigate to the home screen
        Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
      } else {
        setState(() {
          _errorMessage =
              // response.data['msg'] ?? 
              'Login failed'; // Show error message
        });
      }
    } catch (error) {
      setState(() {
        _isLoading = false;
        _errorMessage = 'Error: Login failed ';// _errorMessage = 'Error: ${error.toString()}';
 
      });
    }
  }
}

//   Future<void> onTapContinue(BuildContext context) async {
//     setState(() {
//       _isLoading = true;
//       _errorMessage = '';
//     });

//     final email = emailinputoneController.text;
//     final password = emailinputController.text;

//     try {
//       final Dio dio = Dio();
//       final response = await dio.post(
//         'http://159.69.119.46/AchatTestTEMP/Api/Login',
//         queryParameters: {
//           'username': email,
//           'password': password,
//         },
//       );

//       setState(() {
//         _isLoading = false;
//       });

//       if (response.statusCode == 200 && response.data['err'] == false) {
//         final token = response.data['token'];
//         print(token); // Get token if login is successful
//         await storage.write(
//             key: 'auth_token', value: token); // Store token in secure storage
//         Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
        
//       } else {
//         setState(() {
//           _errorMessage = response.data['message'] ??
//               'Login failed'; // Display the error message
//         });
//       }
//     } catch (error) {
//       setState(() {
//         _isLoading = false;
//         _errorMessage = 'Error: ${error.toString()}';
//       });
//     }
//   }
// }



// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:your_project/services/api_service.dart'; // Assurez-vous de remplacer par le chemin correct
// import 'package:your_project/routes/app_routes.dart'; // Remplacez par le chemin correct
// import 'package:your_project/widgets/custom_elevated_button.dart'; // Assurez-vous de remplacer par le chemin correct
// import 'package:your_project/widgets/custom_text_form_field.dart'; // Assurez-vous de remplacer par le chemin correct
// import 'package:your_project/theme/app_theme.dart'; // Remplacez par le chemin correct
// import 'package:your_project/utils/image_constant.dart'; // Remplacez par le chemin correct
// import 'package:your_project/styles/custom_text_styles.dart'; // Remplacez par le chemin correct

// class LogInScreen extends StatefulWidget {
//   LogInScreen({Key? key}) : super(key: key);

//   @override
//   _LogInScreenState createState() => _LogInScreenState();
// }

// class _LogInScreenState extends State<LogInScreen> {
//   TextEditingController emailinputoneController = TextEditingController();
//   TextEditingController emailinputController = TextEditingController();
//   bool _isLoading = false;
//   String _errorMessage = '';

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: appTheme.whiteA700,
//         resizeToAvoidBottomInset: false,
//         body: _isLoading
//             ? Center(child: CircularProgressIndicator())
//             : Container(
//                 height: double.maxFinite,
//                 child: Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     Container(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 12.0,
//                         vertical: 120.0,
//                       ),
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage(
//                             ImageConstant.imgGroup15812x374,
//                           ),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [_buildHeaderRow(context)],
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.bottomCenter,
//                       child: Container(
//                         height: 552.0,
//                         child: Stack(
//                           alignment: Alignment.bottomCenter,
//                           children: [
//                             Container(
//                               width: double.maxFinite,
//                               padding: EdgeInsets.symmetric(
//                                 horizontal: 20.0,
//                                 vertical: 190.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                   image: AssetImage(
//                                     ImageConstant.imgGroup5,
//                                   ),
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   CustomElevatedButton(
//                                     height: 54.0,
//                                     text: "Continue".toUpperCase(),
//                                     onPressed: () {
//                                       onTapContinue(context);
//                                     },
//                                   )
//                                 ],
//                               ),
//                             ),
//                             _buildFormColumn(context)
//                           ],
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//       ),
//     );
//   }

//   Widget _buildHeaderRow(BuildContext context) {
//     return Expanded(
//       child: Container(
//         margin: EdgeInsets.only(bottom: 512.0),
//         padding: EdgeInsets.symmetric(horizontal: 56.0),
//         child: Row(
//           children: [
//             CustomImageView(
//               imagePath: ImageConstant.imgGecimoLogo1,
//               height: 58.0,
//               width: 46.0,
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: 12.0),
//               child: Text(
//                 "G-TREND".toUpperCase(),
//                 style: CustomTextStyles.headlineLargeInter,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildFormColumn(BuildContext context) {
//     return Align(
//       alignment: Alignment.topCenter,
//       child: Container(
//         width: double.maxFinite,
//         padding: EdgeInsets.symmetric(
//           horizontal: 12.0,
//           vertical: 35.0,
//         ),
//         decoration: AppDecoration.fillBlueGray.copyWith(
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Container(
//               width: double.maxFinite,
//               padding: EdgeInsets.symmetric(horizontal: 26.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Nom d'utilisateur",
//                     style: CustomTextStyles.titleLarge22_1,
//                   ),
//                   SizedBox(height: 12.0),
//                   CustomTextFormField(
//                     controller: emailinputoneController,
//                     textStyle: TextStyle(color: Colors.black),
//                     textInputType: TextInputType.emailAddress,
//                   ),
//                   SizedBox(height: 20.0),
//                   Text(
//                     "Mot de passe",
//                     style: CustomTextStyles.titleLarge22,
//                   ),
//                   SizedBox(height: 2.0),
//                   CustomTextFormField(
//                     controller: emailinputController,
//                     textInputAction: TextInputAction.done,
//                     textStyle: TextStyle(color: Colors.black),
//                     textInputType: TextInputType.visiblePassword,
//                     obscureText: true,
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(height: 0.3),
//             if (_errorMessage.isNotEmpty)
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 0.3),
//                 child: Text(
//                   _errorMessage,
//                   style: TextStyle(color: Color.fromARGB(255, 232, 31, 31)),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }

//   void onTapContinue(BuildContext context) async {
//     setState(() {
//       _isLoading = true;
//       _errorMessage = '';
//     });

//     final email = emailinputoneController.text;
//     final password = emailinputController.text;

//     final token = await ApiService().login(email, password);

//     setState(() {
//       _isLoading = false;
//     });

//     if (token != null) {
//       // Si le token est reçu, naviguez vers l'écran d'accueil
//       Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
//     } else {
//       // Si le token n'est pas reçu, affichez un message d'erreur
//       setState(() {
//         _errorMessage = 'Invalid email or password';
//       });
//     }
//   }
// }
