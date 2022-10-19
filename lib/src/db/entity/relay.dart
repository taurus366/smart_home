part of smart_home.entity;

@MSerializable()
class Relay {
  static const int MOMENTARY = 0x00;
  static const int TOGGLE = 0x01;
  static const int EMERGENCY = 0xFF;

  static const String $relay = 'relay';
  static String get $table => $relay;
  static const String $online = 'online';
  static const String $config = 'config';

  int? id;
  String? address;
  int? index;
  String? description;
  bool state = false;

  int? version;
  int? mode;
  int? duration;

  Relay();

  String getRepresentation() => description ?? '';
  Map pair2() => {'k': id, 'v': getRepresentation()};

  void init(Map data) => _$RelayFromMap(this, data);
  Map<String, dynamic> toMap() => _$RelayToMap(this);
  Map<String, dynamic> toJson() => _$RelayToMap(this, true);

}

class RelayCollection<E extends Relay> extends Collection<E> {
  List<Map> pair() => map((e) => e.pair2()).toList();
}