import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  String url = "https://slumberjer.com/rentaroom/php/load_rooms.php";
  final response = await http.get(url);

  RoomDetails allDetails = RoomDetails.fromJson(jsonDecode(response.body));
}

class RoomDetails {
  RoomDetails({
    required this.status,
    required this.data,
  });
  late final String status;
  late final Data data;

  RoomDetails.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.rooms,
  });
  late final List<Rooms> rooms;

  Data.fromJson(Map<String, dynamic> json) {
    rooms = List.from(json['rooms']).map((e) => Rooms.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['rooms'] = rooms.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Rooms {
  Rooms({
    required this.roomid,
    required this.contact,
    required this.title,
    required this.description,
    required this.price,
    required this.deposit,
    required this.state,
    required this.area,
    required this.dateCreated,
    required this.latitude,
    required this.longitude,
  });
  late final String roomid;
  late final String contact;
  late final String title;
  late final String description;
  late final String price;
  late final String deposit;
  late final String state;
  late final String area;
  late final String dateCreated;
  late final String latitude;
  late final String longitude;

  Rooms.fromJson(Map<String, dynamic> json) {
    roomid = json['roomid'];
    contact = json['contact'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    deposit = json['deposit'];
    state = json['state'];
    area = json['area'];
    dateCreated = json['date_created'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['roomid'] = roomid;
    _data['contact'] = contact;
    _data['title'] = title;
    _data['description'] = description;
    _data['price'] = price;
    _data['deposit'] = deposit;
    _data['state'] = state;
    _data['area'] = area;
    _data['date_created'] = dateCreated;
    _data['latitude'] = latitude;
    _data['longitude'] = longitude;
    return _data;
  }
}
