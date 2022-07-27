import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget  {
  const RegisterButton({Key? key}) : super(key: key);
@override
  Widget build(BuildContext context) {
    return Column(
            children: [
              const Text(
                "Não tem uma conta?",
                style: TextStyle(fontSize: 24,color:Colors.black),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    primary: const Color.fromARGB(255, 232, 147, 98),
                    textStyle: const TextStyle(fontSize: 24),
                  ),
                  onPressed: () {},
                  child: const Text('Registre-se'),
                ),
            ],
            
          );
  }
}