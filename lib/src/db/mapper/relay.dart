part of smart_home.mapper;

class RelayMapper extends Mapper<Relay, RelayCollection> {
  String get table => entity.Relay.$table;
  dynamic pkey = entity.$Relay.id;

  RelayMapper(m) : super(m);

  CollectionBuilder<Relay, RelayCollection> findAllByBuilder() =>
  collectionBuilder(selectBuilder())
  ..filterRule = (new FilterRule()
  ..eq = [pkey, entity.$Relay.index]
  ..llike = [entity.$Relay.address, entity.$Relay.description]);

}

class Relay extends entity.Relay with Entity {}

class RelayCollection extends entity.RelayCollection<Relay> {}