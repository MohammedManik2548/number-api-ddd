import 'package:get/get.dart';
import 'package:number_api_ddd/application/use_cases/year_use_case.dart';
import 'package:number_api_ddd/domain/repositories/year_repository.dart';
import 'package:number_api_ddd/infastucture/data_source/year_data_source.dart';
import 'package:number_api_ddd/infastucture/repositories/year_repository.dart';
import 'package:number_api_ddd/presentation/controllers/my_home_page_controller.dart';

class HomeBinding extends Bindings {
  final find = Get.find;
  @override
  void dependencies() {
    Get.lazyPut<YearDataSource>(() => YearDataSourceImpl());
    Get.lazyPut<YearRepository>(() => YearRepositoryImpl(find()));
    Get.lazyPut(() => YearUseCase(find()));
    Get.lazyPut(() => MyHomePageController(find()));
  }
}
