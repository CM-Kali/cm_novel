import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/models/novel_model.dart';
import '../../routes/app_routes.dart';

class ReaderView extends StatefulWidget {
  const ReaderView({super.key});

  @override
  State<ReaderView> createState() => _ReaderViewState();
}

class _ReaderViewState extends State<ReaderView> {
  late NovelModel novel;
  late int index;

  @override
  void initState() {
    super.initState();
    final args = Get.arguments as Map;
    novel = args['novel'];
    index = args['index'];
  }

  void nextChapter() {
    if (index < novel.chapters.length - 1) {
      setState(() => index++);
    }
  }

  void previousChapter() {
    if (index > 0) {
      setState(() => index--);
    }
  }

  @override
  Widget build(BuildContext context) {
    final chapter = novel.chapters[index];

    return Scaffold(
      appBar: AppBar(
        title: Text(chapter.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () => Get.offAllNamed(AppRoutes.home),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Text(
            chapter.content,
            textDirection: TextDirection.rtl,
            style: const TextStyle(fontSize: 18, height: 1.7),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton.icon(
              onPressed: previousChapter,
              icon: const Icon(Icons.arrow_back),
              label: const Text('پچھلا باب'),
            ),
            ElevatedButton.icon(
              onPressed: nextChapter,
              icon: const Icon(Icons.arrow_forward),
              label: const Text('اگلا باب'),
            ),
          ],
        ),
      ),
    );
  }
}
