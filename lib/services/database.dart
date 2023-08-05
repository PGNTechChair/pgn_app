import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pgn_app/models/member.dart';
import 'package:pgn_app/models/user.dart';

class DatabaseService {

  final String uid;

  DatabaseService({required this.uid});

  //collection reference
  final CollectionReference pgnCollection = FirebaseFirestore.instance
      .collection("pgnmembers");

  Future updateUserData(String major, String year, String firstName,
      String lastName, [String memberStatus = ""]) async
  {
    if (memberStatus != "") {
      return await pgnCollection.doc(uid).set({
        'major': major,
        'year': year,
        'firstName': firstName,
        'lastName': lastName,
        'memberStatus': memberStatus,
      });
    }

    else
    {
      return await pgnCollection.doc(uid).set({
        'major': major,
        'year': year,
        'firstName':firstName,
        'lastName':lastName,
        'memberStatus': memberStatus,
      });
  }

}
  //pgn member list from snapshot
  List<Member> _memberListFromSnapshot(QuerySnapshot snapshot)
  {
    return snapshot.docs.map((doc){
      return Member(
        major: doc.get("major").toString() ?? '',
        year: doc.get("year").toString() ?? '',
        firstName: doc.get("firstName").toString() ?? '',
        lastName: doc.get("lastName").toString() ?? '',
        memberStatus: doc.get("memberStatus").toString() ?? ''
      );
    }).toList();
  }

  //user data from snapshot
  UserData _userDataFromSnapshot(DocumentSnapshot snapshot)
  {
    return UserData(
      uid: uid,
      firstName: snapshot.get("firstName") ?? '',
      lastName: snapshot.get("lastName") ?? '',
      major: snapshot.get("major") ?? '',
      year: snapshot.get("year") ?? '',
      memberStatus: snapshot.get("memberStatus") ?? '',

    );
  }

  //get pgn-member stream
  Stream<List<Member>> get pgnSnapshots
  {
    return pgnCollection.snapshots()
    .map(_memberListFromSnapshot);
  }

  //get user doc stream
  Stream<UserData> get userData
  {
    return pgnCollection.doc(uid).snapshots()
    .map(_userDataFromSnapshot);
  }
}