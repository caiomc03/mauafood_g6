import 'package:flutter/material.dart';
import 'package:mauafood_g6/modules/main/widgets/horizontal_list.dart';
import 'package:mauafood_g6/modules/restaurant/widgets/categories.dart';
import 'package:mauafood_g6/modules/restaurant/widgets/products_widget.dart';
import 'package:mauafood_g6/modules/restaurant/widgets/searchbar.dart';
import 'package:mauafood_g6/shared/themes/app_colors.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> listTitle = [
      'Filé de Frango',
      'Contra-Filé',
      'Salgado',
      'Sucos',
      'Cookie',
      'Batata Frita'
    ];
    List<String> listSubTitle = [
      '2 Acompanhamentos',
      '2 Acompanhamentos',
      'Assados na hora',
      'Natural, batido na hora',
      'Com gotas de chocolate',
      'Porção de 400g'
    ];
    List<String> listImages = [
      'assets/images/foods/Frango.jpg',
      'assets/images/foods/Contra-File.jpg',
      'assets/images/foods/Salgado.jpg',
      'assets/images/foods/Suco.jpg',
      'assets/images/foods/Cookie.jpg',
      'assets/images/foods/Fritas.jpg'
    ];
    return Scaffold(
      backgroundColor: AppColors.grey,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black, size: 32),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: AppColors.grey,
        shadowColor: Colors.transparent,
      ),
      body: ListView(children: [
        Column(
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                child: SearchBar()),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Populares',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
              ],
            ),
            const HorizontalList(
              altura: 150,
              largura: 200,
              itens: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: const [
                  Categories(),
                  Divider(
                    thickness: 3,
                  )
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                    width: 400,
                    child: Column(
                      children: [
                        for (var index = 0; index < 6; index++)
                          ProductsWidget(
                            title: listTitle[index],
                            subtitle: listSubTitle[index],
                            images: listImages[index],
                          )
                      ],
                    )),
              ],
            )
          ],
        ),
      ]),
    );
  }
}
