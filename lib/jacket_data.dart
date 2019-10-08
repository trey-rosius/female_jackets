import 'dart:ui';

class  Jacket {
  final int id;
  final String title;
  final String price;
  final String image;


  Jacket({this.id, this.title, this.price,this.image});

  String get asset => 'assets/images/$image.png';

}

final List<Jacket> jackets = [
  Jacket(
      id: 1,
      title: 'Bike Jacket Softshell Warm',

      price:"\$99",
      image: 'green',
),
  Jacket(
    id: 2,
    title: 'Pink Hoody Merino',

    price:"\$80",
    image: 'pink',
  ),
  Jacket(
    id: 3,
    title: 'Hooded Jacket Classic',

    price:"\$140",
    image: 'deep_green',
  ),
  Jacket(
    id: 4,
    title: 'Red Woman Jacket',

    price:"\$115",
    image: 'red',
  ),



];