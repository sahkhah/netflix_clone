class DownloadsPageConstants {
  static DownloadsPageConstants? _instance;
  static DownloadsPageConstants get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = DownloadsPageConstants.init();
      return _instance!;
    }
  }

  DownloadsPageConstants.init();

  final String myDownloads = "My Downloads";
  final String smartDownloads = "Smart Downloads";
  final String onText = "ON";
  final String neverBe = "Never be without Netflix";
  final String content =
      "Download shows and movies so you'll never be without something to watch even when you are offline.";
  final String seeWhat = "See What You Can Download";
}
