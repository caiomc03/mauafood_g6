import 'package:flutter/material.dart';
import 'package:mauafood_g6/modules/main/widgets/horizontal_list.dart';
import 'package:mauafood_g6/modules/main/widgets/itens_and_title_horizontal_list.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  SearchState createState() => SearchState();
}

class SearchState extends State<MainPage> {
  Icon customIcon = const Icon(
    Icons.search,
    color: Colors.black,
  );
  Widget customSearchBar =
      const Text('Maua Food', style: TextStyle(color: Colors.black));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //seria bom colocar essa appbar como widget, mas ainda n sei como fazer F
          backgroundColor: Colors.white,
          title: customSearchBar,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  if (customIcon.icon == Icons.search) {
                    customIcon = const Icon(
                      Icons.cancel,
                      color: Colors.black,
                    );
                    customSearchBar = const ListTile(
                      leading: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 28,
                      ),
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'Estou com fome de...',
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    );
                  } else {
                    customIcon = const Icon(
                      Icons.search,
                      color: Colors.black,
                    );
                    customSearchBar = const Text('Maua Food',
                        style: TextStyle(color: Colors.black));
                  }
                });
              },
              icon: customIcon,
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 700,
              child: ListView(
                children: [
                  const HorizontalList(
                    altura: 80,
                    largura: 100,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Restaurantes',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  const HorizontalList(altura: 150, largura: 150),
                  const ItensHorizontalList(title: 'Pratos'),
                  const ItensHorizontalList(title: 'Lanches'),
                  const ItensHorizontalList(title: 'Favoritos'),
                ],
              ),
            ),
            Column(
              children: [Row()],
            )
          ],
        ));
  }
}
