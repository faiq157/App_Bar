import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:prac_app/main.dart';
class Simple_app_bar extends StatelessWidget {
  const Simple_app_bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(MyApp.title),
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              print("Hello");
            },
          ),
          actions: [
            IconButton(onPressed: () {
              print("Notify ME");
            },
                icon: const Icon(Icons.notifications_none)),
            IconButton(onPressed: () {
              print("search");
            },
                icon: const Icon(Icons.search))
          ],
          titleSpacing: 0,
          backgroundColor: Colors.red,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.pink, Colors.redAccent],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft
                )
            ),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 4,
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home",),
              Tab(icon: Icon(Icons.star), text: "Star",),
              Tab(icon: Icon(Icons.face), text: "face",),
              Tab(icon: Icon(Icons.settings), text: "Setting",)
            ],
          ),
        ),
        body: TabBarView(
          children: [
            bulidPage('Home Page'),
            bulidPage('Feed Page'),
            bulidPage('Profile Page'),
            bulidPage('Setting Page'),

          ],
        ),
      ),
    );
  }
  Widget bulidPage(String text)=>Center(
    child: Text(text,style: const TextStyle(fontSize: 20),),
  );
}


