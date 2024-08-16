import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Widget/CustomTextField.dart';

import '../Models/NoteModel.dart';
import '../cubits/notes_cubit/notes_cubit.dart';
import 'colors_list_view.dart';
import 'edit_note_colors_list_view.dart';

class EditNoteVIewBody extends StatefulWidget {
  const EditNoteVIewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteVIewBody> createState() => _EditNoteVIewBodyState();
}

class _EditNoteVIewBodyState extends State<EditNoteVIewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Edit Note'),
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: Container(
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[800]),
              child: IconButton(
                  onPressed: () {
                    widget.note.title = title ?? widget.note.title;
                    widget.note.subtitle = content ?? widget.note.subtitle;
                    widget.note.save();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    Navigator.pop(context);
                  },
                  color: Colors.white,
                  icon: const Icon(Icons.done)),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                CustomTextField(
                  onChanged: (value) {
                    title = value;
                  },
                  hint: 'Title',
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  onChanged: (value) {
                    content = value;
                  },
                  hint: 'Content',
                  maxLines: 5,
                ),
                SizedBox(
                  height: 20,
                ),
                 EditNoteColorsList(note: widget.note),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
