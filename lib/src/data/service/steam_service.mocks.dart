// Mocks generated by Mockito 5.3.2 from annotations
// in steam_app/src/data/service/steam_service.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dio/dio.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:steam_app/src/data/model/steam_model.dart' as _i5;
import 'package:steam_app/src/data/service/steam_service.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeDio_0 extends _i1.SmartFake implements _i2.Dio {
  _FakeDio_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [SteamService].
///
/// See the documentation for Mockito's code generation for more information.
class MockSteamService extends _i1.Mock implements _i3.SteamService {
  MockSteamService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Dio get dio => (super.noSuchMethod(
        Invocation.getter(#dio),
        returnValue: _FakeDio_0(
          this,
          Invocation.getter(#dio),
        ),
      ) as _i2.Dio);
  @override
  _i4.Future<List<_i5.SteamModel>> getSteam() => (super.noSuchMethod(
        Invocation.method(
          #getSteam,
          [],
        ),
        returnValue: _i4.Future<List<_i5.SteamModel>>.value(<_i5.SteamModel>[]),
      ) as _i4.Future<List<_i5.SteamModel>>);
}
