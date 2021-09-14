import 'package:flutter/material.dart';
import 'package:eccommerce_rf/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
   static String tag = '/home';
  late int selectedPage = 0;
  late PageController pc;
  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: selectedPage);
  }

  setPaginaAtual(myPage) {
    setState(() {
      this.selectedPage = myPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
      ),
      body: PageView(
        controller: pc,
        children: [
          
        ],
        onPageChanged: setPaginaAtual,
      ),
    );
  }
}