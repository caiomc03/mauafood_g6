import 'package:flutter/material.dart';
import 'package:mauafood_g6/modules/login/pages/login_page.dart';
import 'package:mauafood_g6/shared/themes/app_colors.dart';

class LoginButton extends StatelessWidget {
  final String title ,button;
  const LoginButton({Key? key, required this.title, required this.button}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(
          title,
          style: const TextStyle(fontSize: 24, color: Colors.black),
        ),
        TextButton(
          style: TextButton.styleFrom(
            primary: AppColors.orange,
            textStyle: const TextStyle(fontSize: 24),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
          return const LoginPage(); 
        }
        ));},
          child: Text(button),
        ),
      ],
    );
  }
}
