import 'package:flutter/material.dart';
import 'package:productsapp/core/viewmodels/CRUDModel.dart';
import 'package:productsapp/ui/router.dart';
import 'package:provider/provider.dart';
import 'package:productsapp/locator.dart';


void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) => locator<CRUDModel>(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        title: 'Product App',
        theme: ThemeData(),
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }
}