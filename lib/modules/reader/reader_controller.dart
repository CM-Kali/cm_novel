import 'package:get/get.dart';
import '../../data/models/novel_model.dart';
import '../../routes/app_routes.dart';

class ReaderController extends GetxController {
  late NovelModel novel;
  late RxInt currentIndex;

  ChapterModel get currentChapter => novel.chapters[currentIndex.value];

  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments as Map;
    novel = args['novel'];
    currentIndex = (args['index'] as int).obs;
  }

  void nextChapter() {
    if (currentIndex.value < novel.chapters.length - 1) {
      currentIndex.value++;
    }
  }

  void prevChapter() {
    if (currentIndex.value > 0) {
      currentIndex.value--;
    }
  }

  void exitToHome() {
    Get.offAllNamed(AppRoutes.home);
  }
}
