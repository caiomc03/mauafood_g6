import 'package:flutter/material.dart';
import 'package:mauafood_g6/shared/themes/app_colors.dart';

class ProductsWidget extends StatelessWidget {
  final String title, subtitle, images;
  const ProductsWidget(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.images})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: AppColors.grey,
              elevation: 0.0,
              shadowColor: Colors.transparent),
          onPressed: () {},
          child: SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(images)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 20),
                          ),
                          Text(
                            subtitle,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                color: Color.fromARGB(144, 0, 0, 0),
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
        const Divider(
          thickness: 2,
        )
      ],
    );
  }
}
