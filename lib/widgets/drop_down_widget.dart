import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pkc/pages/home/home_controller.dart';

class DropDownRegioes extends StatefulWidget {
  DropDownRegioes({super.key});

  @override
  State<DropDownRegioes> createState() => _DropDownRegioesState();
}

class _DropDownRegioesState extends State<DropDownRegioes> {
  final HomeController homeController = Get.find();
  String _estadoSelecionado = 'Estado';

  List<String> estados = [
    "Estado",
    "Acre",
    "Alagoas",
    "Amapá",
    "Amazonas",
    "Bahia",
    "Ceará",
    "Distrito Federal",
    "Espírito Santo",
    "Goiás",
    "Maranhão",
    "Mato Grosso",
    "Mato Grosso do Sul",
    "Minas Gerais",
    "Pará",
    "Paraíba",
    "Paraná",
    "Pernambuco",
    "Piauí",
    "Rio de Janeiro",
    "Rio Grande do Norte",
    "Rio Grande do Sul",
    "Rondônia",
    "Roraima",
    "Santa Catarina",
    "São Paulo",
    "Sergipe",
    "Tocantins"
  ];
  width() {
    if (MediaQuery.sizeOf(context).width.isLowerThan(720)) {
      return MediaQuery.sizeOf(context).width * 0.35;
    }
    if (MediaQuery.sizeOf(context).width.isLowerThan(1000) &&
        MediaQuery.sizeOf(context).width.isGreaterThan(720)) {
      return MediaQuery.sizeOf(context).width * 0.3;
    }
    if (MediaQuery.sizeOf(context).width.isLowerThan(1300) &&
        MediaQuery.sizeOf(context).width.isGreaterThan(720)) {
      return MediaQuery.sizeOf(context).width * 0.2;
    }

    return MediaQuery.sizeOf(context).width * 0.15;
  }

  Widget build(BuildContext context) {
    return Obx(() => Container(
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
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
                itemHeight: 50,
                value: homeController.selectedEstado.value,
                alignment: Alignment.center,
                autofocus: true,
                onChanged: (String? novoEstado) {
                  homeController.selectedEstado.value = novoEstado!;
                  homeController
                      .getClubsStateRegion(homeController.selectedEstado.value);
                },
                items: estados.map<DropdownMenuItem<String>>((String estado) {
                  return DropdownMenuItem<String>(
                    value: estado,
                    child: Center(child: Text(estado)),
                  );
                }).toList(),
                style: GoogleFonts.robotoCondensed(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
                elevation: 16,
                menuMaxHeight: 200,
                icon: Icon(Icons.arrow_drop_down)),
          ),
        ));
  }
}
