import 'package:flutter/material.dart';

import '../../contarnets.dart';
import 'Bunner_section.dart';
import 'Header.dart';


class HedarContaner extends StatelessWidget {
  const HedarContaner({super.key});

  @override
  Widget build(BuildContext context) {
    return 
     Column(
      children: [
        Container(
          padding: const EdgeInsets.all(
            kPadding,
          ),
          constraints: const BoxConstraints(
            maxWidth: kMaxWidth,
          ),
          child: Column(
            children: const [
              Header(),
              SizedBox(
                height: 50,
              ),
              BunnerSection(),
            ],
          ),
        ),
      ],
    
  );
  }
}