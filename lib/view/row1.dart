import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RowSection2 extends StatelessWidget {
  const RowSection2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, top: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Card(
            color: Colors.white70,
            elevation: 25.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(FontAwesomeIcons.car),
                      onPressed: () {},
                      color: Colors.blue,
                      iconSize: 60.0,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Vechicle",
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Card(
                color: Colors.white70,
                elevation: 11,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(FontAwesomeIcons.yenSign),
                          onPressed: () {},
                          color: Colors.blue,
                          iconSize: 60.0,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Exchange",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Card(
                color: Colors.white70,
                elevation: 11,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(FontAwesomeIcons.ethereum),
                          onPressed: () {},
                          color: Colors.blue,
                          iconSize: 60.0,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Crypto",
                        ),
                      ],
                    ),
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
