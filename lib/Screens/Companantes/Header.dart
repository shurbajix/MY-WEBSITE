import 'package:flutter/material.dart';
import 'package:my_website/Screens/Companantes/Menu.dart';


class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
    children: [
      const Text(
        'MY WEBSITE',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
        ),
      ),
      const Spacer(),
      const HeaderWebMenu(),
      const Spacer(),
      Expanded(
        child: SizedBox(
          height: 150,
          width: 30,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Image.asset(
              'images/apple.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ],
  );
  }
}