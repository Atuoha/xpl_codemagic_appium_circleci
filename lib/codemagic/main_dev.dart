import 'package:xplore_codemagic_circleci_and_appium/codemagic/enums/environment.dart';
import 'package:xplore_codemagic_circleci_and_appium/codemagic/utils/main_common.dart';

Future<void> main()async{
 await mainCommon(Environment.dev);
}