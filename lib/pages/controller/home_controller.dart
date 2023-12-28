import 'package:flutter/material.dart';

class HomeController {

  late BuildContext context;

  Future? init(BuildContext context){
    this.context = context;
    return null;
  }

  void  goToRegisterPage(){
    Navigator.pushNamed(context,'register');
  }
}