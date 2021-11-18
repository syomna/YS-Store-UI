class ProductModel {
  String? id;
  String? title;
  String? details;
  String? category;
  String? subCategory;
  List<String> images = [];
  List<String> size = [];
  List<int> colors = [];
  bool? isFavorite;
  bool? inCart;
  double? price;
  double? offerPrice;
  double? rating;
  int? quantity;

  ProductModel(
      {required this.id,
      required this.title,
      required this.details,
      required this.category,
      required this.subCategory,
      required this.images,
      required this.size,
      required this.colors,
      required this.isFavorite,
      required this.inCart,
      required this.price,
      required this.offerPrice,
      required this.rating,
      required this.quantity});
}
