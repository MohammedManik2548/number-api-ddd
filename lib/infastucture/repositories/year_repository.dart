import 'package:number_api_ddd/domain/entities/year.dart';
import 'package:number_api_ddd/domain/repositories/year_repository.dart';
import 'package:number_api_ddd/infastucture/data_source/year_data_source.dart';

class YearRepositoryImpl implements YearRepository {
  final YearDataSource _yearDataSource;

  YearRepositoryImpl(this._yearDataSource);

  @override
  Future<Year> getYear() {
    return _yearDataSource.getYear();
  }
}
