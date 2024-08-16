import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Models/NoteModel.dart';
import 'package:notes_app/Screens/EditNoteView.dart';
import 'package:notes_app/Widget/EditNoteVIewBody.dart';

import '../cubits/notes_cubit/notes_cubit.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return EditNoteVIewBody(
              note: note,
            );
          }));
        },
        child: Container(
          padding: const EdgeInsets.only(top: 16,bottom: 26,left: 16),
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16),

          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(bottom:35.0,top: 16),
                  child: Text(note.title,style: const TextStyle(color: Colors.black,fontSize: 26),),
                ),
                subtitle: Text(note.subtitle,style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 20),),
                trailing: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: IconButton(onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },icon: const Icon(Icons.delete,size: 30,color: Colors.black,),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Text(note.date,style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 16),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
