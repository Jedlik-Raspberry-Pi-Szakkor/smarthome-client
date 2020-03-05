///
//  Generated code. Do not modify.
//  source: house.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const ProtoRoom$json = const {
  '1': 'ProtoRoom',
  '2': const [
    const {'1': 'Nappali', '2': 0},
    const {'1': 'Konyha', '2': 1},
    const {'1': 'Haloszoba', '2': 2},
    const {'1': 'Vendegszoba', '2': 3},
  ],
};

const Empty$json = const {
  '1': 'Empty',
};

const LightChangeMessage$json = const {
  '1': 'LightChangeMessage',
  '2': const [
    const {'1': 'room', '3': 1, '4': 1, '5': 14, '6': '.house.ProtoRoom', '10': 'room'},
    const {'1': 'isOn', '3': 2, '4': 1, '5': 8, '10': 'isOn'},
  ],
};

const Event$json = const {
  '1': 'Event',
  '2': const [
    const {'1': 'lightChangeEvent', '3': 1, '4': 1, '5': 11, '6': '.house.LightChangeEvent', '9': 0, '10': 'lightChangeEvent'},
  ],
  '8': const [
    const {'1': 'event'},
  ],
};

const LightChangeEvent$json = const {
  '1': 'LightChangeEvent',
  '2': const [
    const {'1': 'room', '3': 1, '4': 1, '5': 14, '6': '.house.ProtoRoom', '10': 'room'},
    const {'1': 'isOn', '3': 2, '4': 1, '5': 8, '10': 'isOn'},
  ],
};

