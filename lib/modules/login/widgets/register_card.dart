import 'package:flutter/material.dart';
import 'package:mauafood_g6/shared/themes/app_colors.dart';

import 'text_field.dart';

class RegisterCard extends StatelessWidget {
  const RegisterCard({Key? key}) : super(key: key);
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
              'Criar uma Conta',
              style: TextStyle(fontSize: 24),
            ),
            const TextFields(
              title: 'Nome',
              obscure: false,
            ),
            const TextFields(
              title: 'Email',
              obscure: false,
            ),
            const TextFields(
              title: 'Senha',
              obscure: true,
            ),
            const TextFields(
              title: 'Confirmar senha',
              obscure: true,
            ),
            SizedBox(
              width: 256,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: AppColors.orange, shape: const StadiumBorder()),
                child: const Text(
                  'Cadastrar',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            )
          ],
        ));
  }
}
