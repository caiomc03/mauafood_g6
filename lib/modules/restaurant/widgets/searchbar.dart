import 'package:flutter/material.dart';
import 'package:mauafood_g6/shared/themes/app_colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Buscar',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: AppColors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
            child: const Center(
              child: SizedBox(
                height: 50,
                child: Icon(Icons.filter_alt, size: 32),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
