import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {},
          child: const Text('Back'),
        ),
        actions: [TextButton(onPressed: () {}, child: const Text('Filter'))],
        title: const Center(child: Text('Feed')),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                  hintText: 'Search',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                for (int i = 0; i < 4; i++) children(),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: CupertinoColors.systemGrey5,
                borderRadius: BorderRadius.circular(10)),
            height: 200,
            width: 350,
          )
        ],
      ),
      bottomNavigationBar: navBar(),
    );
  }
}

Widget navBar() {
  return BottomNavigationBar(type: BottomNavigationBarType.fixed,items: const [
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

//
// Widget children() {
//   return Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         Container(
//           height: 40,
//           width: 40,
//           color: CupertinoColors.systemGrey5,
//         ),
//         const Column(children: [
//             Row(
//               children: [
//                 Text(
//                   'Header',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.start,
//                 ),
//                 Text('8m ago', style: TextStyle(fontWeight: FontWeight.w300), textAlign: TextAlign.end,)
//               ],
//             ),
//             Text('He\'ll want to use this yacht'),
//             Divider(
//               color: CupertinoColors.systemGrey5,
//             )
//           ],
//         )
//       ],
//     ),
//   );
// }
