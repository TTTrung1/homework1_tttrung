import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: Images());
  }
}

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: TextButton(
            onPressed: () {},
            child: const Text(
              'Back',
              style: TextStyle(color: Colors.green),
            )),
        title: const Center(
            child: Text(
          'Images',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
        )),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text('Next', style: TextStyle(color: Colors.green)))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 30, right: 5, left: 5, bottom: 5),
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: CupertinoColors.systemGrey5),
                ),
                Container(
                  width: 250,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: CupertinoColors.systemGrey5),
                )
              ],
            ),
            const Divider(
              color: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 360,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: CupertinoColors.systemGrey5),
                )
              ],
            ),
            const Divider(
              color: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 175,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: CupertinoColors.systemGrey5),
                ),
                Container(
                  width: 175,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: CupertinoColors.systemGrey5),
                )
              ],
            ),
            const Divider(
              color: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 250,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: CupertinoColors.systemGrey5),
                ),
                Container(
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: CupertinoColors.systemGrey5),
                )
              ],
            ),
            const Divider(
              color: Colors.white,
            ),
          ],
        ),
      ),
      bottomNavigationBar: navBar(),
    );
  }
}

Widget navBar() {
  return BottomNavigationBar(type: BottomNavigationBarType.fixed, items: const [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.circle,
          color: Colors.green,
          size: 30,
        ),
        label: ''),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.circle,
          size: 30,
          color: CupertinoColors.systemGrey3,
        ),
        label: ''),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.circle,
          size: 30,
          color: CupertinoColors.systemGrey3,
        ),
        label: ''),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.circle,
          size: 30,
          color: CupertinoColors.systemGrey3,
        ),
        label: ''),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.circle,
          size: 30,
          color: CupertinoColors.systemGrey3,
        ),
        label: ''),
  ]);
}
