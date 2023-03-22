

import 'package:flutter/material.dart';
import 'dart:ui';
class BlurCard extends StatelessWidget {
  const BlurCard({super.key, this.theWidth, this.theHight, this.thechild});
final theWidth;
final theHight;
final thechild;
  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
         borderRadius: BorderRadius.circular(25),
         child: Container(
       width: theWidth,
       height: theHight,
       color: Colors.transparent,
       child: Stack(
    children: [
        
      BackdropFilter(filter: ImageFilter.blur(
        sigmaX: 4.0,
        sigmaY: 4.0,
    
      ),
      child: Container(),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.white.withOpacity(0.13)),
          gradient: LinearGradient(begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white.withOpacity(0.15),
            Colors.white.withOpacity(0.05),
          ],
          ),
        ),
        child: Center(
          child: thechild,
        ),
      ),
     
    ],
       ),
         ),
       );
    
  }
}