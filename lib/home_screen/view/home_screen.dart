import 'package:all_in_one_app/home_screen/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        body: Column(
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
                            color: Colors.black54, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Icon(Icons.mic_none),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Ecommerce websites",
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
            // ListTile(
            //   title: Text(
            //     "Recommended for you",
            //     // style: TextStyle(color: Colors.black),
            //   ),
            //   trailing: Icon(Icons.arrow_forward_outlined),
            // ),
            // Container(
            //   height: 200,
            //   width: double.infinity,
            //   child: ListView.builder(
            //     shrinkWrap: false,
            //     scrollDirection: Axis.horizontal,
            //     itemBuilder: (context, index) {
            //       return
            //     },
            //     itemCount: 4,
            //   ),
            // ),
            // ListTile(
            //   title: Text(
            //     "Non-stop action",
            //     // style: TextStyle(color: Colors.black),
            //   ),
            //   trailing: Icon(Icons.arrow_forward_outlined),
            // ),
            // Container(
            //   height: 200,
            //   width: double.infinity,
            //   child: ListView.builder(
            //     shrinkWrap: false,
            //     scrollDirection: Axis.horizontal,
            //     itemBuilder: (context, index) {
            //       return
            //     },
            //     itemCount: 4,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
