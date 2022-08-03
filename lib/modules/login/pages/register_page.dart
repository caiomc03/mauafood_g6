import 'package:flutter/material.dart';
import 'package:mauafood_g6/modules/login/widgets/login_textbutton.dart';
import 'package:mauafood_g6/modules/login/widgets/register_card.dart';
import 'package:mauafood_g6/shared/themes/app_colors.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.orange,
              AppColors.grey,
              AppColors.grey,
            ],
          )),
          child: Column(
            children: const [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Image.asset('assets/images/logo/logo.png'),
              //     Image.asset('assets/images/logo/pointer.png'),
              //   ],
              // ),   AS IMAGENS NAO ESTAO PEGANDO
              SizedBox(
                height: 200,
              ),
              RegisterCard(),
              SizedBox(
                height: 100,
              ),
              LoginButton(
                title: 'Já tem uma conta?',
                button: 'Fazer Login',
              ),
            ],
          )),
    );
  }
}
