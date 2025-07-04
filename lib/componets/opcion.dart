import 'package:flutter/material.dart';

class opcion extends StatelessWidget {
  final String data;
  final VoidCallback? onPressed;
  final bool seleccionado;

  const opcion({
    super.key,
    required this.data,
    required this.seleccionado,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: seleccionado ? const Color(0xFF35C441) : Colors.white,
          foregroundColor: Colors.black,
          minimumSize: const Size(double.infinity, 40),
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: const BorderSide(
              color: Color(0xFF35C441),
              width: 2,
            ),
          ),
        ),
        child: Text(
          data,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}