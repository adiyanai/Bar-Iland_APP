import 'package:flutter/material.dart';

class Event {
  final String id;
  final DateTime date;
  final String eventType;
  final String eventDescription;

  Event({@required this.id, @required this.date, @required this.eventType ,@required this.eventDescription});

  DateTime get Date {
    return date;
  }

  String get EventType {
    return eventType;
  }

  String get EventDescription {
    return eventDescription;
  }
}
