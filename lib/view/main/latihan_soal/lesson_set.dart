import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning/constants/r.dart';

class LessonPackage extends StatefulWidget {
  LessonPackage({Key? key}) : super(key: key);

  @override
  State<LessonPackage> createState() => _LessonPackageState();
}

class _LessonPackageState extends State<LessonPackage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title:Text("Lesson Packages")
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:15,vertical:10),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Text("Choose A Package",
            style:GoogleFonts.poppins(
                          fontSize:14,
                          fontWeight:FontWeight.bold,
                          
                        )
            ),
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisSpacing:  10,
                crossAxisCount: 2,
                childAspectRatio: 3/3,
                children:[
                  Packages(width: width),
                   Packages(width: width),
                    Packages(width: width),
                     Packages(width: width)
                ]
                ),
            ),
          ],
        ),
      )
        
    );
  }
}

class Packages extends StatelessWidget {
  const Packages({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:Color(0xffEEEEEE)
            ),
            //margin: EdgeInsets.all(13),
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:Colors.blue.withOpacity(0.2),
            ),
            padding: EdgeInsets.all(15),
            child:Image.asset(R.assets.icKimia,width:width*0.15)
          ),
          SizedBox(height:4),
          Text("Aljabar",
          style:GoogleFonts.poppins(
            fontSize:14,
            fontWeight:FontWeight.bold,
            
          )
          ),
          Text("0/50 Paket Soal",
          style:GoogleFonts.poppins(
            fontSize:12,
            fontWeight:FontWeight.w500,
            color:Colors.grey
            
          )
          )
        ],
      ),
    );
  }
}