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


/** This is an auto generated class representing the Question type in your schema. */
class Question extends amplify_core.Model {
  static const classType = const _QuestionModelType();
  final String id;
  final String? _body;
  final List<String>? _options;
  final String? _answer;
  final String? _totalRight;
  final String? _totalWrong;
  final String? _totalViews;
  final int? _level;
  final String? _competitionmodeID;
  final String? _racemodeID;
  final String? _normalmodeID;
  final String? _image;
  final List<String>? _categories;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  QuestionModelIdentifier get modelIdentifier {
      return QuestionModelIdentifier(
        id: id
      );
  }
  
  String get body {
    try {
      return _body!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<String> get options {
    try {
      return _options!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get answer {
    try {
      return _answer!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get totalRight {
    try {
      return _totalRight!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get totalWrong {
    try {
      return _totalWrong!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get totalViews {
    try {
      return _totalViews!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int? get level {
    return _level;
  }
  
  String get competitionmodeID {
    try {
      return _competitionmodeID!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get racemodeID {
    try {
      return _racemodeID!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get normalmodeID {
    try {
      return _normalmodeID!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get image {
    return _image;
  }
  
  List<String> get categories {
    try {
      return _categories!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Question._internal({required this.id, required body, required options, required answer, required totalRight, required totalWrong, required totalViews, level, required competitionmodeID, required racemodeID, required normalmodeID, image, required categories, createdAt, updatedAt}): _body = body, _options = options, _answer = answer, _totalRight = totalRight, _totalWrong = totalWrong, _totalViews = totalViews, _level = level, _competitionmodeID = competitionmodeID, _racemodeID = racemodeID, _normalmodeID = normalmodeID, _image = image, _categories = categories, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Question({String? id, required String body, required List<String> options, required String answer, required String totalRight, required String totalWrong, required String totalViews, int? level, required String competitionmodeID, required String racemodeID, required String normalmodeID, String? image, required List<String> categories}) {
    return Question._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      body: body,
      options: options != null ? List<String>.unmodifiable(options) : options,
      answer: answer,
      totalRight: totalRight,
      totalWrong: totalWrong,
      totalViews: totalViews,
      level: level,
      competitionmodeID: competitionmodeID,
      racemodeID: racemodeID,
      normalmodeID: normalmodeID,
      image: image,
      categories: categories != null ? List<String>.unmodifiable(categories) : categories);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Question &&
      id == other.id &&
      _body == other._body &&
      DeepCollectionEquality().equals(_options, other._options) &&
      _answer == other._answer &&
      _totalRight == other._totalRight &&
      _totalWrong == other._totalWrong &&
      _totalViews == other._totalViews &&
      _level == other._level &&
      _competitionmodeID == other._competitionmodeID &&
      _racemodeID == other._racemodeID &&
      _normalmodeID == other._normalmodeID &&
      _image == other._image &&
      DeepCollectionEquality().equals(_categories, other._categories);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Question {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("body=" + "$_body" + ", ");
    buffer.write("options=" + (_options != null ? _options!.toString() : "null") + ", ");
    buffer.write("answer=" + "$_answer" + ", ");
    buffer.write("totalRight=" + "$_totalRight" + ", ");
    buffer.write("totalWrong=" + "$_totalWrong" + ", ");
    buffer.write("totalViews=" + "$_totalViews" + ", ");
    buffer.write("level=" + (_level != null ? _level!.toString() : "null") + ", ");
    buffer.write("competitionmodeID=" + "$_competitionmodeID" + ", ");
    buffer.write("racemodeID=" + "$_racemodeID" + ", ");
    buffer.write("normalmodeID=" + "$_normalmodeID" + ", ");
    buffer.write("image=" + "$_image" + ", ");
    buffer.write("categories=" + (_categories != null ? _categories!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Question copyWith({String? body, List<String>? options, String? answer, String? totalRight, String? totalWrong, String? totalViews, int? level, String? competitionmodeID, String? racemodeID, String? normalmodeID, String? image, List<String>? categories}) {
    return Question._internal(
      id: id,
      body: body ?? this.body,
      options: options ?? this.options,
      answer: answer ?? this.answer,
      totalRight: totalRight ?? this.totalRight,
      totalWrong: totalWrong ?? this.totalWrong,
      totalViews: totalViews ?? this.totalViews,
      level: level ?? this.level,
      competitionmodeID: competitionmodeID ?? this.competitionmodeID,
      racemodeID: racemodeID ?? this.racemodeID,
      normalmodeID: normalmodeID ?? this.normalmodeID,
      image: image ?? this.image,
      categories: categories ?? this.categories);
  }
  
  Question copyWithModelFieldValues({
    ModelFieldValue<String>? body,
    ModelFieldValue<List<String>>? options,
    ModelFieldValue<String>? answer,
    ModelFieldValue<String>? totalRight,
    ModelFieldValue<String>? totalWrong,
    ModelFieldValue<String>? totalViews,
    ModelFieldValue<int?>? level,
    ModelFieldValue<String>? competitionmodeID,
    ModelFieldValue<String>? racemodeID,
    ModelFieldValue<String>? normalmodeID,
    ModelFieldValue<String?>? image,
    ModelFieldValue<List<String>>? categories
  }) {
    return Question._internal(
      id: id,
      body: body == null ? this.body : body.value,
      options: options == null ? this.options : options.value,
      answer: answer == null ? this.answer : answer.value,
      totalRight: totalRight == null ? this.totalRight : totalRight.value,
      totalWrong: totalWrong == null ? this.totalWrong : totalWrong.value,
      totalViews: totalViews == null ? this.totalViews : totalViews.value,
      level: level == null ? this.level : level.value,
      competitionmodeID: competitionmodeID == null ? this.competitionmodeID : competitionmodeID.value,
      racemodeID: racemodeID == null ? this.racemodeID : racemodeID.value,
      normalmodeID: normalmodeID == null ? this.normalmodeID : normalmodeID.value,
      image: image == null ? this.image : image.value,
      categories: categories == null ? this.categories : categories.value
    );
  }
  
  Question.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _body = json['body'],
      _options = json['options']?.cast<String>(),
      _answer = json['answer'],
      _totalRight = json['totalRight'],
      _totalWrong = json['totalWrong'],
      _totalViews = json['totalViews'],
      _level = (json['level'] as num?)?.toInt(),
      _competitionmodeID = json['competitionmodeID'],
      _racemodeID = json['racemodeID'],
      _normalmodeID = json['normalmodeID'],
      _image = json['image'],
      _categories = json['categories']?.cast<String>(),
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'body': _body, 'options': _options, 'answer': _answer, 'totalRight': _totalRight, 'totalWrong': _totalWrong, 'totalViews': _totalViews, 'level': _level, 'competitionmodeID': _competitionmodeID, 'racemodeID': _racemodeID, 'normalmodeID': _normalmodeID, 'image': _image, 'categories': _categories, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'body': _body,
    'options': _options,
    'answer': _answer,
    'totalRight': _totalRight,
    'totalWrong': _totalWrong,
    'totalViews': _totalViews,
    'level': _level,
    'competitionmodeID': _competitionmodeID,
    'racemodeID': _racemodeID,
    'normalmodeID': _normalmodeID,
    'image': _image,
    'categories': _categories,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<QuestionModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<QuestionModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final BODY = amplify_core.QueryField(fieldName: "body");
  static final OPTIONS = amplify_core.QueryField(fieldName: "options");
  static final ANSWER = amplify_core.QueryField(fieldName: "answer");
  static final TOTALRIGHT = amplify_core.QueryField(fieldName: "totalRight");
  static final TOTALWRONG = amplify_core.QueryField(fieldName: "totalWrong");
  static final TOTALVIEWS = amplify_core.QueryField(fieldName: "totalViews");
  static final LEVEL = amplify_core.QueryField(fieldName: "level");
  static final COMPETITIONMODEID = amplify_core.QueryField(fieldName: "competitionmodeID");
  static final RACEMODEID = amplify_core.QueryField(fieldName: "racemodeID");
  static final NORMALMODEID = amplify_core.QueryField(fieldName: "normalmodeID");
  static final IMAGE = amplify_core.QueryField(fieldName: "image");
  static final CATEGORIES = amplify_core.QueryField(fieldName: "categories");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Question";
    modelSchemaDefinition.pluralName = "Questions";
    
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
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["competitionmodeID"], name: "byCompetitionMode"),
      amplify_core.ModelIndex(fields: const ["racemodeID"], name: "byRaceMode"),
      amplify_core.ModelIndex(fields: const ["normalmodeID"], name: "byNormalMode")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Question.BODY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Question.OPTIONS,
      isRequired: true,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Question.ANSWER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Question.TOTALRIGHT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Question.TOTALWRONG,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Question.TOTALVIEWS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Question.LEVEL,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Question.COMPETITIONMODEID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Question.RACEMODEID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Question.NORMALMODEID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Question.IMAGE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Question.CATEGORIES,
      isRequired: true,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
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

class _QuestionModelType extends amplify_core.ModelType<Question> {
  const _QuestionModelType();
  
  @override
  Question fromJson(Map<String, dynamic> jsonData) {
    return Question.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Question';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Question] in your schema.
 */
class QuestionModelIdentifier implements amplify_core.ModelIdentifier<Question> {
  final String id;

  /** Create an instance of QuestionModelIdentifier using [id] the primary key. */
  const QuestionModelIdentifier({
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
  String toString() => 'QuestionModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is QuestionModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}