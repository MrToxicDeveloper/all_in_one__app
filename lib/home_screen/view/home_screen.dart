import 'package:all_in_one_app/home_screen/provider/home_provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List img = [
    "lib/utils/images/amzon.jpg",
    "lib/utils/images/wiki.png",
  ];

  HomeProvider? homeProviderTrue;
  HomeProvider? homeProviderFalse;

  @override
  Widget build(BuildContext context) {
    homeProviderFalse = Provider.of<HomeProvider>(context, listen: false);
    homeProviderTrue = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        // body: ListView.builder(
        //   itemBuilder: (context, index) {
        //     return InkWell(
        //       onTap: () {
        //         Navigator.pushNamed(context, 'web',arguments: index);
        //         homeProviderFalse!.initWeb(homeProviderTrue!.eweb[index]);
        //       },
        //       child: Text("${homeProviderTrue!.ename[index]}"),
        //     );
        //   },
        //   itemCount: 3,
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 3,
                    ),
                  ],
                ),
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.menu),
                        SizedBox(
                          width: 17,
                        ),
                        Text(
                          "Search for websites",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Icon(Icons.mic_none),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                // decoration: BoxDecoration(
                //   // boxShadow:
                // ),
                child: CarouselSlider.builder(
                  itemCount: img.length,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            spreadRadius: 0.5,
                            blurRadius: 1,
                          ),
                        ]
                      ),
                      child: Image.asset("${img[index]}"),
                    );
                  },
                  options: CarouselOptions(
                    // aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    // viewportFraction: 1.5,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(seconds: 2),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Ecommerce",
                  // style: TextStyle(color: Colors.black),
                ),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'web');
                          homeProviderFalse!
                              .initWeb(homeProviderTrue!.eweb[index]);
                        },
                        child: homeProviderFalse!.WebSite(
                            homeProviderFalse!.ename[index],
                            homeProviderFalse!.elogo[index]));
                  },
                  itemCount: 3,
                ),
              ),
              ListTile(
                title: Text(
                  "For Education",
                  // style: TextStyle(color: Colors.black),
                ),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'web');
                          homeProviderFalse!
                              .initWeb(homeProviderTrue!.eweb2[index]);
                        },
                        child: homeProviderFalse!.WebSite(
                            homeProviderFalse!.ename2[index],
                            homeProviderFalse!.elogo2[index]));
                  },
                  itemCount: 3,
                ),
              ),
              ListTile(
                title: Text(
                  "OTT platforms",
                  // style: TextStyle(color: Colors.black),
                ),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'web');
                          homeProviderFalse!
                              .initWeb(homeProviderTrue!.eweb3[index]);
                        },
                        child: homeProviderFalse!.WebSite(
                            homeProviderFalse!.ename3[index],
                            homeProviderFalse!.elogo3[index]));
                  },
                  itemCount: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
