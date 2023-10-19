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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: BlogPost(),
    );
  }
}

class BlogPost extends StatelessWidget {
  const BlogPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: CupertinoColors.systemGrey5),
              height: 250,
              width: 380,
            ),
            const Divider(
              thickness: 0,
              color: Colors.white,
            ),
            const Text(
              'Post Title Here...',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10,),
            const Text(
              'Author',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 300,
              child: ListView(
                children: const [
                  Text('Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. '
                      'Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. '
                      'Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. '
                      'Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. '
                      'In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. '
                      'Nullam dictum felis eu pede mollis pretium. '
                      'Integer tincidunt. Cras dapibus. '
                      'Vivamus elementum semper nisi. '
                      'Aenean vulputate eleifend tellus. '
                      'Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.'),
                  SizedBox(height: 10,),
                  Text('Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. '
                      'Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. '
                      'Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. '
                      'Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. '
                      'In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. '
                      'Nullam dictum felis eu pede mollis pretium. '
                      'Integer tincidunt. Cras dapibus. '
                      'Vivamus elementum semper nisi. '
                      'Aenean vulputate eleifend tellus. '
                      'Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.'),

                ],
              ),
            )
          ],
        ),
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
