import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/Screens/home_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds:5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
      
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: SafeArea(
        child: SizedBox(
          height:50,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text('By InventX Solutions', style: TextStyle(fontSize: 12) )),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10,),
          Lottie.asset('assets/lotties/weather icon.json',repeat: true),
          // SizedBox(height: 20,),
          Text.rich(
            TextSpan(
              text: 'Meteo',
              style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold, color:Colors.grey.shade700),
              children: [
              TextSpan(
                text: 'Now', 
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45, color: Colors.amber)
                ),
              ]
            )
        

          ),

          Text('Accurate. Fast. Real-time Weather.',
              style: TextStyle(
                fontSize: 14,
               
            
              ),),
        ],
      )




    );
}

}