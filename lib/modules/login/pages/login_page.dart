import 'package:flutter/material.dart';
import 'package:mauafood_g6/modules/login/widgets/login_card.dart';
import 'package:mauafood_g6/modules/login/widgets/register_button.dart';
import 'package:mauafood_g6/shared/themes/app_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
              SizedBox(
                height: 200,
              ),
              LoginCard(),
              SizedBox(
                height: 100,
              ),
              RegisterButton(),
            ],
          )),
    );
  }
}
