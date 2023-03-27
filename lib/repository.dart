import 'package:dio/dio.dart';
import 'models/bigdatamodel.dart';

class Repository {
  static String baseurl = "https://pro-api.coinmarketcap.com/v1/";
  static String apikey = "394bc09e-8a2f-458f-8738-6ea7e9c6d3a2";
  var api = "${baseurl}cryptocurrency/listings/latest";

  Dio _dio = Dio();

  Future<BigDataModel> getlist() async {
    try {
      _dio.options.headers["X-CMC_PRO_API_KEY"] = apikey;
      Response response = await _dio.get(api);
      print(response.data);
      return BigDataModel.fromJson((response.data));
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return BigDataModel.withError("error");
    }
  }
}
