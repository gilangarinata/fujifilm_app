import 'package:flutter/material.dart';
import 'package:fujifilm_app/components/custom_dash_line.dart';

import 'detail_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {


  Widget buildCardWidget(){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen()));
      },
      child: Container(
        height: 240,
        child: Stack(
          children: [
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Color(0xffF7D689),
                child: Container(
                  width: double.infinity,
                  height: 210,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Image.asset(
                  "assets/yellow_camera.png",
                  width: 160,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Unlimited Edition\nIntax Mini 9",
                      style: Theme.of(context).textTheme.titleLarge?.merge(
                          TextStyle(color: Colors.white, fontSize: 24)),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "\$49.99",
                      style: Theme.of(context).textTheme.titleLarge?.merge(
                          TextStyle(color: Colors.white, fontSize: 28)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(), primary: Colors.white),
                      child: const Text(
                        "Buy",
                        style: TextStyle(color: Color(0xffF7D689)),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/logo.png",
          width: 120,
        ),
        centerTitle: true,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffFF5944),
            ),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                Icons.menu,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff434343),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.card_travel,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomPaint(
              painter: CustomDashLine(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 240,
            child: Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Color(0xffA6D3F2),
                    child: Container(
                      width: double.infinity,
                      height: 210,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/blue_camera_2.png",
                        width: 100,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset(
                            "assets/blue_camera_1.png",
                            width: 140,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "10 % Discount",
                          style: Theme.of(context).textTheme.titleLarge?.merge(
                              TextStyle(color: Colors.white, fontSize: 28)),
                        ),
                        Text(
                          "Grab yours one\ntoday",
                          style: Theme.of(context).textTheme.titleLarge?.merge(
                              TextStyle(color: Colors.white, fontSize: 24)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(), primary: Colors.white),
                          child: const Text(
                            "Explore",
                            style: TextStyle(color: Color(0xffA6D3F2)),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fujifilm",
                        style: Theme.of(context).textTheme.bodyMedium?.merge(
                          TextStyle(fontSize: 20)
                        ),
                      ),
                      Text(
                        "Cameras",
                        style: Theme.of(context).textTheme.titleLarge?.merge(
                            TextStyle(fontSize: 26)
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.search, color: Colors.white,),
                        hintText: "Search",
                        fillColor: Colors.black),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          buildCardWidget()
        ],
      ),
    );
  }
}
