import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'chapter_list_controller.dart';

class ChapterListView extends StatelessWidget {
  const ChapterListView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ChapterListController());
    final novel = controller.novel;

    return Scaffold(
      appBar: AppBar(
        title: Text(novel.title),
      ),
      body: ListView.builder(
        itemCount: novel.chapters.length,
        itemBuilder: (context, index) {
          final chapter = novel.chapters[index];
          return Card(
            child: ListTile(
              title: Text(chapter.title),
              trailing: const Icon(Icons.bookmark_added_outlined),
              onTap: () => controller.openReader(index),
            ),
          );
        },
      ),
    );
  }
}
