// import 'package:flutter/material.dart';
// import '../../core/app_export.dart';
// import '../../widgets/custom_bottom_bar.dart';
// import '../home_page/home_page.dart'; // ignore_for_file: must_be_immutable


// class MenuScreen extends StatelessWidget {
//   MenuScreen({Key? key})
//       : super(
//           key: key,
//         );

//   GlobalKey<NavigatorState> navigatorKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildUserProfile(context),
//             SizedBox(height: 32.v),
//             Container(
//               width: double.maxFinite,
//               margin: EdgeInsets.only(left: 14.h),
//               child: _buildPurchaseRequest(
//                 context,
//                 bagOne: ImageConstant.imgHome,
//                 tableaudebord: "Tableau de bord",
//                 onTapPurchaseRequest: () {
//                   onTapDashboard(context);
//                 },
//               ),
//             ),
//             SizedBox(height: 14.v),
//             Container(
//               width: double.maxFinite,
//               margin: EdgeInsets.only(left: 14.h),
//               child: _buildPurchaseRequest(
//                 context,
//                 bagOne: ImageConstant.imgBag,
//                 tableaudebord: "Demande d’achat",
//                 onTapPurchaseRequest: () {
//                   onTapPurchaseRequest(context);
//                 },
//               ),
//             ),
//             SizedBox(height: 14.v),
//             _buildWorkflowValidation(context),
//             SizedBox(height: 14.v),
//             _buildTenderCall(context),
//             SizedBox(height: 14.v),
//             Container(
//               width: double.maxFinite,
//               margin: EdgeInsets.only(left: 14.h),
//               child: _buildPurchaseRequest(
//                 context,
//                 bagOne: ImageConstant.imgThumbsUp,
//                 tableaudebord: "Terrain",
//               ),
//             ),
//             SizedBox(height: 14.v),
//             Container(
//               width: double.maxFinite,
//               margin: EdgeInsets.only(left: 14.h),
//               child: _buildPurchaseRequest(
//                 context,
//                 bagOne: ImageConstant.imgThumbsUpOnprimarycontainer,
//                 tableaudebord: "Marchés",
//               ),
//             ),
//             SizedBox(height: 4.v)
//           ],
//         ),
//         bottomNavigationBar: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 6.h),
//           child: _buildBottomNavigation(context),
//         ),
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildUserProfile(BuildContext context) {
//     return Container(
//       width: double.maxFinite,
//       padding: EdgeInsets.all(12.h),
//       decoration: AppDecoration.outlinePrimary.copyWith(
//         borderRadius: BorderRadiusStyle.customBorderBL20,
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: 28.v),
//           SizedBox(
//             width: double.maxFinite,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 CustomImageView(
//                   imagePath: ImageConstant.imgEllipse1,
//                   height: 90.adaptSize,
//                   width: 90.adaptSize,
//                   radius: BorderRadius.circular(
//                     44.h,
//                   ),
//                   alignment: Alignment.center,
//                   margin: EdgeInsets.only(left: 8.h),
//                 ),
//                 CustomImageView(
//                   imagePath: ImageConstant.imgClose,
//                   height: 34.v,
//                   width: 38.h,
//                   margin: EdgeInsets.only(top: 6.v),
//                 )
//               ],
//             ),
//           ),
//           SizedBox(height: 10.v),
//           Text(
//             "Salima LEYLA",
//             style: CustomTextStyles.titleLarge_2,
//           ),
//           SizedBox(height: 4.v),
//           Text(
//             "Administration",
//             style: CustomTextStyles.bodyMediumRegular,
//           )
//         ],
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildWorkflowValidation(BuildContext context) {
//     return SizedBox(
//       width: double.maxFinite,
//       child: GestureDetector(
//         onTap: () {
//           onTapWorkflowValidation(context);
//         },
//         child: Container(
//           margin: EdgeInsets.only(left: 14.h),
//           padding: EdgeInsets.symmetric(
//             horizontal: 4.h,
//             vertical: 6.v,
//           ),
//           decoration: AppDecoration.fillBlueGray,
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               CustomImageView(
//                 imagePath: ImageConstant.imgTelevision,
//                 height: 20.adaptSize,
//                 width: 20.adaptSize,
//                 margin: EdgeInsets.only(top: 6.v),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(
//                   left: 10.h,
//                   bottom: 2.v,
//                 ),
//                 child: Text(
//                   "Validation workflow",
//                   style: CustomTextStyles.titleLarge_2,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildTenderCall(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(left: 14.h),
//       padding: EdgeInsets.symmetric(vertical: 4.v),
//       decoration: AppDecoration.fillBlueGray,
//       width: double.maxFinite,
//       child: Row(
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           CustomImageView(
//             imagePath: ImageConstant.imgCallOnprimarycontainer,
//             height: 24.v,
//             width: 22.h,
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Padding(
//               padding: EdgeInsets.only(left: 12.h),
//               child: Text(
//                 "Appel d’offre",
//                 style: theme.textTheme.titleLarge,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildBottomNavigation(BuildContext context) {
//     return CustomBottomBar(
//       onChanged: (BottomBarEnum type) {
//         Navigator.pushNamed(
//             navigatorKey.currentContext!, getCurrentRoute(type));
//       },
//     );
//   }

//   /// Common widget
//   Widget _buildPurchaseRequest(
//     BuildContext context, {
//     required String bagOne,
//     required String tableaudebord,
//     Function? onTapPurchaseRequest,
//   }) {
//     return GestureDetector(
//       onTap: () {
//         onTapPurchaseRequest?.call();
//       },
//       child: Container(
//         padding: EdgeInsets.symmetric(vertical: 6.v),
//         decoration: AppDecoration.fillBlueGray,
//         child: Row(
//           children: [
//             CustomImageView(
//               imagePath: bagOne,
//               height: 24.adaptSize,
//               width: 24.adaptSize,
//             ),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Padding(
//                 padding: EdgeInsets.only(left: 10.h),
//                 child: Text(
//                   tableaudebord,
//                   style: theme.textTheme.titleLarge!.copyWith(
//                     color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   ///Handling route based on bottom click actions
//   String getCurrentRoute(BottomBarEnum type) {
//     switch (type) {
//       case BottomBarEnum.Home:
//         return AppRoutes.homePage;
//       case BottomBarEnum.Call:
//         return "/";
//       case BottomBarEnum.Clock:
//         return "/";
//       default:
//         return "/";
//     }
//   }

//   ///Handling page based on route
//   Widget getCurrentPage(String currentRoute) {
//     switch (currentRoute) {
//       case AppRoutes.homePage:
//         return HomePage();
//       default:
//         return DefaultWidget();
//     }
//   }

//   /// Navigates to the homeContainerScreen when the action is triggered.
//   onTapDashboard(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
//   }

//   /// Navigates to the appelDOffreScreen when the action is triggered.
//   onTapPurchaseRequest(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.appelDoffreScreen);
//   }

//   /// Navigates to the validationWorkScreen when the action is triggered.
//   onTapWorkflowValidation(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.validationWorkScreen);
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:gecimmoa/presentation/appel_doffre_screen/appel_doffre_screen.dart';
// import 'package:gecimmoa/presentation/get_started_screen/get_started_screen.dart';
// import 'package:gecimmoa/presentation/suivi_terrain_screen/suivi_terrain_screen.dart';
// import 'package:gecimmoa/presentation/validation_work_screen/validation_work_screen.dart';
// import 'package:gecimmoa/routes/app_routes.dart';


// // ignore: must_be_immutable
// class MenuScreen extends StatelessWidget {
//   MenuScreen({Key? key})
//       : super(
//           key: key,
//         );

//   GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  
//   void getStartedScreen(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.getStartedScreen);
//   }

//   void demande(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.appelDoffreScreen);
//   }

//   void ValidationWorkScreen(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.validationWorkScreen);
//   }
//   void TaskManagementScreen(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.taskManagementScreen);
//   }
//   @override
//   Widget build(BuildContext context ) {
//     return Drawer(
//       child: Column(
//         children: [
//           UserAccountsDrawerHeader(
//             accountName: Text("Salima LEYLA"),
//             accountEmail: Text("Administration"),
//             currentAccountPicture: CircleAvatar(
//               backgroundImage: AssetImage('assets/images/img_ellipse_1.png'),
//             ),
//             decoration: BoxDecoration(
//               color: Color(0xFF2F3D4C),
//             ),
//             otherAccountsPictures: [
//               IconButton(
//                 icon: Icon(Icons.close, color: Colors.white),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ],
//           ),
//           Expanded(
//             child: ListView(
//               padding: EdgeInsets.zero,
//               children: [
//                 ListTile(
//                   leading: Icon(Icons.dashboard, color: Colors.white),
//                   title: Text('Tableau de bord', style: TextStyle(color: Colors.white)),
//                   tileColor: Color(0xFF2F3D4C),
//                   onTap: () {
//                     // Handle navigation to the dashboard
//                     Navigator.pushNamed(context, AppRoutes.homePage);
//                   },
//                 ),
//                 ListTile(
//                   leading: Icon(Icons.shopping_cart, color: Colors.white),
//                   title: Text('Demande d\'achat', style: TextStyle(color: Colors.white)),
//                   tileColor: Color(0xFF2F3D4C),
//                   onTap: () => demande (context),
//                   // onTap: () {
//                   //   // Handle navigation to purchase request
//                   //   Navigator.pushNamed(context, AppRoutes.appelDoffreScreen);
//                   // },
//                 ),
//                 ListTile(
//                   leading: Icon(Icons.check_circle, color: Colors.white),
//                   title: Text('Validation Workflow', style: TextStyle(color: Colors.white)),
//                   tileColor: Color(0xFF2F3D4C),
//                   onTap: () => ValidationWorkScreen(context),
//                   // onTap: () {
//                   //   // Handle navigation to workflow validation
//                   //   Navigator.pushNamed(context, AppRoutes.validationWorkScreen);
//                   // },
//                 ),
//                 ListTile(
//                   leading: Icon(Icons.phone, color: Colors.white),
//                   title: Text('Appel d\'offre', style: TextStyle(color: Colors.white)),
//                   tileColor: Color(0xFF2F3D4C),
//                    onTap: () {
//                     // Handle navigation to purchase request
//                     // Navigator.pushNamed(context, AppRoutes.getStartedScreen);
//                   },
//                   // onTap: () {
//                   //   // Handle navigation to call for tenders
//                   // },
//                 ),
//                 ListTile(
//                   leading: Icon(Icons.location_on, color: Colors.white),
//                   title: Text('Terrain', style: TextStyle(color: Colors.white)),
//                   tileColor: Color(0xFF2F3D4C),
//                   onTap: () {
//                     // Handle navigation to terrain
//                   },
//                 ),
//                 ListTile(
//                   leading: Icon(Icons.map, color: Colors.white),
//                   title: Text('Suivi chantier', style: TextStyle(color: Colors.white)),
//                   tileColor: Color(0xFF2F3D4C),
//                   onTap: () => TaskManagementScreen(context)

//                     // Handle navigation to markets
                  
//                 ),
//               ],
//             ),
//           ),
//           Divider(color: Colors.white),
//           ListTile(
//             leading: Icon(Icons.settings, color: Colors.white),
//             title: Text('Settings', style: TextStyle(color: Colors.white)),
//             tileColor: Color(0xFF2F3D4C),
//             onTap: () {
//               // Handle navigation to settings
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.account_circle, color: Colors.white),
//             title: Text('Profile', style: TextStyle(color: Colors.white)),
//             tileColor: Color(0xFF2F3D4C),
//             onTap: () {
//               // Handle navigation to profile
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.logout, color: Colors.white),
//             title: Text('Logout', style: TextStyle(color: Colors.white)),
//             tileColor: Color(0xFF2F3D4C),
//             onTap: () => getStartedScreen(context),
//               // Handle logout,
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gecimmoa/routes/app_routes.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';


  
class MenuScreen extends StatelessWidget {
  MenuScreen({Key? key}) : super(key: key);

  void getStartedScreen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.getStartedScreen);
  }

  void demande(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appelDoffreScreen);
  }

  void validationWorkScreen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.validationWorkScreen);
  }

  void taskManagementScreen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.taskManagementScreen);
  }
  final storage = const FlutterSecureStorage();
  Future<void> logout(BuildContext context) async {
  try {
    // Remove the token from secure storage
    await storage.delete(key: 'auth_token');

    // Navigate to the login screen
    Navigator.pushNamedAndRemoveUntil(context, AppRoutes.logInScreen, (route) => false);
  } catch (error) {
    print('Error during logout: $error');
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Menu'),
      //   backgroundColor: Color(0xFF2F3D4C),
      //   leading: IconButton(
      //     icon: Icon(Icons.close),
      //     onPressed: () {
      //       Navigator.of(context).pop();
      //     },
      //   ),
      // ),
      body: Column(
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
                  tileColor: Color(0xFF2F3D4C),
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.homePage);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart, color: Colors.white),
                  title: Text('Demande d\'achat', style: TextStyle(color: Colors.white)),
                  tileColor: Color(0xFF2F3D4C),
                  onTap: () => demande(context),
                ),
                ListTile(
                  leading: Icon(Icons.check_circle, color: Colors.white),
                  title: Text('Validation Workflow', style: TextStyle(color: Colors.white)),
                  tileColor: Color(0xFF2F3D4C),
                  onTap: () => validationWorkScreen(context),
                ),
                ListTile(
                  leading: Icon(Icons.phone, color: Colors.white),
                  title: Text('Appel d\'offre', style: TextStyle(color: Colors.white)),
                  tileColor: Color(0xFF2F3D4C),
                  onTap: () {
                    // Handle navigation to 'Appel d'offre'
                  },
                ),
                ListTile(
                  leading: Icon(Icons.location_on, color: Colors.white),
                  title: Text('Terrain', style: TextStyle(color: Colors.white)),
                  tileColor: Color(0xFF2F3D4C),
                  onTap: () {
                    // Handle navigation to 'Terrain'
                    // Navigator.pushNamed(context, AppRoutes.filterAndGraphScreen);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.map, color: Colors.white),
                  title: Text('Suivi chantier', style: TextStyle(color: Colors.white)),
                  tileColor: Color(0xFF2F3D4C),
                  onTap: () => taskManagementScreen(context),
                ),
              ],
            ),
          ),
          Divider(color: Colors.white),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.white),
            title: Text('Settings', style: TextStyle(color: Colors.white)),
            tileColor: Color(0xFF2F3D4C),
            onTap: () {
              // Handle navigation to settings
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle, color: Colors.white),
            title: Text('Profile', style: TextStyle(color: Colors.white)),
            tileColor: Color(0xFF2F3D4C),
            onTap: () {
              // Handle navigation to profile
            },
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.white),
            title: Text('Logout', style: TextStyle(color: Colors.white)),
            tileColor: Color(0xFF2F3D4C),
            onTap: () => logout(context),
          ),
        ],
      ),
    );
  }
}
