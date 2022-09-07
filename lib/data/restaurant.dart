class Restaurant {
  final int id;
  final String name;
  final String price;
  final String image;
  final bool isFavorite;
  final String subMenu;

  Restaurant({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.isFavorite,
    required this.subMenu,
  });
}

final List<Restaurant> ListRestaurant = [
  Restaurant(
      id: 1,
      name: 'Cafe Bandungan',
      price: 'jl.barga no.56',
      image: 'assets/menu1.jpg',
      isFavorite: false,
      subMenu: 'restaurant_box'),
  Restaurant(
      id: 2,
      name: 'Cafe Alas Tuo',
      price: 'jl.soedirman no 77',
      image: 'assets/menu2.jpg',
      isFavorite: true,
      subMenu: 'restaurant_box'),
  Restaurant(
      id: 3,
      name: 'Resto Laper poll',
      price: 'jl.kenanga no 03',
      image: 'assets/menu3.jpg',
      isFavorite: false,
      subMenu: 'restaurant_box'),
  Restaurant(
      id: 4,
      name: 'Cafe Mangan Enak',
      price: 'jl. gatot subroto no 4',
      image: 'assets/menu4.jpg',
      isFavorite: true,
      subMenu: 'restaurant_box'),
  Restaurant(
      id: 5,
      name: 'Kitchen Open',
      price: 'jl.lumbir no 67',
      image: 'assets/menu5.jpg',
      isFavorite: true,
      subMenu: 'restaurant_box'),
  Restaurant(
      id: 6,
      name: 'Cafe Popeyeee',
      price: 'jl.teratai no 89',
      image: 'assets/menu6.jpg',
      isFavorite: false,
      subMenu: 'restaurant_box'),
];
