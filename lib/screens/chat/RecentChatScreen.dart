import 'package:diginova/routes/app_route_constant.dart';
import 'package:diginova/widgets/CustomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RecentChatScreen extends StatelessWidget {
  const RecentChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final int selectedIndex = 0;
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
          'Recent Chats',
          style: TextStyle(
            fontSize: 22,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        // centerTitle: true,
      ),
      body: ListView(
        children: List.generate(5, (index) => _buildChatItem(index, context)),
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

  Widget _buildChatItem(int index, BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).pushNamed(MyRouteConstants.chatScreenRouteName);
      },
      child: ListTile(
        leading: Icon(Icons.circle, size: 70, color: Colors.blue),
        title: Text(
          'User Name',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Poppins',
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          'about will shown here',
          style: TextStyle(
            fontSize: 13,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
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
      ),
    );
  }
}
