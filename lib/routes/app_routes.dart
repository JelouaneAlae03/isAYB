import 'package:flutter/material.dart';
import 'package:gecimmoa/presentation/appel_doffre_screen/widgets/create_demande_screen.dart';
import 'package:gecimmoa/presentation/log_in_screen/log_in_screen.dart';
import 'package:gecimmoa/presentation/menu_screen/menu_screen.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/appel_doffre_screen/appel_doffre_screen.dart';
import '../presentation/get_started_screen/get_started_screen.dart';
import '../presentation/home_container_screen/home_container_screen.dart';
import '../presentation/validation_work_screen/validation_work_screen.dart';
import '../presentation/suivi_terrain_screen/suivi_terrain_screen.dart';

class AppRoutes {
  static const String homeContainerScreen = '/home_container_screen';

  static const String menuScreen = '/menu_screen';

  static const String homePage = '/home_page';

  static const String validationWorkScreen = '/validation_work_screen';

  static const String appelDoffreScreen = '/appel_doffre_screen';

  static const String getStartedScreen = '/get_started_screen';

  static const String logInScreen = '/log_in_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';
  static const String taskManagementScreen = '/suivi_terrain_screen';
  static const String createDemandeScreen = '/create_demande_screen';

  static Map<String, WidgetBuilder> routes = {
    homeContainerScreen: (context) => HomeContainerScreen(),
    menuScreen: (context) => MenuScreen(),
    validationWorkScreen: (context) => WorkflowPage(),
    appelDoffreScreen: (context) => AppelDoffreScreen(),
    getStartedScreen: (context) => GetStartedScreen(),
    logInScreen: (context) => LogInScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => GetStartedScreen(),
    taskManagementScreen: (context) => TaskManagementScreen(),
    createDemandeScreen: (context) => CreateDemandeScreen(),
  };
}
