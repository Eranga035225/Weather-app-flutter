import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        SizedBox(
          height: 380,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color : Colors.grey,
                 
                ),  
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(children: [
                    CircleAvatar(
                      child: Icon(Icons.menu, color: Colors.white,),
                      backgroundColor: Colors.black45,
                    ),
                    Text('MeteoNow', style: TextStyle(color: Colors.white, fontSize: 22)),
                  
                  ],),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Align(
                  alignment: AlignmentGeometry.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                       color: Colors.grey.shade200,
                       borderRadius: BorderRadius.circular(20)
                    ),
                   
                
                  )
                ),
              )
            ],
          ),
        )


      ],)




    );
  }
}