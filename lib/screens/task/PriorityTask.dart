// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:file_picker/file_picker.dart';

// class PriorityTaskScreen extends StatefulWidget {
//   @override
//   State<PriorityTaskScreen> createState() => _TaskScreenState();
// }

// class _TaskScreenState extends State<PriorityTaskScreen> {
//   final List<Map<String, dynamic>> items = [
//     {'title': 'Option 1', 'selected': false},
//     {'title': 'Option 2', 'selected': false},
//     {'title': 'Option 3', 'selected': false},
//     {'title': 'Option 4', 'selected': false},
//   ];

//   void toggleSelection(int index) {
//     setState(() {
//       for (int i = 0; i < items.length; i++) {
//         items[i]['selected'] = i == index;
//       }
//     });
//   }

//   Future<void> _pickFile() async {
//     FilePickerResult? result = await FilePicker.platform.pickFiles();

//     if (result != null) {
//       PlatformFile file = result.files.first;
//       print('Picked file: ${file.name}');
//       // Handle the file upload here
//     } else {
//       // User canceled the picker
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           leading: IconButton(
//             icon: Icon(Icons.arrow_back_ios),
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//           ),
//           title: Text(
//             'Priority Task',
//             style: TextStyle(
//               fontSize: 22,
//               fontFamily: 'Poppins',
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//           centerTitle: true,
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               HorizontalCalendar(
//                 date: DateTime.now(),
//                 textColor: Colors.black45,
//                 backgroundColor: Colors.white,
//                 selectedColor: Colors.blue,
//                 showMonth: true,
//                 onDateSelected: (date) {
//                   print(date.toString());
//                 },
//               ),
//               SizedBox(height: 10),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Text(
//                   'Title',
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                     fontFamily: 'Poppins',
//                     color: Colors.blue,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 5),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30),
//                 child: Text(
//                   'Control panel issue',
//                   style: TextStyle(
//                     fontSize: 12,
//                     fontWeight: FontWeight.w400,
//                     color: Colors.black54,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Text(
//                   'Description',
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                     fontFamily: 'Poppins',
//                     color: Colors.blue,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 5),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30),
//                 child: Text(
//                   'User interface (UI) is anything a user may interact with to use a digital product or service. This includes everything from screens and touchscreens, keyboards, sounds, and even lights. To understand the evolution of UI, however, it’s helpful to learn a bit more about its history and how it has evolved into best practices and a profession.',
//                   style: TextStyle(
//                     fontSize: 12,
//                     fontWeight: FontWeight.w400,
//                     color: Colors.black54,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               ListView.builder(
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 itemCount: items.length,
//                 itemBuilder: (context, index) {
//                   return Card(
//                     elevation: 4.0,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(15.0),
//                     ),
//                     margin: EdgeInsets.all(8.0),
//                     child: ListTile(
//                       title: Text(items[index]['title']),
//                       trailing: IconButton(
//                         icon: Icon(
//                           items[index]['selected']
//                               ? Icons.check_box_rounded
//                               : Icons.check_box_outline_blank_rounded,
//                           color: items[index]['selected'] ? Colors.blue : null,
//                         ),
//                         onPressed: () {
//                           toggleSelection(index);
//                         },
//                       ),
//                       onTap: () {
//                         toggleSelection(index);
//                       },
//                     ),
//                   );
//                 },
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30),
//                 child: Text(
//                   'Add new files',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w600,
//                     fontFamily: 'Poppins',
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 5),
//               InkWell(
//                 onTap: () {
//                   _pickFile();
//                 },
//                 child: Container(
//                   width: double.infinity,
//                   height: 200,
//                   margin: EdgeInsets.symmetric(horizontal: 30),
//                   padding: EdgeInsets.all(15),
//                   decoration: BoxDecoration(
//                     color: Colors.grey[200],
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(
//                         Icons.cloud_upload,
//                         color: Colors.blue,
//                       ),
//                       SizedBox(width: 10),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             'Choose',
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.blue,
//                             ),
//                           ),
//                           Text(
//                             ' file to upload',
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ],
//                       ),
//                       Text(
//                         'Select zip, image, pdf or ms.word',
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w400,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30),
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.question_mark_outlined,
//                       color: Colors.black54,
//                       size: 20,
//                     ),
//                     SizedBox(width: 10),
//                     Text(
//                       'Still need help?',
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   TextButton(
//                     onPressed: () {
//                       // Handle Skip button press
//                     },
//                     style: TextButton.styleFrom(
//                       foregroundColor: Color(0xFF1E1E1E),
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 60, vertical: 15),
//                       backgroundColor: Colors.grey[200],
//                       textStyle: TextStyle(fontSize: 16),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                     child: Text(
//                       'Cancel',
//                       style: TextStyle(
//                         color: Colors.blue,
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       // Handle Continue button press
//                     },
//                     style: ElevatedButton.styleFrom(
//                       foregroundColor: Colors.white,
//                       backgroundColor: Colors.blue,
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                       textStyle: TextStyle(fontSize: 16),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                     child: Text(
//                       'Upload',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 50),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 20),
//                 child: Container(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       foregroundColor: Colors.white,
//                       backgroundColor: Colors.blue,
//                       padding: EdgeInsets.symmetric(vertical: 15),
//                       textStyle: TextStyle(fontSize: 16),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                     ),
//                     child: Text(
//                       'Submit',
//                       style: TextStyle(
//                           fontSize: 16,
//                           fontFamily: 'Poppins',
//                           fontWeight: FontWeight.w500),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 30),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
