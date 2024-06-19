import 'package:diginova/routes/app_route_constant.dart';
import 'package:diginova/widgets/TextFieldInput.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                'Create an account',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 50),
              SvgPicture.asset('assets/signup.svg'),
              SizedBox(height: 50),
              TextFieldInput(
                label: 'Name',
                controller: nameController,
                icon: Icons.person,
              ),
              TextFieldInput(
                label: 'Email',
                controller: emailController,
                icon: Icons.email,
              ),
              TextFieldInput(
                label: 'Password',
                controller: passwordController,
                icon: Icons.lock,
              ),
              TextFieldInput(
                label: 'Mobile Number',
                controller: mobileController,
                icon: Icons.phone,
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      GoRouter.of(context).pushReplacementNamed(
                          MyRouteConstants.loginPageRouteName);
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      textStyle: TextStyle(fontSize: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Sign Up',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                      onPressed: () {
                        GoRouter.of(context).pushReplacementNamed(
                            MyRouteConstants.loginPageRouteName);
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            color: Colors.blue,
                            fontWeight: FontWeight.w500),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
