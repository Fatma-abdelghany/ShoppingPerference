
import 'package:flutter/material.dart';
import 'package:shopping_app/Screens/loginSignUP.dart';

import 'Screens/home.dart';
import 'Services/sharedPrefServices.dart';
import 'Utils/constants.dart';


void main() async {
 // Required for async calls in `main`
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize PreferenceUtils instance.
  await PreferenceService.init();
  bool? isUserLogged = PreferenceService.getPrefsInstance?.getBool("AppConstants.UserIsloggin");

   debugPrint("===================== $isUserLogged");

  runApp( MyApp(userIsLogged: isUserLogged,));
}

class MyApp extends StatelessWidget {
   MyApp({required this.userIsLogged,super.key});
  bool? userIsLogged;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.deepPurple
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      home: userIsLogged == null ?LoginSignup():Home(),
      //home: userIsLogged?Home():LoginSignup(),
    );
  }
}

