import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  final String buttonText;
  ResponsiveButton({super.key, this.width, this.isResponsive= false, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueAccent,
        boxShadow: [
          BoxShadow(
            color: Colors.black54.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 2),
          )
        ]
      ),
    child: Center( // Metni butonun ortasına yerleştirmek için Center widget'ını kullanıyoruz
    child: Text(
    buttonText, // Buton üzerindeki metin
    style: TextStyle(
    color: Colors.white, // Metnin rengi (beyaz)
    fontSize: 18, // Metnin font boyutu
    fontWeight: FontWeight.bold, // Metnin kalınlığı
    ),
    ),
    ),
    );
  }
}
