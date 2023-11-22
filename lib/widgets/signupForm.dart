
import 'package:flutter/material.dart';

import 'customButton.dart';
import 'customTextField.dart';
import 'greyText.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  TextEditingController EmailController= TextEditingController();
  TextEditingController PasswordController= TextEditingController();
  TextEditingController NameController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 32, fontWeight: FontWeight.w500),
                ),
                GreyText(text:"Please login with your information",),
                const SizedBox(height: 30),
                CustomTextField(
                    Controller: NameController,
                    isPassword: false,
                    hint: "Your Name",
                    mySuffixIcon: Icon(Icons.person),
                    type:TextInputType.text

                ),
                const SizedBox(height: 15),
                CustomTextField(
                    Controller: EmailController,
                    isPassword: false,
                    hint: "Email address",
                    mySuffixIcon: Icon(Icons.mail),
                    type:TextInputType.emailAddress

                ),
                const SizedBox(height: 15),
                CustomTextField(
                    Controller: EmailController,
                    isPassword: false,
                    hint: "Phone",
                    mySuffixIcon: Icon(Icons.phone),
                    type:TextInputType.phone

                ),
                const SizedBox(height: 15),
                CustomTextField(
                    Controller: PasswordController,
                    isPassword: true,
                    hint: "password",
                    mySuffixIcon: Icon(Icons.remove_red_eye),
                    type:TextInputType.visiblePassword

                ),
                const SizedBox(height:30),
                CustomButton(text:"Signup", myBtnPressed: () {  }),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
