import 'package:diginova/routes/app_route_constant.dart';
import 'package:diginova/widgets/CustomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final int selectedIndex = 0;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Notification',
          style: TextStyle(
            fontSize: 22,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: List.generate(5, (index) => _buildNotificationItem(index)),
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

  Widget _buildNotificationItem(int index) {
    return ListTile(
      leading: Icon(Icons.notifications, color: Colors.blue),
      title: Text(
        'Notification Title $index',
        style: TextStyle(
          fontSize: 18,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        'Notification description will be shown here',
        style: TextStyle(
          fontSize: 15,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Text(
        'Just now',
        style: TextStyle(
          fontSize: 14,
          fontFamily: 'Poppins',
          color: Colors.grey,
        ),
      ),
    );
  }
}
