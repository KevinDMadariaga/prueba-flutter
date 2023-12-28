import 'package:app_taxi_flutter/pages/controller/home_controller.dart';
import 'package:app_taxi_flutter/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:app_taxi_flutter/pages/color.dart' as utils;

class HomePage extends StatelessWidget {
  HomeController _con = new HomeController();
  @override
  Widget build(BuildContext context) {
    _con.init(context); // inicializa controlador
    return Scaffold(
      resizeToAvoidBottomInset : false,
      floatingActionButton: Stack(
            children: [
              Positioned(
                top: 577.0, 
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
            child: Column(
            children: [
              bannerApp(context), 
              SizedBox(height: 100),
              _textEmail(),
              SizedBox(height: 20),
              _textPassword(),
              SizedBox(height: 42),
              Row( 
                children: [
                  SizedBox(width: 55,),
                  _textSign(), 
                ],
              ),
              SizedBox(height: 50),
              _textRegisterPassword(context),
              
            ],
            
          ),
        ),
      ),
    );
  }
  Widget bannerApp(BuildContext context) {
  return ClipPath(
    clipper: WaveClipperTwo(),
    child: Container(
      color: utils.Colors.inicioColor,
      height: MediaQuery.of(context).size.height * 0.340,
      child: Align(
        alignment: Alignment.bottomLeft, // Alinea el contenido en la parte inferior izquierda
        child: Padding(
          padding: const EdgeInsets.only(left: 50,top: 70), // Agrega un espacio a la izquierda
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
      Text(
        'Welcome',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        
        ),
      ),
      Text(
        'Back',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30
        ),
      ),
    ],
    
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
        fillColor: Colors.white.withOpacity(0.5), 
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
          fontSize: 27
      ),
    );
  }
  Widget _textRegisterPassword(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: () {
          // Navega a la página de registro al hacer clic en "Sign Up"
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RegisterPage()), // Reemplaza "RegisterPage()" con la página a la que deseas navegar
          );
        },
        child: Text('Sign Up',
          style: TextStyle(
            color: Colors.grey[700], 
            decoration: TextDecoration.underline, 
          ),
        ),
      ),
      SizedBox(width: 75),
      GestureDetector(
        onTap: () {
  
        },
        child: Text( 'Forgot Password',
          style: TextStyle(
            color: utils.Colors.inicioColor, // Color gris claro
            fontSize: 17,
            decoration: TextDecoration.underline, // Subrayado
          ),
        ),
      ),
    ],
  );
}
}