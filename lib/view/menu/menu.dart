import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zeus/view/row.dart';
import 'package:zeus/view/row1.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future _showBottomPage() async {
    return showModalBottomSheet(
      context: context,
      builder: (
        _,
      ) {
        return Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
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
                                      icon: Icon(Icons.qr_code),
                                      onPressed: () {},
                                      color: Colors.blue,
                                      iconSize: 110.0,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Scan",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
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
                                          icon: Icon(Icons.payment),
                                          onPressed: () {},
                                          color: Colors.blue,
                                          iconSize: 110.0,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Pay",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    RowSection(),
                    RowSection2(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          elevation: 0.0,
          title: Text("PayMee"),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
            PopupMenuButton(
              itemBuilder: (
                _,
              ) {
                return ["Transactions", "History", "Cards"].map((value) {
                  return PopupMenuItem(
                    child: Text(value),
                    value: value,
                  );
                }).toList();
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            margin: EdgeInsets.all(10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(17.0)),
            ),
            elevation: 11,
            child: Container(
              width: 420.0,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(17.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: _showBottomPage,
          backgroundColor: Colors.black,
          child: Icon(FontAwesomeIcons.wallet, color: Colors.white),
        ),
      ),
    );
  }
}
