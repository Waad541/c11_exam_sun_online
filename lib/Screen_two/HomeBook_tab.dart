import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'BestSeller_container.dart';
import 'Category_choice.dart';
import 'See_more.dart';

class HomebookTab extends StatefulWidget {
  const HomebookTab({super.key});

  @override
  State<HomebookTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomebookTab> {
  int selected=0;
  @override
  Widget build(BuildContext context) {
    return ListView(
        children:[
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SeeMore(),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CategoryChoice(text: 'Art'),
                      SizedBox(width: 10),
                      CategoryChoice(text: 'Business'),
                      SizedBox(width: 10),
                      CategoryChoice(text: 'Comedy'),
                      SizedBox(width: 10),
                      CategoryChoice(text: 'Drama'),
                      SizedBox(width: 10),
                      CategoryChoice(text: 'Action'),
                    ],
                  ),
                ),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended For You',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SeeMore(),
                  ],
                ),
                SizedBox(height: 18),
                Container(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Image.asset('assets/images/silence.png',),
                      SizedBox(width: 30),
                      Image.asset('assets/images/Image 1.png'),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best Seller',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SeeMore(),
                  ],
                ),
                SizedBox(height: 20),
                CarouselSlider.builder(
                    itemCount: 3,
                    itemBuilder: (context, index, realIndex) {
                      return BestsellerContainer();
                    },
                    options: CarouselOptions(
                        height: 144,
                        enlargeCenterPage: true,
                        onPageChanged: (index,reason){
                          setState(() {

                          });
                          selected=index;
                        },
                        enableInfiniteScroll: false,
                    )),
                SizedBox(height: 6,),
                BuildIndicator(),
              ],
            ),
          ),
        ]
    );
  }

  Widget BuildIndicator() => AnimatedSmoothIndicator(
    activeIndex: selected,
    count: 3,
    effect: JumpingDotEffect(
        dotWidth: 8,
        dotHeight: 8,
        activeDotColor: Color(0xff4838D1)
    ),

  );
}
