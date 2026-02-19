import 'package:flutter/material.dart';
import 'view_requests_screen.dart';

class VolunteerDashboard extends StatelessWidget {
  const VolunteerDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Volunteer Dashboard")),
      body: Center(
        child: ElevatedButton(
          child: const Text("View Requests"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const ViewRequestsScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}
