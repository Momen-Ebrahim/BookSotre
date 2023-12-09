class SignUpModel {
  final String firstName;
  final String lastName;
  String? nickName;
  final String email;
  final String password;

  SignUpModel(
      {required this.firstName,
      required this.lastName,
      this.nickName,
      required this.email,
      required this.password});
}
