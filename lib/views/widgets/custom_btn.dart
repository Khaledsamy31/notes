import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8)
      ),
      width: MediaQuery.of(context).size.width, // to make btn take full width of screen
      height: 55,
      
      child: const Center(
        child: Text("Add a note",style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
      ),
    );
  }
}