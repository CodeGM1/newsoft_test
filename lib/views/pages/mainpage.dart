import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsoft_test/constants/styles.dart';
import 'package:newsoft_test/views/widgets/appbar.dart';
import 'package:newsoft_test/views/widgets/bottombar.dart';
import 'package:newsoft_test/views/widgets/drawer.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,

      drawer: WidgetDrawer(),

      body: Stack(
        children: [
          Center(
            child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [

                    Expanded(
                      flex: 1,
                      child: WidgetAppBar(),
                    ),

                    Expanded(
                      flex: 8,
                      child: Container(
                        color: Colors.white,

                      ),
                    ),

                    Expanded(
                      flex: 1,
                      child: WidgetBottomBar(),
                    )


                  ],
                )
            ),
          ),
          Positioned(
            left: 10,
            top: 20,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.white),
                  onPressed: (){
                    scaffoldKey.currentState!.openDrawer();
                  },
                ),
                const Text('Newsoft Demo', style: fontHeaderStyle),
              ],

            )
          )
        ],

      ),

    );
  }
}
