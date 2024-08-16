import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Widget/AddNoteBottomSheet.dart';
import '../Widget/NotesListView.dart';
import '../cubits/notes_cubit/notes_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        child: const Icon(
          Icons.add,
          size: 25,
        ),
        backgroundColor: Colors.orangeAccent,
      ),
      appBar: AppBar(
        elevation: 0,
        title: const Text('Notes'),
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: Container(
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[800]),
              child: const Icon(Icons.search),
            ),
          )
        ],
      ),
      body: const Column(
        children: [Expanded(child: NotesListView())],
      ),
    );
  }
}
