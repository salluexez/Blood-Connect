import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/request_viewmodel.dart';

class ViewRequestsScreen extends StatelessWidget {
  const ViewRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<RequestViewModel>();

    return Scaffold(
      appBar: AppBar(title: const Text("Requests")),
      body: StreamBuilder(
        stream: vm.requestsStream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const CircularProgressIndicator();

          final requests = snapshot.data!;

          return ListView.builder(
            itemCount: requests.length,
            itemBuilder: (context, index) {
              final r = requests[index];

              return Card(
                child: ListTile(
                  title: Text("${r.name} - ${r.blood}"),
                  subtitle: Text("${r.city} | ${r.phone}"),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
