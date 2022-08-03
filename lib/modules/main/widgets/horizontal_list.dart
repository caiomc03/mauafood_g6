import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  final double altura, largura;
  const HorizontalList(
      {Key? key,
      required this.altura,
      required this.largura})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: altura,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8),
        itemCount: 10,
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemBuilder: (context, index) {
          return buildCard(index);
        },
      ),
    );
  }

  Widget buildCard(int index) => ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: SizedBox(
          width: largura,
        ),
      );
}
