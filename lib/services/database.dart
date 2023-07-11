import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pgn_app/models/member.dart';

class DatabaseService
{

  final String uid;
  DatabaseService({required this.uid});

  //collection reference
  final CollectionReference pgnCollection = FirebaseFirestore.instance.collection("pgnmembers");

  Future updateUserData(String major, String year, String firstName, String lastName) async
  {
    return await pgnCollection.doc(uid).set({
        'major': major,
        'year': year,
        'firstName':firstName,
        'lastName':lastName,
    });
  }

  //pgn member list from snapshot
  List<Member> _memberListFromSnapshot(QuerySnapshot snapshot)
  {
    return snapshot.docs.map((doc){
      return Member(
        major: doc.get("major").toString() ?? '',
        year: doc.get("year").toString() ?? '',
        firstName: doc.get("firstName").toString() ?? '',
        lastName: doc.get("lastName").toString() ?? ''
      );
    }).toList();
  }


  //get pgn stream
  Stream<List<Member>> get pgnSnapshots
  {
    return pgnCollection.snapshots()
    .map(_memberListFromSnapshot);
  }



}