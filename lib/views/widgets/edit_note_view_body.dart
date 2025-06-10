import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_feild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextFeild(hint: "Title"),
          CustomTextFeild(hint: "Content", maxLines: 5,),
        ],
      ),
    );
  }
}