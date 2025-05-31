import 'package:flutter/material.dart';
import 'package:prueba_seminario1/componets/boton.dart';
import 'package:prueba_seminario1/componets/textfield.dart';
import 'package:prueba_seminario1/pages/login/login_controller.dart';
import 'package:get/get.dart';




class FormularioDemoState extends StatefulWidget {
  final LoginController control;

  const FormularioDemoState({super.key, required this.control});

  @override
  State<FormularioDemoState> createState() => _FormularioDemoStateState();
}

class _FormularioDemoStateState extends State<FormularioDemoState> {
  final LoginController control = Get.put(LoginController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF), // Fondo similar al de la imagen
        borderRadius: BorderRadius.circular(12),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Usuario",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                    color: Colors.green, // Color del borde
                    width: 2,            // Grosor del borde
                ),
              ),
              child: textfieldcustom(
                controller: control.nombreController,
                tipo: TextInputType.text,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Correo",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: textfieldcustom(
                controller: control.correoController,
                tipo: TextInputType.text,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Edad",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: textfieldcustom(
                controller: control.edadController,
                tipo: TextInputType.text,
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: boton(data:"Ingresar", onPressed: () {
                  control.login(context);
              }, )),
            const SizedBox(height: 12),
            
          ],
        ),
      ),
    );
  }
}


