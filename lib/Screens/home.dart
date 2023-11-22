import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/customButton.dart';

import '../Services/sharedPrefServices.dart';

class Home extends StatelessWidget {
  const Home({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),

      body:Container(
        decoration:  BoxDecoration(
        image: DecorationImage(
          //
        image: AssetImage("assets/images/bgColor.png"),
    fit: BoxFit.cover,

    ),
    ),
    child: Center(child:Container(
      width: 200,
      child: CustomButton(
          text: 'Logout',
          myBtnPressed: () {
            removeUserData();
          },

        ),
    )),
      )
    );
  }

  void removeUserData() {
    PreferenceService.getPrefsInstance?.remove("Isloggin");
    PreferenceService.getPrefsInstance?.remove("Email");
    PreferenceService.getPrefsInstance?.remove("Password");
  }
}
