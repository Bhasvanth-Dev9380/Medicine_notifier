
import 'package:flutter/material.dart';
import '../add_medicine/add.dart';
import '../profile/profile.dart';
import '../report/report.dart';
import '../utils/colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    ReportScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(Icons.home,color: primary,),
            icon: new Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(Icons.stacked_bar_chart,color: primary,),
            backgroundColor: primary,
            icon: new Icon(Icons.stacked_bar_chart),
            label: 'Report',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle add medicine logic
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddMedicineScreen()),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: _buildGreeting(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile_image.png'),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          _buildDateSelector(),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/empty_box.png', height: 150, width: 150),
                  SizedBox(height: 20),
                  Text(
                    'Nothing Is Here, Add a Medicine',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGreeting() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hi Harry!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          '5 Medicines Left',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildDateSelector() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildDayButton('Thu'),
            _buildDayButton('Fri'),
            _buildSelectedDayButton('Saturday, Sep 3'),
            _buildDayButton('Sun'),
            _buildDayButton('Mon'),
            _buildDayButton('Tue'),
            _buildDayButton('Wed'),
            _buildDayButton('Thu'),
            _buildDayButton('Fri'),
            _buildDayButton('Sat'),
          ],
        ),
      ),
    );
  }

  Widget _buildDayButton(String day) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: () {
          // Handle date selection logic
        },
        child: Text(
          day,
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }

  Widget _buildSelectedDayButton(String day) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: () {
          // Handle date selection logic
        },
        child: Text(
          day,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Colors.grey.shade200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
