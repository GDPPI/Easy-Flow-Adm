import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_paginator/number_paginator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          body: Container(
            color: const Color.fromARGB(245, 245, 245, 255),
            height: 742,
            width: 1110,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 49,
                ),
                Row(children: [
                  SizedBox(
                    width: 16,
                  ),
                  Task('Daily feito em 04 de Janeiro 2023        '),
                  SizedBox(
                    width: 16,
                  ),
                  Task('Daily feito em 05 de Janeiro 2023        '),
                  SizedBox(
                    width: 16,
                  ),
                  Task('Daily feito em 06 de Janeiro 2023        '),
                ]),
                Row(children: [
                  SizedBox(
                    width: 16,
                  ),
                  Task('Daily feito em 04 de Janeiro 2023        '),
                  SizedBox(
                    width: 16,
                  ),
                  Task('Daily feito em 05 de Janeiro 2023        '),
                  SizedBox(
                    width: 16,
                  ),
                  Task('Daily feito em 06 de Janeiro 2023        '),
                ]),
                Row(children: [
                  SizedBox(
                    width: 16,
                  ),
                  Task('Daily feito em 04 de Janeiro 2023        '),
                  SizedBox(
                    width: 16,
                  ),
                  Task('Daily feito em 05 de Janeiro 2023        '),
                  SizedBox(
                    width: 16,
                  ),
                  Task('Daily feito em 06 de Janeiro 2023        '),
                ]),
                Row(children: [
                  SizedBox(
                    width: 16,
                  ),
                  Task('Daily feito em 04 de Janeiro 2023        '),
                  SizedBox(
                    width: 16,
                  ),
                  Task('Daily feito em 05 de Janeiro 2023        '),
                  SizedBox(
                    width: 16,
                  ),
                  Task('Daily feito em 06 de Janeiro 2023        '),
                ]),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Numberpagination(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Task extends StatelessWidget {
  final String nome;
  const Task(this.nome, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.topCenter,
      color: const Color.fromARGB(245, 245, 245, 255),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            width: 330,
            height: 40,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  nome,
                  style: GoogleFonts.notoSans(
                      textStyle: TextStyle(
                    color: Color.fromARGB(74, 111, 114, 255),
                  )),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(54, 34)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'abrir',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Numberpagination extends StatefulWidget {
  const Numberpagination({super.key});

  @override
  State<Numberpagination> createState() => _NumberpaginationState();
}

class _NumberpaginationState extends State<Numberpagination> {
  int numberpages = 10;
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 500,
      child: NumberPaginator(
        numberPages: numberpages,
        onPageChange: (index) {
          setState(() {
            currentpage = index;
          });
        },
      ),
    );
  }
}
