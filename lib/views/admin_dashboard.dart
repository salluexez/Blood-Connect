import 'package:flutter/material.dart';
import 'add_request_screen.dart';
import 'view_requests_screen.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Admin Dashboard")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// ADD REQUEST BUTTON
            ElevatedButton(
              child: const Text("Add Blood Request"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AddRequestScreen()),
                );
              },
            ),

            const SizedBox(height: 20),

            /// VIEW REQUEST BUTTON
            ElevatedButton(
              child: const Text("View Requests"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ViewRequestsScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
