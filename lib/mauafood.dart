import 'package:flutter/material.dart';
import 'package:mauafood_g6/modules/login/pages/login_page.dart';

class MauaFood extends StatelessWidget{  
  const MauaFood({Key? key}) : super(key: key);
@override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: "MauaFood",
      home: LoginPage(),
     
      );
    
  }

}