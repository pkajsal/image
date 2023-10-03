import 'package:flutter/material.dart';
import 'package:image/provider/provider_cart.dart';
import 'package:provider/provider.dart';

class Cart_store extends StatefulWidget {
  const Cart_store({super.key});

  @override
  State<Cart_store> createState() => _Cart_storeState();
}

class _Cart_storeState extends State<Cart_store> {
  @override
  Widget build(BuildContext context) {
    final object = Provider.of<Provider_class>(context);
    List namestore = object.favoriteName;
    List image =object.favoriteImage;
    List unit = object.favoriteUnit;
    List price = object.favoritePrice;


    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: Text(
          "Cart items",
          style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
      ),
      body: ListView.builder(
        shrinkWrap: true,
          itemCount: namestore.length,
          itemBuilder: (BuildContext context,int index) {
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
                          image:  NetworkImage(image[index]),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                namestore[index].toString(),
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
                                      object.favorites(namestore[index], image[index], unit[index],price[index]);
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
                                          'Remove from cart',
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

            /*Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(image[index]),
                  radius: 30),
                title: Text(name[index],style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: IconButton(
                  onPressed: (){
                    object.favorites(name[index],image[index],unit[index],price[index]);
                  },
                  icon: object.icn_change(name[index])?Icon(Icons.favorite,color: Colors.red,):
                      Icon(Icons.favorite_border,color: Colors.blue,),

              ),





              ),
            );*/
          }),
    );
  }
}
