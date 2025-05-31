import 'package:flutter/material.dart';
import 'package:prueba_seminario1/componets/Iconobuho.dart';
import 'package:prueba_seminario1/componets/divider.dart';
import 'package:prueba_seminario1/componets/form.dart';
import 'package:prueba_seminario1/pages/login/login_controller.dart';
import 'package:get/get.dart';


class Login extends StatelessWidget {
  
  LoginController control = Get.put(LoginController());

  Login({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body:Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(30, 80, 30, 10),
            padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                iconoBuho(),
                SizedBox(height: 30,),
                FormularioDemoState(control: control,),
                SizedBox(height: 30,),
                
              ],
              
            ),
          ),
      )
      
    );
  }
}







              
