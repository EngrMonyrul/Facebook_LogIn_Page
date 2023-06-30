import 'dart:ui';
import 'package:provider/provider.dart';
import 'package:sharebutton/another_section/components/items.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../provider/favItemProvider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  List items = [
    {
      'name': 'HTML',
      'details':
          'Hyper Text Markup Language - Best And Vast Uses In Web Design And Developing'
    },
    {
      'name': 'CSS',
      'details':
          'Cascading Style Sheet - Best And Vast Uses In Web Design And Developing'
    },
    {
      'name': 'JS',
      'details':
          'JavaScript - Most Uses Programming Language For Web Design And Developing'
    },
    {'name': 'Python', 'details': 'Best Programming Language For All Ai Tools'},
    {
      'name': 'Java',
      'details': 'Best Programming Language For All Apps Development'
    },
    {
      'name': 'C/C++',
      'details': 'Best Programming Language For Game Development And Many More'
    },
    {
      'name': 'PHP',
      'details': 'Best Programming Language For All Web Design And Developing'
    },
    {
      'name': 'Dart',
      'details':
          'Best Programming Language For All Web, App, MS, Linux Etc Design And Developing'
    },
    {'name': 'Bootstrap 5', 'details': 'HTML Most Uses Framework'},
    {'name': 'Tailwind', 'details': 'CSS Most Uses Framework'},
    {'name': 'React JS', 'details': 'JavaScript Most Uses Backend Framework'},
    {'name': 'Django', 'details': 'Python Most Useful Backend Framework'},
    {'name': 'Spring Boot', 'details': 'Java Most Useful Backend Framework'},
    {'name': 'Flutter', 'details': 'Most Useful Dart Framework'},
    {'name': 'Node JS', 'details': 'Most Useful JS Backend Framework'},
    {'name': 'Vue JS', 'details': 'Most Useful JS Backend Framework'},
    {'name': 'SQL', 'details': 'Most Useful Database'},
    {'name': 'MySQL', 'details': 'Similar To SQL'},
    {'name': 'SQLite', 'details': 'Most Useful Database'},
    {'name': 'Firebase', 'details': 'A Database Mostly Use In Flutter'}
  ];

  List pages = ['Lists', 'Favorites'];
  int tabIndex = 0;
  List<int> favItem = [];

  List sliderImages = [
    {
      'id': 1,
      'image':
          'assets/images/1373701-night-sky-moon-forest-scenery-background-digital-art.jpg'
    },
    {'id': 2, 'image': 'assets/images/Cute-Girl-Computer-Wallpaper.jpg'},
    {'id': 3, 'image': 'assets/images/Cute-Girl-Laptop-Wallpaper.jpg'},
    {'id': 4, 'image': 'assets/images/image.jpg'},
    {
      'id': 5,
      'image': 'assets/images/rainbow-galaxy-background-1g0goxhzz3yntjos.jpg'
    },
    {'id': 6, 'image': 'assets/images/rainbow-galaxy-okqebhvadd597yqv.jpg'},
  ];

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: pages.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover),
      ),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text('Favorite Tech'),
            centerTitle: true,
            backgroundColor: Colors.deepPurple,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                title(),
                slider(context),
                const SizedBox(
                  height: 10,
                ),
                tabBar(),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 372,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      itemsList(),
                      favItemsList(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container tabBar() {
    return Container(
      alignment: Alignment.center,
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _tabController.animateTo(index);
              tabIndex = index;
              setState(() {});
            },
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 120,
                  margin: const EdgeInsets.symmetric(horizontal: 38),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: tabIndex == index
                          ? Colors.black.withOpacity(0.3)
                          : Colors.transparent,
                      border: Border.all(color: Colors.black),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Text(
                    pages[index],
                    style: TextStyle(
                      fontSize: 20,
                      color: tabIndex == index ? Colors.white : null,
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Container itemsList() {
    return Container(
      height: 372,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Consumer<FavItem>(
                builder: (context, value, child) {
                  return Container(
                    child: ListTile(
                      leading: IconButton(
                        onPressed: () {
                          if (value.favItems.contains(index)) {
                            value.removeFavItem(index);
                          } else {
                            value.setFavItem(index);
                          }
                          setState(() {});
                        },
                        icon: const Icon(Icons.star),
                        color: value.favItems.contains(index)
                            ? Colors.orange
                            : null,
                      ),
                      title: Text('${items[index]['name']}'),
                      subtitle: Text('${items[index]['details']}'),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Container favItemsList() {
    final itemsValueD = Provider.of<FavItem>(context);
    return Container(
      height: 372,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
          child: ListView.builder(
            itemCount: itemsValueD.favItems.length,
            itemBuilder: (context, index) {
              return Consumer<FavItem>(
                builder: (context, value, child) {
                  return Container(
                    child: ListTile(
                      leading: IconButton(
                        onPressed: () {
                          if (value.favItems.contains(index)) {
                            value.removeFavItem(index);
                          } else {
                            value.setFavItem(index);
                          }
                          setState(() {});
                        },
                        icon: const Icon(Icons.star),
                        color: value.favItems.contains(index)
                            ? Colors.orange
                            : null,
                      ),
                      title: Text('${items[value.favItemsValues[index]]['name']}'),
                      subtitle: Text('${items[value.favItemsValues[index]]['details']}'),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Stack slider(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 1,
          child: CarouselSlider(
            items: sliderImages.map((e) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage(e['image']), fit: BoxFit.fill)),
              );
            }).toList(),
            carouselController: carouselController,
            options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: true,
                aspectRatio: 1.7,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                    //print('inside: $currentIndex');
                  });
                }),
          ),
        ),
        Center(
          child: Positioned(
              top: 6,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: sliderImages.asMap().entries.map((e) {
                    return GestureDetector(
                      onTap: () {
                        carouselController.animateToPage(e.key);
                        setState(() {});
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        height: currentIndex == e.key ? 10 : 10,
                        width: currentIndex == e.key ? 20 : 10,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: currentIndex == e.key
                              ? Colors.deepPurple
                              : Colors.white,
                          borderRadius: currentIndex == e.key
                              ? const BorderRadius.all(Radius.circular(5))
                              : const BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              )),
        )
      ],
    );
  }

  Padding title() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontFamily: 'Times New Roman',
        ),
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TyperAnimatedText('Favorite Apps...',
                speed: const Duration(milliseconds: 100))
          ],
        ),
      )),
    );
  }
}
