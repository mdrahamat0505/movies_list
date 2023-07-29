import 'package:flutter/material.dart';

import 'package:movies_list/helpers/hex_color.dart';

Drawer sideDrawer() {
  return Drawer(
    width: 24,
    backgroundColor: hexToColor('#000000'),
    // backgroundColor: Colors.black12,
    child: ListView(
      padding: const EdgeInsets.symmetric(vertical: 50),
      children: <Widget>[
        const Column(
          children: [
            Text(
              'Test App',
              style: TextStyle(color: Colors.blueAccent, fontSize: 20),
            ),
            SizedBox(height: 20),
          ],
        ),
        Row(
          children: [
            MaterialButton(
              child: const Text(
                'User Profile',
                style: TextStyle(fontSize: 15),
              ),
              onPressed: () async {
                //  Get.to(() => UserProfile());
              },
            ),
          ],
        ),
        Row(
          children: [
            MaterialButton(
              child: const Text(
                'SignOut',
                style: TextStyle(fontSize: 15),
              ),
              onPressed: () async {
                // cont.userId.value = '';
                // cont.password.value = '';
                // final logIn = Hive.box('logIn');
                // logIn.clear();
                // Get.offAll(() => const LoginScreen());
                // _auth.signOut();
              },
            ),
          ],
        ),
      ],
    ),
  );
}
