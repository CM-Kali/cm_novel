import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'reader_controller.dart';

class ReaderView extends StatelessWidget {
  const ReaderView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ReaderController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Obx(() => Text(
          controller.currentChapter.title,
          textAlign: TextAlign.center,
        )),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: controller.exitToHome,
          ),
        ],
      ),
      body: Obx(() {
        return Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  controller.currentChapter.content,
                  style: const TextStyle(
                    fontSize: 22,
                    height: 1.9,
                    color: Colors.black87,
                    fontFamily: 'NotoNastaliqUrdu',
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),
            Container(
              color: Colors.teal.shade50,
              padding:
              const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: controller.prevChapter,
                    label: const Text('پچھلا باب'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      foregroundColor: Colors.white,
                    ),
                  ),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: controller.nextChapter,
                    label: const Text('اگلا باب'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
