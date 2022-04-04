import 'package:get/get.dart';
import 'package:class5work/langguage/bangla.dart';
import 'package:class5work/langguage/english.dart';

class Langguage extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "en_us": eng,
        "bn_bd": ban,
      };
}
