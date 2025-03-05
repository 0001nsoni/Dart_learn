class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  const Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
}

final products=[Item(
  id:"Codepur001",
  name: 'iPhone 12 Pro',
  price: 999,
  desc: 'Apple iPhone 12th generation',
  color: '#33505a',
  image: 'https://images.unsplash.com/photo-1602529872761-4b7b3e3a3b3a'

)];