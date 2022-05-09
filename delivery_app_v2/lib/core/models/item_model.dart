class ItemModel {
  final String id;
  final String title;
  final String description;
  final List<String> categories;
  final bool available;
  final String price;

  const ItemModel({
    required this.id,
    required this.title,
    required this.description,
    required this.categories,
    required this.available,
    required this.price,
  });
}
