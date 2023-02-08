class Product {
  final int id, price;
  final String title, description, image;

  Product(
      {required this.id,
      required this.price,
      required this.title,
      required this.description,
      required this.image});
}

// list of products

List<Product> products = [
  Product(
    id: 1,
    price: 56,
    title: "Classic Leather Arm Chair",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis dictum eros. Donec ac porta mauris. Mauris aliquam bibendum pharetra. Praesent congue ut nisl ornare rutrum. Mauris porta, ipsum in varius viverra, mi urna pellentesque lacus, quis vestibulum neque mi dictum diam. Nullam rutrum justo nunc, nec pulvinar dolor vehicula quis. Donec sodales leo ac velit gravida faucibus. Praesent vel nibh libero. Mauris aliquet erat in malesuada porta. Curabitur rhoncus risus non elit vestibulum, luctus ultricies ipsum iaculis. Pellentesque ac porttitor orci.",
    image: "assets/images/Item_1.png",
  ),
  Product(
    id: 2,
    price: 69,
    title: "Poppy Plastic Tub Chair",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis dictum eros. Donec ac porta mauris. Mauris aliquam bibendum pharetra. Praesent congue ut nisl ornare rutrum. Mauris porta, ipsum in varius viverra, mi urna pellentesque lacus, quis vestibulum neque mi dictum diam. Nullam rutrum justo nunc, nec pulvinar dolor vehicula quis. Donec sodales leo ac velit gravida faucibus. Praesent vel nibh libero. Mauris aliquet erat in malesuada porta. Curabitur rhoncus risus non elit vestibulum, luctus ultricies ipsum iaculis. Pellentesque ac porttitor orci.",
    image: "assets/images/Item_2.png",
  ),
  Product(
    id: 3,
    price: 50,
    title: "Bar Stool Chair",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis dictum eros. Donec ac porta mauris. Mauris aliquam bibendum pharetra. Praesent congue ut nisl ornare rutrum. Mauris porta, ipsum in varius viverra, mi urna pellentesque lacus, quis vestibulum neque mi dictum diam. Nullam rutrum justo nunc, nec pulvinar dolor vehicula quis. Donec sodales leo ac velit gravida faucibus. Praesent vel nibh libero. Mauris aliquet erat in malesuada porta. Curabitur rhoncus risus non elit vestibulum, luctus ultricies ipsum iaculis. Pellentesque ac porttitor orci.",
    image: "assets/images/Item_3.png",
  ),
];
