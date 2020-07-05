import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileData extends ChangeNotifier {
  String email;
  String username;
  File ImageFile;

  void updateProfile(Username, Email, Image) {
    email = Email;
    username = Username;
    ImageFile = Image;
    notifyListeners();
    print(ImageFile);
  }
}
