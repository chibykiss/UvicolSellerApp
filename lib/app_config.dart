var this_year = DateTime(2020).year.toString();

class AppConfig {
  static String copyright_text =
      "@ Uvicol" + this_year; //this shows in the splash screen
  static String app_name = "Uvicol"; //this shows in the splash screen
  static String purchase_code =
      "e59b4161-3b48-453d-83e9-69414304a916"; //enter your purchase code for the app from codecanyon
  //static String purchase_code = ""; //enter your purchase code for the app from codecanyon

  //configure this
  static const bool HTTPS = true;

  //

  //

  //configure this

  // static const DOMAIN_PATH = "192.168.88.193/ecommerce"; //inside a folder
  static const DOMAIN_PATH = "uvicol.com"; // directly inside the public folder

  //do not configure these below
  static const String API_ENDPATH = "api/v2";
  static const String PUBLIC_FOLDER = "public";
  static const String PROTOCOL = HTTPS ? "https://" : "http://";
  static const String SELLER_PREFIX = "seller";
  static const String RAW_BASE_URL = "${PROTOCOL}${DOMAIN_PATH}";
  static const String BASE_URL = "${RAW_BASE_URL}/${API_ENDPATH}";
  static const String BASE_URL_WITH_PREFIX = "${BASE_URL}/${SELLER_PREFIX}";
}
