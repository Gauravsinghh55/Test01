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
      title: 'Attendance',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Attendance',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xFFC9D33E),
                const Color(0xFFCCD321),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: _buildDrawer(context),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            _buildHeaderSection(),
            _buildDateSelector(context),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(6),
                children: [
                  _buildAttendanceListTile(
                    context,
                    'Tanuj Chandola',
                    'WSL0003',
                    '09:30 am',
                    '06:40 pm',
                    true,
                    'assets/tanuj.png',
                    // showWarning: true,
                  ),
                  _buildAttendanceListTile(
                    context,
                    'Gaurav singh',
                    'WSL0034',
                    '09:30 am',
                    '06:40 pm',
                    true,
                    'assets/gaurav.png',
                  ),
                  _buildAttendanceListTile(
                    context,
                    'Aadi',
                    'WSL0054',
                    '09:30 am',
                    '06:40 pm',
                    false,
                    'assets/adii.png',
                  ),
                  _buildAttendanceListTile(
                    context,
                    'Karan',
                    'WSL0076',
                    '09:30 am',
                    '06:40 pm',
                    true,
                    'assets/karan.png',
                  ),
                  _buildAttendanceListTile(
                    context,
                    'Sati',
                    'WSL0076',
                    '09:30 am',
                    '06:40 pm',
                    false,
                    'assets/sati.png',
                  ),
                  _buildAttendanceListTile(
                    context,
                    'Sooraj',
                    'WSL0069',
                    'Not Logged-In Yet',
                    '',
                    false,
                    'assets/sooraj.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Container(
      color: const Color(0xFFEAF0F6),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: const Color(0xFFCCD321),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.group, color: Colors.white, size: 18),
                ),
              ),
              const SizedBox(width: 10),
              const Text('Members', style: TextStyle(fontSize: 16)),
            ],
          ),
          TextButton(
            onPressed: () {
              // Handle change action
            },
            child: const Text(
              'Change',
              style: TextStyle(color: Color(0xFF020202), fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateSelector(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_left, color: Colors.black),
                onPressed: () {
                  // Previous day action
                },
              ),
              const SizedBox(width: 2.0),
              const Text(
                'sun, Aug 31 2024',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF525F7F),
                ),
              ),
              const SizedBox(width: 4.0),
              IconButton(
                icon: const Icon(Icons.arrow_right, color: Colors.black),
                onPressed: () {
                  // Next day action
                },
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.calendar_today, color: Colors.black),
            onPressed: () {
              // Open date picker
            },
          ),
        ],
      ),
    );
  }

  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFFCCD321),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/Code.png', // Replace with your logo image path
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Status',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://sm.askmen.com/t/askmen_in/article/f/facebook-p/facebook-profile-picture-affects-chances-of-gettin_fr3n.1200.jpg',
                        ),
                        radius: 30,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Neeraj sharma',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'neeraj123@gmail.com',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ..._buildDrawerItems(context),
          ],
        ),
      ),
    );
  }
  Widget _customDivider({double thickness = 1.0, Color color = Colors.grey}) {
    return Divider(
      thickness: thickness,
      color: color,
      height: 1,
    );
  }
  List<Widget> _buildDrawerItems(BuildContext context) {
    return [
      ListTile(
        leading: const Icon(Icons.timer, color: Colors.black),
        title: const Text('Timer'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.calendar_today, color: Colors.black),
        title: const Text('Attendance'),
        onTap: () {},
      ),

      // ListTile(
      //   leading: const Icon(Icons.task, color: Colors.black),
      //   title: const Text('Activity'),
      //   onTap: () {},
      // ),

      ListTile(
        leading: const Icon(Icons.access_time, color: Colors.black),
        title: const Text('Timesheet'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.report, color: Colors.black),
        title: const Text('Report'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.business, color: Colors.black),
        title: const Text('Jobsite'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.people, color: Colors.black),
        title: const Text('Team'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.offline_bolt, color: Colors.black),
        title: const Text('Time Off'),
        onTap: () {},
      ),
      // ListTile(
      //   leading: const Icon(Icons.schedule, color: Colors.black),
      //   title: const Text('Schedules'),
      //   onTap: () {},
      // ),
      _customDivider(thickness: 0.45, color: Colors.grey), // Divider after Schedules
      ListTile(
        leading: const Icon(Icons.group_add, color: Colors.black),
        title: const Text('Request to Join Organizations'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.lock, color: Colors.black),
        title: const Text('Change Password'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.logout_outlined, color: Colors.black),
        title: const Text('Logout'),
        onTap: () {},
      ),
      _customDivider(thickness: 0.45, color: Colors.grey),
      // ListTile(
      //
      //   leading: const Icon(Icons.help, color: Colors.black),
      //   title: const Text('FAQ & Help'),
      //   onTap: () {},
      // ),
      ListTile(
        leading: const Icon(Icons.privacy_tip, color: Colors.black),
        title: const Text('Privacy Policy'),
        onTap: () {},
      ),
      // ListTile(
      //   leading: const Icon(Icons.diversity_3_outlined, color: Colors.black),
      //   title: const Text('Version: 2.10(1)'),
      //   onTap: () {},
      // ),
      const SizedBox(height: 10), // Add some space before Logout button

    ];
  }
}




Widget _buildAttendanceListTile(
    BuildContext context, String name, String id, String startTime, String endTime, bool isWorking, String imageUrl) {
  return Column(
    children: [
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imageUrl),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                '$name ($id)',
                style: const TextStyle(fontSize: 14),
                overflow: TextOverflow.ellipsis, // Ensures text doesn't overflow
              ),
            ),
          ],
        ),
        subtitle: Row(
          children: [
            Image.asset('assets/up.png', width: 16, height: 16), // Incoming icon
            const SizedBox(width: 4),
            Text(' $startTime', style: const TextStyle(fontSize: 12)), // Incoming time
            const SizedBox(width: 16),
            if (endTime.isNotEmpty) ...[
              Image.asset('assets/down.png', width: 16, height: 16), // Outgoing icon
              const SizedBox(width: 4),
              Text(' $endTime', style: const TextStyle(fontSize: 12)), // Outgoing time
            ],
          ],
        ),
        trailing: Container(
          constraints: BoxConstraints(maxWidth: 80), // Set a maximum width
          child: Row(
            mainAxisSize: MainAxisSize.min, // Ensure Row takes only necessary space
            children: [
              Image.asset('assets/date.png', width: 30, height: 30), // Larger Date icon
              const SizedBox(width: 8), // Spacing between icons
              Image.asset('assets/location.png', width: 30, height: 30), // Larger Location icon
            ],
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LocationScreen(name: name, id: id),
            ),
          );
        },
      ),
      const Divider(),
    ],
  );
}




class LocationScreen extends StatelessWidget {
  final String name;
  final String id;

  const LocationScreen({super.key, required this.name, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TRACK LOCATION',
            style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
        ),),
        backgroundColor: const Color(0xFF4C3BBB),
      ),
      body: Center(
        child: Text('OK! Location data for $name will be displayed here. sorry for Google map inconvenience',
            style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}
