class UserEntity {
  final String email;
  final String name;
  final String uId;

  UserEntity({required this.uId, required this.email, required this.name});

  tomap() {
    return {
      'email': email,
      'name': name,
      'uId': uId,
    };
  }
}
