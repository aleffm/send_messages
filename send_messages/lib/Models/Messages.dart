import 'dart:convert';

class Messages {
  String person, title, message, time_create;
  bool isActive;

  Messages({
    this.person = '',
    this.title = '',
    this.message = '',
    this.time_create = '',
    this.isActive = false,
  });

  Messages.fromJson(Map<String, dynamic> json)
  :person = json['person'],
  title = json['title'],
  message  = json['message'],
  time_create= json['time_create'],
  isActive = json['isActive'];

  Map<String, dynamic> toJson() => {
    'person': person,
    'title' : title,
    'message': message,
    'time_create': time_create,
    'isActive' : isActive,
  };

}