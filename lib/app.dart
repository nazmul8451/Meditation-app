import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app/screen/home_screen.dart';
import 'package:meditation_app/screen/main_nav_bar.dart';
import 'package:meditation_app/screen/log_in_screen.dart';
import 'package:meditation_app/screen/meditate_screen.dart';
import 'package:meditation_app/screen/night_island_screen.dart';
import 'package:meditation_app/screen/profile_screen.dart';
import 'package:meditation_app/screen/sign_up_screen.dart';
import 'package:meditation_app/screen/signup_signin_screen.dart';
import 'package:meditation_app/screen/sleep_page_screen.dart';
import 'package:meditation_app/screen/splash_screen.dart';
class MeditaitionApp extends StatelessWidget {
  const MeditaitionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      initialRoute: Home.name,
      getPages: [
        GetPage(name: Home.name, page: () => Home()),
        GetPage(name: SignUpScreen.name, page: () => SignUpScreen()),
        GetPage(name: LogInScreen.name, page: () => LogInScreen()),
        GetPage(name: HomeScreen.name, page: () => HomeScreen()),
        GetPage(name: MainNavBar.name, page: () => MainNavBar()),
        GetPage(name: SleepPageScreen.name, page: () => SleepPageScreen()),
        GetPage(name: MeditateScreen.name, page: () => MeditateScreen()),
        GetPage(name: NightIslandScreen.name, page: () => NightIslandScreen()),
        GetPage(name: ProfileScreen.name, page: () => ProfileScreen()),
      ],
    );
  }
}
