import 'quetion.dart';

class QuizeBrain {
  int _theIndexOfQuestion = 0;
  List<Question> _questions = [
    Question('To day is monday ', false),
    Question('Sun rise from east', true),
    Question('Focuse is the main thing to be effective', true),
    Question('Abebe\'s name is not good', true),
    Question('programming is the good habit of programmer', true),
    Question('Plan is the two dimensional surface', false),
    Question('Life will become easy after the year', false),
    Question('Love is necessary at school life ', false),
    Question('Overall, I am satisfied with my relationship and all aspects of it.', true),
    Question('My partner hears me but doesn’t really listen to me', false),
    Question('We trust each other in everything.', true),
    Question('Sometimes I feel my parter doesn’t respect me or thinks I am incompetent.', false),
    Question('I totally see us together in 10 years from now.', true),
    Question('Sometimes I must hide my true feelings and emotions.', true),
    Question('I have no doubts my partner loves me.', true),
    Question('At times my partner makes me angry.', true),
    Question('I can tell my partner appreciates me.', true),
    Question(' I secretly envy my friends’ relationships.', true),
    Question('My partner is always supportive.', true),
    Question('My partner is rude to me.', false),
    Question('I feel understood.', false),
    Question('I have no idea what my partner is up to.', true),
    Question('I am honest with my partner.', false),
    Question('I wonder what it would be like if I was single right now.', true),
    Question('I can tell I got all I wanted from marriage or relationship.', false),
    Question('I feel secure in our relationship.', true),
    Question(' I have some secrets I would rather not share with my partner.', true)
  ];
  int indexCheck() {
    if (_theIndexOfQuestion < _questions.length - 1) {
      _theIndexOfQuestion++;
    }
    return _theIndexOfQuestion;
  }

  String getQuestion() {
    return _questions[_theIndexOfQuestion].question;
  }

  bool isQuestionCorrect() {
    return _questions[_theIndexOfQuestion].answer;
  }
}
