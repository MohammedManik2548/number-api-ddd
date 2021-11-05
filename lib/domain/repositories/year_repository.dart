import 'package:number_api_ddd/domain/entities/year.dart';

abstract class YearRepository {
  Future<Year> getYear();
}
