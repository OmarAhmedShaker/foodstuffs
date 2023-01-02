import 'package:flutter/material.dart';


import '../widgets/icon_botton.dart';
import '../widgets/show_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    bool isSelected = true;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 35),
                child: Row(
                  children: [
                    Text(
                      'Walmart',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w700,
                          fontSize: 29),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                      Icons.flare_sharp,
                      color: Colors.greenAccent,
                      size: 30,
                    ),
                    Spacer(),
                    Container(
                        height: 39,
                        width: 39,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 2),
                            borderRadius: BorderRadius.circular(30)),
                        child: Icon(
                          Icons.local_mall,
                          color: Colors.blue,
                        )),
                    SizedBox(
                      width: 18,
                    ),
                    Container(
                        height: 39,
                        width: 39,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.greenAccent, width: 2),
                            borderRadius: BorderRadius.circular(30)),
                        child: Icon(
                          Icons.menu,
                          size: 30,
                          color: Colors.greenAccent,
                        )),
                    SizedBox(
                      width: 25,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Text(
                  'Collections',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13),
                child: Container(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      IconBotton(
                          icon: Icon(
                            Icons.star,
                            color: Colors.lightBlueAccent,
                            size: 29,
                          ),
                          title: 'star'),
                      IconBotton(
                          icon: Icon(
                            Icons.food_bank,
                            color: Colors.lightBlueAccent,
                            size: 29,
                          ),
                          title: 'foof bank'),
                      IconBotton(
                          icon: Icon(
                            Icons.help,
                            color: Colors.lightBlueAccent,
                            size: 29,
                          ),
                          title: 'help'),
                      IconBotton(
                          icon: Icon(
                            Icons.liquor,
                            color: Colors.lightBlueAccent,
                            size: 29,
                          ),
                          title: 'crogrey'),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  'Reccommended',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Container(
                height: 435,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ShowImage(
                      image: 'images/lona.png',
                      title: 'Best food lona',
                    ),
                    ShowImage(
                      image: 'images/lona.png',
                      title: 'Best food drink',
                    ),
                    ShowImage(
                      image: 'images/lona.png',
                      title: 'Best food tea',
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Text(
                  'Special offer',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Container(
                height: 222,
                //width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    NewWidget(),
                    NewWidget(),
                    NewWidget(),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              //---
            },
            child: Container(
              height: 200,
              width: 210,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 105, 235, 240),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset('images/lona.png'),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 60),
                child: Text(
                  'iPone 11',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 88),
                child: Text(
                  '64GB',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.star,
                    size: 33,
                    color: Colors.greenAccent,
                  ),
                  Icon(
                    Icons.star,
                    size: 33,
                    color: Colors.greenAccent,
                  ),
                  Icon(
                    Icons.star,
                    size: 33,
                    color: Colors.greenAccent,
                  ),
                  Icon(
                    Icons.star,
                    size: 33,
                    color: Colors.greenAccent,
                  ),
                  Icon(
                    Icons.star,
                    size: 33,
                    color: Colors.greenAccent,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 9, left: 20),
                child: Row(
                  children: [
                    Text(
                      '\$10.00',
                      style: TextStyle(fontSize: 25),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          height: 40,
                          width: 110,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Text(
                              'Add to card',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
