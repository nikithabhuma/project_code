import 'package:diginova/routes/app_route_constant.dart';
import 'package:diginova/widgets/CustomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:file_picker/file_picker.dart';
import 'package:go_router/go_router.dart';

class ServiceTeamScreen extends StatefulWidget {
  @override
  State<ServiceTeamScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<ServiceTeamScreen> {
  final List<Map<String, String>> profiles = [
    {'name': 'You', 'role': 'Developer', 'image': ''},
    {'name': 'Callin', 'role': 'Manager', 'image': ''},
    {'name': 'Nick', 'role': 'Designer', 'image': ''},
    {'name': 'Max', 'role': 'Developer', 'image': ''},
  ];

  final List<Map<String, dynamic>> items = [
    {'title': 'Option 1', 'selected': false},
    {'title': 'Option 2', 'selected': false},
    {'title': 'Option 3', 'selected': false},
    {'title': 'Option 4', 'selected': false},
  ];

  void toggleSelection(int index) {
    setState(() {
      for (int i = 0; i < items.length; i++) {
        items[i]['selected'] = i == index;
      }
    });
  }

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      PlatformFile file = result.files.first;
      print('Picked file: ${file.name}');
      // Handle the file upload here
    } else {
      // User canceled the picker
    }
  }

  @override
  Widget build(BuildContext context) {
    final int selectedIndex = 0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            'Service Team',
            style: TextStyle(
              fontSize: 22,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                margin: EdgeInsets.all(16.0),
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              '4 March',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.topRight,
                            child: Row(
                              children: [
                                Text(
                                  'Details',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 11,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Inspects, Test',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Wiring Recorrection',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Card(
                            elevation: 4.0,
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            margin: EdgeInsets.all(16.0),
                            child: Container(
                              width: 100,
                              height: 50,
                              padding: EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.stop_circle,
                                    size: 15,
                                  ),
                                  Text(
                                    '04:00PM',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          SvgPicture.asset('assets/profiles.svg'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Team Members',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 150,
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: profiles.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  AssetImage(profiles[index]['image']!),
                            ),
                            SizedBox(height: 8),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    profiles[index]['name']!,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    profiles[index]['role']!,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black54,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Details',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: Container(
                      width: 170,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset('assets/calender_icon.svg'),
                            SizedBox(height: 30),
                            Text(
                              '4 March',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'March 02, 2024',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10), // Add some space between the cards
                  Card(
                    child: InkWell(
                      onTap: () {
                        GoRouter.of(context).pushNamed(
                            MyRouteConstants.attachedFileScreenRouteName);
                      },
                      child: Container(
                        width: 170,
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset('assets/attached_icon.svg'),
                              SizedBox(height: 30),
                              Text(
                                '2',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'File Attached',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
        // bottomNavigationBar: CustomBottomNavigationBar(
        //   selectedIndex: selectedIndex,
        //   onItemTapped: (index) {
        //     // Handle navigation when a bottom navigation bar item is tapped
        //     if (index != selectedIndex) {
        //       switch (index) {
        //         case 0:
        //           GoRouter.of(context)
        //               .pushNamed(MyRouteConstants.homePageRouteName);
        //           break;
        //         case 1:
        //           GoRouter.of(context)
        //               .pushNamed(MyRouteConstants.calenderPageRouteName);
        //           break;
        //         case 2:
        //           GoRouter.of(context)
        //               .pushNamed(MyRouteConstants.messageScreenRouteName);
        //           break;
        //         case 3:
        //           GoRouter.of(context)
        //               .pushNamed(MyRouteConstants.profileScreenRouteName);
        //           break;
        //       }
        //     }
        //   },
        // ),
      ),
    );
  }
}
