import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_app/drawer.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  List urlImages = [
    'https://media-cdn.tripadvisor.com/media/photo-s/14/ac/66/b7/sunrise-burger.jpg',
    'https://b.zmtcdn.com/data/pictures/9/19670469/9cbc4b9af4e62e517d84e10931b66f9d.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfr6ImmzxnTT0nS5yazmQclzm1aRjQ6uHj-Q&usqp=CAU',
    'https://b.zmtcdn.com/data/pictures/chains/6/120096/653b44f123b25c71ae8595b4e6e49abd_featured_v2.jpg',
    'https://iceburg.co.uk/wp-content/uploads/2020/10/ChicknBurg.png',
    'https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/lli1crsijjqopfjsszvz'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Fast Food",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        backgroundColor: Colors.grey,
      ),
      drawer: const DeawerPage(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: CarouselSlider.builder(
                  itemCount: urlImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final urlImage = urlImages[index];
                    return buildImages(urlImage, index);
                  },
                  options: CarouselOptions(
                      enlargeCenterPage: true,
                      height: 200,
                      autoPlay: true,
                      viewportFraction: 0.9,
                      reverse: true,
                      autoPlayInterval: const Duration(seconds: 2))),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 270),
              child: Text(
                'Burgers',
                style: TextStyle(fontSize: 32, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _listItam(
                    images:
                        'https://media-cdn.tripadvisor.com/media/photo-s/14/ac/66/b7/sunrise-burger.jpg',
                    title: 'Burgers',
                    sub: '\$10',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  _listItam(
                    images:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfr6ImmzxnTT0nS5yazmQclzm1aRjQ6uHj-Q&usqp=CAU',
                    title: 'Floating burger',
                    sub: '\$9',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  _listItam(
                    images:
                        'https://iceburg.co.uk/wp-content/uploads/2020/10/ChicknBurg.png',
                    title: 'Food burger',
                    sub: '\$12',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  _listItam(
                    images:
                        'https://i2-prod.mirror.co.uk/incoming/article12042753.ece/ALTERNATES/s1200c/signature-bbq-img-v1JPG.jpg',
                    title: 'Burger and Fries',
                    sub: '\$15',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 300),
              child: Text(
                'Pizza',
                style: TextStyle(fontSize: 32, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _listItam1(
                    images1:
                        'https://b.zmtcdn.com/data/pictures/9/19670469/9cbc4b9af4e62e517d84e10931b66f9d.jpg',
                        name: 'pizza'
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  _listItam1(
                    images1:
                        'https://b.zmtcdn.com/data/pictures/chains/6/120096/653b44f123b25c71ae8595b4e6e49abd_featured_v2.jpg',
                        name: 'chhess pizza'
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  _listItam1(
                    images1:
                        'https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/lli1crsijjqopfjsszvz',
                        name: 'panir pizza',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  _listItam1(
                    images1:
                        'https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/lli1crsijjqopfjsszvz',
                        name: 'Tomatoes pizza'
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _listItam({String? images, String? title, String? sub}) {
    return Card(
      child: Container(
        height: 180,
        width: 150,
        child: Column(
          children: [
            Image.network(
              images!,
              width: 150,
              height: 120,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(title!),
            const SizedBox(
              height: 5,
            ),
            Text(sub!),
          ],
        ),
      ),
    );
  }

  Widget buildImages(String urlImage, int index) {
    return Container(
      width: 350,
      color: Colors.grey,
      child: Image.network(
        urlImage,
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _listItam1({String? images1,String? name, }) {
    return Card(
      child: Container(
        height: 180,
        width: 150,
        child: Column(
          children: [
            Image.network(
              images1!,
              width: 150,
              height: 120,
              fit: BoxFit.cover,
            ),
           const  SizedBox(height: 5,),
           Text(name!)
          ],
        ),
      ),
    );
  }
}
