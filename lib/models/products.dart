class Product {
  final String image, title;
  final int id;
  final double price;
  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.image,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: 'T-Shirt Hathem',
    price: 9.00,
    image: 'assets/products/im4.png',
  ),
  Product(
    id: 2,
    title: 'Jacket Reffle Women',
    price: 12.00,
    image: 'assets/products/im3.png',
  ),
  Product(
    id: 3,
    title: 'Jacket Reffle Women',
    price: 12.00,
    image: 'assets/products/im1.png',
  ),
  Product(
    id: 4,
    title: 'Jacket Reffle Women',
    price: 12.00,
    image: 'assets/products/im2.png',
  ),
];
