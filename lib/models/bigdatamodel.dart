import 'package:pricelive/models/statusmodel.dart';
import 'datamodel.dart';

class BigDataModel {
  final StatusModel statusModel;
  final List<DataModel> dataModel;

  BigDataModel({
    required this.statusModel,
    required this.dataModel,
  });
  factory BigDataModel.fromJson(Map<String, dynamic> json) {
    var dataList = json['data'] as List;
    List<DataModel> dataModelList =
        dataList.map((e) => DataModel.fromJson(e)).toList();
    return BigDataModel(
      statusModel: StatusModel.fromJson(json["status"]),
      dataModel: dataModelList,
    );
  }
  BigDataModel.withError(String error)
      : statusModel = StatusModel(error, 0, error, 0, 0, error, 0),
        dataModel = [];
}


class Platform {
  int? id;
  String? name;
  String? symbol;
  String? slug;
  String? tokenAddress;

  Platform({this.id, this.name, this.symbol, this.slug, this.tokenAddress});

  Platform.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
    slug = json['slug'];
    tokenAddress = json['token_address'];
  }
}
