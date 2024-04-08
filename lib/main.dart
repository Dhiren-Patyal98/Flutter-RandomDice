

import 'dart:math';

import 'package:flutter/material.dart';

void main()
{
  runApp((_dicState()));
}
class _dicState extends StatefulWidget {
  const _dicState({super.key});

  @override
  State<_dicState> createState() => __dicStateState();
}

class __dicStateState extends State<_dicState> {
  var imageArray = ['dice1.png','dice2.png','dice3.png','dice4.png','dice5.png','dice6.png'];
  int diceOne = Random().nextInt(6);
  int diceTwo = Random().nextInt(6);
  @override
  Widget build(BuildContext context) {
        
    return MaterialApp(
      title: 'Debug Banner',
  debugShowCheckedModeBanner: false,
      
      home:GestureDetector(
        onTap: roll,
       
            child:Scaffold(
           backgroundColor: Colors.black87,
          body: Column(children: 
          [
            const Padding(
              padding:  EdgeInsets.all(150.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                
                children: [
                  Text("Dicee",style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold
            
                 ),),
                ],
              
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Image.asset('images/'+ imageArray[diceOne],height:100,width: 100,),
                   ),
                    Image.asset('images/'+imageArray[diceTwo],height:100,width: 100,)
              
                ],
              
              ),
            ),
          //  Padding(  
          //     padding: const EdgeInsets.all(80.0), 
          //     child: ElevatedButton(  
          //       child: Text('Roll', style: TextStyle(fontSize: 20.0),),  
          //       style: ElevatedButton.styleFrom(
          //       primary: Colors.white,
          // ),
          //       // color: Colors.blueAccent,  
          //       // textColor: Colors.white,  
          //       onPressed: () {
          //         setState(() {
          //           diceOne = Random().nextInt(6)+1;
          //           diceTwo = Random().nextInt(6)+1;
          //         });



          //       },  
          //     ),
          //  )  
           
          ]),
          
        ),
      
      ),
    );
    
    
  }
  void roll() async{
  Random random = Random();

  for(int i=0;i<15;i++){
    await Future.delayed(const Duration(milliseconds:300 ),(){

  diceOne = random.nextInt(6);
  diceTwo = random.nextInt(6);
  setState(() {});
  });
}
}
}
