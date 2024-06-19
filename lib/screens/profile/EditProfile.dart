import 'package:diginova/widgets/NormalTextField.dart';
import 'package:diginova/widgets/TextFieldInput.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class EditProfile extends StatefulWidget {
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              GoRouter.of(context).pop();
            },
          ),
          title: Text(
            'Edit Profile',
            style: TextStyle(
                fontSize: 22,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // SizedBox(height: 20),
              // Text(
              //   'Create an account',
              //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              // ),
              // SizedBox(height: 50),
              // SvgPicture.asset('assets/signup.svg'),
              SizedBox(height: 50),
              NormalTextField(
                label: 'Name',
                controller: nameController,
              ),
              NormalTextField(
                label: 'Email',
                controller: emailController,
              ),
              NormalTextField(
                label: 'Password',
                controller: passwordController,
              ),
              NormalTextField(
                label: 'Mobile Number',
                controller: mobileController,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30), // Padding around the row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Handle button press
                        },
                        label: Text('Country', style: TextStyle(fontSize: 16)),
                        icon: Icon(Icons.arrow_drop_down),
                        // Padding(
                        //   padding: const EdgeInsets.only(right: 8.0),
                        //   child: SvgPicture.asset(
                        //     'assets/google.svg',
                        //     width: 24,
                        //     height: 24,
                        //   ),
                        // ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
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
                        label: Text('Gender', style: TextStyle(fontSize: 16)),
                        icon: Icon(Icons.arrow_drop_down),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
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
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
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
                      'Submit',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
