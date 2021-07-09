import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsoft_test/constants/styles.dart';

class WidgetDrawer extends StatefulWidget {
  WidgetDrawer({Key? key}) : super(key: key);

  @override
  _WidgetDrawerState createState() => _WidgetDrawerState();
}

class _WidgetDrawerState extends State<WidgetDrawer> {
  @override
  Widget build(BuildContext context) {
    return _buildDrawer();
  }

  Widget _buildDrawer(){
    return Drawer(
      child: ListView(
        /*padding: EdgeInsets.zero,*/
        children: <Widget>[

          ListTile(
            title: const Text('Newsoft', style: fontHeaderStyle,),
            onTap: () {},
          ),

          ListTile(
            title: const Text('Login', style: fontNormalStyle),
            onTap: () {},
          ),

          ListTile(
            title: const Text('Search', style: fontNormalStyle),
            onTap: () {},
          ),

          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                    padding:EdgeInsets.zero,
                    child: const Icon(Icons.close, size: 24)
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Close', style: fontNormalStyle),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
