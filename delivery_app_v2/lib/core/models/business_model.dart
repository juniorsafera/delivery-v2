class BusinessModel {
  final String id;
  final String name;
  final bool available;
  final String? imageUrl;
  final String? instagramUrl;
  final String? facebookUrl;
  final String? whatsappUrl;

  const BusinessModel({
    required this.id,
    required this.name,
    required this.available,
      this.imageUrl,
      this.instagramUrl,
      this.facebookUrl,
      this.whatsappUrl,
  });
}
