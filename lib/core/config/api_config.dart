class ApiConfig {
  // static const String _urlApi = "http://10.12.14.187:8080";
  static const String _urlApi = "http://10.12.14.187:8080";

  static const String urlEndPointAuth = "/auth";

  static String getUrl(endpoint) => _urlApi + endpoint;


}
