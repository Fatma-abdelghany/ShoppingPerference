import 'package:shared_preferences/shared_preferences.dart';

class PreferenceService{

  static SharedPreferences? _prefsInstance;

  // call this method from iniState() function of mainApp().
  static Future<SharedPreferences?> init() async {
   try{
     _prefsInstance = await SharedPreferences.getInstance() ;
     return _prefsInstance;
   }catch(e){
     print("===================== Errror from sharedpreference ${e.toString()}");
   }
  }
  
// to  access this private parameter  _prefsInstance
// must use get method to return this private parameter
  static SharedPreferences? get getPrefsInstance  => _prefsInstance ;



  // static String getString(String key, [String? defValue]) {
  //   return _prefsInstance?.getString(key) ?? defValue ?? "";
  // }
  //
  // static Future<bool> setString(String key, String value) async {
  //   var prefs = await getPrefsInstance;
  //   return prefs?.setString(key, value) ?? Future.value(false);
  // }
  // static Future<bool> setBool(String key, bool value) async {
  //   var prefs = await getPrefsInstance;
  //   return prefs?.setBool(key, value) ?? Future.value(false);
  // }
  // static bool getBool(String key, [bool? defValue]) {
  //   return _prefsInstance?.getBool(key) ?? defValue ?? false;
  // }
}


