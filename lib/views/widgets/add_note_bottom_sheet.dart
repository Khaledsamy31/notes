import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/views/widgets/custom_btn.dart';
import 'package:note_app/views/widgets/custom_text_feild.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text("Write your note",style: TextStyle(fontSize: 22),),
          ),
          CustomTextFeild(
            hint: "Title",
          ),
      
          CustomTextFeild(
            hint: "Content",
            maxLines: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomBotton(),
          )
        ],
      ),
    );
  }
}

