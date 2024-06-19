import 'package:diginova/widgets/DocumentsGridview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {
        'imageUrl': 'assets/inventory_page_img.png',
        'title': 'Cabinet',
        'subtitle': '1 item . 1kb',
      },
      {
        'imageUrl': 'assets/inventory_page_img.png',
        'title': 'Cabinet',
        'subtitle': '1 item . 1kb',
      },
      {
        'imageUrl': 'assets/inventory_page_img.png',
        'title': 'Cabinet',
        'subtitle': '1 item . 1kb',
      },
      {
        'imageUrl': 'assets/inventory_page_img.png',
        'title': 'Cabinet',
        'subtitle': '1 item . 1kb',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: Row(
          children: [
            Text(
              'Inventory',
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Icon(Icons.add, size: 30),
            SizedBox(width: 20),
            Icon(Icons.search, size: 30),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 3 / 4,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return InventoryGridItem(
                    imageUrl: item['imageUrl'],
                    title: item['title'],
                    subtitle: item['subtitle'],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InventoryGridItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const InventoryGridItem({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0, // Decrease the elevation
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0), // Decrease the borderRadius
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120, // Adjust the height as needed
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                    8), // Match the top left borderRadius of the Card
                topRight: Radius.circular(
                    8), // Match the top right borderRadius of the Card
              ),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
