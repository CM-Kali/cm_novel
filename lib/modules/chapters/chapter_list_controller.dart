import 'package:get/get.dart';
import '../../data/models/novel_model.dart';
import '../../routes/app_routes.dart';

class ChapterListController extends GetxController {
  late NovelModel novel;

  @override
  void onInit() {
    super.onInit();
    novel = Get.arguments as NovelModel;
  }

  void openReader(int chapterIndex) {
    Get.toNamed(AppRoutes.reader, arguments: {
      'novel': novel,
      'index': chapterIndex,
    });
  }
}
