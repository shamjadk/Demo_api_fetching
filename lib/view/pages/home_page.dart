import 'dart:developer';

import 'package:demo_project/controller/provider/api_provider.dart';
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
      body: ref.watch(apiProvider).when(
            data: (data) => ListView.builder(
                itemCount: data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(data[index].avatar)),
                    title: Text(
                      data[index].name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Serial number : ${index + 1}'),
                  );
                }),
            error: (error, stackTrace) {
              log(error.toString());
              return Column(
                children: [
                  const Text('An error occured'),
                  IconButton(
                      onPressed: () => ref.invalidate(apiProvider),
                      icon: const Icon(Icons.refresh))
                ],
              );
            },
            loading: () => const LinearProgressIndicator(),
          ),
    );
  }
}
