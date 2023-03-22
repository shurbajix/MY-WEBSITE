import 'package:flutter/material.dart';


class BunnerSection extends StatelessWidget {
  const BunnerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
    children: [
      Expanded(
        flex: 1,
        child: Column(
          children: const [
            Text(
              'Flutter Development',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '''This My Website that explain my skills for coding and also my projects and skills and I add it many projects''',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
      const Spacer(),
      Expanded(
        flex: 2,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                'images/complete.png',
                //fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    ],
  );
  }
}