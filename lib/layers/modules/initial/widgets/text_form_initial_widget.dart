import 'package:flutter/material.dart';

class TextFormInitialWidget extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  const TextFormInitialWidget(
      {super.key, required this.text, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          height: 40,
          width: 320,
          child: TextFormField(
            controller: controller,
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              hintText: text,
              hintStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(
                  0xFF292A2E,
                ),
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: SizedBox(
            height: 40,
            width: 150,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Adicionar",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
