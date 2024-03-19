import 'package:flutter/material.dart';
import 'package:flutter_teste/custom_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ super.key });

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo.shade400,
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('images/profile.jpg'),
            ),
            Text(
              'Gabriel Guedes',
              style: TextStyle(
                fontFamily: 'DMMono',
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            Text(
              'Flutter Dev',
              style: TextStyle(
                fontFamily: 'DMMono',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
              width: 30,
              child: Divider(
                color: Color.fromRGBO(92, 107, 192, 1),
              ),
            ),
            CustomCard(text: "+55 (11) 11111-1111", icon: Icons.phone),
            CustomCard(text: "teste@gmail.com", icon: Icons.email),

          ],
        ),
      )
    );
  }
}