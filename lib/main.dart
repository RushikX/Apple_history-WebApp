import 'package:flutter/material.dart';

void main() {
  runApp(AppleHistoryApp());
}

class AppleHistoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apple',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Colors.black,
          ),
        ),
      ),
      home: AppleHistoryHomePage(),
    );
  }
}

class AppleHistoryHomePage extends StatefulWidget {
  @override
  _AppleHistoryHomePageState createState() => _AppleHistoryHomePageState();
}

class _AppleHistoryHomePageState extends State<AppleHistoryHomePage> {
  String selectedSection = 'home';

  void _changeSection(String section) {
    setState(() {
      selectedSection = section;
    });
  }

  Widget _buildContent() {
    if (selectedSection == 'home') {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Apple History',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 30, 720, 0),
              child: Text(
                'The Founding of Apple Computer, Inc.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 15, 250, 0),
              child: Text(
                'Apple Computer, Inc. was founded on April 1, 1976, by college dropouts Steve Jobs and Steve Wozniak, who brought to the new company a vision of changing the way people viewed computers. Jobs and Wozniak wanted to make computers small enough for people to have them in their homes or offices. Simply put, they wanted a computer that was user-friendly.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(12, 30, 475, 0),
              child: Text(
                'The return of Jobs: iMac, iPod, iTunes, iPhone, and iPad.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 15, 250, 0),
              child: Text(
                'In 2010 Apple unveiled the iPad, a touch-screen device intermediate in size between a laptop computer and a smartphone with a display that measured 9.7 inches (24.6 cm) diagonally. It was about 0.5 inch (1.2 cm) thin and weighed 1.5 pounds (0.7 kg). The iPad was operated with the same set of finger gestures that were used on the iPhone. The touch screen was capable of displaying high-definition video. The iPad also had such applications as iTunes built in and could run all applications that were available for the iPhone.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 15, 950, 0),
              child: Text(
                'Founder, The Legend.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 15, 50, 0),
                  child: Text(
                    'Steven Paul Jobs (February 24, 1955 – October 5, 2011) was an American business magnate, inventor, and investor. He was the co-founder, chairman, and CEO of Apple; the chairman and majority shareholder of Pixar; a member of The Walt Disney Company\'s board of directors following its acquisition of Pixar.',
                    style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                  ),
                ),
                const SizedBox(
                  height: 0,
                ),
                Container(
                  width: 300,
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5BLD0YisYPilnGDNxNFeHKIZLJ5BJu4mbvFkoQPmxHcmeWHn-yJXQJeJ7fFslZ1yjal8&usqp=CAU'),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 15, 1070, 0),
              child: Text(
                'CEO,Apple',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 15, 250, 0),
                  child: Text(
                    'Tim Cook,Timothy Donald Cook (born November 1, 1960 is an American business executive who has been the chief executive officer of Apple Inc. since 2011. Cook previously served as the company\'s chief operating officer under its co-founder Steve Jobs. He is the first CEO of any Fortune 500 company ',
                    style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                  ),
                ),
                const SizedBox(
                  height: 0,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 1051, 0),
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSldqpT3P9tYrGKHI9FfzPNrB225I-Z3Qq0bA&usqp=CAU'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    } else if (selectedSection == 'products') {
      return ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Card(
                shadowColor: const Color.fromARGB(255, 255, 255, 255),
                elevation: 10,
                borderOnForeground: false,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Container(
                  width: 200,
                  height: 250,
                  color: Colors.black,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                        child: Image.network(
                            'data:image/jpeg;base64,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'),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'iPhones',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Card(
                shadowColor: Color.fromARGB(255, 255, 255, 255),
                elevation: 10,
                borderOnForeground: false,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Container(
                  width: 200,
                  height: 250,
                  color: Colors.black,
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          ),
                          child: Image.network(
                              'data:image/jpeg;base64,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')),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'MacBooks',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Card(
                shadowColor: const Color.fromARGB(255, 255, 255, 255),
                elevation: 10,
                borderOnForeground: false,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Container(
                  width: 200,
                  height: 250,
                  color: Colors.black,
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          ),
                          child: Image.network(
                              'data:image/jpeg;base64,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')),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Apple Watch',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ],
      );
    }

    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'data:image/png;base64,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'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _changeSection('home'),
                  child: const Text('Home'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => _changeSection('products'),
                  child: const Text('Products'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: _buildContent(),
            ),
          ),
        ],
      ),
    );
  }
}
