import 'package:pricelive/models/usdmodel.dart';

class QuoteModel {
  final UsdModel usdmodel;
  QuoteModel({required this.usdmodel});

  factory QuoteModel.fromJson(Map<String, dynamic> json) {
    return QuoteModel(usdmodel: UsdModel.fromJson(json["USD"]));
  }
}
