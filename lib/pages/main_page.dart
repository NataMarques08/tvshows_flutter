import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movies_catalog/constants/colors_app.dart';

import '../rest/model/model_movie.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


  PageController pageController = PageController(initialPage: 0,viewportFraction: 0.9);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kColorPrimary,
        body: Stack(
          // for items
          children: [
            SafeArea(
                child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //top container
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Hi, Lucia!',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/imagens/profile.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Positioned(
                                right: 2,
                                top: 2,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: kButtonColor),
                                  height: 10,
                                  width: 10,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //search bar
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: kSearchBoxColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.magnifyingGlass,
                            color: Colors.white30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Search',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white30),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: Text(
                      'For you',
                      style: TextStyle(
                          color: Colors.white54,
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  forYourCardLayout(),
                ],
              ),
            )),
            // for bottomnav bar
            Positioned(child: Container())
          ],
        ));
  }

  //for your cards layout
  Widget forYourCardLayout(List<MovieModel> movieList){
    return SizedBox(
      child: PageView.builder(
        controller: pageController,
        itemCount: movieList.length,
        itemBuilder: (context,index){
          return
        },
        ),
    );
  }

}
