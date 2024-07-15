import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addMedicine(
      String name,
      int compartment,
      Color color,
      String type,
      double quantity,
      int totalCount,
      String startDate,
      String endDate,
      String frequency,
      String times,
      List<String> doseTimes,
      List<String> foodTimings,
      ) {
    return _db.collection('medicines').add({
      'name': name,
      'compartment': compartment,
      'color': color.value,
      'type': type,
      'quantity': quantity,
      'totalCount': totalCount,
      'startDate': startDate,
      'endDate': endDate,
      'frequency': frequency,
      'times': times,
      'doseTimes': doseTimes,
      'foodTimings': foodTimings,
    });
  }
}
