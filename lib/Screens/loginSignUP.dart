import 'package:flutter/material.dart';

import 'package:shopping_app/widgets/myLoginForm.dart';
import 'package:shopping_app/widgets/signupForm.dart';

class LoginSignup extends StatefulWidget {
  const LoginSignup({super.key});

  @override
  State<LoginSignup> createState() => _LoginSignupState();
}

TabController? _tabController;

class _LoginSignupState extends State<LoginSignup>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(
      length: 2,
      vsync: this,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bgColor.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // shrinkWrap: true,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),

              buildTopPart(context),
              SizedBox(
                height: 10,
              ),

              // tab bar view here
              buildMyTabBar(),
            ],
          ),
        ),
      ),

    );
  }

  Widget buildTopPart(context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: Column(
        children: [
          Image.asset(
            "assets/images/shoppingCover.png",
          ),
          DesignTabs(),
        ],
      ),
    );
  }

  Container DesignTabs() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),

      height: 45,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(
          25.0,
        ),
      ),
      child: TabBar(
        controller: _tabController,
        // give the indicator a decoration (color and border radius)
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(
            25.0,
          ),
          color: Colors.deepPurple[600],
        ),
        labelColor: Colors.white,
        unselectedLabelColor: Colors.black,
        tabs: [
          // first tab [you can add an icon using the icon property]
          Tab(
            text: 'Login',
          ),

          // second tab [you can add an icon using the icon property]
          Tab(
            text: 'Create Account',
          ),
        ],
      ),
    );
  }

  Expanded buildMyTabBar() {
    return Expanded(
      child: TabBarView(
        controller: _tabController,
        children: [
          //buildLoginForm(),
          MyLoginForm(),

          // second tab bar view widget
          SignUpForm()
        ],
      ),
    );
  }
}

