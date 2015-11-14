import 'package:polymer/polymer.dart';
import 'dart:async';

@CustomTag('my-polymer-element')
class MyPolymerElement extends PolymerElement {
  MyPolymerElement.created() : super.created();

  @observable String newWord;
  @observable List<String> sentences = toObservable([]);



  void addWordToSentence(sentence){
    return newWord + " " + sentence;
  }

  void addWord(){
    sentences = toObservable(sentences.map(addWordToSentence));
    sentences.insert(0,newWord);
    newWord = "";

  }


}