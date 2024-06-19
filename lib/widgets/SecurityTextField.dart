import 'package:flutter/material.dart';

class SecurityTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final IconData icon;

  const SecurityTextField({
    required this.controller,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(color: Colors.grey),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(
              color: Colors.black54,
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400),
          prefixIcon: Container(
            padding: EdgeInsets.all(15), // Adjust padding as needed
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          prefixStyle: const TextStyle(color: Colors.black54, fontSize: 18),
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
          border: inputBorder,
          contentPadding: EdgeInsets.symmetric(
              vertical: 15, horizontal: 10), // Add horizontal padding
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
