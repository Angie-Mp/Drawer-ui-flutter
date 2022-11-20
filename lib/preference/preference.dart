import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _nombre = '';
  static String _twitter = '';
  static String _facebook = '';
  static String _mobile = '';

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  //GET & SET

  //Nombre
  static String get nombre {
    return _prefs.getString('nombre') ?? _nombre;
  }

  static set nombre(String nombre) {
    _nombre = nombre;
    _prefs.setString('nombre', nombre);
  }

  //twitter
  static String get twitter {
    return _prefs.getString('twitter') ?? _twitter;
  }

  static set twitter(String twitter) {
    _twitter = twitter;
    _prefs.setString('twitter', twitter);
  }

  //fb
  static String get facebook {
    return _prefs.getString('facebook') ?? _facebook;
  }

  static set facebook(String facebook) {
    _facebook = facebook;
    _prefs.setString('facebook', facebook);
  }

  //mobile
  static String get mobile {
    return _prefs.getString('mobile') ?? _mobile;
  }

  static set mobile(String mobile) {
    _mobile = mobile;
    _prefs.setString('mobile', _mobile);
  }
}
