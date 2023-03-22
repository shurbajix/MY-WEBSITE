

import 'package:flutter/material.dart';
import 'dart:js' as js;

class Footers extends StatelessWidget {
  const Footers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
       

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
    children:  [
    Column(
      children:  [
        const Text('SUHIB CHARBAJI',style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              const SizedBox(
                height: 20,
              ),
                                const Text('''
Hello my name is sohaib shurbaji I need something is very important and that help you to build this website
to give you any information
'''),
const SizedBox(
  height: 20,
),
Card(
    color: Colors.transparent,
     child: Row(
     children: [
          IconButton(onPressed: (){
            js.context.callMethod('open',['https://github.com/shurbajix'],);
          }, icon: Image.asset('images/github.png',),iconSize: 100,),
              const SizedBox(
                width: 20,
              ),
              IconButton(onPressed: (){
                 js.context.callMethod('open',['https://www.youtube.com/channel/UCSap2any0DFMRRBwfmRdD_g'],);
              }, icon: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset('images/youtube.jpg',)),iconSize: 100,),
                const SizedBox(
                  width: 20,
                ),
              IconButton(onPressed: (){}, icon: Image.asset('images/Linkedin.png',),iconSize: 100,),
              const SizedBox(
                width: 20,
              ),
              IconButton(onPressed: (){
                js.context.callMethod('open',['https://instagram.com/flutterdeveloperapp?igshid=ZDdkNTZiNTM='],);
                
              }, icon: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset('images/instegram.png',)),iconSize: 100,),
     
          
     ],
   ),
   ),

      ],
    ),
   
     Padding(
       padding: const EdgeInsets.only(
        bottom: 30,
        right: 30,
       ),
       child: SizedBox(
        width: 500,
        height: 400,
        child: Image.asset('images/me.jpeg',fit: BoxFit.cover,),),
     ),

    ],
  ),
      ],
    );
  }
}