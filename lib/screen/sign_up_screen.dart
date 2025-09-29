import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:meditation_app/screen/log_in_screen.dart';
import 'package:meditation_app/screen/signup_signin_screen.dart';
import 'package:meditation_app/widgets/elevated_button_design.dart';

import '../widgets/custom_log_sign_container.dart';
import '../widgets/text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  static const String name = '/sign-up';

  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
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
                                context, Home.name, (predicate) => false),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Create your account',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 33,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
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
                            TextFormFieldDesign(
                              controller: nameController,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              hintText: 'Your name',
                              validator:(String? value){
                                if(value?.trim().isEmpty?? true){
                                  return 'Enter your name';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10,),
                            TextFormFieldDesign(
                              controller: emailController,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              hintText: 'Email address',
                              validator: (String ? value){
                                String email = value ?? '';
                                if(EmailValidator.validate(email) == false){
                                  return 'Enter a valid email';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10,),
                            TextFormFieldDesign(
                              controller: passwordController,
                              hintText: 'Password',
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              validator: (String? value) {
                                if ((value?.length ?? 0) <= 6) {
                                  return 'Enter a valid password';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                    text: TextSpan(
                                  text: 'i have read the ',
                                  style: TextStyle(fontSize: 14,color: Colors.grey),
                                  children: [
                                    TextSpan(
                                      text: 'Privacy Policy',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF8E97FD),
                                      )
                                    )
                                  ],
                                )
                                ),

                                Checkbox(value: _isChecked,
                                    onChanged: (bool? value){
                                  setState(() {
                                    _isChecked = value ?? false;
                                  });
                                    })
                              ],
                            ),

                        CustomElevatedButton(
                          text: "GET STARTED",
                          onPressed: (){
                            if(_formKey.currentState!.validate()){
                              Get.snackbar('Error', 'Please accept Privacy Policy');
                            }
                            Get.toNamed(LogInScreen.name);
                          },
                          ),
                        ]
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
