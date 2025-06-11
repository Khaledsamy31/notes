import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/views/widgets/add_note_form.dart';
import 'package:note_app/views/widgets/custom_btn.dart';
import 'package:note_app/views/widgets/custom_text_feild.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
       if (state is AddNoteFailure) {
         print("faild ${state.errorMessage}");
       }
    
       if (state is AddNoteSuccess) {
        
         Navigator.pop(context);
       }
      },
      builder: (context, state) {
        return AbsorbPointer( // absorbpointer to lock the screen while it loading
          absorbing: state is AddNoteLoading ? true : false,
          child: SingleChildScrollView(child: AddNoteForm()));
      },
    );
  }
}
