import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const ProfilePosts(),
    );
  }
}

class ProfilePosts extends StatefulWidget {
  const ProfilePosts({super.key});

  @override
  State<ProfilePosts> createState() => _ProfilePostsState();
}

class _ProfilePostsState extends State<ProfilePosts> {
  int _selectedIndex = 1;

  changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        leadingWidth: 80,
        leading: TextButton(
          onPressed: () {},
          child: const Text(
            'Settings',
            style: TextStyle(color: Colors.white),
          ),
        ),
        title: const Center(
          child: Text(
            'Profile',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child:
                  const Text('Log out', style: TextStyle(color: Colors.white)))
        ],
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: 200,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Plink',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'A mantra goes here',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, left: 10, right: 10),
                    child: CustomSlidingSegmentedControl<int>(
                      isStretch: true,
                      initialValue: 1,
                      children: {
                        1: Text(
                          'Posts',
                          style: TextStyle(
                              color: _selectedIndex == 1
                                  ? Colors.green
                                  : CupertinoColors.systemGrey3,
                              fontWeight: FontWeight.w500),
                        ),
                        2: Text('Photos',
                            style: TextStyle(
                                color: _selectedIndex == 2
                                    ? Colors.green
                                    : CupertinoColors.systemGrey3,
                                fontWeight: FontWeight.w500))
                      },
                      onValueChanged: (i) {
                        changeIndex(i);
                      },
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: CupertinoColors.systemGrey5),
                      thumbDecoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                      height: 280,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 5, right: 15),
                        child: _selectedIndex == 1
                            ? listViewPost()
                            : listViewPhotos(),
                      ))
                ],
              ),
              const Positioned(
                top: 100,
                child: CircleAvatar(
                  maxRadius: 60,
                  backgroundImage: AssetImage('assets/Plink.png'),
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: navBar(),
    );
  }
}

Widget listViewPost() {
  return ListView(
    children: [for (int i = 0; i < 5; i++) children()],
  );
}

Widget listViewPhotos() {
  return ListView(
    children: [
      Container(
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: CupertinoColors.systemGrey5),
      ),
      const SizedBox(
        height: 5,
      ),
      const Text(
        'Header',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
      ),
      Container(
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: CupertinoColors.systemGrey5),
      ),
    ],
  );
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

Widget children() {
  return Row(
    children: [
      Container(
        height: 40,
        width: 40,
        color: CupertinoColors.systemGrey5,
      ),
      const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Header',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text('8m ago', style: TextStyle(fontWeight: FontWeight.w300)),
                ],
              ),
            ),
          ),
          SizedBox(
              width: 300,
              child: Text(
                'He\'ll want to use your yacht',
                textAlign: TextAlign.start,
              )),
          Divider(
            thickness: 1,
            color: CupertinoColors.systemGrey3,
          )
        ],
      )
    ],
  );
}
