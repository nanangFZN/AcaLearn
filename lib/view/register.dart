import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning/constants/r.dart';
import 'package:learning/view/login_page.dart';
import 'package:learning/view/main_page.dart';


class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}
enum Gender{male, female}
class _RegisterPageState extends State<RegisterPage> {
  String gender = "male";
  List<String> classSch =["Class","10","11","12"];
  String selectedClass = "Class";

  onTapGender(Gender genderInput){
    if (genderInput == Gender.male) {
        gender = "male";
    }else{
        gender = "female";
    }
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: R.colors.dark,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Padding(
                  padding:  EdgeInsets.only(top:height*0.15),
                  child: Container(
                    width: width,
                    height: height*0.6,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text("Sign Up",
                            style:GoogleFonts.poppins(
                              fontSize:24,
                              fontWeight: FontWeight.bold,
                              color:Colors.white
                            )
                            ),
                          ),
                          SizedBox(height:height*0.025),
                         FormRegist(width: width,hint: "Email",),
                          FormRegist(width: width,hint: "FullName",),
                           Row(
                            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: ElevatedButton(
                                    onPressed: (){
                                      onTapGender(Gender.male);
                                    },
                                    style:ElevatedButton.styleFrom(
                                      primary: Color(0xff3F4E4F),
                                      elevation:0,
                                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                      side: BorderSide(
                                        width:1,
                                        color:gender == "male" ? Colors.white : Colors.transparent
                                      )
                                    ),
                                     child: Text("Male",style: TextStyle(
                                      fontSize:20
                                     ),)),
                                ),
                              ),
                               Expanded(
                                 child: Padding(
                                   padding: const EdgeInsets.all(10),
                                   child: ElevatedButton(
                                    onPressed: (){
                                      onTapGender(Gender.female);
                                    },
                                    style:ElevatedButton.styleFrom(
                                      primary: Color(0xff3F4E4F),
                                      elevation:0,
                                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                       side: BorderSide(
                                        width:1,
                                        color:gender == "female" ? Colors.white : Colors.transparent
                                      )
                                    ),
                                     child: Text("Female",style: TextStyle(
                                      fontSize:20
                                     ))),
                                 ),
                               )   
                            ],
                           ),
                          Center(
                            child: Container(
                              width:width*0.8,
                              decoration: BoxDecoration(
                                color:Colors.white,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding:  EdgeInsets.symmetric(horizontal:width*0.02),
                                child: DropdownButton<String>(
                                  value:selectedClass,
                                  items: classSch.map((e) => DropdownMenuItem<String>(child: Text(e),value:e)).toList(), 
                                onChanged: (String? val){
                                  selectedClass = val!;
                                  setState(() {
                                    
                                  });
                                }),
                              ),
                            ),
                          ),

                            FormRegist(width: width,hint: "Name Of School",),
                         
                          ButtonLogin(
                            child: Text(R.strings.register),
                            backgroundColor: Color(0xff3F4E4F),
                            borderColor: R.colors.secondary,
                            width: width*0.5,
                            
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
                            },)
                        ],
                      )
                    ),
                ),
                
                  
              ]
            ),
          ),
        ),
      ),
    );
  }
}

class FormRegist extends StatelessWidget {
  const FormRegist({
    Key? key,
    required this.width, required this.hint,
  }) : super(key: key);

  final double width;
  final String hint;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 5),
      child: Center(
        child: Container(
         width: width*0.8,
        decoration: BoxDecoration(),
         child: TextFormField(
           decoration:InputDecoration(
              fillColor: Colors.white,
             filled: true,
             enabledBorder: UnderlineInputBorder(
               borderSide: BorderSide(color:R.colors.dark),
               borderRadius: BorderRadius.circular(15)
             ),
             focusedBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(25)
             ),
             hintText: hint
             
             )
           )
         )
         ),
    );
  }
}