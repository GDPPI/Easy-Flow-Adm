import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class CardAnnoumencementsWidget extends StatelessWidget {
  const CardAnnoumencementsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: FadeInImage(
                  placeholder: const AssetImage(
                    "assets/images/collab_bro_image.png",
                  ),
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/easyflow-55ea5.appspot.com/o/teste%2Fnoticias.png?alt=media&token=7a167b7b-ff57-4a5a-a176-e95b898b5a76'),
                ),
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
    );
  }
}
