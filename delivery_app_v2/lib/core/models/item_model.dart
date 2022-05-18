class ItemModel {
  final String id;
  final String title;
  final String description;
  final String? imageUrl;
  final List<String> categories;
  final bool available;
  final int price;

  const ItemModel({
    required this.id,
    required this.title,
    required this.description,
    required this.categories,
    required this.available,
    required this.price,
    this.imageUrl,
  });
}
