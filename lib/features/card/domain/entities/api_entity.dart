import 'package:flutter/material.dart';


class HpApi {
  String? name;
  List<dynamic>? alternateNames;
  String? species;
  String? gender;
  String? house;
  String? dateOfBirth;
  dynamic yearOfBirth;
  bool? wizard;
  String? ancestry;
  String? eyeColour;
  String? hairColour;
  Wand? wand;
  String? patronus;
  bool? hogwartsStudent;
  bool? hogwartsStaff;
  String? actor;
  List<dynamic>? alternateActors;
  bool? alive;
  String? image;

  HpApi(
      {this.name,
      this.alternateNames,
      this.species,
      this.gender,
      this.house,
      this.dateOfBirth,
      this.yearOfBirth,
      this.wizard,
      this.ancestry,
      this.eyeColour,
      this.hairColour,
      this.wand,
      this.patronus,
      this.hogwartsStudent,
      this.hogwartsStaff,
      this.actor,
      this.alternateActors,
      this.alive,
      this.image});

  factory HpApi.fromMap(Map<String, dynamic> map) {
    return HpApi(
      name: map['name'],
      species: map['species'],
      gender: map['gender'],
      house: map['house'],
      dateOfBirth: map['dateOfBirth'],
      yearOfBirth: map['yearOfBirth'],
      wizard: map['wizard'],
      ancestry: map['ancestry'],
      eyeColour: map['eyeColour'],
      hairColour: map['hairColour'],
      patronus: map['patronus'],
      hogwartsStudent: map['hogwartsStudent'],
      hogwartsStaff: map['hogwartsStaff'],
      actor: map['actor'],
      alive: map['alive'],
      image: map['image'],
    );
  }

  HpApi.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    if (json['alternate_names'] != null) {
      alternateNames = <dynamic>[];
      json['alternate_names'].forEach((v) {
        alternateNames!.add(v);
      });
    }
    species = json['species'];
    gender = json['gender'];
    house = json['house'];
    dateOfBirth = json['dateOfBirth'];
    yearOfBirth = json['yearOfBirth'];
    wizard = json['wizard'];
    ancestry = json['ancestry'];
    eyeColour = json['eyeColour'];
    hairColour = json['hairColour'];
    wand = json['wand'] != null ?  Wand.fromJson(json['wand']) : null;
    patronus = json['patronus'];
    hogwartsStudent = json['hogwartsStudent'];
    hogwartsStaff = json['hogwartsStaff'];
    actor = json['actor'];
    if (json['alternate_actors'] != null) {
      alternateActors = <dynamic>[];
      json['alternate_actors'].forEach((v) {
        alternateActors!.add(v);
      });
    }
    alive = json['alive'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.alternateNames != null) {
      data['alternate_names'] =
          this.alternateNames!.map((v) => v.toJson()).toList();
    }
    data['species'] = this.species;
    data['gender'] = this.gender;
    data['house'] = this.house;
    data['dateOfBirth'] = this.dateOfBirth;
    data['yearOfBirth'] = this.yearOfBirth;
    data['wizard'] = this.wizard;
    data['ancestry'] = this.ancestry;
    data['eyeColour'] = this.eyeColour;
    data['hairColour'] = this.hairColour;
    if (this.wand != null) {
      data['wand'] = this.wand!.toJson();
    }
    data['patronus'] = this.patronus;
    data['hogwartsStudent'] = this.hogwartsStudent;
    data['hogwartsStaff'] = this.hogwartsStaff;
    data['actor'] = this.actor;
    if (this.alternateActors != null) {
      data['alternate_actors'] =
          this.alternateActors!.map((v) => v.toJson()).toList();
    }
    data['alive'] = this.alive;
    data['image'] = this.image;
    return data;
  }
}

class Wand {
  String? wood;
  String? core;
  dynamic length;

  Wand({this.wood, this.core, this.length});

  Wand.fromJson(Map<String, dynamic> json) {
    wood = json['wood'];
    core = json['core'];
    length = json['length'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['wood'] = this.wood;
    data['core'] = this.core;
    data['length'] = this.length;
    return data;
  }
}