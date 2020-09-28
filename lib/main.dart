import 'package:flutter/material.dart';
import './myhomepage/homepage.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ms word shortcuts Guide",
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      
    
    );
}

}