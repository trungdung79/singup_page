import 'package:flutter/material.dart';
import 'package:widget_lession/resources/widgets/custom_text_button.dart';
import 'package:widget_lession/resources/widgets/custom_text_input.dart';
import 'package:widget_lession/resources/widgets/input_password.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          //alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 100,
              width: size.width,
              //height: size.height,
              child: Image.asset("assets/images/bg_color.png"),
            ),
            Positioned(
              top: 0,
              // height: size.height * 0.35,
              width: size.width * 1,
              child: Image.asset("assets/images/img_6.png"),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              // height: size.height * 0.35,
              width: size.width * 0.55,
              child: Image.asset("assets/images/img_7.png"),
            ),
            Positioned(
              bottom: 0,
              right: 35,
              height: size.height * 0.50,
              width: size.width * 0.15,
              child: Image.asset("assets/images/img_3.png"),
            ),
            SingleChildScrollView(
              //padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 30),
                  const Text(
                    "Create \nAccount",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const CustomTextInput(
                    hintText: 'Name',
                    keyboardType: TextInputType.text,
                    icon: Icons.person,
                  ),
                  const SizedBox(height: 20),
                  const CustomTextInput(
                    hintText: 'Your Email',
                    keyboardType: TextInputType.emailAddress,
                    icon: Icons.email,
                  ),
                  const SizedBox(height: 20),
                  const InputPassword(
                    hintText: 'Password',
                    icon: Icons.lock,
                  ),
                  const SizedBox(height: 45),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 40),
                      CustomTextButton(
                        buttonText: 'Sign Up',
                        buttonColor: Colors.black87,
                        textSize: 20,
                        onPressed: () { print('Sign Up Press'); },
                      ),
                    ],
                  ),
                  const SizedBox(height: 45),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomTextButton(
                        buttonText: 'Sign In',
                        buttonColor: Colors.black87,
                        textSize: 15,
                        onPressed: () { print('Sign In Press'); },
                      ),
                      const SizedBox(width: 40),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
