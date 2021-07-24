import 'package:flutter/material.dart';
import 'package:zeus/controller/services.dart';
import 'package:zeus/model/photos.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<Comments> _comments;
  bool _isLoading = true;
  @override
  void initState() {
    super.initState();
    ApiServices.getComments().then((comment) {
      setState(() {
        _comments = comment;
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_isLoading ? "Loading" : "Zeus"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: null == _comments ? 0 : _comments.length,
          itemBuilder: (_, int index) {
            Comments comments = _comments[index];
            return Container(
              child: ListBody(
                children: [
                  Card(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: ListTile(
                      title: Text("PostID: ${comments.postId}"),
                      leading: CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.black,
                      ),
                      subtitle: Text("ID: ${comments.id}"),
                      trailing: Icon(Icons.edit),
                    ),
                  ),
                  Card(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: ListTile(
                      title: Text(
                        comments.name,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: Icon(Icons.person),
                      subtitle: Text(
                        comments.email,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(Icons.email),
                    ),
                  ),
                  Card(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: ListTile(
                      title: Text(
                        comments.body,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
