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


/** This is an auto generated class representing the NormalMode type in your schema. */
class NormalMode extends amplify_core.Model {
  static const classType = const _NormalModeModelType();
  final String id;
  final String? _name;
  final int? _duration;
  final List<Question>? _questions;
  final String? _description;
  final String? _image;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  NormalModeModelIdentifier get modelIdentifier {
      return NormalModeModelIdentifier(
        id: id
      );
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get duration {
    try {
      return _duration!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<Question>? get questions {
    return _questions;
  }
  
  String? get description {
    return _description;
  }
  
  String? get image {
    return _image;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const NormalMode._internal({required this.id, required name, required duration, questions, description, image, createdAt, updatedAt}): _name = name, _duration = duration, _questions = questions, _description = description, _image = image, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory NormalMode({String? id, required String name, required int duration, List<Question>? questions, String? description, String? image}) {
    return NormalMode._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      name: name,
      duration: duration,
      questions: questions != null ? List<Question>.unmodifiable(questions) : questions,
      description: description,
      image: image);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NormalMode &&
      id == other.id &&
      _name == other._name &&
      _duration == other._duration &&
      DeepCollectionEquality().equals(_questions, other._questions) &&
      _description == other._description &&
      _image == other._image;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("NormalMode {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("duration=" + (_duration != null ? _duration!.toString() : "null") + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("image=" + "$_image" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  NormalMode copyWith({String? name, int? duration, List<Question>? questions, String? description, String? image}) {
    return NormalMode._internal(
      id: id,
      name: name ?? this.name,
      duration: duration ?? this.duration,
      questions: questions ?? this.questions,
      description: description ?? this.description,
      image: image ?? this.image);
  }
  
  NormalMode copyWithModelFieldValues({
    ModelFieldValue<String>? name,
    ModelFieldValue<int>? duration,
    ModelFieldValue<List<Question>?>? questions,
    ModelFieldValue<String?>? description,
    ModelFieldValue<String?>? image
  }) {
    return NormalMode._internal(
      id: id,
      name: name == null ? this.name : name.value,
      duration: duration == null ? this.duration : duration.value,
      questions: questions == null ? this.questions : questions.value,
      description: description == null ? this.description : description.value,
      image: image == null ? this.image : image.value
    );
  }
  
  NormalMode.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _duration = (json['duration'] as num?)?.toInt(),
      _questions = json['questions'] is List
        ? (json['questions'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Question.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _description = json['description'],
      _image = json['image'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'duration': _duration, 'questions': _questions?.map((Question? e) => e?.toJson()).toList(), 'description': _description, 'image': _image, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'name': _name,
    'duration': _duration,
    'questions': _questions,
    'description': _description,
    'image': _image,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<NormalModeModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<NormalModeModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final DURATION = amplify_core.QueryField(fieldName: "duration");
  static final QUESTIONS = amplify_core.QueryField(
    fieldName: "questions",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Question'));
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "description");
  static final IMAGE = amplify_core.QueryField(fieldName: "image");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "NormalMode";
    modelSchemaDefinition.pluralName = "NormalModes";
    
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
      key: NormalMode.NAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: NormalMode.DURATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: NormalMode.QUESTIONS,
      isRequired: false,
      ofModelName: 'Question',
      associatedKey: Question.NORMALMODEID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: NormalMode.DESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: NormalMode.IMAGE,
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

class _NormalModeModelType extends amplify_core.ModelType<NormalMode> {
  const _NormalModeModelType();
  
  @override
  NormalMode fromJson(Map<String, dynamic> jsonData) {
    return NormalMode.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'NormalMode';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [NormalMode] in your schema.
 */
class NormalModeModelIdentifier implements amplify_core.ModelIdentifier<NormalMode> {
  final String id;

  /** Create an instance of NormalModeModelIdentifier using [id] the primary key. */
  const NormalModeModelIdentifier({
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
  String toString() => 'NormalModeModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is NormalModeModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}