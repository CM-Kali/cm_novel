import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('CM Urdu Novels'),
        centerTitle: true,
      ),
      body: Obx(() {
        if (controller.loading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: controller.novels.length,
          itemBuilder: (context, index) {
            final novel = controller.novels[index];
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: ListTile(
                title: Text(
                  novel.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('By ${novel.author}'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () => controller.openChapters(novel),
              ),
            );
          },
        );
      }),
    );
  }
}
