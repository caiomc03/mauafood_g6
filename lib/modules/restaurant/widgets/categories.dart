import 'package:flutter/material.dart';
import 'package:mauafood_g6/shared/themes/app_colors.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  CategoriesState createState() => CategoriesState();
}

class CategoriesState extends State<Categories> {
  List<String> categories = [
    "Todos",
    "Pratos",
    "Bebidas",
    "Sobremesas",
    "Outros"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? AppColors.orange : Colors.grey,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 2),
              height: 2,
              width: 24,
              color: selectedIndex == index
                  ? AppColors.orange
                  : const Color.fromARGB(0, 0, 0, 0),
            )
          ],
        ),
      ),
    );
  }
}
