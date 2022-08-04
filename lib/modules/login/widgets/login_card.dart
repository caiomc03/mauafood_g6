import 'package:flutter/material.dart';
import 'package:mauafood_g6/modules/main/pages/mainpage.dart';
import 'package:mauafood_g6/shared/themes/app_colors.dart';
import 'text_field.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const Text(
              'Login',
              style: TextStyle(fontSize: 24),
            ),
            const TextFields(
              title: 'Nome de usuário ou email',
              obscure: false,
            ),
            const TextFields(
              title: 'Senha',
              obscure: true,
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: AppColors.orange,
                textStyle: const TextStyle(fontSize: 16),
              ),
              onPressed: () {},
              child: const Text('Esqueci minha senha'),
            ),
            SizedBox(
              width: 256,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context){
                    return const MainPage();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    primary: AppColors.orange, shape: const StadiumBorder()),
                child: const Text(
                  'Entrar',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            )
          ],
        ));
  }
}
