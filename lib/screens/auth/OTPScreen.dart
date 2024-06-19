import 'package:diginova/routes/app_route_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class OTPScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Replace with your actual asset image
              SvgPicture.asset('assets/otp.svg'),
              SizedBox(
                height: 30,
              ),
              Text(
                "Check your mobile phone",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'We just sent an OTP to your registered phone number',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF1E1E1E),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 80),
                child: TextField(
                  decoration: InputDecoration(
                    counterText: '00:14', // This should be dynamically updated
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      letterSpacing: 2.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      GoRouter.of(context)
                          .goNamed(MyRouteConstants.loginPageRouteName);
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
                      'Verify OTP',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Didn't get a code?",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                      onPressed: () {
                        // Implement sign-in navigation here
                      },
                      child: Text(
                        'Resend',
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
