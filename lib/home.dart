import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:solar_system/constants.dart';

import 'data.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [gradientStartColor, gradientEndColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.3, 0.7],
          )),
          child: SafeArea(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  children: [
                    Text(
                      'Explore',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 44,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    DropdownButton(
                      items: [
                        DropdownMenuItem(
                            child: Text(
                          'Solar System',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Color(0x7cdbf1ff),
                          ),
                          textAlign: TextAlign.left,
                        ))
                      ],
                      onChanged: (value) {},
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Image.asset('assets/drop_down_icon.png'),
                      ),
                      underline: SizedBox(),
                    )
                  ],
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(left: 32),
                  height: 400,
                  child: Swiper( 
                      autoplay: true,
                      itemCount: planets.length,
                      itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                      layout: SwiperLayout.STACK,
                      pagination: SwiperPagination(
                        builder: DotSwiperPaginationBuilder(
                          activeSize: 20,
                          space: 8,
                        ),
                      ),
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Column(
                              children: [
                                SizedBox(height: 50),
                                Card(
                                  elevation: 8,
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(32.0),
                                    child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      planets[7-index].name,
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 44,
                        color: const Color(0xff47455f),
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Solar System',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 23,
                        color: primaryTextColor,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 32),
                    Row(
                      children: [
                        Text(
                          'Know more',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 18,
                            color: secondaryTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: secondaryTextColor,
                        )
                      ],
                    )
                  ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Image.asset(planets[7-index].iconImage),
                          ],
                        );
                      },
                    ))
            ],
          ))),
      bottomNavigationBar: Container(
          width: 375,
          height: 103,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(36.0),
            ),
            color: const Color(0xff806ec3),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Image.asset('assets/menu_icon.png'),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset('assets/search_icon.png'),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset('assets/profile_icon.png'),
                onPressed: () {},
              ),
            ],
          )),
    );
  }
}
