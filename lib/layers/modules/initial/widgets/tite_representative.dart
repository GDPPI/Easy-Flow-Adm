import 'package:auto_size_text/auto_size_text.dart';
import 'package:easyflow/layers/modules/initial/widgets/subtitle_widget.dart';
import 'package:flutter/material.dart';

class TileRepresentativeWidget extends StatelessWidget {
  const TileRepresentativeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          SizedBox(
            height: 50,
            width: 44.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: FadeInImage(
                placeholder: const AssetImage(
                  "assets/images/collab_bro_image.png",
                ),
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://classic.exame.com/wp-content/uploads/2018/10/brad-pitt-britain-allied-premiere.jpg?quality=70&strip=info&w=1017",
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 5),
            height: 60,
            width: 270,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 0,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 150,
                          child: AutoSizeText(
                            "Mário Jamisson",
                            maxLines: 1,
                            maxFontSize: 14,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              overflow: TextOverflow.ellipsis,
                              color: Color(
                                0xFF4A6F91,
                              ),
                              fontFamily: 'Segoe UI',
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 2, right: 2),
                              child: Icon(
                                Icons.verified_outlined,
                                size: 10,
                                color: Color(0xFF0085FF),
                              ),
                            ),
                            SizedBox(
                              width: 70,
                              child: Text(
                                "Games",
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF0085FF),
                                  fontFamily: 'Segoe UI',
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0, bottom: 1),
                      child: SubtitleWidget(
                        text: "rubensabraao@gmail.com",
                        icon: Icons.email_outlined,
                      ),
                    ),
                    SubtitleWidget(
                      text: "Segunda-Feira. Turno Manha",
                      icon: Icons.alarm,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
