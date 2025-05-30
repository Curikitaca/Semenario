import 'package:flutter/material.dart';

class botonc extends StatelessWidget {
  final String data;
  final VoidCallback? onPressed;
  final Color? colorFondo; // ✅ Nuevo parámetro

  const botonc({
    super.key,
    this.onPressed,
    required this.data,
    this.colorFondo,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: colorFondo ?? const Color(0xFFE7200A), // ✅ Usa color dinámico o rojo por defecto
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          elevation: 1,
        ),
        child: Text(
          data,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}