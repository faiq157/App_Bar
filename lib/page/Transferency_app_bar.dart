import 'package:flutter/material.dart';
class transApp_Bar extends StatelessWidget {
  const transApp_Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Transfarent AppBar"),
        centerTitle: true,
        leading: BackButton(),
        actions: [
          IconButton(icon: Icon(Icons.search),
          onPressed: (){},
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom:Radius.circular(16))
        ),
        backgroundColor: Colors.grey.withOpacity(0.2),
        elevation: 0,
      ),
      body: Image.network('https://images.pexels.com/photos/974266/pexels-photo-974266.jpeg?auto=compress&cs=tinysrgb&w=600'
      ,fit: BoxFit.cover,
      width: double.infinity,
        height: double.infinity,
      ),

    );
  }
}
