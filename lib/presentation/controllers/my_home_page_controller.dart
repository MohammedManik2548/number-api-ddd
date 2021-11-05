import 'package:get/get.dart';
import 'package:number_api_ddd/application/request/empty_request.dart';
import 'package:number_api_ddd/application/use_cases/year_use_case.dart';
import 'package:number_api_ddd/domain/entities/year.dart';

class MyHomePageController extends GetxController {
  final YearUseCase _yearUseCase;

  final year = Rxn<Year>();

  MyHomePageController(this._yearUseCase);

  getYear() async {
    final response = await _yearUseCase.call(EmptyRequest());
    return year.value = response;
  }
}
