import 'package:app_restaurant/screen/restaurant_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: const Text(
          'App Restaurant',
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 20.0),
        children: [
          const SizedBox(height: 15.0),
          const Text(
            'Restaurant Indonesia',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 42.0,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15.0),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.black,
            labelColor: Color.fromARGB(250, 10, 10, 9),
            isScrollable: true,
            labelPadding: const EdgeInsets.only(right: 25),
            unselectedLabelColor: const Color(0XFFCDCDCD),
            tabs: const [
              Tab(
                child: Text(
                  'Pilihan',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: const [
                RestaurantPage(),
                RestaurantPage(),
                RestaurantPage(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 73, 42, 133),
        child: const Icon(Icons.search),
      ),
    );
  }
}
