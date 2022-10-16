import 'package:flutter/material.dart';

import '../components/custom_dash_line.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
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
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(12)
            ),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black54,
                size: 20,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
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
          Image.asset("assets/yellow_camera_detail.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffF7D689),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/yellow_camera.png", width: 40,),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffF7D689),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/yellow_camera.png", width: 40,),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffF7D689),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/yellow_camera.png", width: 40,),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Stack(
            children: [
              Center(child: Image.asset("assets/triangle_button.png")),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                    child: Text("Full view", style: TextStyle(color: Colors.white),)),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Instax", style: TextStyle(fontSize: 20),),
                    SizedBox(width: 5,),
                    Text("Mini 9", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                        child: Text("You can check your framing with the  mirror next to the lens")),
                  ],
                ),
                SizedBox(height: 10,),
                Text("Read More", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                SizedBox(height: 200,)
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(), primary: Colors.white),
                  child: const Text(
                    "\$49.99",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(), primary: Color(0xffF1BD58)),
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
