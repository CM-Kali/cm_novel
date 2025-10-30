import 'package:get/get.dart';
import '../modules/splash/splash_view.dart';
import '../modules/home/home_view.dart';
import '../modules/chapters/chapter_list_view.dart';
import '../modules/reader/reader_view.dart';

class AppRoutes {
  static const splash = '/';
  static const home = '/home';
  static const chapterList = '/chapters';
  static const reader = '/reader';

  static final pages = [
    GetPage(name: splash, page: () => const SplashView()),
    GetPage(name: home, page: () => const HomeView()),
    GetPage(name: chapterList, page: () => const ChapterListView()),
    GetPage(name: reader, page: () => const ReaderView()),
  ];
}
