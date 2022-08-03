import 'package:flutter/material.dart';
import 'package:mauafood_g6/modules/main/widgets/horizontal_list.dart';

class ItensHorizontalList extends StatelessWidget{
  final String title;
  const ItensHorizontalList({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return(Column(
              children: [
                Row(
                  children:  [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const HorizontalList(altura: 150, largura: 120),
              ],
            ));
}}