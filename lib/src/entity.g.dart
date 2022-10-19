// GENERATED CODE - DO NOT MODIFY BY HAND

part of smart_home.entity;

// **************************************************************************
// EntitySerializableGenerator
// **************************************************************************

abstract class $Device {
  static const String address = 'address',
      label = 'label',
      type = 'type',
      firmware_version = 'firmware_version',
      connection_timeout = 'connection_timeout',
      read_timeout = 'read_timeout',
      reply_timeout = 'reply_timeout',
      ping_interval = 'ping_interval',
      description = 'description',
      serial = 'serial',
      boot_loader = 'boot_loader';
}

void _$DeviceFromMap(Device obj, Map data) => obj
  ..address = data[$Device.address]
  ..label = data[$Device.label]
  ..type = data[$Device.type]
  ..firmware_version = data[$Device.firmware_version]
  ..connection_timeout = data[$Device.connection_timeout]
  ..read_timeout = data[$Device.read_timeout]
  ..reply_timeout = data[$Device.reply_timeout]
  ..ping_interval = data[$Device.ping_interval]
  ..description = data[$Device.description]
  ..serial = data[$Device.serial]
  ..boot_loader = data[$Device.boot_loader];

Map<String, dynamic> _$DeviceToMap(Device obj, [asJson = false]) =>
    <String, dynamic>{
      $Device.address: obj.address,
      $Device.label: obj.label,
      $Device.type: obj.type,
      $Device.firmware_version: obj.firmware_version,
      $Device.connection_timeout: obj.connection_timeout,
      $Device.read_timeout: obj.read_timeout,
      $Device.reply_timeout: obj.reply_timeout,
      $Device.ping_interval: obj.ping_interval,
      $Device.description: obj.description,
      $Device.serial: obj.serial,
      $Device.boot_loader: obj.boot_loader
    };

abstract class $Relay {
  static const String id = 'id',
      address = 'address',
      index = 'index',
      description = 'description',
      state = 'state',
      version = 'version',
      mode = 'mode',
      duration = 'duration';
}

void _$RelayFromMap(Relay obj, Map data) => obj
  ..id = data[$Relay.id]
  ..address = data[$Relay.address]
  ..index = data[$Relay.index]
  ..description = data[$Relay.description]
  ..state = data[$Relay.state]
  ..version = data[$Relay.version]
  ..mode = data[$Relay.mode]
  ..duration = data[$Relay.duration];

Map<String, dynamic> _$RelayToMap(Relay obj, [asJson = false]) =>
    <String, dynamic>{
      $Relay.id: obj.id,
      $Relay.address: obj.address,
      $Relay.index: obj.index,
      $Relay.description: obj.description,
      $Relay.state: obj.state,
      $Relay.version: obj.version,
      $Relay.mode: obj.mode,
      $Relay.duration: obj.duration
    };
