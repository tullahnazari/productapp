


import 'package:flutter/material.dart';
import 'package:productsapp/core/models/user.dart';
import 'package:productsapp/core/viewmodels/CRUDModel.dart';
import 'package:productsapp/ui/views/authentication/register.dart';
import 'package:productsapp/ui/views/homeView.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    

    if (user == null) {
      return Register();
    } else{
      return HomeView();
    }
  }
}