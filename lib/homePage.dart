import 'package:flutter/material.dart';
import 'package:gridview_ui/utilites/images_path.dart';
import 'package:gridview_ui/utilites/number_select_item.dart';
import 'package:gridview_ui/widgets/container_lifestyle_sale.dart';
import 'package:gridview_ui/widgets/gridvView_Card.dart';
import 'package:gridview_ui/widgets/text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> listitem = [
      {"images": lampOne, "isSaved": false},
      {"images": lampTwo, "isSaved": true},
      {"images": lampThree, "isSaved": true},
      {"images": lampFour, "isSaved": false},
      {"images": lampFive, "isSaved": false},
      {"images": lampSix, "isSaved": false},
      {"images": lampSeven, "isSaved": true},
      {"images": lampEight, "isSaved": false},
    ];

    return Scaffold(
        backgroundColor: Colors.grey[600],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: TextWidget(
            text: "Home",
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          actions: [
           containerNumberSekectItem()
          ],
        ),
        body: SafeArea(
            child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(children: [
                  containerLifeStyle(),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        children: listitem
                            .map(
                              (item) => gridViewCard(item),
                            )
                            .toList()),
                  ),
                ]))));
  }
}
