import 'package:flutter/material.dart';
import 'package:mauafood_g6/modules/login/widgets/register_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 232, 147, 98),
                Colors.white,
                Colors.white,
              ],
            )
          ),
         child:  Center(
          child: Column(
            children:  [
              const SizedBox(height: 200,),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const Text('Login',style: TextStyle(fontSize: 24) ,),
                    const TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Nome de usuário ou email',
      ),
                    ),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Senha',
      ),
                    ),
                    TextButton(
                  style: TextButton.styleFrom(
                    primary: const Color.fromARGB(255, 232, 147, 98),
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                  onPressed: () {},
                  child: const Text('Esqueceu a senha'),
                ),
                  ],
                )
              ),
              const SizedBox(height: 100,),
              const RegisterButton(),
            ],
          )
         ) 
          ),
           
          ),
         );
  }
}
