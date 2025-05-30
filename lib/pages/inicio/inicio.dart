import 'package:flutter/material.dart';
import 'package:prueba_seminario1/componets/Iconobuho.dart';
import 'package:prueba_seminario1/componets/boton.dart';
import 'package:prueba_seminario1/pages/login/login.dart';


class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Bull Finance", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900, color: Color(0XFF27AE60)),
                    textAlign: TextAlign.center,),
              SizedBox( height: 50),
              iconoBuho(),
              SizedBox(
                width: 250,
                height: 200,
                child: Center(
                  child: Text(
                    "Aprende sobre impuestos de una manera divertida",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900, color: Color(0XFF27AE60)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 200),
              boton(
                data: "Iniciar",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}