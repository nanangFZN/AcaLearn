import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning/constants/r.dart';
import 'package:learning/view/login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds:5),(){
      Navigator.of(context).pushReplacementNamed("login");
    });
    return Scaffold(
      backgroundColor: R.colors.dark,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(R.assets.icSPlash),
            Text("SoftAcademy",style:GoogleFonts.poppins(
              fontSize:20,
              fontWeight: FontWeight.bold,
              color:Color(0xffED5564)
            ))
          ],
        ),
      
    );
  }
}