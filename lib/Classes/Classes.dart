
import 'package:flutter/material.dart';
import 'package:my_website/Aboutme.dart';
import 'package:my_website/Applications.dart';
import 'package:my_website/Contactme.dart';
import 'dart:js' as js;

List Navgationbared = const [
  Aboutme(),
  Applications(),
  Contactme(),
];

List <String> buttons = [
  js.context.callMethod('open',['https://github.com/shurbajix/EnglishSPokenCafex/tree/master'],),
  js.context.callMethod('open',['https://github.com/shurbajix/Deepin_Version'],),
  js.context.callMethod('open',['https://github.com/shurbajix/EnglishSPokenCafex/tree/master'],),
];
List <String>imagesd = [
  'images/englishspoken.png',
  'images/deepin.png',
  'images/englishspoken.png',
];
List <String> texted = [
  'English Spoken Cafe',
  'Deepin Version',
  'My Website',
];
List  subtitles = [
  '''
English spoken Cafe is application that help student for improve speaking and reading and writing 
And inside this app we have a video call,
''',
'''
Deepin version this application made for deepin team that help user to download deepin linux os from application
And make the download avalibole,
''',
];
class Prodect{
  
  Image imagesd;
  Text texted;
  Text subtitles;
  ElevatedButton buttons;
  
  Prodect({required this.imagesd,required this.texted,required this.subtitles,required this.buttons,});
}