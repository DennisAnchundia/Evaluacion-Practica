class Smartphone {
  final int id;
  final String color;
  final String modelo;
  final DateTime precio;
  final String descripcion;
  bool read;

  Smartphone({
    required this.id,
    required this.color,
    required this.modelo,
    required this.precio,
    required this.descripcion,
    this.read = false,
  });
}
