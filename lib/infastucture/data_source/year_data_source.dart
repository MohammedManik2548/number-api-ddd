import 'package:get/get.dart';
import 'package:number_api_ddd/infastucture/models/year_model.dart';

abstract class YearDataSource {
  Future<YearModel> getYear();
}

class YearDataSourceImpl extends GetConnect implements YearDataSource {
  @override
  void onInit() {
    baseUrl = "http://numbersapi.com/random/";
  }

  @override
  Future<YearModel> getYear() async {
    final response = await get(
      "year?json",
    );
    return YearModel.fromJson(response.bodyString!);
  }
}
