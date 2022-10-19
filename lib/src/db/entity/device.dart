part of smart_home.entity;

@MSerializable()
class Device {

  static const String $device = 'device';
  static const String $address_f = 'address_f';
  static String get $table => $device;
  static const String $online = 'online';
  static const String $attach = 'attach';

  String? address;
  String? label;
  int? type;
  int? firmware_version;
  int? connection_timeout;
  int? read_timeout;
  int? reply_timeout;
  int? ping_interval;
  String? description;
  String? serial;
  bool boot_loader = false;

  Device();
  String getRepresentation() => description ?? '';
  Map pair2() => {'k': address, 'v': getRepresentation()};


  void init(Map data) => _$DeviceFromMap(this, data);

  Map<String, dynamic> toMap() => _$DeviceToMap(this);
  Map<String, dynamic> toJson() => _$DeviceToMap(this, true);
}

class DeviceCollection<E extends Device> extends Collection<E> {
  List<Map> pair() => map((e) => e.pair2()).toList();

}