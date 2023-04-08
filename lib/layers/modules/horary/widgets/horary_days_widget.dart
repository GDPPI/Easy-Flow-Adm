import 'package:flutter/material.dart';

class HoraryDaysWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List titles = ["Manhã", "Tarde", "Noite"];

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
        mainAxisExtent: 100,
      ),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          width: 300,
          height: 100,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Segunda-feira",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14),
              ),
              Divider(),
              SizedBox(
                height: 25,
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 25,
                    crossAxisSpacing: 10,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xffD9D9D9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        titles[index],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff323232),
                          fontFamily: "Segoe UI",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
