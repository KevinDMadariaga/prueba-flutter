import 'package:app_taxi_flutter/pages/controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:app_taxi_flutter/pages/color.dart' as utils;
import 'package:app_taxi_flutter/pages/home_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}
RegisterController _con = new RegisterController();
class _RegisterPageState extends State<RegisterPage> {
  @override
  void initState() {
  super.initState();
  _con.init(context);
}
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false, // quitar el problema del pixels
      appBar: AppBar(
        backgroundColor: utils.Colors.inicioColor,
      ),
      floatingActionButton: Stack(
            children: [
              Positioned(
                top: 585.0, 
                left: 300.0, 
                child: FloatingActionButton(
                  backgroundColor: utils.Colors.inicioColor,
                  onPressed: () {
                    //Navigator.push(
                    //      context
                           // Navega a la siguiente página
                      //  );
                      },
                  child: Icon(Icons.arrow_forward,color: Colors.white,size: 25,) , 
                ),
              ),
            ],
          ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              bannerApp(context), 
              SizedBox(height: 5),
              _textName(),
              SizedBox(height: 20),
              _textEmail(),
              SizedBox(height: 20),
              _textPassword(),
              SizedBox(height: 40),
              Row( 
                children: [
                  SizedBox(width: 55,), 
                  _textSign(), 
                ],
              ),
              SizedBox(height: 70),
              Row( 
                children: [
                  SizedBox(width: 60,), 
                  _textSignIn(), 
                ],
              ),           
            ],
          ),
        ),
      ),
    );
} 
Widget _textName(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60,vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
          //controller: _con.emailController,
          decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(0.5),
        hintText: 'Name',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      ),
    );
  }
Widget _textEmail(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60,vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
          //controller: _con.emailController,
          decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(0.5),
        hintText: 'Email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      ),
    );
  }
  Widget _textPassword(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60,vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
          //controller: _con.emailController,
          decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(0.5), // Ajusta la opacidad aquí
        hintText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      ),
    );
  }
   Widget _textSign(){
    return Text('Sing in',
      style: TextStyle(color: Colors.black,
          fontWeight:FontWeight.bold ,
          fontSize: 26
      ),
    );
  }
Widget _textSignIn(){
  return GestureDetector(
        //onTap: _con.goToHomePage,
        child: Text('Sing in',
          style: TextStyle(
        color: Colors.grey[700], 
        fontSize: 17,
        decoration: TextDecoration.underline,
      ),
        ),
      );
}
}
Widget bannerApp(BuildContext context) {
  return ClipPath(
    
    clipper: WaveClipperTwo(flip: true),
    child: Container(
      color: utils.Colors.inicioColor,
      height: MediaQuery.of(context).size.height * 0.27,
      child: Align(
        alignment: Alignment.bottomLeft, 
        child: Padding(
          padding: const EdgeInsets.only(left: 50,top: 25), 
          child: _textWelcome(),
        ),
      ),
    ),
  );
}
Widget _textWelcome() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start, // Alineación horizontal a la izquierda
    children: [
      Text('Create',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 27,
        ),
      ),
      Text('Account',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 27
        ),
      ),
    ],
  );
}
