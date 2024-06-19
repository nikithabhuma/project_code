import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final IconData icon;

  const GridItem({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  color: Colors.grey[300], // Placeholder for image
                  width: double.infinity,
                  child: Center(
                    child: Image.asset(imageUrl),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            right: 8,
            top: 8,
            child: Icon(
              icon,
              color: Colors.black54,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
