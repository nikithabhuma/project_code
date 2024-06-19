import 'package:flutter/material.dart';

class SearchFieldInput extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final IconData icon;

  const SearchFieldInput({
    required this.controller,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: Colors.grey),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.black54, fontSize: 18),
          prefixIcon: Icon(
            icon,
            color: Colors.black54,
          ),
          prefixStyle: const TextStyle(color: Colors.black54, fontSize: 18),
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
          border: inputBorder,
          filled: true,
          fillColor: Colors.grey[200], // Change this to your desired color
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        ),
      ),
    );
  }

  // Function to convert hex color string to Color object
  Color hexToColor(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
