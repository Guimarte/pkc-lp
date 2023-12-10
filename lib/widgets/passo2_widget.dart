import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pkc/pages/home/home_controller.dart';
import 'package:pkc/widgets/id_clube_widget.dart';
import 'package:pkc/widgets/step_header_widget.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:url_launcher/url_launcher.dart';

class Passo2Widget extends StatelessWidget {
  Passo2Widget({super.key});

  HomeController homeController = Get.find();

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'oOW-dffmB1Q',
    autoPlay: false,
    params: const YoutubePlayerParams(
        enableJavaScript: true,
        showControls: true,
        showFullscreenButton: false),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      key: homeController.key2,
      color: const Color(0xff5A2683),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '2º PASSO:',
                  style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                      fontSize: 18),
                ),
                Text(
                  ' ASSISTA AO VÍDEO TUTORIAL',
                  style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 4)),
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    // child: Image.asset('assets/images/fakevideo.png')
                    child: YoutubePlayer(
                      controller: _controller,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/android.png",
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.30,
                    ),
                    InkWell(
                      onTap: () {
                        launchUrl(Uri.parse(
                            "https://apps.apple.com/us/app/x-poker-poker-with-friends/id1534470447"));
                      },
                      child: Image.asset(
                        "assets/images/apple.png",
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}