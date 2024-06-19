import 'package:diginova/widgets/DocumentsGridview.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DocumentScreen extends StatelessWidget {
  const DocumentScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {
        'imageUrl': 'assets/pdf_image.png', // Placeholder for imageUrl
        'title': 'Cabinet',
        'subtitle': '1 item . 1kb',
        'icon': Icons.more_vert,
      },
      {
        'imageUrl': 'assets/pdf_image.png', // Placeholder for imageUrl
        'title': 'Cabinet',
        'subtitle': '1 item . 1kb',
        'icon': Icons.more_vert,
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
              'Documents',
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
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text('A - Z'),
                  Icon(Icons.arrow_drop_down),
                  Spacer(),
                  Icon(Icons.layers_outlined)
                ],
              ),
            ),
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
                  return GridItem(
                    imageUrl: item['imageUrl'],
                    title: item['title'],
                    subtitle: item['subtitle'],
                    icon: item['icon'],
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
