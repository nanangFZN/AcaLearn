import 'package:flutter/material.dart';
import 'package:learning/constants/r.dart';
import 'package:learning/view/main/discussion/chatt_page.dart';
import 'package:learning/view/main/latihan_soal/homepage.dart';
import 'package:learning/view/main/profile/profile_page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _pc = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
     final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top:15),
        child: FloatingActionButton(
          backgroundColor: Color(0xffF4ABC4),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ChattPage()));
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: R.colors.dark,
      bottomNavigationBar: _buildBottomNavigation(height),
      body: PageView(
        controller: _pc,
        physics: NeverScrollableScrollPhysics(),

        children: [
          Homepage(),
          ProfilePage()
        ]
      ),
    );
  }

  Container _buildBottomNavigation(double height) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0,4),
            blurRadius: 20,
            color:Colors.white.withOpacity(0.06)
          )
        ]
      ),
      child: BottomAppBar(
        color:Colors.white,
        child:Container(
          height:height*0.075,
          child:Row(
            children: [
              Expanded(
                child: Material(
                  child:InkWell(
                    onTap: (){
                      index = 0;
                      _pc.animateToPage(index, duration: Duration(milliseconds: 100), curve:   Curves.decelerate);
                    },
                    child:Column(
                      children: [
                        Icon(Icons.home,
                        color: R.colors.primary,
                        size:height*0.05
                        ),
                        
                        Text("Home")
                      ],
                    )
                  )
                ),
              ),
              Expanded(
                child: Material(
                  child:InkWell(
                    child:Column(
                      children: [
                        Opacity(
                          opacity: 0,
                          child: Icon(Icons.chat_bubble,
                          color:R.colors.primary,
                          size:height*0.05
                          ),
                        ),
                        Text("Discussion")
                      ],
                    )
                  )
                ),
              ),
              Expanded(
                child: Material(
                  child:InkWell(
                    onTap: (){
                      index = 1;
                      _pc.animateToPage(index, duration: Duration(milliseconds: 500), curve:   Curves.bounceInOut);
                    },
                    child:Column(
                      children: [
                        Icon(Icons.person,
                        color:R.colors.primary,
                        size:height*0.05
                        ),
                        Text("Profile")
                      ],
                    )
                  )
                ),
              )
            ],
          )
        )
      ),
    );
  }
}