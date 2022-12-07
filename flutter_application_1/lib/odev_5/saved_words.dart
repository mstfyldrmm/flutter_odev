  import 'package:english_words/english_words.dart';
  import 'package:flutter/material.dart';

  class StateData with ChangeNotifier {
    Set<WordPair> saved = {};

    void changeSaved(Set<WordPair> yeni) {
      saved = yeni;
      notifyListeners();
    }
  }
