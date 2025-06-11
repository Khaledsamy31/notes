import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/cubit/notes_cubit.dart';

import 'package:note_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:note_app/views/widgets/notes_view_body.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
            create: (context) => NoteCubit()..fetchAllNotes(),

      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled:
                      true, // to move up the keyboard when click on inputs
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  context: context,
                  builder: (context) {
                    return AddNoteBottomSheet();
                  });
            },
            child: const Icon(Icons.add)),
        body: NotesViewBody(),
      ),
    );
  }
}
