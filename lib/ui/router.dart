import 'package:flutter/material.dart';
import 'package:productsapp/ui/views/addProduct.dart';
import 'package:productsapp/ui/views/authentication/register.dart';
import 'package:productsapp/ui/views/homeView.dart';
import 'package:productsapp/ui/views/productDetails.dart';
import 'package:productsapp/ui/views/wrapper.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    
    switch (settings.name) {
      case '/' :
        return  MaterialPageRoute(
          builder: (_)=> HomeView()
        );
      case '/addProduct' :
        return MaterialPageRoute(
          builder: (_)=> AddProduct()
        ) ;
      case '/auth' :
        return MaterialPageRoute(
          builder: (_) => Register()
        );
      case '/productDetails' :
        return MaterialPageRoute(
            builder: (_)=> ProductDetails()
        ) ;
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            ));
    }
  }
}