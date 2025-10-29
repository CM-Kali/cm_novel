import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/sources/local_novel_source.dart';
import '../../routes/app_routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final novels = LocalNovelSource.novels;

    return Scaffold(
      appBar: AppBar(title: const Text('Urdu Novels')),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: novels.length,
        itemBuilder: (context, index) {
          final novel = novels[index];
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 3,
            child: ListTile(
              title: Text(novel.title, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('By ${novel.author}', style: const TextStyle(color: Colors.grey)),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Get.toNamed(AppRoutes.chapters, arguments: novel);
              },
            ),
          );
        },
      ),
    );
  }
}
