import 'package:flutter/material.dart';
import 'package:mauafood_g6/shared/themes/app_colors.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Não tem uma conta?",
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        TextButton(
          style: TextButton.styleFrom(
            primary: AppColors.orange,
            textStyle: const TextStyle(fontSize: 24),
          ),
          onPressed: () {},
          child: const Text('Registre-se'),
        ),
      ],
    );
  }
}
