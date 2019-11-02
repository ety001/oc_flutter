class UserModel {
  String _clipname = '';
  String _password = '';

  String get clipname => this._clipname;
  String get password => this._password;

  set clipname(String name) => this._clipname = name;
  set password(String pass) => this._password = pass;
}