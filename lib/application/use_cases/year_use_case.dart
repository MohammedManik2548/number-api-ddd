import 'package:number_api_ddd/application/request/empty_request.dart';
import 'package:number_api_ddd/application/use_cases/base_use_case.dart';
import 'package:number_api_ddd/domain/entities/year.dart';
import 'package:number_api_ddd/domain/repositories/year_repository.dart';

class YearUseCase implements BaseUseCase<Year, EmptyRequest> {
  final YearRepository _yearRepository;

  YearUseCase(this._yearRepository);

  @override
  Future<Year> call(EmptyRequest request) {
    return _yearRepository.getYear();
  }
}
