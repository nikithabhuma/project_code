import 'package:diginova/routes/app_route_constant.dart';
import 'package:diginova/widgets/CustomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DocumentListScreen extends StatelessWidget {
  const DocumentListScreen({Key? key});

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
          'Documents',
          style: TextStyle(
            fontSize: 22,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text('A - Z', style: TextStyle(fontWeight: FontWeight.bold)),
                Icon(Icons.arrow_drop_down),
                Spacer(),
                Icon(Icons.layers_outlined),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) =>
                  _buildDocumentItem(index, context),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: CustomBottomNavigationBar(
      //   selectedIndex: selectedIndex,
      //   onItemTapped: (index) {
      //     if (index != selectedIndex) {
      //       switch (index) {
      //         case 0:
      //           GoRouter.of(context).go(MyRouteConstants.homePageRouteName);
      //           break;
      //         case 1:
      //           GoRouter.of(context).go(MyRouteConstants.calenderPageRouteName);
      //           break;
      //         case 2:
      //           GoRouter.of(context)
      //               .go(MyRouteConstants.messageScreenRouteName);
      //           break;
      //         case 3:
      //           GoRouter.of(context)
      //               .go(MyRouteConstants.profileScreenRouteName);
      //           break;
      //       }
      //     }
      //   },
      // ),
    );
  }

  Widget _buildDocumentItem(int index, BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .pushNamed(MyRouteConstants.documentScreenRouteName);
      },
      child: ListTile(
          leading: Icon(Icons.folder, size: 30, color: Colors.yellow),
          title: Text(
            'Cabinet',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Poppins',
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.start,
          ),
          subtitle: Text(
            '1 item . 1kb',
            style: TextStyle(
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.start,
          ),
          trailing: Icon(Icons.more_vert)),
    );
  }
}
