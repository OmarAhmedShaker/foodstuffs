import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/details.screen.dart';

class ShowImage extends StatefulWidget {
  final String image;
  final String title;

  const ShowImage({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  State<ShowImage> createState() => _ShowImageState();
}

class _ShowImageState extends State<ShowImage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(DetailsScreen.screenRoute);
                },
                child: Container(
                  height: 245,
                  width: 280,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(14)),
                  child: Image.asset(
                    widget.image,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 230, top: 25),
                height: 45,
                width: 43,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: FloatingActionButton(
                   heroTag:null,
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.greenAccent,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 100, top: 10, bottom: 10),
            child: Text(
              widget.title,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Colors.grey),
            ),
          ),
          Container(
            // color: Colors.amber,
            margin: EdgeInsets.only(right: 19),
            width: 245,
            child: Row(
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
                  color: Color.fromARGB(255, 166, 236, 233),
                ),
                Text(
                  '4.0',
                  style: TextStyle(color: Colors.grey, fontSize: 24),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50, top: 13),
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
          )
        ],
      ),
    );
  }
}
