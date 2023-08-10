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
                  decoration: const BoxDecoration(
                    image: DecorationImage(
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
      return const Column(
        children: [
          Text(
            'Apple Products',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'Explore Apple\'s innovative products and technologies.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 20,
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
