/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;


/** This is an auto generated class representing the RoomMember type in your schema. */
class RoomMember extends amplify_core.Model {
  static const classType = const _RoomMemberModelType();
  final String id;
  final String? _playerID;
  final String? _roomID;
  final String? _status;
  final String? _playerName;
  final String? _playerImage;
  final int? _playerLevel;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  RoomMemberModelIdentifier get modelIdentifier {
      return RoomMemberModelIdentifier(
        id: id
      );
  }
  
  String get playerID {
    try {
      return _playerID!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get roomID {
    try {
      return _roomID!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get status {
    return _status;
  }
  
  String? get playerName {
    return _playerName;
  }
  
  String? get playerImage {
    return _playerImage;
  }
  
  int? get playerLevel {
    return _playerLevel;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const RoomMember._internal({required this.id, required playerID, required roomID, status, playerName, playerImage, playerLevel, createdAt, updatedAt}): _playerID = playerID, _roomID = roomID, _status = status, _playerName = playerName, _playerImage = playerImage, _playerLevel = playerLevel, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory RoomMember({String? id, required String playerID, required String roomID, String? status, String? playerName, String? playerImage, int? playerLevel}) {
    return RoomMember._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      playerID: playerID,
      roomID: roomID,
      status: status,
      playerName: playerName,
      playerImage: playerImage,
      playerLevel: playerLevel);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RoomMember &&
      id == other.id &&
      _playerID == other._playerID &&
      _roomID == other._roomID &&
      _status == other._status &&
      _playerName == other._playerName &&
      _playerImage == other._playerImage &&
      _playerLevel == other._playerLevel;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("RoomMember {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("playerID=" + "$_playerID" + ", ");
    buffer.write("roomID=" + "$_roomID" + ", ");
    buffer.write("status=" + "$_status" + ", ");
    buffer.write("playerName=" + "$_playerName" + ", ");
    buffer.write("playerImage=" + "$_playerImage" + ", ");
    buffer.write("playerLevel=" + (_playerLevel != null ? _playerLevel!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  RoomMember copyWith({String? playerID, String? roomID, String? status, String? playerName, String? playerImage, int? playerLevel}) {
    return RoomMember._internal(
      id: id,
      playerID: playerID ?? this.playerID,
      roomID: roomID ?? this.roomID,
      status: status ?? this.status,
      playerName: playerName ?? this.playerName,
      playerImage: playerImage ?? this.playerImage,
      playerLevel: playerLevel ?? this.playerLevel);
  }
  
  RoomMember copyWithModelFieldValues({
    ModelFieldValue<String>? playerID,
    ModelFieldValue<String>? roomID,
    ModelFieldValue<String?>? status,
    ModelFieldValue<String?>? playerName,
    ModelFieldValue<String?>? playerImage,
    ModelFieldValue<int?>? playerLevel
  }) {
    return RoomMember._internal(
      id: id,
      playerID: playerID == null ? this.playerID : playerID.value,
      roomID: roomID == null ? this.roomID : roomID.value,
      status: status == null ? this.status : status.value,
      playerName: playerName == null ? this.playerName : playerName.value,
      playerImage: playerImage == null ? this.playerImage : playerImage.value,
      playerLevel: playerLevel == null ? this.playerLevel : playerLevel.value
    );
  }
  
  RoomMember.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _playerID = json['playerID'],
      _roomID = json['roomID'],
      _status = json['status'],
      _playerName = json['playerName'],
      _playerImage = json['playerImage'],
      _playerLevel = (json['playerLevel'] as num?)?.toInt(),
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'playerID': _playerID, 'roomID': _roomID, 'status': _status, 'playerName': _playerName, 'playerImage': _playerImage, 'playerLevel': _playerLevel, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'playerID': _playerID,
    'roomID': _roomID,
    'status': _status,
    'playerName': _playerName,
    'playerImage': _playerImage,
    'playerLevel': _playerLevel,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<RoomMemberModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<RoomMemberModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final PLAYERID = amplify_core.QueryField(fieldName: "playerID");
  static final ROOMID = amplify_core.QueryField(fieldName: "roomID");
  static final STATUS = amplify_core.QueryField(fieldName: "status");
  static final PLAYERNAME = amplify_core.QueryField(fieldName: "playerName");
  static final PLAYERIMAGE = amplify_core.QueryField(fieldName: "playerImage");
  static final PLAYERLEVEL = amplify_core.QueryField(fieldName: "playerLevel");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "RoomMember";
    modelSchemaDefinition.pluralName = "RoomMembers";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PUBLIC,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: RoomMember.PLAYERID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: RoomMember.ROOMID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: RoomMember.STATUS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: RoomMember.PLAYERNAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: RoomMember.PLAYERIMAGE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: RoomMember.PLAYERLEVEL,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _RoomMemberModelType extends amplify_core.ModelType<RoomMember> {
  const _RoomMemberModelType();
  
  @override
  RoomMember fromJson(Map<String, dynamic> jsonData) {
    return RoomMember.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'RoomMember';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [RoomMember] in your schema.
 */
class RoomMemberModelIdentifier implements amplify_core.ModelIdentifier<RoomMember> {
  final String id;

  /** Create an instance of RoomMemberModelIdentifier using [id] the primary key. */
  const RoomMemberModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'RoomMemberModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is RoomMemberModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}