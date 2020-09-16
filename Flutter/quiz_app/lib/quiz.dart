import 'qna.dart';

class QuizBrain
{
  int _num=0;
  List <Qna>_questionBank=[
    Qna("Everything in Flutter is Widget",true),
    Qna("Flutter is based on Java Programming lang",false),
    Qna("Widgets in flutter are categorized as Stateful and Stateless",true),
  ];

  void nextquestion()
  {
    if(_num < _questionBank.length-1){
      _num++;
    }
  }
bool isFinished(){
    if(_num >= _questionBank.length-1){
      return true;
    }
    else{
      return false;
    }
}
  String getQuestion(){
    return _questionBank[_num].question;
  }
  bool getAnswer(){
    return _questionBank[_num].answer;
  }
  void reset() {
    _num = 0;
  }
}