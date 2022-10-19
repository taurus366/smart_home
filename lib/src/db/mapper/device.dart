part of smart_home.mapper;

class DeviceMapper extends Mapper<Device, DeviceCollection> {
  DeviceMapper(m) : super(m);

  String get table => entity.Device.$table;
  dynamic pkey = entity.$Device.address;

  // Custom FindAll where get all records then order by key(address) like id
  Future<DeviceCollection> findAll() => loadC(selectBuilder()..orderBy(pkey));

  CollectionBuilder<Device, DeviceCollection> findAllByBuilder() =>
      collectionBuilder(selectBuilder())
      ..filterRule = (new FilterRule()
      ..like = [
        pkey,
        entity.$Device.label,
        entity.$Device.type,
        entity.$Device.firmware_version,
        entity.$Device.connection_timeout,
        entity.$Device.reply_timeout,
        entity.$Device.ping_interval,
        entity.$Device.description,
        entity.$Device.serial

      ]
          ..map = {entity.Device.$address_f: pkey});

}

class Device extends entity.Device with Entity {}

class DeviceCollection extends entity.DeviceCollection<Device> {}
