import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tienda_flutter/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("lib/assets/images/fondo.jpg"),
            fit: BoxFit.cover,
            opacity: 0.6, // Ajusta la imagen al tamaño del contenedor
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Compra un cafe",
              style: GoogleFonts.pacifico(fontSize: 50, color: Colors.white),
            ),
            Column(
              children: [
                Text(
                  "UN BUEN CAFE POR LA MAÑANA",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Material(
                  color: Color(0xFFE57734),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                      child: Text(
                        "INGRESAR",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
