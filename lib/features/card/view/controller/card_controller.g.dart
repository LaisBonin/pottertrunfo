// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CardController on _CardControllerBase, Store {
  late final _$characteresListAtom =
      Atom(name: '_CardControllerBase.characteresList', context: context);

  @override
  ObservableList<HpApi> get characteresList {
    _$characteresListAtom.reportRead();
    return super.characteresList;
  }

  @override
  set characteresList(ObservableList<HpApi> value) {
    _$characteresListAtom.reportWrite(value, super.characteresList, () {
      super.characteresList = value;
    });
  }

  late final _$getHouseAsyncAction =
      AsyncAction('_CardControllerBase.getHouse', context: context);

  @override
  Future<void> getHouse(String house) {
    return _$getHouseAsyncAction.run(() => super.getHouse(house));
  }

  @override
  String toString() {
    return '''
characteresList: ${characteresList}
    ''';
  }
}
