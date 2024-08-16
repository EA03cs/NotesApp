import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});
 final void Function()? onTap;
 final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Primarycolor,
            borderRadius: BorderRadius.circular(16)
        ),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: Center(
          child:isLoading? const SizedBox(height: 24,width: 24,child: CircularProgressIndicator(color: CupertinoColors.white,)): const Text('Save' ,style: TextStyle(color: CupertinoColors.black,fontSize: 20,fontWeight: FontWeight.bold),),
        ),

      ),
    );
  }
}
