import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogProvider extends ChangeNotifier {
  Future<void> saveData(String username, String password) async {
    SharedPreferences shr = await SharedPreferences.getInstance();

    shr.setString('name', username);
    shr.setString('pass', password);
  }

  Future<Map> readData() async {
    SharedPreferences shr = await SharedPreferences.getInstance();

    String? name = shr.getString('name');
    String? pass = shr.getString('pass');

    Map m1 = {"username":name,"password":pass};

    return m1;
  }
}
