import 'package:diginova/routes/app_route_constant.dart';
import 'package:diginova/widgets/SearchField.dart';
import 'package:diginova/widgets/TextFieldInput.dart';
import 'package:diginova/widgets/ToggleSwitch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:go_router/go_router.dart';

class HomeP extends StatefulWidget {
  const HomeP({super.key});

  @override
  State<HomeP> createState() => _HomePState();
}

class _HomePState extends State<HomeP> {
  final TextEditingController searchController = TextEditingController();
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> tools = [
      {
        'icon': Icons.task,
        'name': 'Task',
        'route': MyRouteConstants.taskScreenRouteName
      },
      {
        'icon': Icons.equalizer_sharp,
        'name': 'Equipment',
        'route': MyRouteConstants.taskScreenRouteName
      },
      {
        'icon': Icons.inventory,
        'name': 'Inventory',
        'route': MyRouteConstants.inventoryScreenRouteName
      },
      {
        'icon': Icons.edit_document,
        'name': 'Document',
        'route': MyRouteConstants.documentListPageRouteName
      },
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center, // Align the image in the center
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Column(
                  children: [
                    // SvgPicture.asset('assets/login.svg'),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              color: Colors
                                  .grey, // Adjust the color of the outline as needed
                              width:
                                  2.0, // Adjust the width of the outline as needed
                            ),
                          ),
                          child: FlutterSwitch(
                            width: 110.0,
                            height: 40.0,
                            valueFontSize: 16.0,
                            toggleSize: 30.0,
                            value: isToggled,
                            borderRadius: 30.0,
                            padding: 8.0,
                            showOnOff: true,
                            activeText: "On Duty",
                            inactiveText: "off Duty",
                            activeColor: Colors.blue,
                            inactiveColor: Colors.grey,
                            onToggle: (val) {
                              setState(() {
                                isToggled = val;
                                if (val) {
                                  _showPopUpOn();
                                } else {
                                  _showPopUpOff();
                                }
                              });
                            },
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            GoRouter.of(context).pushNamed(
                                MyRouteConstants.notificationScreenRouteName);
                          },
                          child: SvgPicture.asset(
                            'assets/Notification.svg',
                            height: 25,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Let's Rock Today!",
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context)
                            .pushNamed(MyRouteConstants.searchScreenRouteName);
                      },
                      child: SearchFieldInput(
                        label: 'Search here...',
                        controller: searchController,
                        icon: Icons.search,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
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
                itemCount: tools.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Navigate to the desired screen using GoRouter
                      GoRouter.of(context).pushNamed(tools[index]['route']);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors
                                      .blue, // Set the color of the border
                                  width: 2.0, // Set the width of the border
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  tools[index]['icon'],
                                  size: 50,
                                  color:
                                      Colors.blue, // Set the color of the icon
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    tools[index]['name']!,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
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
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Teams',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: InkWell(
                    onTap: () {
                      GoRouter.of(context).pushNamed(
                          MyRouteConstants.serviceTeamScreenRouteName);
                    },
                    child: Container(
                      width: 170,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/home_page_img.png'),
                            SizedBox(height: 10),
                            Text(
                              'Service Team',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Control Pannel',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Projects',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54,
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    '6/7',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10), // Add some space between the cards
                Card(
                  child: InkWell(
                    onTap: () {
                      GoRouter.of(context).pushNamed(
                          MyRouteConstants.designTeamScreenRouteName);
                    },
                    child: Container(
                      width: 170,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/home_page_img.png'),
                            SizedBox(height: 10),
                            Text(
                              'Design Team',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Control Pannel',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Projects',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54,
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    '5/6',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
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
    );
  }

  void _showPopUpOn() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Stack(
          children: [
            // Background content
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                color: Colors.black
                    .withOpacity(0.5), // Adjust the opacity as needed
              ),
            ),
            // Dialog
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.maxFinite,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/onduty.svg', // Replace with your SVG asset
                      height: 150,
                      width: 150,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Have a Great Day!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 32,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Your on Duty',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins'),
                      ),
                    ), // Adjust the height as needed
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showPopUpOff() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Stack(
          children: [
            // Background content
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                color: Colors.black
                    .withOpacity(0.5), // Adjust the opacity as needed
              ),
            ),
            // Dialog
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.maxFinite,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/offduty.svg', // Replace with your SVG asset
                      height: 150,
                      width: 150,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'See you soon!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 32,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Your Duty Off',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins'),
                      ),
                    ), // Adjust the height as needed
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
