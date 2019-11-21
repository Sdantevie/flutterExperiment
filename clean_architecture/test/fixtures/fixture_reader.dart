import 'dart:io';

String fixture(String name) => File('/workspace/flutterExperiment/clean_architecture/test/fixtures/$name').readAsStringSync();
