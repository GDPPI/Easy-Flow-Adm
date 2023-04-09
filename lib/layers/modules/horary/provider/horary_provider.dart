import 'package:easyflow/layers/modules/horary/model/horary_model.dart';

final dummyUsers = [
  HoraryModel(
    id: 01,
    name: "Lucas Silva",
    day: "Segunda-feira",
    turn: "Tarde",
    table: 10,
  ),
  HoraryModel(
    id: 03,
    name: "Silva Correa",
    day: "Terça-feira",
    turn: "Tarde",
    table: 10,
  ),
  HoraryModel(
    id: 02,
    name: "Lucas Correa",
    day: "Quarta-feira",
    turn: "Manhã",
    table: 10,
  ),
  HoraryModel(
    id: 05,
    name: "Correa Silva",
    day: "Quinta-feira",
    turn: "Noite",
    table: 12,
  ),
];

class HoraryProvider {}
