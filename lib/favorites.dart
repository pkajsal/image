import 'package:flutter/material.dart';
import 'package:image/cart_store.dart';

import 'package:image/models/item_model.dart';
import 'package:badges/badges.dart';
import 'package:image/provider/provider_cart.dart';
import 'package:provider/provider.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  List<String> name = [
    "Name:apple",
    "Name:kiwi",
    "Name:redfruit",
    "Name:mango",
    "Name:jackfruit",

  ];
  List<String> unit = [
    "Unit:kg",
    "Unit:Doz",
    "Unit:pc",
    "Unit:k",
    "Unit:Doz",

  ];
  List<int> price = [10, 20, 30, 10, 20,];
  List<String> image = [
    "images/apple.jpeg",
    "images/kiwi.jpeg",
    "images/redfruit.jpeg",
    "images/mango.jpeg",
    "images/jack.jpeg",

  ];

  @override
  Widget build(BuildContext context) {

    final object = Provider.of<Provider_class>(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          actions: [
            Stack(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cart_store()));
                  },
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                    size: 40.0,
                  ),
                ),
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 10,
                    child: Text(object.favoriteName.length.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 10)),
                  ),
                ),
              ],
            ),
          ],
        ),
        body: ListView.builder(
            itemCount: name.length,
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image(
                            height: 100,
                            width: 100,
                            image: AssetImage(image[index].toString()),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  name[index].toString(),
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  unit[index].toString(),
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  price[index].toString(),
                                  style: TextStyle(fontSize: 16),
                                ),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: GestureDetector(
                                      onTap: (){

                                        object.favorites(name[index], image[index], unit[index],price[index]);
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Center(
                                          child: Text(
                                            'Add to cart',
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}



