import 'package:flutter/material.dart';
import 'package:image/favorites.dart';
import 'package:flutter/material.dart';
import 'package:image/provider/provider_cart.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Provider_class(),

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),

        home: const Favorites(),
      )));
}