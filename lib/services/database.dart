import 'package:cloud_firestore/cloud_firestore.dart';

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



}