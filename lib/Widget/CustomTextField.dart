import 'package:flutter/material.dart';
import 'package:notes_app/const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1, this.onSaved, this.onChanged});
 final String hint;
 final int maxLines;
 final void Function(String?)? onSaved;
 final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:onChanged ,
      onSaved:onSaved,
      validator: (value){
        if(value?.isEmpty??true){
          return'Field is required';
        }else{
          return null;
        }
      },
      cursorColor: Primarycolor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Primarycolor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(Primarycolor)
      ),
    );
  }
}
OutlineInputBorder buildBorder([color]){
  return OutlineInputBorder(
  borderRadius: BorderRadius.circular(8),
  borderSide: BorderSide(color:color ?? Colors.white)
  );
}