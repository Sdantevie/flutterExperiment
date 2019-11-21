import 'dart:io';

String fixture(String name) => File('/workspace/flutterExperiment/counter/test/fixtures/$name').readAsStringSync();
