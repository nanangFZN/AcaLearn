import 'package:flutter/material.dart';
import 'package:learning/view/main/latihan_soal/homepage.dart';


class LessonPage extends StatefulWidget {
  LessonPage({Key? key}) : super(key: key);
  
  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final Height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title:Text("Choose A Lessons")
      ),
      body:Padding(
        padding:  EdgeInsets.symmetric(vertical:10,horizontal:10),
        child: ListView.builder(
                  itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, "lesson_packages");
                      },
                      child: MapelWidget());
                  }),
      ),
    );
  }
}