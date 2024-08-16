// import 'package:flutter/material.dart';
// import 'package:notes_app/Models/NoteModel.dart';
//
// import '../Widget/EditNoteVIewBody.dart';
//
// class EditNoteVIew extends StatefulWidget {
//   const EditNoteVIew({super.key, required this.note});
//   final NoteModel note;
//
//   @override
//   State<EditNoteVIew> createState() => _EditNoteVIewState();
// }
//
// class _EditNoteVIewState extends State<EditNoteVIew> {
//   String? title, content;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         title: const Text('Edit Note'),
//         backgroundColor: Colors.transparent,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
//             child: Container(
//               width: 40,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: Colors.grey[800]),
//               child: IconButton(
//                   onPressed: () {
//                     widget.note.title = title ?? widget.note.title;
//                     widget.note.subtitle = content ?? widget.note.subtitle;
//                     widget.note.save();
//                     Navigator.pop(context);
//                   },
//                   color: Colors.white,
//                   icon: const Icon(Icons.done)),
//             ),
//           )
//         ],
//       ),
//       body: EditNoteVIewBody(
//         note: widget.note,
//       ),
//     );
//   }
// }
