import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const EditNoteView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:const Text("Flutter Tips",style: TextStyle(color: Colors.black, fontSize: 26),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text("Build your career with khaled samy",style: TextStyle(color: Colors.black.withOpacity(.5), fontSize: 18),),
              ),
              trailing: IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.trash, color: Colors.black,size: 24,)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text("May21 , 2025",style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 16),),
            )
          ],
        ),
      ),
    );
  }
}