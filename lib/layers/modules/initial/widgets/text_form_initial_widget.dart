import 'package:flutter/material.dart';

class TextFormInitialWidget extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  const TextFormInitialWidget(
      {super.key, required this.text, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 540,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
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
              padding: const EdgeInsets.only(left: 16, right: 10),
              child: SizedBox(
                height: 40,
                width: 170,
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
        ),
      ),
    );
  }
}
