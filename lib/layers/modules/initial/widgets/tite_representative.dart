import 'package:auto_size_text/auto_size_text.dart';
import 'package:easyflow/layers/data/model/representatives_model.dart';
import 'package:easyflow/layers/modules/initial/widgets/subtitle_widget.dart';
import 'package:flutter/material.dart';

class TileRepresentativeWidget extends StatelessWidget {
  final RepresentativesModel representante;
  const TileRepresentativeWidget({super.key, required this.representante});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          SizedBox(
            height: 50,
            width: 45.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: FadeInImage(
                placeholder: const AssetImage(
                  "assets/images/collab_bro_image.png",
                ),
                fit: BoxFit.cover,
                image: AssetImage(representante.imageUrl),
                imageErrorBuilder: (context, error, stackTrace) {
                  return const Image(
                    image: AssetImage(
                      "assets/images/collab_bro_image.png",
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 5),
            height: 60,
            width: 275,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 0,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 220,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 115,
                              child: AutoSizeText(
                                representante.name,
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
                                  width: 90,
                                  child: Text(
                                    representante.area,
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
                            text: representante.email,
                            icon: Icons.email_outlined,
                          ),
                        ),
                        SubtitleWidget(
                          text: representante.turn,
                          icon: Icons.alarm,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Icon(Icons.edit_outlined),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
