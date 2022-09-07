import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RestaurantDetail extends StatelessWidget {
  final String assetpath;
  final String cookieprice;
  final String cookiename;

  const RestaurantDetail({
    Key? key,
    required this.assetpath,
    required this.cookiename,
    required this.cookieprice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Detail',
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 15.0),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Pilihan',
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 42.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Hero(
                tag: assetpath,
                child: Container(
                  height: 250,
                  width: 200,
                  decoration: BoxDecoration(
                    // border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(assetpath),
                    ),
                  ),
                )),
          ),
          const SizedBox(height: 20.0),
          Center(
            child: Text(
              ' $cookieprice',
              style: const TextStyle(
                fontFamily: 'Varela',
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Center(
            child: Text(
              cookiename,
              style: const TextStyle(
                  color: Colors.black, fontFamily: 'Varela', fontSize: 24.0),
            ),
          ),
          const SizedBox(height: 20.0),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 50.0,
              child: const Text(
                'Hidangan Indonesia adalah salah satu tradisi kuliner yang paling kaya di dunia, dan penuh dengan cita rasa yang kuat.',
                maxLines: 4,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
            ),
          ),
        ],
      ),
    );
  }
}
