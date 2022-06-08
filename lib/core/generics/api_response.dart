class ApiResponse<K, V> {
  K? data;
  V? error;
  int statusCode;

  ApiResponse({this.data, this.error, required this.statusCode});
}

class HpApiResponse<K> {
  K? data;

  HpApiResponse({this.data});
}