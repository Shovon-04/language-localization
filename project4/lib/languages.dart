import 'package:get/get.dart';
import 'package:project4/languages/ban.dart';
import 'package:project4/languages/eng.dart';

class Languages extends Translations {
  @override
  // ignore: todo
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {"en_US": eng, "bn_BD": ban};
}
