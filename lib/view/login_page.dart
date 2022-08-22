import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning/constants/r.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: R.colors.dark,
      body:Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            SizedBox(height:height*0.05),
            Text(R.strings.login,style:GoogleFonts.poppins(
              fontSize:30,
              fontWeight:FontWeight.bold,
              color:R.colors.secondary
            )),
            SizedBox(height:height*0.05,),
            Image.asset(R.assets.icLogin),
            SizedBox(height:height*0.025),
            Center(child: Text(R.strings.welcome,style:GoogleFonts.poppins(
              fontSize:25,
              fontWeight: FontWeight.w500,
              color:R.colors.secondary
            ))),
            Center(child: Text(R.strings.description,
            textAlign: TextAlign.center,
            style:GoogleFonts.poppins(
              fontSize:20,
              fontWeight: FontWeight.w400,
              color:R.colors.secondary
            ))),
            Spacer(),
            ButtonLogin(
              width: width,
               backgroundColor: Colors.white,
                borderColor: R.colors.fourth,
            child: Row(
            children: [
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: FaIcon(FontAwesomeIcons.google,color: Colors.red,),
             ),
              Text(R.strings.google,style:GoogleFonts.nunito(
                fontSize:15,
                color:R.colors.primary,
                fontWeight: FontWeight.bold
              )),
            ],
          ),)
          ],
        ),
      )
    );
  }
}

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    Key? key,
    required this.width, required this.backgroundColor, required this.child, required this.borderColor,
  }) : super(key: key);

  final Color backgroundColor;
  final Widget child;
  final Color borderColor;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:15,horizontal:25),
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: backgroundColor ,
            fixedSize: Size(width*0.8, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(color:borderColor )
            )
          ),
          onPressed: (){}, 
          child: child 
          ),
      ),
    );
  }
}