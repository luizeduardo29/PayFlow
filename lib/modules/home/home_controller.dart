import 'package:flutter/material.dart';

class HomeController {
  var currentPage = 0;

  void setPage(int index) {
    currentPage = index;
  }

  void logoutButton(BuildContext context) {
    Navigator.pushNamed(context, "/login");
  }
}
