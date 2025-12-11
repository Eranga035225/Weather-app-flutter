import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SizedBox(
          height: 380,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 350,
                child: Stack(
                  children: [
                    ClipRect(
                       child: Lottie.asset('assets/lotties/rainy.json', width: double.infinity, repeat: true, height: 350, fit: BoxFit.fill)
                       ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left:16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                        
                          children: [
                            Text('Kandy', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Mist', style: GoogleFonts.poppins( fontSize: 16, color: Colors.grey.shade200),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0, right: 2),
                                  child: Text('28\'C', style: TextStyle(fontSize: 16, color: Colors.grey.shade200,)
                                ),),
                                Image.network( "https://cdn.weatherapi.com/weather/64x64/night/248.png",
                                height: 30,)
                              ],
                            
                            )
                        
                        ],),
                      )
                    )
                      
                
              
                  ],
                ),
              
              )
              ,
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    CircleAvatar(
                      
                      backgroundColor: Colors.black45,
                      child: Icon(Icons.menu, color: Colors.white,),
                    ),
                    Text('MeteoNow', style: GoogleFonts.poppins(fontSize: 23, color: Colors.white),),
                    CircleAvatar(
                     
                      backgroundColor: Colors.black45,
                      backgroundImage: NetworkImage('https://th.bing.com/th/id/R.6b0022312d41080436c52da571d5c697?rik=ejx13G9ZroRrcg&riu=http%3a%2f%2fpluspng.com%2fimg-png%2fuser-png-icon-young-user-icon-2400.png&ehk=NNF6zZUBr0n5i%2fx0Bh3AMRDRDrzslPXB0ANabkkPyv0%3d&risl=&pid=ImgRaw&r=0'),
                    )
                    
                  
                  ],),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Align(
                  alignment: AlignmentGeometry.bottomCenter,
                  child: Card(
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                
                                borderRadius: BorderRadius.circular(20),
                              
                      
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Search here.. ', style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey.shade400),),
                                  Icon(Icons.search, color: Colors.grey.shade400,)
                                ],
                              )
                    

                    )
                   
                
                  )
                  )
                ),
              
            ],
          ),
        ),
        SizedBox(height:20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hourly Weather Forecast', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w700),),
                 SizedBox(
                    height: 136,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Card(
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Text('05.00 AM', style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey.shade900, fontWeight: FontWeight.bold),),
                                ],

                              )
                              
                            ),
                          )
                        );
                      }),
                  )
            ],
          ),
        ),
     


      ],)




    );
  }
}