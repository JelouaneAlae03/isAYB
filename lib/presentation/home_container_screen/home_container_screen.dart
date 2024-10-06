import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gecimmoa/presentation/appel_doffre_screen/appel_doffre_screen.dart';
import 'package:gecimmoa/presentation/appel_doffre_screen/widgets/create_demande_screen.dart';
import 'package:gecimmoa/presentation/get_started_screen/get_started_screen.dart';
import 'package:gecimmoa/presentation/menu_screen/menu_screen.dart';
import 'package:gecimmoa/presentation/suivi_terrain_screen/suivi_terrain_screen.dart';
import 'package:gecimmoa/presentation/validation_work_screen/validation_work_screen.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../home_page/home_page.dart'; // ignore_for_file: must_be_immutable



class HomeContainerScreen extends StatelessWidget {
  HomeContainerScreen({Key? key}) : super(key: key);
  final storage = const FlutterSecureStorage();
  Future<void> logout(BuildContext context) async {
    // Clear the authentication token from Flutter Secure Storage
    await storage.delete(key: 'auth_token');

    // Navigate back to the login screen
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.logInScreen, // Replace with your login screen route
      (Route<dynamic> route) => false, // Remove all previous routes
    );
  }
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.homePage,
          onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!),
            transitionDuration: Duration(seconds: 0),
          ),
        ),
         floatingActionButton: FloatingActionButton(
      onPressed: () async {
                // Call the logout function when the button is pressed
                await logout(context);
      },
      child: Icon(Icons.logout),
      backgroundColor: Color.fromARGB(255, 255, 0, 0),
    ),
      ),
    );
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.appelDoffreScreen:
        return AppelDoffreScreen();
      case AppRoutes.validationWorkScreen:
        return WorkflowPage();
      case AppRoutes.getStartedScreen:
        return GetStartedScreen();
      case AppRoutes.taskManagementScreen:
        return TaskManagementScreen();
      case AppRoutes.createDemandeScreen:
        return CreateDemandeScreen();
      case AppRoutes.menuScreen:
        return MenuScreen();
      default:
        return DefaultWidget();
    }
  }
}


// class HomeContainerScreen extends StatelessWidget {
//   HomeContainerScreen({Key? key})
//       : super(
//           key: key,
//         );

//   GlobalKey<NavigatorState> navigatorKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Navigator(
//           key: navigatorKey,
//           initialRoute: AppRoutes.homePage,
//           onGenerateRoute: (routeSetting) => PageRouteBuilder(
//             pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!),
//             transitionDuration: Duration(seconds: 0),
//           ),
//         ),
//         // bottomNavigationBar: _buildBottomBar(context),
//       ),
//     );
//   }

//   /// Section Widget
//   // Widget _buildBottomBar(BuildContext context) {
//   //   return CustomBottomBar(
//   //     onChanged: (BottomBarEnum type) {
//   //       Navigator.pushNamed(
//   //           navigatorKey.currentContext!, getCurrentRoute(type));
//   //     },
//   //   );
//   // }

//   ///Handling route based on bottom click actions
//   // String getCurrentRoute(BottomBarEnum type) {
//   //   switch (type) {
//   //     case BottomBarEnum.Home:
//   //       return AppRoutes.homePage;
//   //     case BottomBarEnum.Call:
//   //       return "/";
//   //     case BottomBarEnum.Clock:
//   //       return "/";
//   //     default:
//   //       return "/";
//   //   }
//   // }

//   // String getCurrentRoute(BottomBarEnum type) {
//   //   switch (type) {
//   //     case BottomBarEnum.Home:
//   //       return AppRoutes.homePage;
//   //     // case BottomBarEnum.Call:
//   //     //   return AppRoutes.callPage;
//   //     // case BottomBarEnum.Clock:
//   //     //   return AppRoutes.clockPage;
//   //     case BottomBarEnum.validate:
//   //       return AppRoutes.validationWorkScreen;
//   //     case BottomBarEnum.appel:
//   //       return AppRoutes.appelDoffreScreen;
//   //     case BottomBarEnum.Menu:
//   //       return AppRoutes.menuScreen;
//   //     default:
//   //       return "/";
//   //   }
//   // }

//   ///Handling page based on route
//   // Widget getCurrentPage(String currentRoute) {
//   //   switch (currentRoute) {
//   //     case AppRoutes.homePage:
//   //       return HomePage();
//   //     default:
//   //       return DefaultWidget();
//   //   }
//   // }
//   Widget getCurrentPage(String currentRoute) {
//     switch (currentRoute) {
//       case AppRoutes.homePage:
//         return HomePage();
//       // case AppRoutes.callPage:
//       //   return CallPage();
//       // case AppRoutes.clockPage:
//       //   return ClockPage();
//       case AppRoutes.appelDoffreScreen:
//         return AppelDoffreScreen();
//       case AppRoutes.validationWorkScreen:
//         return WorkflowPage();
//       case AppRoutes.getStartedScreen:
//         return GetStartedScreen();
//       case AppRoutes.taskManagementScreen:
//         return TaskManagementScreen();
//       case AppRoutes.createDemandeScreen:
//         return CreateDemandeScreen();
//       case AppRoutes.menuScreen:
//         return MenuScreen();
//       // Assurez-vous que MenuScreen est défini
//       default:
//         return DefaultWidget();
//     }
//   }
// }

// //   Widget getCurrentPage(String currentRoute) {
// //     switch (currentRoute) {
// //       case AppRoutes.homePage:
// //         return HomePage();
// //       // case AppRoutes.callPage:
// //       //   return CallPage();
// //       // case AppRoutes.clockPage:
// //       //   return ClockPage();
// //       case AppRoutes.appelDoffreScreen:
// //         return AppelDoffreScreen();
// //       case AppRoutes.validationWorkScreen:
// //         return WorkflowPage();
// //       case AppRoutes.getStartedScreen:
// //         return GetStartedScreen();
// //       case AppRoutes.taskManagementScreen:
// //         return TaskManagementScreen();
// //       case AppRoutes.createDemandeScreen:
// //         return CreateDemandeScreen();
// //       case AppRoutes.menuScreen:
// //         return MenuScreen();
// //       // Assurez-vous que MenuScreen est défini
// //       default:
// //         return DefaultWidget();
// //     }
// //   }
// // }
