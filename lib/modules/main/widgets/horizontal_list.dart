import 'package:flutter/material.dart';
import 'package:mauafood_g6/modules/restaurant/pages/restaurant_page.dart';

class HorizontalList extends StatelessWidget {
  final double altura, largura;
  final int itens;
  const HorizontalList(
      {Key? key,
      required this.altura,
      required this.largura,
      required this.itens})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: altura,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8),
        itemCount: itens,
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemBuilder: (context, index) {
          return buildCard(index,context);
        },
      ),
    );
  }

  Widget buildCard(int index,context) => ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
          return const RestaurantPage(); 
        }
        ));
        },
        style: ElevatedButton.styleFrom(
            primary: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: SizedBox(
          width: largura,
        ),
      );
}
