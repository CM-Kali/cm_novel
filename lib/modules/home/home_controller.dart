import 'package:get/get.dart';
import '../../data/models/novel_model.dart';
import '../../data/sources/local_novel_source.dart';
import '../../routes/app_routes.dart';

class HomeController extends GetxController {
  final novels = <NovelModel>[].obs;
  final loading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadNovels();
  }

  Future<void> loadNovels() async {
    final source = LocalNovelSource();
    final data = await source.loadNovels();
    novels.assignAll(data);
    loading.value = false;
  }

  void openChapters(NovelModel novel) {
    Get.toNamed(AppRoutes.chapterList, arguments: novel);
  }
}
