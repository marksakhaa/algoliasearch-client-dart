// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_object_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaveObjectResponse _$SaveObjectResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SaveObjectResponse',
      json,
      ($checkedConvert) {
        final val = SaveObjectResponse(
          createdAt: $checkedConvert('createdAt', (v) => v as String),
          taskID: $checkedConvert('taskID', (v) => (v as num).toInt()),
          objectID: $checkedConvert('objectID', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$SaveObjectResponseToJson(SaveObjectResponse instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'taskID': instance.taskID,
      if (instance.objectID case final value?) 'objectID': value,
    };
