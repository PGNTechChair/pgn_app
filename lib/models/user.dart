class NewUser
{
  final String uid;

  NewUser({required this.uid});

}

class UserData
{
  final String uid;
  final String firstName;
  final String lastName;
  final String major;
  final String year;
  final String memberStatus;

  UserData({required this.uid, required this.firstName,
    required this.lastName, required this.major, required this.year, required this.memberStatus});

}