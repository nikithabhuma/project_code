import 'package:diginova/routes/app_route_constant.dart';
import 'package:diginova/widgets/CustomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class Calender extends StatelessWidget {
  const Calender({super.key});

  @override
  Widget build(BuildContext context) {
    final int selectedIndex = 1;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            GoRouter.of(context)
                .pushReplacementNamed(MyRouteConstants.myHomePageRouteName);
          },
        ),
        title: Text(
          'Edit Profile',
          style: TextStyle(
              fontSize: 22, fontFamily: 'Poppins', fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Working Hours',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    'Today',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54),
                  ),
                ),
              ],
            ),
            SvgPicture.asset('assets/graph.svg'),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Working Hours',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    'Today',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 300, // Set a fixed height for the GridView
                child: GridView.builder(
                  physics:
                      NeverScrollableScrollPhysics(), // Disable GridView scrolling
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 1.0, // Aspect ratio of each item
                  ),
                  itemCount: 6, // Number of items in the grid
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.black), // Black outline
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Present',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '25',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                shrinkWrap: true,
                physics:
                    NeverScrollableScrollPhysics(), // Disable GridView scrolling
                crossAxisCount: 3,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                children: [
                  _buildTimeColumn('In time', '9:00:09 am'),
                  _buildTimeColumn('Break time', '2 hr'),
                  _buildTimeColumn('Out time', '6:34:21 pm'),
                ],
              ),
            ),
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
    );
  }

  Widget _buildTimeColumn(String title, String time) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black54,
          ),
        ),
        SizedBox(height: 5),
        Text(
          time,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
