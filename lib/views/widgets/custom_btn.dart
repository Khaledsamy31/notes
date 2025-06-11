import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key, this.onTap, this.isLoading = false});

  final void Function()? onTap;

  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8)
        ),
        width: MediaQuery.of(context).size.width, // to make btn take full width of screen
        height: 55,
        
        child:  Center(
          
          child: isLoading?  SizedBox(
            height: 24,
            width: 24,
            child: CircularProgressIndicator(
            
              color: Colors.black,),
          ) : const Text("Add a note",style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}