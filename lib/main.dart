


import 'package:flutter/material.dart';
import 'package:profile_ui/profile.dart';

void main(){
  runApp(MyApp());

}

 class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Profile(),
     );
   }
 }
