import 'package:flutter/material.dart';
import 'Calls.dart';
import 'Camera.dart';
import 'Chat.dart';
import 'Status.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Whatsapp',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
            color: Colors.white,
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
            Tab(
                child: Text(
              "CHATS",
              style: TextStyle(color: Colors.white),
            )),
            Tab(
                child: Text(
              "STATUS",
              style: TextStyle(color: Colors.white),
            )),
            Tab(
                child: Text(
              "CALLS",
              style: TextStyle(color: Colors.white),
            )),
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        Camera(),
        Chat(),
        Status(),
        Calls(),
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.message),
        onPressed: () {},
      ),
    );
  }
}
