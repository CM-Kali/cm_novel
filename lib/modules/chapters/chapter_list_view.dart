import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/models/novel_model.dart';
import '../../routes/app_routes.dart';

class ChapterListView extends StatelessWidget {
  const ChapterListView({super.key});

  @override
  Widget build(BuildContext context) {
    final NovelModel novel = Get.arguments;

    return Scaffold(
      appBar: AppBar(title: Text(novel.title)),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: novel.chapters.length,
        itemBuilder: (context, index) {
          final chapter = novel.chapters[index];
          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              title: Text(chapter.title),
              trailing: const Icon(Icons.menu_book),
              onTap: () {
                Get.toNamed(AppRoutes.reader, arguments: {
                  'novel': novel,
                  'index': index,
                });
              },
            ),
          );
        },
      ),
    );
  }
}
