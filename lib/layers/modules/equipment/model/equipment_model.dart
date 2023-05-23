class EquipmentModel {
  final int id;
  final String tumble;
  final String name;
  final String model;
  final List<String> description;
  final bool isDisponible;
  final String? representive;

  EquipmentModel({
    required this.id,
    required this.tumble,
    required this.name,
    required this.model,
    required this.description,
    required this.isDisponible,
    this.representive,
  });
}
