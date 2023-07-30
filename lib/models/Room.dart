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
import 'package:collection/collection.dart';


/** This is an auto generated class representing the Room type in your schema. */
class Room extends amplify_core.Model {
  static const classType = const _RoomModelType();
  final String id;
  final int? _totalMembers;
  final int? _maxMembers;
  final RoomStatus? _status;
  final String? _category;
  final int? _currentQuestion;
  final List<String>? _questionIDs;
  final String? _points;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  RoomModelIdentifier get modelIdentifier {
      return RoomModelIdentifier(
        id: id
      );
  }
  
  int get totalMembers {
    try {
      return _totalMembers!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get maxMembers {
    try {
      return _maxMembers!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  RoomStatus? get status {
    return _status;
  }
  
  String get category {
    try {
      return _category!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get currentQuestion {
    try {
      return _currentQuestion!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<String> get questionIDs {
    try {
      return _questionIDs!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get points {
    return _points;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Room._internal({required this.id, required totalMembers, required maxMembers, status, required category, required currentQuestion, required questionIDs, points, createdAt, updatedAt}): _totalMembers = totalMembers, _maxMembers = maxMembers, _status = status, _category = category, _currentQuestion = currentQuestion, _questionIDs = questionIDs, _points = points, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Room({String? id, required int totalMembers, required int maxMembers, RoomStatus? status, required String category, required int currentQuestion, required List<String> questionIDs, String? points}) {
    return Room._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      totalMembers: totalMembers,
      maxMembers: maxMembers,
      status: status,
      category: category,
      currentQuestion: currentQuestion,
      questionIDs: questionIDs != null ? List<String>.unmodifiable(questionIDs) : questionIDs,
      points: points);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Room &&
      id == other.id &&
      _totalMembers == other._totalMembers &&
      _maxMembers == other._maxMembers &&
      _status == other._status &&
      _category == other._category &&
      _currentQuestion == other._currentQuestion &&
      DeepCollectionEquality().equals(_questionIDs, other._questionIDs) &&
      _points == other._points;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Room {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("totalMembers=" + (_totalMembers != null ? _totalMembers!.toString() : "null") + ", ");
    buffer.write("maxMembers=" + (_maxMembers != null ? _maxMembers!.toString() : "null") + ", ");
    buffer.write("status=" + (_status != null ? amplify_core.enumToString(_status)! : "null") + ", ");
    buffer.write("category=" + "$_category" + ", ");
    buffer.write("currentQuestion=" + (_currentQuestion != null ? _currentQuestion!.toString() : "null") + ", ");
    buffer.write("questionIDs=" + (_questionIDs != null ? _questionIDs!.toString() : "null") + ", ");
    buffer.write("points=" + "$_points" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Room copyWith({int? totalMembers, int? maxMembers, RoomStatus? status, String? category, int? currentQuestion, List<String>? questionIDs, String? points}) {
    return Room._internal(
      id: id,
      totalMembers: totalMembers ?? this.totalMembers,
      maxMembers: maxMembers ?? this.maxMembers,
      status: status ?? this.status,
      category: category ?? this.category,
      currentQuestion: currentQuestion ?? this.currentQuestion,
      questionIDs: questionIDs ?? this.questionIDs,
      points: points ?? this.points);
  }
  
  Room copyWithModelFieldValues({
    ModelFieldValue<int>? totalMembers,
    ModelFieldValue<int>? maxMembers,
    ModelFieldValue<RoomStatus?>? status,
    ModelFieldValue<String>? category,
    ModelFieldValue<int>? currentQuestion,
    ModelFieldValue<List<String>?>? questionIDs,
    ModelFieldValue<String?>? points
  }) {
    return Room._internal(
      id: id,
      totalMembers: totalMembers == null ? this.totalMembers : totalMembers.value,
      maxMembers: maxMembers == null ? this.maxMembers : maxMembers.value,
      status: status == null ? this.status : status.value,
      category: category == null ? this.category : category.value,
      currentQuestion: currentQuestion == null ? this.currentQuestion : currentQuestion.value,
      questionIDs: questionIDs == null ? this.questionIDs : questionIDs.value,
      points: points == null ? this.points : points.value
    );
  }
  
  Room.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _totalMembers = (json['totalMembers'] as num?)?.toInt(),
      _maxMembers = (json['maxMembers'] as num?)?.toInt(),
      _status = amplify_core.enumFromString<RoomStatus>(json['status'], RoomStatus.values),
      _category = json['category'],
      _currentQuestion = (json['currentQuestion'] as num?)?.toInt(),
      _questionIDs = json['questionIDs']?.cast<String>(),
      _points = json['points'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'totalMembers': _totalMembers, 'maxMembers': _maxMembers, 'status': amplify_core.enumToString(_status), 'category': _category, 'currentQuestion': _currentQuestion, 'questionIDs': _questionIDs, 'points': _points, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'totalMembers': _totalMembers,
    'maxMembers': _maxMembers,
    'status': _status,
    'category': _category,
    'currentQuestion': _currentQuestion,
    'questionIDs': _questionIDs,
    'points': _points,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<RoomModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<RoomModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final TOTALMEMBERS = amplify_core.QueryField(fieldName: "totalMembers");
  static final MAXMEMBERS = amplify_core.QueryField(fieldName: "maxMembers");
  static final STATUS = amplify_core.QueryField(fieldName: "status");
  static final CATEGORY = amplify_core.QueryField(fieldName: "category");
  static final CURRENTQUESTION = amplify_core.QueryField(fieldName: "currentQuestion");
  static final QUESTIONIDS = amplify_core.QueryField(fieldName: "questionIDs");
  static final POINTS = amplify_core.QueryField(fieldName: "points");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Room";
    modelSchemaDefinition.pluralName = "Rooms";
    
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
      key: Room.TOTALMEMBERS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Room.MAXMEMBERS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Room.STATUS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Room.CATEGORY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Room.CURRENTQUESTION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Room.QUESTIONIDS,
      isRequired: true,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Room.POINTS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
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

class _RoomModelType extends amplify_core.ModelType<Room> {
  const _RoomModelType();
  
  @override
  Room fromJson(Map<String, dynamic> jsonData) {
    return Room.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Room';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Room] in your schema.
 */
class RoomModelIdentifier implements amplify_core.ModelIdentifier<Room> {
  final String id;

  /** Create an instance of RoomModelIdentifier using [id] the primary key. */
  const RoomModelIdentifier({
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
  String toString() => 'RoomModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is RoomModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}