class BusinessModel {
  final String id;
  final String name;
  final String? imageUrl;
  final bool available;

  const BusinessModel({
    required this.id,
    required this.name,
      this.imageUrl,
    required this.available,
  });
}
