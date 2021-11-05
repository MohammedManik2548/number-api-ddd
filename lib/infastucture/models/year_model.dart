import 'dart:convert';

import 'package:number_api_ddd/domain/entities/year.dart';

class YearModel extends Year {
  YearModel({String? text, num? number, bool? found, String? type})
      : super(
          text: text,
          number: number,
          found: found,
          type: type,
        );

  factory YearModel.fromJson(String str) => YearModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory YearModel.fromMap(Map<String, dynamic> json) => YearModel(
        text: json["text"],
        number: json["number"],
        found: json["found"],
        type: json["type"],
      );

  Map<String, dynamic> toMap() => {
        "text": text,
        "number": number,
        "found": found,
        "type": type,
      };
}
