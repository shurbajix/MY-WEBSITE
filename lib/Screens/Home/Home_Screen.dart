import 'package:flutter/material.dart';
import 'package:my_website/Classes/Classes.dart';
import 'package:my_website/contarnets.dart';

import '../Companantes/Footers.dart';
import '../Companantes/HedarContainer.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:js' as js;

import 'blurcard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("images/backgroundimage.png"),
        fit: BoxFit.fill,
      ),
    ),
          
        child: ListView(
          shrinkWrap: true,
          children: [
            
            const HedarContaner(),
            const SizedBox(
              height: 60,
            ),
            const Divider(
              thickness: 5,
              height: 10,
              endIndent: 200,
              indent: 200,
              color: Colors.white,
            ),
            const SizedBox(
              height: 60,
            ),
            AnimatedTextKit(animatedTexts: [
              
              TyperAnimatedText('My Projects',textStyle: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),textAlign: TextAlign.center,),
            ],
            pause: const Duration(milliseconds: 5000,),
            ),
            const SizedBox(
              height: 145,
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              Wrap(
                //crossAxisAlignment: CrossAxisAlignment.center,
                spacing: kPadding,
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: WrapCrossAlignment.center,
                children:   [
                   Expanded(
                     child: SizedBox(
                        width: 400,
                        height: 400,
                        child: BlurCard(
                          theWidth: 300,
                          theHight: 200,
                          thechild: Column(
                            children:  [
                              SizedBox(
                                width: 250,
                                height: 220,
                                child:Image.asset('images/englishspoken.png',fit: BoxFit.cover,), 
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                 const Text('English Spoken Cafe',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),),
                                const SizedBox(
                                  height: 30,
                                ),
                                 const Text('''
English spoken Cafe is application that help student for improve speaking and reading and writing 
And inside this app we have a video call,
''',textAlign: TextAlign.center,style: TextStyle(
                  color: Colors.black,
                  ),),
                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: (){
                    js.context.callMethod('open',[buttons],);
                  }, child:const Text('Read More',style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),),
                            ],
                          ),
                        ),
                      ),
                   ),
                  
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                     child: SizedBox(
                        width: 400,
                        height: 400,
                        child: BlurCard(
                          theWidth: 300,
                          theHight: 200,
                          thechild: Column(
                            children:  [
                              SizedBox(
                                width: 250,
                                height: 220,
                                child:Padding(
                                  padding: const EdgeInsets.only(
                                    top: 20,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset('images/deepin.png',fit: BoxFit.cover,width: 20,)),
                                ), 
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                 const Text('Deepin Version',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),),
                                const SizedBox(
                                  height: 30,
                                ),
                                 const Text('''
Deepin version this application made for deepin team that help user to download deepin linux os from application
And make the download avalibole,
''',textAlign: TextAlign.center,style: TextStyle(
                  color: Colors.black,
                  ),),
                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: (){
                    js.context.callMethod('open',['https://github.com/shurbajix/Deepin_Version'],);
                  }, child:const Text('Read More',style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),),
                            ],
                          ),
                        ),
                      ),
                   ),
                   const SizedBox(
                    width: 30,
                   ),
                    Expanded(
                     child: SizedBox(
                        width: 400,
                        height: 400,
                        child: BlurCard(
                          theWidth: 300,
                          theHight: 200,
                          thechild: Column(
                            children:  [
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: 250,
                                height: 220,
                                child:Center(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset('images/apple.png',fit: BoxFit.cover,)),
                                ), 
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                 const Text('My Website',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),),
                                const SizedBox(
                                  height: 30,
                                ),
                                 const Text('''
This my website that add my projects and write my skills and this website was writen in flutter,
''',textAlign: TextAlign.center,style: TextStyle(
                  color: Colors.black,
                  ),),
                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: (){
                    js.context.callMethod('open',['https://github.com/shurbajix/MY-WEBSITE/tree/master'],);
                  }, child:const Text('Read More',style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),),
                            ],
                          ),
                        ),
                      ),
                   ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const Divider(
              thickness: 5,
              height: 10,
              endIndent: 200,
              indent: 200,
              color: Colors.white,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedTextKit(animatedTexts: [
              
              TyperAnimatedText('About Me',textStyle: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),textAlign: TextAlign.center,),
            ],
            pause: const Duration(milliseconds: 5000,),
            ),
              ],
            ),
            const SizedBox(
                height: 50,
              ),
           const Footers(),
          ],
        ),
      ),
    );
  }
}



class Services extends StatefulWidget {
  const Services({super.key, required this.image, required this.title, required this.explains, });
  final String image, title,explains;

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(25),
      child: Container(
        //width: 200,
        padding: const EdgeInsets.all(kPadding ),
        child: Column(
          
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              
              children: const [
               
                SizedBox(
                  width: 200,
                  height: 300,
                  child: Card(
                    
                    color: Colors.red,
                  ),
                ),
                
              ],
            ),
           
           
          ],
        ),
      ),
    );
  }
}
