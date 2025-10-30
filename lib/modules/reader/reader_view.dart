import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'reader_controller.dart';

class ReaderView extends StatelessWidget {
  const ReaderView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ReaderController());

    return Scaffold(
      appBar: AppBar(
        title: Text(controller.currentChapter.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: controller.exitToHome,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() {
          return SingleChildScrollView(
            child: Text(
              controller.currentChapter.content,
              style: const TextStyle(
                fontSize: 20,
                height: 1.8,
                color: Colors.black87,
              ),
              textDirection: TextDirection.rtl,
            ),
          );
        }),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: controller.prevChapter,
                child: const Text('Previous'),
              ),
              ElevatedButton(
                onPressed: controller.nextChapter,
                child: const Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
