import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pkc/pages/home/home_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class Passo3Widget extends StatelessWidget {
  Passo3Widget({super.key});
  HomeController homeController = Get.find();

  buttonSize(BuildContext context) {
    return MediaQuery.sizeOf(context).width *
        (MediaQuery.sizeOf(context).width > 720 ? 0.25 : 0.80);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //  height: MediaQuery.sizeOf(context).height * 0.25,
      key: homeController.key3,
      color: const Color(0xffF7F1F7),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '3º PASSO:',
                  style: GoogleFonts.robotoCondensed(
                      color: const Color(0xff5A2683),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: const Color(0xff5A2683),
                      fontSize: 16),
                ),
                Text(
                  ' CHAME O CHICO E PERGUNTE',
                  style: GoogleFonts.robotoCondensed(
                      color: const Color(0xff5A2683),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "'OI! CHICO! CADÊ MEUS R\$30,00?!'",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.robotoCondensed(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: const Color(0xff5A2683)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: buttonSize(context),
                  decoration: BoxDecoration(
                    color: Colors.red, // Cor de fundo vermelha
                    border: Border.all(color: Colors.red.shade900, width: 5),
                    borderRadius:
                        BorderRadius.circular(16), // Borda arredondada
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.withOpacity(0.8),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      onPressed: () {
                        launchUrl(
                            Uri.parse("https://wa.me/message/7UGBBZ5RYI5KB1"));
                      },
                      child: Text(
                        'CHAMAR',
                        style: GoogleFonts.robotoCondensed(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
