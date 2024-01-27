import 'package:flutter_application_1/services/api.dart';
import 'package:rss_dart/domain/rss_feed.dart';

class NewsRepository {
  Future<RssFeed?> getAllNews({String? lang}) => Api.getDataRss(lang: lang);
}