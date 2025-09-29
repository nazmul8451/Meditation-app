import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app/screen/main_nav_bar.dart';
import 'package:meditation_app/screen/signup_signin_screen.dart';
import 'package:meditation_app/widgets/elevated_button_design.dart';

import '../widgets/custom_log_sign_container.dart';
import '../widgets/text_form_field.dart';

class LogInScreen extends StatefulWidget {
  static const String name = '/log-in';

  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/sign_up_background_img.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                )),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 16),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            // হালকা ব্যাকগ্রাউন্ড
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                blurRadius: 6,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back,
                                color: Colors.black87),
                            iconSize: 20,
                            splashRadius: 24,
                            onPressed: () => Navigator.pushNamedAndRemoveUntil(
                                context,
                                Home.name,
                                (predicate) => false),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Welcome Back!',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 33,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(children: [
                        CustomLog_SignContainer(
                          text: 'CONTINUE WITH FACEBOOK',
                          textColor: Colors.white,
                          containerColor: Color(0xFF7583CA),
                          icon: Icons.facebook,
                          iconColor: Colors.white,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        CustomLog_SignContainer(
                          text: 'CONTINUE WITH GOOGLE',
                          textColor: Color(0xFF3F414E),
                          containerColor: Color(0xFFEBEAEC),
                          icon: Icons.mail_outline,
                          iconColor: Colors.red,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'OR LOG IN WITH EMAIL',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Color(0xFFA1A4B2),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormFieldDesign(
                          controller: emailController,
                          hintText: 'Email address',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormFieldDesign(
                          controller: passwordController,
                          hintText: 'Password',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomElevatedButton(
                          text: "GET STARTED",
                          onPressed: () {
                            Get.toNamed(MainNavBar.name);
                          },
                        ),
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color(0xFF3F414E)
                          ),
                        ),
                        SizedBox(height: 20,),
                        RichText(
                          text: TextSpan(
                              text: 'ALREADY HAVE AN ACCOUNT? ',
                              style: TextStyle(color: Color(0xFF000000)),
                              children: [
                                TextSpan(
                                  text: 'SIGN UP',
                                  style: TextStyle(
                                    color: Color(0xFF8E97FD),
                                    fontWeight: FontWeight.w400,
                                  ),
                                  // recognizer:TapGestureRecognizer()
                                  //   ..onTap = onTapSignin_button,
                                ),
                              ]
                          ),
                        )
                      ]),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
