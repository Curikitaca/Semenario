import 'package:flutter/material.dart';

class iconoBuho extends StatelessWidget {
  const iconoBuho({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 240, // tamaño total del círculo negro
    height: 190,
    decoration: BoxDecoration(
    color: const Color(0xFFF2C2C2C), // color del fondo circular
    shape: BoxShape.circle,
    ),
    child: Padding(
    padding: const EdgeInsets.all(0), // margen entre borde y imagen
    child: ClipOval(
    child: Image.asset(
      'assets/toro1.png',
    // recorta bien dentro del círculo
    ),
    ),
                  ),
                );
  }
}
