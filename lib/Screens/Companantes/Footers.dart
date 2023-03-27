

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
    Expanded(
      child: Column(
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
    Hello my name is sohaib shurbaji and i am 26 years old I have experince about 1.2 year and i am still improve myself
    For flutter deveolopment for frontend part and I haven't finish my university yet but i study at beyeknt university in turkey
    In fact in this website I wrote it using flutter at the same time I add all projects for this website and I have project not finish yet 
    I need to get a job beacuse I need to improve my skills and working with the teams
    Finally thanks for reading my message
    ''',style: TextStyle(
      fontSize: 20,
      color: Colors.white,
    ),textAlign: TextAlign.center,),
    const SizedBox(
      height: 40,
    ),
    Card(
      color: Colors.transparent,
       child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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