import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class CardAnnoumencementsWidget extends StatelessWidget {
  const CardAnnoumencementsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      padding: const EdgeInsets.only(
        top: 14,
        right: 16,
        bottom: 37,
      ),
      width: 327,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/images/noticias.png",
                      ),
                    ),
                  ),
                  height: 160,
                  width: 307,
                ),
              ),
              Container(
                height: 48,
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    maxRadius: 25,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "GDPPI",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Grupo discente de programação\n e projetos inovadores ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 3,
                          ),
                        )
                      ],
                    ),
                  ),
                  title: SizedBox(
                    width: 257,
                    height: 48,
                    child: SingleChildScrollView(
                      child: ExpandableText(
                        "Aquisição de macbooks para o laboratório gera entusiasmo para os desenvolvedores." *
                            10,
                        maxLines: 3,
                        animation: true,
                        textAlign: TextAlign.justify,
                        expandText: "Ver mais...",
                        collapseText: "\nVer menos",
                        linkStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Color(0xFF000000),
                        ),
                        style: const TextStyle(
                          fontSize: 13,
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Segoe UI',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
