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
      home: Rating(),
    );
  }
}

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 340,
              height: 430,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 40, left: 10, right: 10, bottom: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < 5; i++)
                          const Icon(
                            Icons.star_rate,
                            color: Colors.yellow,
                            size: 40,
                          )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Center(
                      child: Text(
                        'Rate our app',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 30),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. '
                      'Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. ',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 35),
                    ElevatedButton(onPressed: (){},style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.green)
                    ), child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 260,
                        child: const Text('I love it!',textAlign: TextAlign.center,))),
                    const SizedBox(height: 15,),
                    TextButton(onPressed: (){}, child: const Text('Don\'t like the app? Let us know',style: TextStyle(color: Colors.green),))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
