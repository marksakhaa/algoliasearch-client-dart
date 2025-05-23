// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_client_search/src/model/consequence_params.dart';
import 'package:algolia_client_search/src/model/consequence_hide.dart';

import 'package:json_annotation/json_annotation.dart';

part 'consequence.g.dart';

@JsonSerializable()
final class Consequence {
  /// Returns a new [Consequence] instance.
  const Consequence({
    this.params,
    this.promote,
    this.filterPromotes,
    this.hide,
    this.userData,
  });

  @JsonKey(name: r'params')
  final ConsequenceParams? params;

  /// Records you want to pin to a specific position in the search results.  You can promote up to 300 records, either individually, or as groups of up to 100 records each.
  /// One of types:
  /// - [PromoteObjectIDs]
  /// - [PromoteObjectID]
  @JsonKey(name: r'promote')
  final Iterable<dynamic>? promote;

  /// Whether promoted records must match an active filter for the consequence to be applied.  This ensures that user actions (filtering the search) are given a higher precendence. For example, if you promote a record with the `color: red` attribute, and the user filters the search for `color: blue`, the \"red\" record won't be shown.
  @JsonKey(name: r'filterPromotes')
  final bool? filterPromotes;

  /// Records you want to hide from the search results.
  @JsonKey(name: r'hide')
  final List<ConsequenceHide>? hide;

  /// A JSON object with custom data that will be appended to the `userData` array in the response. This object isn't interpreted by the API and is limited to 1&nbsp;kB of minified JSON.
  @JsonKey(name: r'userData')
  final Object? userData;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Consequence &&
          other.params == params &&
          other.promote == promote &&
          other.filterPromotes == filterPromotes &&
          other.hide == hide &&
          other.userData == userData;

  @override
  int get hashCode =>
      params.hashCode +
      promote.hashCode +
      filterPromotes.hashCode +
      hide.hashCode +
      userData.hashCode;

  factory Consequence.fromJson(Map<String, dynamic> json) =>
      _$ConsequenceFromJson(json);

  Map<String, dynamic> toJson() => _$ConsequenceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
