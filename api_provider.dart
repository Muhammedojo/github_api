import '../helper/helper.dart';
import '../model/model.dart';

class HttpServices {
  late Dio _dio;

  final _baseUrl = 'https://api.github.com/';
  HttpServices() {
    _dio = Dio();
    _dio.options.connectTimeout = 50000;
    _dio.options.receiveTimeout = 50000;
    _dio.options.baseUrl = _baseUrl;
  }

  Future<List<dynamic>?> getUser() async {
    int statusCode;
    try {
      final response = await _dio.get(_baseUrl + 'users');
      statusCode = response.statusCode!;
      if (statusCode != 200) return null;

      return response.data;
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      }
    }
    return null;
  }
}
