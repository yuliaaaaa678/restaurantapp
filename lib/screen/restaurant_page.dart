import 'package:app_restaurant/screen/restaurant_detail.dart';
import 'package:flutter/material.dart';

import '../data/restaurant.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFAF8),
      body: ListView(
        children: [
          const SizedBox(
            height: 15.0,
          ),
          Container(
            padding: const EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                return _buildCard(ListRestaurant[index], context);
              },
              itemCount: ListRestaurant.length,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }

  Widget _buildCard(
    Restaurant restaurant,
    context,
  ) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return RestaurantDetail(
                assetpath: restaurant.image,
                cookiename: restaurant.name,
                cookieprice: restaurant.price);
          }));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 3.0,
                blurRadius: 5.0,
              )
            ],
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    restaurant.isFavorite
                        ? const Icon(
                            Icons.favorite,
                            color: Color.fromARGB(255, 239, 50, 50),
                          )
                        : const Icon(
                            Icons.favorite_border,
                            color: Color.fromARGB(255, 241, 15, 15),
                          )
                  ],
                ),
              ),
              Hero(
                tag: restaurant.image,
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(restaurant.image),
                          fit: BoxFit.contain)),
                ),
              ),
              Text(
                restaurant.name,
                style: const TextStyle(
                  color: Color.fromARGB(255, 141, 14, 135),
                  fontFamily: 'Varela',
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(height: 7.0),
              Text(
                ' ${restaurant.price}',
                style: TextStyle(
                    color: Colors.black, fontFamily: 'Varela', fontSize: 11.0),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: const Color(0xFFEBEBEB),
                  height: 1.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on_outlined,
                          color: Color.fromARGB(255, 29, 161, 62),
                          size: 16,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'acces location',
                          style: TextStyle(
                            fontFamily: 'Varela',
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          '4.6',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
