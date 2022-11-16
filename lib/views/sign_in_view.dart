import 'package:flutter/material.dart';
import 'package:paint_app/constants.dart';
import 'package:paint_app/widgets/divider_with_text.dart';
import 'package:paint_app/widgets/reusable_textfield.dart';

import 'home_view.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 20,
              ),
              child: Text(
                "Login",
                style: kHeaderTextStyle,
              ),
            ),
            Center(
              child: Image.asset(
                "assets/images/logo.png",
                scale: 3,
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Username",
                        style: kTitleTextStyle,
                      ),
                    ),
                    ReusableTextField(
                      hintText: "Username",
                      myController: userNameController,
                      textInputType: TextInputType.name,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Password",
                        style: kTitleTextStyle,
                      ),
                    ),
                    ReusableTextField(
                      hintText: "Password",
                      myController: userNameController,
                      textInputType: TextInputType.name,
                      obsecureText: true,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeView(),
                            ),
                          );
                        },
                        child: Image.asset(
                          "assets/images/logo.png",
                          scale: 8,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 22),
              child: Align(
                alignment: FractionalOffset.centerRight,
                child: Text(
                  "Forgot Password",
                  style: kTitleTextStyle,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Text(
                "Not an existing user? Register",
                style: kTitleTextStyle,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: DividersWithText(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/images/facebooklogo.png"),
                Image.asset("assets/images/gmaillogo.png"),
                Image.asset("assets/images/linkedin.png"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
