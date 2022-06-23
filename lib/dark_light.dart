import 'package:flutter/material.dart';
class ThemeProvider extends ChangeNotifier{
  ThemeMode theme=ThemeMode.dark;
  bool isDark(){
    if(theme==ThemeMode.dark){
      return true;
    }
    return false;
  }
  changeTheme(){
    if(theme==ThemeMode.dark){
      theme=ThemeMode.light;
    }
    else{
      theme=ThemeMode.dark;
    }
    notifyListeners();
  }
}

class DarkLight{
  late ThemeMode x;
  static final dark=ThemeData(
    primaryColor: Colors.black,
    colorScheme: const ColorScheme.dark(),
  );
  static final light=ThemeData(
    primaryColor: Colors.white
  );

  // getTheme() async{
  //   final p=await SharedPreferences.getInstance();
  //   final val=p.getInt('theme')??0;
  //   if(val==0){
  //     await p.setInt('theme',1);
  //     x=ThemeMode.light;
  //   }
  //   else if(val==1){
  //     x=ThemeMode.light;
  //   }
  //   else{
  //     x=ThemeMode.dark;
  //   }
  // }

  // void changeTheme()async{
  //   if(x==ThemeMode.dark){
  //     x=ThemeMode.light;
  //     final p=await SharedPreferences.getInstance();
  //     p.setInt('theme',1);
  //   }
  //   else{
  //     x=ThemeMode.dark;
  //     final p=await SharedPreferences.getInstance();
  //     p.setInt('theme',2);
  //   }
  // }
  // Future<ThemeMode> theme ()async{
  //   await getTheme();
  //   return x;
  // }
}