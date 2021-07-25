import 'package:flutter/material.dart';

class RowSection extends StatelessWidget {
  const RowSection({Key key}) : super(key: key);

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
                      icon: Icon(Icons.send),
                      onPressed: () {},
                      color: Colors.blue,
                      iconSize: 60.0,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Transfer",
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
                          icon: Icon(Icons.smartphone),
                          onPressed: () {},
                          color: Colors.blue,
                          iconSize: 60.0,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Top-Up",
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
                          icon: Icon(Icons.money_off_rounded),
                          onPressed: () {},
                          color: Colors.blue,
                          iconSize: 60.0,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Fund",
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
