import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pkc/pages/home/home_controller.dart';
import 'package:pkc/widgets/step_header_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import 'id_clube_widget.dart';

class Passo3Widget extends StatelessWidget {
  Passo3Widget({super.key});
  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.23,
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
                      color: Color(0xff5A2683),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xff5A2683),
                      fontSize: 16),
                ),
                Text(
                  ' CHAME O CHICO E PERGUNTE',
                  style: GoogleFonts.robotoCondensed(
                      color: Color(0xff5A2683),
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
                      color: Color(0xff5A2683)),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.6,
                  decoration: BoxDecoration(
                    color: Colors.red, // Cor de fundo vermelha
                    borderRadius: BorderRadius.circular(8), // Borda arredondada
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 6,
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 6,
                      ),
                    ],
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
