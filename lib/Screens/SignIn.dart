import 'package:flutter/material.dart';
import 'package:flutter_project/Screens/AddJobScreen.dart';
import 'package:flutter_project/Screens/JoblistingScreen.dart';
import 'package:flutter_project/Screens/SignUp.dart';

import '../Custom Widgets/app_textfield.dart';
import '../Custom Widgets/app button.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding:
        const EdgeInsets.only(top: 110, left: 27, bottom: 59, right: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Let’s sign in",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 14),
            const Text("Welcome\nJoin the community!",
                style: TextStyle(color: Colors.white, fontSize: 30)),
            const SizedBox(height: 47),
            AppTextField(placeholder: "Enter your email address"),
            AppTextField(placeholder: "Enter your password"),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>(SignUp())));
              },

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Don’t have an account ?   ',
                    style: TextStyle(color: Color(0xFF8F8F9E), fontSize: 15),
                  ),
                  Text(
                     'Register',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 11),


            AppButton(label: "Sign In",onPress:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=> JobListing()));

            })


          ],
        ),
      ),
    );
  }

void onSignIn(){}


}