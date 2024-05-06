import 'package:demo_project/controller/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Homepage'),
        ),
        body: FutureBuilder(
          future: ApiService.fetchdata(),
          builder: (context, snapshot) {
            final data = snapshot.data;
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: data!.length,
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(data[index].avatar)),
                  title: Text(
                    snapshot.data![index].name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Serial number : ${index + 1}'),
                ),
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const LinearProgressIndicator();
            } else if (snapshot.hasError) {
              return const Text('error');
            } else if (snapshot.data == null) {
              return const Text('null');
            } else {
              return const Text('data');
            }
          },
        ));
  }
}
