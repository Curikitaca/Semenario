import 'package:flutter/material.dart';
import 'package:prueba_seminario1/pages/modulos/modulos.dart';



class Cardcustom extends StatelessWidget {
  final String? texto1;
  final String? textos2;
  final int? progresoActual;  // Opcional
  final int? progresoTotal;   // Opcional
  final GestureTapCallback? onTap;

  const Cardcustom({
    super.key,
    this.texto1,
    required this.textos2,
    this.progresoActual,
    this.progresoTotal,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    bool mostrarProgreso = progresoActual != null && progresoTotal != null;

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),side: BorderSide(color: Color(0xFF35C441), width: 2)), // ✅ Borde verde),
      color: Color(0xFFF5F5F5),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.infinity,  // ✅ Aquí se asegura que use todo el ancho
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(texto1 ?? 'Sin título disponible', style: TextStyle(fontWeight: FontWeight.bold, color: const Color(0xFF35C441))),
              SizedBox(height: 8),
              Text(textos2 ?? 'Sin título disponible', style: TextStyle(fontWeight: FontWeight.bold, color: const Color(0xFF35C441))),
              if (mostrarProgreso)
                Row(
                  children: [
                    Expanded(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          LinearProgressIndicator(
                            value: progresoActual! / progresoTotal!,
                            backgroundColor: Colors.white,
                            color: Colors.green,
                            minHeight: 20,
                          ),
                          Text(
                            '$progresoActual/$progresoTotal',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    Image.asset(
                      'assets/buho2.png',
                      width: 40,
                      height: 40,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}