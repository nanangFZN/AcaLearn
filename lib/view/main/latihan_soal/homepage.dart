import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/r.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: R.colors.dark,
      body:  SafeArea(
          child: ListView(
            children: [
              Column(
                children: [
                  _buildUserHomeProfile(),      
                  _buildHomeBanner(height, width),
                  _buildHomeListMapel(width, height),

                  Container(
                    margin:EdgeInsets.symmetric(horizontal:20,vertical:21),
                    child:Column(
                      children:[
                         Row(
                           children: [
                             Text("New",
                                style: GoogleFonts.poppins(
                              fontSize:18,
                              fontWeight: FontWeight.w500,
                              color:Colors.white
                        ),
                                ),
                           ],
                         ),
                      Container(
                        height:height*0.2,

                        child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ((context,index){
                            return Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(R.assets.icBanner),
                            );
                          }
                          )),
                      )
                      ]
                    )
                  )
                ]
              ),
            ],
          ),
        ),
    );
  }

  Padding _buildHomeListMapel(double width, double height) {
    return Padding(
               padding: const EdgeInsets.all(5),
               child: Container(
                child:Column(
                  children: [
                    Row(
                      children: [
                        Text("Choose a Lesson",
                        style: GoogleFonts.poppins(
                      fontSize:18,
                      fontWeight: FontWeight.w500,
                      color:Colors.white
                    ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: (){
                            Navigator.pushNamed(context, "lesson");
                          },
                           child:  Text("See All",
                        style: GoogleFonts.poppins(
                      fontSize:14,
                      fontWeight: FontWeight.w700,
                     ),
                        ),
                        ),
    
                     
                      ],
                    ),
                       MapelWidget(),
                       MapelWidget(),
                       MapelWidget()
                  ],
                )
               ),
             );
  }

  Container _buildHomeBanner(double height, double width) {
    return Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20.0,
                
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 15
              ),
              decoration:BoxDecoration(
                color:Color(0xffF4ABC4),
                borderRadius: BorderRadius.circular(15)
              ),
              width:double.infinity,
              height:height*0.2,
              child: Stack(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: width*0.3),
                    child: Center(child: Text("What Do You Want To Do Today ?",
                    style: GoogleFonts.poppins(
                      color:Colors.white,
                      fontSize:26,
                      fontWeight: FontWeight.bold
                    ),
                    )),
                  ),
                  Image.asset(R.assets.icActivity),
                ],
              ),
             );
  }

  Padding _buildUserHomeProfile() {
    return Padding(
              padding:  EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children:[
                   Column(
                      children:[
                    Text("Hi, Nanang Fauzan Najib",
                    style:GoogleFonts.poppins(
                      fontSize:16,
                      fontWeight:FontWeight.bold,
                      color:R.colors.secondary
                    )
                    ),
                    Text("Welcome",
                    style:GoogleFonts.poppins(
                      fontSize:14,
                      fontWeight:FontWeight.w400,
                      color:R.colors.secondary
                    )
                    ),
                                  
                      ]
                    ),
                  
                   CircleAvatar(
                  radius:35,
                  backgroundImage: AssetImage(R.assets.icAvatar),
                 )
                ]
              ),
            );
  }
}

class MapelWidget extends StatelessWidget {
  const MapelWidget({
    Key? key,
   }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
       margin: EdgeInsets.only(bottom:20),
       padding:EdgeInsets.symmetric(horizontal:18,vertical:21),
       decoration:BoxDecoration(
         borderRadius:BorderRadius.circular(15),
         color:Color(0xffEEEEEE),
       ),
       child:Row(
        children:[
          Container(
            width:width*0.2,
            height:height*0.1,
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(10),
              image:DecorationImage(image: AssetImage(R.assets.icKimia))
            )
          ),
          Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(left:width*0.025),
                child: Text("Kimia",
                style:GoogleFonts.poppins(
                  fontSize:18,
                  fontWeight:FontWeight.bold
                )
                ),
              ),
               Padding(
                padding:  EdgeInsets.only(left:width*0.025),
                child: Text("0/50 Paket latihan",
                style:GoogleFonts.poppins(
                  fontSize:14,
                  fontWeight:FontWeight.w500
                )
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left:width*0.025),
                child: Stack(
                  children: [
                    Container(
                      width:width*0.5,
                      height:height*0.015,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:R.colors.neon
                      )
                    ),
                  ],
                ),
              )
            ],
          )
        ]
       )
     );
  }
}