import 'dart:async';
import 'package:rxdart/rxdart.dart';
import '../mixins/validators.dart';

class Bloc extends Object with ValidationMixin {
  final _email = StreamController<String>.broadcast();
  final _password = StreamController<String>.broadcast();

  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);
  Stream<bool> get enableSubmit =>
      Observable.combineLatest2(email, password, (e, p) => true);

  submit() {}

  void dispose() {
    _email.close();
    _password.close();
  }
}
