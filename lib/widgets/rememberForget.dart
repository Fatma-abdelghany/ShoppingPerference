
import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/greyText.dart';
class BuildRememberForget extends StatefulWidget {
  const BuildRememberForget({super.key});

  @override
  State<BuildRememberForget> createState() => _BuildRememberForgetState();
}

class _BuildRememberForgetState extends State<BuildRememberForget> {
  @override
  Widget build(BuildContext context) {
    bool rememberUser = false;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
                value: rememberUser,
                onChanged: (value) {
                  setState(() {
                    rememberUser = value!;
                  });
                }),
            GreyText(text: "Remember me")
          ],
        ),
        TextButton(
            onPressed: () {}, child: Text("Forgot Password",style: TextStyle(color: Colors.deepPurple),))
      ],
    );
  }
}
