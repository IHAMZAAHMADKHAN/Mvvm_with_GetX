abstract class BaseApiServices {
  Future<dynamic> getGetApiResponse(String url);

  Future<dynamic> getPostApiResponse(String url, dynamic data);

  // Future<dynamic> getputApiResponse(String url, dynamic data);
  // Future<dynamic> getdeletApiResponse(String url, dynamic data);
}
