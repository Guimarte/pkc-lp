import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff5A2684),
        width: MediaQuery.sizeOf(context).width * 1,
        height: MediaQuery.sizeOf(context).height * 0.2,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.facebook, color: Colors.white, size: 40),
                SizedBox(
                  width: 16,
                ),
                Icon(FontAwesomeIcons.instagram, color: Colors.white, size: 40),
                SizedBox(
                  width: 16,
                ),
                Icon(FontAwesomeIcons.youtube, color: Colors.white, size: 40),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Copyright © 2023 | Pokercup PKC Entretenimento e Serviços LTDA - CNPJ 48.048.512/0001-54",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 8, color: Colors.white),
              ),
            )
          ],
        ));
  }
}
