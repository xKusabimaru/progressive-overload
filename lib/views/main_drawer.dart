import 'package:flutter/material.dart';
import 'package:progressive_overload/services/auth_service.dart';
import 'package:progressive_overload/wrapper.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text("title 1"),
            onTap: () {
              print("t1");
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text("title 2"),
            onTap: () {
              print("t2");
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text("sign out"),
            onTap: () async {
              await AuthService.signOut();
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Wrapper(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
