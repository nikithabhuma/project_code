import 'package:diginova/routes/app_route_constant.dart';
import 'package:diginova/widgets/TextFieldInput.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: 50,
            // ),
            Stack(
              alignment: Alignment.center, // Align the image in the center
              children: [
                Container(
                  width: double.infinity,
                  height: 284,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    SvgPicture.asset('assets/login.svg'),
                    Text(
                      'WelCome',
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 16),
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
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).pushReplacementNamed(
                        MyRouteConstants.myHomePageRouteName);
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
                    'Sign In',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  GoRouter.of(context)
                      .pushNamed(MyRouteConstants.forgetPassowordPageRouteName);
                },
                child: Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.blue),
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 70,
                  child: Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('or login with',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600)),
                ),
                Container(
                  width: 70,
                  child: Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 16.0), // Padding around the row
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Handle button press
                      },
                      icon: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: SvgPicture.asset(
                          'assets/google_ic.svg',
                          width: 24,
                          height: 24,
                        ),
                      ),
                      label: Text('Google', style: TextStyle(fontSize: 16)),
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black54,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: BorderSide(
                              color: Colors.black54,
                              width: 1), // Rounded corners
                        ),
                        textStyle: TextStyle(fontSize: 16),
                        elevation: 5, // Card-like elevation
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Handle button press
                      },
                      icon: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: SvgPicture.asset(
                          'assets/apple_ic.svg',
                          width: 24,
                          height: 24,
                        ),
                      ),
                      label: Text('Apple', style: TextStyle(fontSize: 16)),
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black54,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: BorderSide(
                              color: Colors.black54,
                              width: 1), // Rounded corners
                        ),
                        textStyle: TextStyle(fontSize: 16),
                        elevation: 5, // Card-like elevation
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500),
                ),
                TextButton(
                    onPressed: () {
                      GoRouter.of(context).pushReplacementNamed(
                          MyRouteConstants.signUpPageRouteName);
                    },
                    child: Text(
                      'Sign Up',
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
    );
  }
}
