import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/views/models/note_model.dart';
import 'package:note_app/views/widgets/custom_btn.dart';
import 'package:note_app/views/widgets/custom_text_feild.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 16, bottom: MediaQuery.of(context).viewInsets.bottom), // to controller in keyboard
            child: Text(
              "Write your note",
              style: TextStyle(fontSize: 22),
            ),
          ),
          CustomTextFeild(
            onSaved: (value) {
              title = value;
            },
            hint: "Title",
          ),
          CustomTextFeild(
            onSaved: (value) {
              subTitle = value;
            },
            hint: "Content",
            maxLines: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return CustomBotton(
                  isLoading: state is AddNoteLoading? true : false,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();

                      var noteModel = NoteModel(
                          title: title!,
                          subTitle: subTitle!,
                          date: DateTime.now().toString(),
                          color: Colors.blue.value);
                      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
