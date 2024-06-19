import 'package:diginova/routes/app_route_constant.dart';
import 'package:diginova/screens/auth/SignUpScreen.dart';
import 'package:diginova/screens/digician/Onboarding1.dart';
import 'package:diginova/screens/digician/Onboarding2.dart';
import 'package:diginova/screens/digician/Onboarding3.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [Onboarding1(), Onboarding2(), Onboarding3()],
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: WormEffect(
                    activeDotColor: Colors.blue,
                    dotHeight: 12,
                    dotWidth: 12,
                    spacing: 16,
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Handle Skip button press
                        GoRouter.of(context)
                            .goNamed(MyRouteConstants.signUpPageRouteName);
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Color(0xFF1E1E1E),
                        padding:
                            EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                        backgroundColor:
                            Colors.grey[200], // Button background color
                        textStyle: TextStyle(fontSize: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Skip',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Handle Continue button press
                        if (_controller.page!.round() == 2) {
                          // Navigate to home screen
                          GoRouter.of(context)
                              .goNamed(MyRouteConstants.signUpPageRouteName);
                        } else {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 15), // Button background color
                        textStyle: TextStyle(fontSize: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Continue',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
