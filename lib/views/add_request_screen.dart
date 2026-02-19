import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/request_model.dart';
import '../viewmodels/request_viewmodel.dart';

class AddRequestScreen extends StatefulWidget {
  const AddRequestScreen({super.key});

  @override
  State<AddRequestScreen> createState() => _AddRequestScreenState();
}

class _AddRequestScreenState extends State<AddRequestScreen> {
  final name = TextEditingController();
  final city = TextEditingController();
  final blood = TextEditingController();
  final phone = TextEditingController();

  void save() async {
    final vm = context.read<RequestViewModel>();

    await vm.addRequest(
      RequestModel(
        id: "",
        name: name.text,
        city: city.text,
        blood: blood.text,
        phone: phone.text,
      ),
    );

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<RequestViewModel>();

    return Scaffold(
      appBar: AppBar(title: const Text("Add Request")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: const InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: city,
              decoration: const InputDecoration(labelText: "City"),
            ),
            TextField(
              controller: blood,
              decoration: const InputDecoration(labelText: "Blood Group"),
            ),
            TextField(
              controller: phone,
              decoration: const InputDecoration(labelText: "Phone"),
            ),
            const SizedBox(height: 20),
            vm.loading
                ? const CircularProgressIndicator()
                : ElevatedButton(onPressed: save, child: const Text("Save")),
          ],
        ),
      ),
    );
  }
}
