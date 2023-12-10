import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pkc/pages/home/home_controller.dart';

class IdClubeWidget extends StatelessWidget {
  IdClubeWidget({super.key});

  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "COPIE O NÚMERO (ID) DO SEU CLUBE NO \n X-POKER.",
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  )),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 64),
              child: Center(
                child: Obx(() => Text(
                      homeController.idClubSelecionado!.value,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            IconButton(
                onPressed: () async {
                  await Clipboard.setData(ClipboardData(
                    text: homeController.idClubSelecionado!.value,
                  ));
                },
                icon: const Icon(Icons.copy))
          ],
        ),
        const SizedBox(height: 16),
        Image.asset(
          "assets/images/apple.png",
          height: 64,
        ),
        const SizedBox(height: 16),
        Image.asset(
          "assets/images/android.png",
          height: 64,
        )
      ],
    );
  }
}
