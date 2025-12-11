import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    CircleAvatar(
                      child: Icon(Icons.menu, color: Colors.white,),
                      backgroundColor: Colors.black45,
                    ),
                    Text('MeteoNow', style: GoogleFonts.aBeeZee(fontSize: 23, color: Colors.white),),
                    CircleAvatar(
                     
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage('https://th.bing.com/th/id/R.6b0022312d41080436c52da571d5c697?rik=ejx13G9ZroRrcg&riu=http%3a%2f%2fpluspng.com%2fimg-png%2fuser-png-icon-young-user-icon-2400.png&ehk=NNF6zZUBr0n5i%2fx0Bh3AMRDRDrzslPXB0ANabkkPyv0%3d&risl=&pid=ImgRaw&r=0'),
                    )
                    
                  
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