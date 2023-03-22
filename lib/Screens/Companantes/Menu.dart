import 'package:flutter/material.dart';
import 'package:my_website/contarnets.dart';



class HeaderWebMenu extends StatelessWidget {
  const HeaderWebMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
    children: [
      HeaderMenu(
        press: () {},
        title: 'Home',
      ),
      const SizedBox(
        width: kPadding,
      ),
      HeaderMenu(
        press: () {},
        title: 'My Projects',
      ),
      const SizedBox(
        width: kPadding,
      ),
      HeaderMenu(
        press: () {},
        title: 'About Me',
      ),
    ],
  );
  }
}
class HeaderMenu extends StatelessWidget {
  const HeaderMenu({
    super.key,
    required this.title,
    required this.press,
  });
  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
