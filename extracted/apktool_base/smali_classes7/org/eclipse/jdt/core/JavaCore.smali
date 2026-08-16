.class public final Lorg/eclipse/jdt/core/JavaCore;
.super Lorg/eclipse/core/runtime/Plugin;
.source "SourceFile"


# static fields
.field public static final ABORT:Ljava/lang/String; = "abort"

.field protected static final ATT_HANDLE_ID:Ljava/lang/String; = "org.eclipse.jdt.internal.core.JavaModelManager.handleId"

.field public static final BUILDER_ID:Ljava/lang/String; = "org.eclipse.jdt.core.javabuilder"

.field public static final CLEAN:Ljava/lang/String; = "clean"

.field public static final CLEAR_ALL:Ljava/lang/String; = "clear all"

.field public static final CODEASSIST_ARGUMENT_PREFIXES:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.argumentPrefixes"

.field public static final CODEASSIST_ARGUMENT_SUFFIXES:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.argumentSuffixes"

.field public static final CODEASSIST_CAMEL_CASE_MATCH:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.camelCaseMatch"

.field public static final CODEASSIST_DEPRECATION_CHECK:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.deprecationCheck"

.field public static final CODEASSIST_DISCOURAGED_REFERENCE_CHECK:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.discouragedReferenceCheck"

.field public static final CODEASSIST_FIELD_PREFIXES:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.fieldPrefixes"

.field public static final CODEASSIST_FIELD_SUFFIXES:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.fieldSuffixes"

.field public static final CODEASSIST_FORBIDDEN_REFERENCE_CHECK:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.forbiddenReferenceCheck"

.field public static final CODEASSIST_IMPLICIT_QUALIFICATION:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.forceImplicitQualification"

.field public static final CODEASSIST_LOCAL_PREFIXES:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.localPrefixes"

.field public static final CODEASSIST_LOCAL_SUFFIXES:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.localSuffixes"

.field public static final CODEASSIST_STATIC_FIELD_PREFIXES:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.staticFieldPrefixes"

.field public static final CODEASSIST_STATIC_FIELD_SUFFIXES:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.staticFieldSuffixes"

.field public static final CODEASSIST_STATIC_FINAL_FIELD_PREFIXES:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.staticFinalFieldPrefixes"

.field public static final CODEASSIST_STATIC_FINAL_FIELD_SUFFIXES:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.staticFinalFieldSuffixes"

.field public static final CODEASSIST_SUBSTRING_MATCH:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.substringMatch"

.field public static final CODEASSIST_SUGGEST_STATIC_IMPORTS:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.suggestStaticImports"

.field public static final CODEASSIST_VISIBILITY_CHECK:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.visibilityCheck"

.field public static final COMPACT:Ljava/lang/String; = "compact"

.field public static final COMPILER_ANNOTATION_NULL_ANALYSIS:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.annotation.nullanalysis"

.field public static final COMPILER_CODEGEN_INLINE_JSR_BYTECODE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode"

.field public static final COMPILER_CODEGEN_METHOD_PARAMETERS_ATTR:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.codegen.methodParameters"

.field public static final COMPILER_CODEGEN_TARGET_PLATFORM:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.codegen.targetPlatform"

.field public static final COMPILER_CODEGEN_UNUSED_LOCAL:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.codegen.unusedLocal"

.field public static final COMPILER_COMPLIANCE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.compliance"

.field public static final COMPILER_DOC_COMMENT_SUPPORT:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.doc.comment.support"

.field public static final COMPILER_INHERIT_NULL_ANNOTATIONS:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.annotation.inheritNullAnnotations"

.field public static final COMPILER_LINE_NUMBER_ATTR:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.debug.lineNumber"

.field public static final COMPILER_LOCAL_VARIABLE_ATTR:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.debug.localVariable"

.field public static final COMPILER_NONNULL_ANNOTATION_NAME:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.annotation.nonnull"

.field public static final COMPILER_NONNULL_ANNOTATION_SECONDARY_NAMES:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.annotation.nonnull.secondary"

.field public static final COMPILER_NONNULL_BY_DEFAULT_ANNOTATION_NAME:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.annotation.nonnullbydefault"

.field public static final COMPILER_NONNULL_BY_DEFAULT_ANNOTATION_SECONDARY_NAMES:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.annotation.nonnullbydefault.secondary"

.field public static final COMPILER_NULLABLE_ANNOTATION_NAME:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.annotation.nullable"

.field public static final COMPILER_NULLABLE_ANNOTATION_SECONDARY_NAMES:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.annotation.nullable.secondary"

.field public static final COMPILER_PB_ANNOTATION_SUPER_INTERFACE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.annotationSuperInterface"

.field public static final COMPILER_PB_API_LEAKS:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.APILeak"

.field public static final COMPILER_PB_ASSERT_IDENTIFIER:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.assertIdentifier"

.field public static final COMPILER_PB_AUTOBOXING:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.autoboxing"

.field public static final COMPILER_PB_BOOLEAN_METHOD_THROWING_EXCEPTION:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.booleanMethodThrowingException"

.field public static final COMPILER_PB_CHAR_ARRAY_IN_STRING_CONCATENATION:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.noImplicitStringConversion"

.field public static final COMPILER_PB_COMPARING_IDENTICAL:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.comparingIdentical"

.field public static final COMPILER_PB_DEAD_CODE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.deadCode"

.field public static final COMPILER_PB_DEAD_CODE_IN_TRIVIAL_IF_STATEMENT:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.deadCodeInTrivialIfStatement"

.field public static final COMPILER_PB_DEPRECATION:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.deprecation"

.field public static final COMPILER_PB_DEPRECATION_IN_DEPRECATED_CODE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.deprecationInDeprecatedCode"

.field public static final COMPILER_PB_DEPRECATION_WHEN_OVERRIDING_DEPRECATED_METHOD:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.deprecationWhenOverridingDeprecatedMethod"

.field public static final COMPILER_PB_DISCOURAGED_REFERENCE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.discouragedReference"

.field public static final COMPILER_PB_EMPTY_STATEMENT:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.emptyStatement"

.field public static final COMPILER_PB_ENABLE_PREVIEW_FEATURES:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.enablePreviewFeatures"

.field public static final COMPILER_PB_ENUM_IDENTIFIER:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.enumIdentifier"

.field public static final COMPILER_PB_EXPLICITLY_CLOSED_AUTOCLOSEABLE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.explicitlyClosedAutoCloseable"

.field public static final COMPILER_PB_FALLTHROUGH_CASE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.fallthroughCase"

.field public static final COMPILER_PB_FATAL_OPTIONAL_ERROR:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.fatalOptionalError"

.field public static final COMPILER_PB_FIELD_HIDING:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.fieldHiding"

.field public static final COMPILER_PB_FINALLY_BLOCK_NOT_COMPLETING:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.finallyBlockNotCompletingNormally"

.field public static final COMPILER_PB_FINAL_PARAMETER_BOUND:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.finalParameterBound"

.field public static final COMPILER_PB_FORBIDDEN_REFERENCE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.forbiddenReference"

.field public static final COMPILER_PB_HIDDEN_CATCH_BLOCK:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.hiddenCatchBlock"

.field public static final COMPILER_PB_INCLUDE_ASSERTS_IN_NULL_ANALYSIS:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.includeNullInfoFromAsserts"

.field public static final COMPILER_PB_INCOMPATIBLE_NON_INHERITED_INTERFACE_METHOD:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.incompatibleNonInheritedInterfaceMethod"

.field public static final COMPILER_PB_INCOMPLETE_ENUM_SWITCH:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.incompleteEnumSwitch"

.field public static final COMPILER_PB_INCONSISTENT_NULL_CHECK:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.inconsistentNullCheck"

.field public static final COMPILER_PB_INDIRECT_STATIC_ACCESS:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.indirectStaticAccess"

.field public static final COMPILER_PB_INVALID_IMPORT:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.invalidImport"

.field public static final COMPILER_PB_INVALID_JAVADOC:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.invalidJavadoc"

.field public static final COMPILER_PB_INVALID_JAVADOC_TAGS:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.invalidJavadocTags"

.field public static final COMPILER_PB_INVALID_JAVADOC_TAGS_VISIBILITY:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsVisibility"

.field public static final COMPILER_PB_INVALID_JAVADOC_TAGS__DEPRECATED_REF:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsDeprecatedRef"

.field public static final COMPILER_PB_INVALID_JAVADOC_TAGS__NOT_VISIBLE_REF:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsNotVisibleRef"

.field public static final COMPILER_PB_LOCAL_VARIABLE_HIDING:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.localVariableHiding"

.field public static final COMPILER_PB_MAX_PER_UNIT:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.maxProblemPerUnit"

.field public static final COMPILER_PB_METHOD_WITH_CONSTRUCTOR_NAME:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.methodWithConstructorName"

.field public static final COMPILER_PB_MISSING_DEPRECATED_ANNOTATION:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.missingDeprecatedAnnotation"

.field public static final COMPILER_PB_MISSING_ENUM_CASE_DESPITE_DEFAULT:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.missingEnumCaseDespiteDefault"

.field public static final COMPILER_PB_MISSING_HASHCODE_METHOD:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.missingHashCodeMethod"

.field public static final COMPILER_PB_MISSING_JAVADOC_COMMENTS:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.missingJavadocComments"

.field public static final COMPILER_PB_MISSING_JAVADOC_COMMENTS_OVERRIDING:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsOverriding"

.field public static final COMPILER_PB_MISSING_JAVADOC_COMMENTS_VISIBILITY:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsVisibility"

.field public static final COMPILER_PB_MISSING_JAVADOC_TAGS:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.missingJavadocTags"

.field public static final COMPILER_PB_MISSING_JAVADOC_TAGS_METHOD_TYPE_PARAMETERS:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsMethodTypeParameters"

.field public static final COMPILER_PB_MISSING_JAVADOC_TAGS_OVERRIDING:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsOverriding"

.field public static final COMPILER_PB_MISSING_JAVADOC_TAGS_VISIBILITY:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsVisibility"

.field public static final COMPILER_PB_MISSING_JAVADOC_TAG_DESCRIPTION:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.missingJavadocTagDescription"

.field public static final COMPILER_PB_MISSING_JAVADOC_TAG_DESCRIPTION_ALL_STANDARD_TAGS:Ljava/lang/String; = "all_standard_tags"

.field public static final COMPILER_PB_MISSING_JAVADOC_TAG_DESCRIPTION_NO_TAG:Ljava/lang/String; = "no_tag"

.field public static final COMPILER_PB_MISSING_JAVADOC_TAG_DESCRIPTION_RETURN_TAG:Ljava/lang/String; = "return_tag"

.field public static final COMPILER_PB_MISSING_NONNULL_BY_DEFAULT_ANNOTATION:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.annotation.missingNonNullByDefaultAnnotation"

.field public static final COMPILER_PB_MISSING_OVERRIDE_ANNOTATION:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotation"

.field public static final COMPILER_PB_MISSING_OVERRIDE_ANNOTATION_FOR_INTERFACE_METHOD_IMPLEMENTATION:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotationForInterfaceMethodImplementation"

.field public static final COMPILER_PB_MISSING_SERIAL_VERSION:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.missingSerialVersion"

.field public static final COMPILER_PB_MISSING_STATIC_ON_METHOD:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.reportMethodCanBeStatic"

.field public static final COMPILER_PB_MISSING_SYNCHRONIZED_ON_INHERITED_METHOD:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.missingSynchronizedOnInheritedMethod"

.field public static final COMPILER_PB_NONNULL_PARAMETER_ANNOTATION_DROPPED:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.nonnullParameterAnnotationDropped"

.field public static final COMPILER_PB_NONNULL_TYPEVAR_FROM_LEGACY_INVOCATION:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.nonnullTypeVariableFromLegacyInvocation"

.field public static final COMPILER_PB_NON_NLS_STRING_LITERAL:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.nonExternalizedStringLiteral"

.field public static final COMPILER_PB_NO_EFFECT_ASSIGNMENT:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.noEffectAssignment"

.field public static final COMPILER_PB_NULL_ANNOTATION_INFERENCE_CONFLICT:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.nullAnnotationInferenceConflict"

.field public static final COMPILER_PB_NULL_REFERENCE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.nullReference"

.field public static final COMPILER_PB_NULL_SPECIFICATION_VIOLATION:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.nullSpecViolation"

.field public static final COMPILER_PB_NULL_UNCHECKED_CONVERSION:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.nullUncheckedConversion"

.field public static final COMPILER_PB_OVERRIDING_METHOD_WITHOUT_SUPER_INVOCATION:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.overridingMethodWithoutSuperInvocation"

.field public static final COMPILER_PB_OVERRIDING_PACKAGE_DEFAULT_METHOD:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.overridingPackageDefaultMethod"

.field public static final COMPILER_PB_PARAMETER_ASSIGNMENT:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.parameterAssignment"

.field public static final COMPILER_PB_PESSIMISTIC_NULL_ANALYSIS_FOR_FREE_TYPE_VARIABLES:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.pessimisticNullAnalysisForFreeTypeVariables"

.field public static final COMPILER_PB_POSSIBLE_ACCIDENTAL_BOOLEAN_ASSIGNMENT:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.possibleAccidentalBooleanAssignment"

.field public static final COMPILER_PB_POTENTIALLY_MISSING_STATIC_ON_METHOD:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.reportMethodCanBePotentiallyStatic"

.field public static final COMPILER_PB_POTENTIALLY_UNCLOSED_CLOSEABLE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.potentiallyUnclosedCloseable"

.field public static final COMPILER_PB_POTENTIAL_NULL_REFERENCE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.potentialNullReference"

.field public static final COMPILER_PB_RAW_TYPE_REFERENCE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.rawTypeReference"

.field public static final COMPILER_PB_REDUNDANT_NULL_ANNOTATION:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.redundantNullAnnotation"

.field public static final COMPILER_PB_REDUNDANT_NULL_CHECK:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.redundantNullCheck"

.field public static final COMPILER_PB_REDUNDANT_SUPERINTERFACE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.redundantSuperinterface"

.field public static final COMPILER_PB_REDUNDANT_TYPE_ARGUMENTS:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.redundantSpecificationOfTypeArguments"

.field public static final COMPILER_PB_REPORT_PREVIEW_FEATURES:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.reportPreviewFeatures"

.field public static final COMPILER_PB_SPECIAL_PARAMETER_HIDING_FIELD:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.specialParameterHidingField"

.field public static final COMPILER_PB_STATIC_ACCESS_RECEIVER:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.staticAccessReceiver"

.field public static final COMPILER_PB_SUPPRESS_OPTIONAL_ERRORS:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.suppressOptionalErrors"

.field public static final COMPILER_PB_SUPPRESS_WARNINGS:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.suppressWarnings"

.field public static final COMPILER_PB_SWITCH_MISSING_DEFAULT_CASE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.missingDefaultCase"

.field public static final COMPILER_PB_SYNTACTIC_NULL_ANALYSIS_FOR_FIELDS:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.syntacticNullAnalysisForFields"

.field public static final COMPILER_PB_SYNTHETIC_ACCESS_EMULATION:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.syntheticAccessEmulation"

.field public static final COMPILER_PB_TERMINAL_DEPRECATION:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.terminalDeprecation"

.field public static final COMPILER_PB_TYPE_PARAMETER_HIDING:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.typeParameterHiding"

.field public static final COMPILER_PB_UNAVOIDABLE_GENERIC_TYPE_PROBLEMS:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unavoidableGenericTypeProblems"

.field public static final COMPILER_PB_UNCHECKED_TYPE_OPERATION:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.uncheckedTypeOperation"

.field public static final COMPILER_PB_UNCLOSED_CLOSEABLE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unclosedCloseable"

.field public static final COMPILER_PB_UNDOCUMENTED_EMPTY_BLOCK:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.undocumentedEmptyBlock"

.field public static final COMPILER_PB_UNHANDLED_WARNING_TOKEN:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unhandledWarningToken"

.field public static final COMPILER_PB_UNLIKELY_COLLECTION_METHOD_ARGUMENT_TYPE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unlikelyCollectionMethodArgumentType"

.field public static final COMPILER_PB_UNLIKELY_COLLECTION_METHOD_ARGUMENT_TYPE_STRICT:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unlikelyCollectionMethodArgumentTypeStrict"

.field public static final COMPILER_PB_UNLIKELY_EQUALS_ARGUMENT_TYPE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unlikelyEqualsArgumentType"

.field public static final COMPILER_PB_UNNECESSARY_ELSE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unnecessaryElse"

.field public static final COMPILER_PB_UNNECESSARY_TYPE_CHECK:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unnecessaryTypeCheck"

.field public static final COMPILER_PB_UNQUALIFIED_FIELD_ACCESS:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unqualifiedFieldAccess"

.field public static final COMPILER_PB_UNREACHABLE_CODE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unreachableCode"

.field public static final COMPILER_PB_UNSAFE_TYPE_OPERATION:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.uncheckedTypeOperation"

.field public static final COMPILER_PB_UNSTABLE_AUTO_MODULE_NAME:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unstableAutoModuleName"

.field public static final COMPILER_PB_UNUSED_DECLARED_THROWN_EXCEPTION:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownException"

.field public static final COMPILER_PB_UNUSED_DECLARED_THROWN_EXCEPTION_EXEMPT_EXCEPTION_AND_THROWABLE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionExemptExceptionAndThrowable"

.field public static final COMPILER_PB_UNUSED_DECLARED_THROWN_EXCEPTION_INCLUDE_DOC_COMMENT_REFERENCE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionIncludeDocCommentReference"

.field public static final COMPILER_PB_UNUSED_DECLARED_THROWN_EXCEPTION_WHEN_OVERRIDING:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionWhenOverriding"

.field public static final COMPILER_PB_UNUSED_EXCEPTION_PARAMETER:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unusedExceptionParameter"

.field public static final COMPILER_PB_UNUSED_IMPORT:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unusedImport"

.field public static final COMPILER_PB_UNUSED_LABEL:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unusedLabel"

.field public static final COMPILER_PB_UNUSED_LOCAL:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unusedLocal"

.field public static final COMPILER_PB_UNUSED_OBJECT_ALLOCATION:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unusedObjectAllocation"

.field public static final COMPILER_PB_UNUSED_PARAMETER:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unusedParameter"

.field public static final COMPILER_PB_UNUSED_PARAMETER_INCLUDE_DOC_COMMENT_REFERENCE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unusedParameterIncludeDocCommentReference"

.field public static final COMPILER_PB_UNUSED_PARAMETER_WHEN_IMPLEMENTING_ABSTRACT:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unusedParameterWhenImplementingAbstract"

.field public static final COMPILER_PB_UNUSED_PARAMETER_WHEN_OVERRIDING_CONCRETE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unusedParameterWhenOverridingConcrete"

.field public static final COMPILER_PB_UNUSED_PRIVATE_MEMBER:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unusedPrivateMember"

.field public static final COMPILER_PB_UNUSED_TYPE_ARGUMENTS_FOR_METHOD_INVOCATION:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unusedTypeArgumentsForMethodInvocation"

.field public static final COMPILER_PB_UNUSED_TYPE_PARAMETER:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unusedTypeParameter"

.field public static final COMPILER_PB_UNUSED_WARNING_TOKEN:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.unusedWarningToken"

.field public static final COMPILER_PB_VARARGS_ARGUMENT_NEED_CAST:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.problem.varargsArgumentNeedCast"

.field public static final COMPILER_RELEASE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.release"

.field public static final COMPILER_SOURCE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.source"

.field public static final COMPILER_SOURCE_FILE_ATTR:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.debug.sourceFile"

.field public static final COMPILER_TASK_CASE_SENSITIVE:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.taskCaseSensitive"

.field public static final COMPILER_TASK_PRIORITIES:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.taskPriorities"

.field public static final COMPILER_TASK_PRIORITY_HIGH:Ljava/lang/String; = "HIGH"

.field public static final COMPILER_TASK_PRIORITY_LOW:Ljava/lang/String; = "LOW"

.field public static final COMPILER_TASK_PRIORITY_NORMAL:Ljava/lang/String; = "NORMAL"

.field public static final COMPILER_TASK_TAGS:Ljava/lang/String; = "org.eclipse.jdt.core.compiler.taskTags"

.field public static final COMPUTE:Ljava/lang/String; = "compute"

.field public static final CORE_CIRCULAR_CLASSPATH:Ljava/lang/String; = "org.eclipse.jdt.core.circularClasspath"

.field public static final CORE_ENABLE_CLASSPATH_EXCLUSION_PATTERNS:Ljava/lang/String; = "org.eclipse.jdt.core.classpath.exclusionPatterns"

.field public static final CORE_ENABLE_CLASSPATH_MULTIPLE_OUTPUT_LOCATIONS:Ljava/lang/String; = "org.eclipse.jdt.core.classpath.multipleOutputLocations"

.field public static final CORE_ENCODING:Ljava/lang/String; = "org.eclipse.jdt.core.encoding"

.field public static final CORE_INCOMPATIBLE_JDK_LEVEL:Ljava/lang/String; = "org.eclipse.jdt.core.incompatibleJDKLevel"

.field public static final CORE_INCOMPLETE_CLASSPATH:Ljava/lang/String; = "org.eclipse.jdt.core.incompleteClasspath"

.field public static final CORE_JAVA_BUILD_CLEAN_OUTPUT_FOLDER:Ljava/lang/String; = "org.eclipse.jdt.core.builder.cleanOutputFolder"

.field public static final CORE_JAVA_BUILD_DUPLICATE_RESOURCE:Ljava/lang/String; = "org.eclipse.jdt.core.builder.duplicateResourceTask"

.field public static final CORE_JAVA_BUILD_INVALID_CLASSPATH:Ljava/lang/String; = "org.eclipse.jdt.core.builder.invalidClasspath"

.field public static final CORE_JAVA_BUILD_ORDER:Ljava/lang/String; = "org.eclipse.jdt.core.computeJavaBuildOrder"

.field public static final CORE_JAVA_BUILD_RECREATE_MODIFIED_CLASS_FILES_IN_OUTPUT_FOLDER:Ljava/lang/String; = "org.eclipse.jdt.core.builder.recreateModifiedClassFileInOutputFolder"

.field public static final CORE_JAVA_BUILD_RESOURCE_COPY_FILTER:Ljava/lang/String; = "org.eclipse.jdt.core.builder.resourceCopyExclusionFilter"

.field public static final CORE_MAIN_ONLY_PROJECT_HAS_TEST_ONLY_DEPENDENCY:Ljava/lang/String; = "org.eclipse.jdt.core.classpath.mainOnlyProjectHasTestOnlyDependency"

.field public static final CORE_OUTPUT_LOCATION_OVERLAPPING_ANOTHER_SOURCE:Ljava/lang/String; = "org.eclipse.jdt.core.classpath.outputOverlappingAnotherSource"

.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final DEFAULT_JAVA_FORMATTER:Ljava/lang/String; = "org.eclipse.jdt.core.defaultJavaFormatter"

.field public static final DEFAULT_TASK_PRIORITIES:Ljava/lang/String; = "NORMAL,HIGH,NORMAL"

.field public static final DEFAULT_TASK_PRIORITY:Ljava/lang/String; = "NORMAL"

.field public static final DEFAULT_TASK_TAG:Ljava/lang/String; = "TODO"

.field public static final DEFAULT_TASK_TAGS:Ljava/lang/String; = "TODO,FIXME,XXX"

.field public static final DISABLED:Ljava/lang/String; = "disabled"

.field public static final DO_NOT_GENERATE:Ljava/lang/String; = "do not generate"

.field public static final DO_NOT_INSERT:Ljava/lang/String; = "do not insert"

.field public static final ENABLED:Ljava/lang/String; = "enabled"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final FORMATTER_CLEAR_BLANK_LINES:Ljava/lang/String; = "org.eclipse.jdt.core.formatter.newline.clearAll"

.field public static final FORMATTER_COMPACT_ASSIGNMENT:Ljava/lang/String; = "org.eclipse.jdt.core.formatter.style.assignment"

.field public static final FORMATTER_LINE_SPLIT:Ljava/lang/String; = "org.eclipse.jdt.core.formatter.lineSplit"

.field public static final FORMATTER_NEWLINE_CONTROL:Ljava/lang/String; = "org.eclipse.jdt.core.formatter.newline.controlStatement"

.field public static final FORMATTER_NEWLINE_ELSE_IF:Ljava/lang/String; = "org.eclipse.jdt.core.formatter.newline.elseIf"

.field public static final FORMATTER_NEWLINE_EMPTY_BLOCK:Ljava/lang/String; = "org.eclipse.jdt.core.formatter.newline.emptyBlock"

.field public static final FORMATTER_NEWLINE_OPENING_BRACE:Ljava/lang/String; = "org.eclipse.jdt.core.formatter.newline.openingBrace"

.field public static final FORMATTER_SPACE_CASTEXPRESSION:Ljava/lang/String; = "org.eclipse.jdt.core.formatter.space.castexpression"

.field public static final FORMATTER_TAB_CHAR:Ljava/lang/String; = "org.eclipse.jdt.core.formatter.tabulation.char"

.field public static final FORMATTER_TAB_SIZE:Ljava/lang/String; = "org.eclipse.jdt.core.formatter.tabulation.size"

.field public static final GENERATE:Ljava/lang/String; = "generate"

.field public static final IGNORE:Ljava/lang/String; = "ignore"

.field public static final INFO:Ljava/lang/String; = "info"

.field public static final INSERT:Ljava/lang/String; = "insert"

.field private static JAVA_CORE_PLUGIN:Lorg/eclipse/core/runtime/Plugin; = null

.field public static final JAVA_FORMATTER:Ljava/lang/String; = "org.eclipse.jdt.core.javaFormatter"

.field public static final JAVA_FORMATTER_EXTENSION_POINT_ID:Ljava/lang/String; = "javaFormatter"

.field public static final JAVA_SOURCE_CONTENT_TYPE:Ljava/lang/String; = "org.eclipse.jdt.core.javaSource"

.field public static final MODEL_ID:Ljava/lang/String; = "org.eclipse.jdt.core.javamodel"

.field public static final MODULE_PATH_CONTAINER_ID:Ljava/lang/String; = "org.eclipse.jdt.MODULE_PATH"

.field public static final NATURE_ID:Ljava/lang/String; = "org.eclipse.jdt.core.javanature"

.field public static final NEVER:Ljava/lang/String; = "never"

.field public static final NORMAL:Ljava/lang/String; = "normal"

.field private static final NO_GENERATED_RESOURCES:[Lorg/eclipse/core/resources/IResource;

.field public static final OPTIMIZE_OUT:Ljava/lang/String; = "optimize out"

.field public static final PLUGIN_ID:Ljava/lang/String; = "org.eclipse.jdt.core"

.field public static final PRESERVE:Ljava/lang/String; = "preserve"

.field public static final PRESERVE_ONE:Ljava/lang/String; = "preserve one"

.field public static final PRIVATE:Ljava/lang/String; = "private"

.field public static final PROTECTED:Ljava/lang/String; = "protected"

.field public static final PUBLIC:Ljava/lang/String; = "public"

.field public static final SPACE:Ljava/lang/String; = "space"

.field public static final TAB:Ljava/lang/String; = "tab"

.field public static final TIMEOUT_FOR_PARAMETER_NAME_FROM_ATTACHED_JAVADOC:Ljava/lang/String; = "org.eclipse.jdt.core.timeoutForParameterNameFromAttachedJavadoc"

.field public static final USER_LIBRARY_CONTAINER_ID:Ljava/lang/String; = "org.eclipse.jdt.USER_LIBRARY"

.field public static final VERSION_10:Ljava/lang/String; = "10"

.field public static final VERSION_11:Ljava/lang/String; = "11"

.field public static final VERSION_12:Ljava/lang/String; = "12"

.field public static final VERSION_1_1:Ljava/lang/String; = "1.1"

.field public static final VERSION_1_2:Ljava/lang/String; = "1.2"

.field public static final VERSION_1_3:Ljava/lang/String; = "1.3"

.field public static final VERSION_1_4:Ljava/lang/String; = "1.4"

.field public static final VERSION_1_5:Ljava/lang/String; = "1.5"

.field public static final VERSION_1_6:Ljava/lang/String; = "1.6"

.field public static final VERSION_1_7:Ljava/lang/String; = "1.7"

.field public static final VERSION_1_8:Ljava/lang/String; = "1.8"

.field public static final VERSION_9:Ljava/lang/String; = "9"

.field public static final VERSION_CLDC_1_1:Ljava/lang/String; = "cldc1.1"

.field public static final WARNING:Ljava/lang/String; = "warning"

.field private static allVersions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/core/resources/IResource;

    sput-object v0, Lorg/eclipse/jdt/core/JavaCore;->NO_GENERATED_RESOURCES:[Lorg/eclipse/core/resources/IResource;

    const/4 v0, 0x0

    sput-object v0, Lorg/eclipse/jdt/core/JavaCore;->JAVA_CORE_PLUGIN:Lorg/eclipse/core/runtime/Plugin;

    const-string v12, "11"

    const-string v13, "12"

    const-string v1, "cldc1.1"

    const-string v2, "1.1"

    const-string v3, "1.2"

    const-string v4, "1.3"

    const-string v5, "1.4"

    const-string v6, "1.5"

    const-string v7, "1.6"

    const-string v8, "1.7"

    const-string v9, "1.8"

    const-string v10, "9"

    const-string v11, "10"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/JavaCore;->allVersions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/core/runtime/Plugin;-><init>()V

    sput-object p0, Lorg/eclipse/jdt/core/JavaCore;->JAVA_CORE_PLUGIN:Lorg/eclipse/core/runtime/Plugin;

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/core/JavaCore;->lambda$0(Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addElementChangedListener(Lorg/eclipse/jdt/core/IElementChangedListener;)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/JavaCore;->addElementChangedListener(Lorg/eclipse/jdt/core/IElementChangedListener;I)V

    return-void
.end method

.method public static addElementChangedListener(Lorg/eclipse/jdt/core/IElementChangedListener;I)V
    .locals 1

    .line 2
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDeltaState()Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addElementChangedListener(Lorg/eclipse/jdt/core/IElementChangedListener;I)V

    return-void
.end method

.method public static addJavaElementMarkerAttributes(Ljava/util/Map;Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/core/IMember;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/core/IMember;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getClassFile()Lorg/eclipse/jdt/core/IClassFile;

    move-result-object p1

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "org.eclipse.jdt.internal.core.JavaModelManager.handleId"

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getHandleIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private static addNonJavaResources([Ljava/lang/Object;Lorg/eclipse/core/resources/IContainer;ILjava/util/ArrayList;)V
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p0, v1

    instance-of v3, v2, Lorg/eclipse/core/resources/IFile;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/eclipse/core/resources/IFile;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-interface {v2, p2}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/eclipse/core/resources/IContainer;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/eclipse/core/resources/IResource;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    instance-of v3, v2, Lorg/eclipse/core/resources/IFolder;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/eclipse/core/resources/IFolder;

    :try_start_0
    invoke-interface {v2}, Lorg/eclipse/core/resources/IFolder;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object v2
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    invoke-static {v2, p1, p2, p3}, Lorg/eclipse/jdt/core/JavaCore;->addNonJavaResources([Ljava/lang/Object;Lorg/eclipse/core/resources/IContainer;ILjava/util/ArrayList;)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static addPreProcessingResourceChangedListener(Lorg/eclipse/core/resources/IResourceChangeListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/JavaCore;->addPreProcessingResourceChangedListener(Lorg/eclipse/core/resources/IResourceChangeListener;I)V

    return-void
.end method

.method public static addPreProcessingResourceChangedListener(Lorg/eclipse/core/resources/IResourceChangeListener;I)V
    .locals 1

    .line 2
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDeltaState()Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addPreResourceChangedListener(Lorg/eclipse/core/resources/IResourceChangeListener;I)V

    return-void
.end method

.method public static compareJavaVersions(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static compileWithAttributes(Lorg/eclipse/jdt/core/IModuleDescription;Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/IModuleDescription;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/ModuleInfoBuilder;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/builder/ModuleInfoBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/builder/ModuleInfoBuilder;->compileWithAttributes(Lorg/eclipse/jdt/core/IModuleDescription;Ljava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method private static computeClasspathContainerInitializer(Ljava/lang/String;)Lorg/eclipse/jdt/core/ClasspathContainerInitializer;
    .locals 9

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->getExtensionRegistry()Lorg/eclipse/core/runtime/IExtensionRegistry;

    move-result-object v0

    const-string v2, "org.eclipse.jdt.core"

    const-string v3, "classpathContainerInitializer"

    invoke-interface {v0, v2, v3}, Lorg/eclipse/core/runtime/IExtensionRegistry;->getExtensionPoint(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IExtensionPoint;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IExtensionPoint;->getExtensions()[Lorg/eclipse/core/runtime/IExtension;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_1

    goto :goto_2

    :cond_1
    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IExtension;->getConfigurationElements()[Lorg/eclipse/core/runtime/IConfigurationElement;

    move-result-object v4

    move v5, v2

    :goto_1
    array-length v6, v4

    if-lt v5, v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    aget-object v6, v4, v5

    const-string v7, "id"

    invoke-interface {v6, v7}, Lorg/eclipse/core/runtime/IConfigurationElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-boolean v7, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_ADVANCED:Z

    if-eqz v7, :cond_3

    invoke-static {p0, v6}, Lorg/eclipse/jdt/core/JavaCore;->verbose_found_container_initializer(Ljava/lang/String;Lorg/eclipse/core/runtime/IConfigurationElement;)V

    :cond_3
    :try_start_0
    const-string v7, "class"

    invoke-interface {v6, v7}, Lorg/eclipse/core/runtime/IConfigurationElement;->createExecutableExtension(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lorg/eclipse/jdt/core/ClasspathContainerInitializer;

    if-eqz v8, :cond_5

    check-cast v7, Lorg/eclipse/jdt/core/ClasspathContainerInitializer;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception v7

    sget-boolean v8, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-nez v8, :cond_4

    sget-boolean v8, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v8, :cond_5

    :cond_4
    invoke-static {p0, v6}, Lorg/eclipse/jdt/core/JavaCore;->verbose_failed_to_instanciate_container_initializer(Ljava/lang/String;Lorg/eclipse/core/runtime/IConfigurationElement;)V

    invoke-virtual {v7}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace()V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return-object v1
.end method

.method public static create(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/JavaCore;->create(Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 2
    sget-object p1, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    .line 3
    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/eclipse/core/resources/IFile;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->create(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/eclipse/core/resources/IFolder;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->create(Lorg/eclipse/core/resources/IFolder;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->create(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->create(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/eclipse/core/resources/IWorkspaceRoot;)Lorg/eclipse/jdt/core/IJavaModel;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 12
    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProject(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p0

    return-object p0
.end method

.method public static createClassFileFrom(Lorg/eclipse/core/resources/IFile;)Lorg/eclipse/jdt/core/IClassFile;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->createClassFileFrom(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IClassFile;

    move-result-object p0

    return-object p0
.end method

.method public static createCompilationUnitFrom(Lorg/eclipse/core/resources/IFile;)Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->createCompilationUnitFrom(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p0

    return-object p0
.end method

.method public static createJarPackageFragmentRootFrom(Lorg/eclipse/core/resources/IFile;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->createJarPackageFragmentRootFrom(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p0

    return-object p0
.end method

.method public static defaultRootModules(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/eclipse/jdt/core/IPackageFragmentRoot;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->defaultRootModules(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getAllVersions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/core/JavaCore;->allVersions:Ljava/util/List;

    return-object v0
.end method

.method public static getAutomaticModuleDescription(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IModuleDescription;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    check-cast p0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getAutomaticModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal kind of java element: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p0, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getAutomaticModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object p0

    return-object p0
.end method

.method public static getClasspathContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IClasspathContainer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getClasspathContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CONTAINER_INITIALIZATION_IN_PROGRESS:Lorg/eclipse/jdt/core/IClasspathContainer;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPreviousSessionContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public static getClasspathContainerInitializer(Ljava/lang/String;)Lorg/eclipse/jdt/core/ClasspathContainerInitializer;
    .locals 2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerInitializersCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/ClasspathContainerInitializer;

    if-nez v1, :cond_1

    invoke-static {p0}, Lorg/eclipse/jdt/core/JavaCore;->computeClasspathContainerInitializer(Ljava/lang/String;)Lorg/eclipse/jdt/core/ClasspathContainerInitializer;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public static getClasspathVariable(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;
    .locals 5

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variableGet(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VARIABLE_INITIALIZATION_IN_PROGRESS:Lorg/eclipse/core/runtime/IPath;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPreviousSessionVariable(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    sget-object p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_ENTRY_IGNORE_PATH:Lorg/eclipse/core/runtime/IPath;

    if-ne v1, p0, :cond_1

    return-object v3

    :cond_1
    return-object v1

    :cond_2
    invoke-static {p0}, Lorg/eclipse/jdt/core/JavaCore;->getClasspathVariableInitializer(Ljava/lang/String;)Lorg/eclipse/jdt/core/ClasspathVariableInitializer;

    move-result-object v4

    if-eqz v4, :cond_b

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-eqz v1, :cond_3

    invoke-static {p0, v4}, Lorg/eclipse/jdt/core/JavaCore;->verbose_triggering_variable_initialization(Ljava/lang/String;Lorg/eclipse/jdt/core/ClasspathVariableInitializer;)V

    :cond_3
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_ADVANCED:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->verbose_triggering_variable_initialization_invocation_trace()V

    :cond_4
    invoke-virtual {v0, p0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variablePut(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V

    :try_start_0
    invoke-virtual {v4, p0}, Lorg/eclipse/jdt/core/ClasspathVariableInitializer;->initialize(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variableGet(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_5

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variablePut(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V

    return-object v3

    :cond_5
    :try_start_1
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_ADVANCED:Z

    if-eqz v2, :cond_6

    invoke-static {p0, v1}, Lorg/eclipse/jdt/core/JavaCore;->verbose_variable_value_after_initialization(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_6
    :goto_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variablesWithInitializer:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_1
    :try_start_2
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-nez v1, :cond_7

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v1, :cond_8

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    throw v0

    :goto_2
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-nez v1, :cond_9

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v1, :cond_a

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-virtual {v1, p0, v3}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variablePut(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V

    throw v0

    :cond_b
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_ADVANCED:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v0, :cond_d

    :cond_c
    invoke-static {p0}, Lorg/eclipse/jdt/core/JavaCore;->verbose_no_variable_initializer_found(Ljava/lang/String;)V

    :cond_d
    :goto_4
    return-object v1
.end method

.method public static getClasspathVariableDeprecationMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deprecatedVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variableGet(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VARIABLE_INITIALIZATION_IN_PROGRESS:Lorg/eclipse/core/runtime/IPath;

    if-eq v0, v2, :cond_1

    return-object v1

    :cond_1
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->getExtensionRegistry()Lorg/eclipse/core/runtime/IExtensionRegistry;

    move-result-object v0

    const-string v2, "org.eclipse.jdt.core"

    const-string v3, "classpathVariableInitializer"

    invoke-interface {v0, v2, v3}, Lorg/eclipse/core/runtime/IExtensionRegistry;->getExtensionPoint(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IExtensionPoint;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IExtensionPoint;->getExtensions()[Lorg/eclipse/core/runtime/IExtension;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_3

    goto :goto_2

    :cond_3
    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IExtension;->getConfigurationElements()[Lorg/eclipse/core/runtime/IConfigurationElement;

    move-result-object v4

    move v5, v2

    :goto_1
    array-length v6, v4

    if-lt v5, v6, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    aget-object v6, v4, v5

    const-string v7, "variable"

    invoke-interface {v6, v7}, Lorg/eclipse/core/runtime/IConfigurationElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "deprecated"

    invoke-interface {v6, v7}, Lorg/eclipse/core/runtime/IConfigurationElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    return-object v6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return-object v1
.end method

.method public static getClasspathVariableInitializer(Ljava/lang/String;)Lorg/eclipse/jdt/core/ClasspathVariableInitializer;
    .locals 10

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->getExtensionRegistry()Lorg/eclipse/core/runtime/IExtensionRegistry;

    move-result-object v0

    const-string v2, "org.eclipse.jdt.core"

    const-string v3, "classpathVariableInitializer"

    invoke-interface {v0, v2, v3}, Lorg/eclipse/core/runtime/IExtensionRegistry;->getExtensionPoint(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IExtensionPoint;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IExtensionPoint;->getExtensions()[Lorg/eclipse/core/runtime/IExtension;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_1

    goto/16 :goto_4

    :cond_1
    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IExtension;->getConfigurationElements()[Lorg/eclipse/core/runtime/IConfigurationElement;

    move-result-object v4

    move v5, v2

    :goto_1
    array-length v6, v4

    if-lt v5, v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    aget-object v6, v4, v5

    :try_start_0
    const-string v7, "variable"

    invoke-interface {v6, v7}, Lorg/eclipse/core/runtime/IConfigurationElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-boolean v7, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_ADVANCED:Z

    if-eqz v7, :cond_3

    invoke-static {p0, v6}, Lorg/eclipse/jdt/core/JavaCore;->verbose_found_variable_initializer(Ljava/lang/String;Lorg/eclipse/core/runtime/IConfigurationElement;)V

    goto :goto_2

    :catch_0
    move-exception v7

    goto :goto_3

    :cond_3
    :goto_2
    const-string v7, "class"

    invoke-interface {v6, v7}, Lorg/eclipse/core/runtime/IConfigurationElement;->createExecutableExtension(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lorg/eclipse/jdt/core/ClasspathVariableInitializer;

    if-eqz v8, :cond_7

    check-cast v7, Lorg/eclipse/jdt/core/ClasspathVariableInitializer;

    const-string v8, "deprecated"

    invoke-interface {v6, v8}, Lorg/eclipse/core/runtime/IConfigurationElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v9

    iget-object v9, v9, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deprecatedVariables:Ljava/util/HashMap;

    invoke-virtual {v9, p0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v8, "readOnly"

    invoke-interface {v6, v8}, Lorg/eclipse/core/runtime/IConfigurationElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v8

    iget-object v8, v8, Lorg/eclipse/jdt/internal/core/JavaModelManager;->readOnlyVariables:Ljava/util/HashSet;

    invoke-virtual {v8, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v7

    :goto_3
    sget-boolean v8, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-nez v8, :cond_6

    sget-boolean v8, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v8, :cond_7

    :cond_6
    invoke-static {p0, v6}, Lorg/eclipse/jdt/core/JavaCore;->verbose_failed_to_instanciate_variable_initializer(Ljava/lang/String;Lorg/eclipse/core/runtime/IConfigurationElement;)V

    invoke-virtual {v7}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace()V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    :goto_4
    return-object v1
.end method

.method public static getClasspathVariableNames()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variableNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultOptions()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDefaultOptions()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public static getEncoding()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_1
    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getGeneratedResource(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/core/resources/IContainer;Lorg/eclipse/jdt/internal/core/builder/State;ILjava/util/ArrayList;)V
    .locals 5

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/core/builder/State;->getDefinedTypeNamesFor(Ljava/lang/String;)[[C

    move-result-object p2

    const-string v0, ".class"

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    invoke-interface {p0, v1}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    array-length v3, p2

    const/4 p0, 0x0

    :goto_0
    if-lt p0, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    aget-object v4, p2, p0

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, p3}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p3

    invoke-interface {p1, p3}, Lorg/eclipse/core/resources/IContainer;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lorg/eclipse/core/resources/IResource;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    invoke-interface {p2, p3}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    invoke-interface {p2, v1}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->getNameWithoutJavaLikeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/eclipse/core/resources/IContainer;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lorg/eclipse/core/resources/IResource;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public static getGeneratedResources(Lorg/eclipse/jdt/core/IRegion;Z)[Lorg/eclipse/core/resources/IResource;
    .locals 16

    move/from16 v1, p1

    if-eqz p0, :cond_1a

    invoke-interface/range {p0 .. p0}, Lorg/eclipse/jdt/core/IRegion;->getElements()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v2

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v5, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v0, [Lorg/eclipse/core/resources/IResource;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/JavaCore;->NO_GENERATED_RESOURCES:[Lorg/eclipse/core/resources/IResource;

    return-object v0

    :cond_1
    aget-object v8, v2, v7

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jdt/internal/core/builder/State;

    const/4 v11, 0x0

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v10

    invoke-virtual {v10, v9, v11}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getLastBuiltState(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jdt/internal/core/builder/State;

    if-eqz v10, :cond_3

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    if-nez v10, :cond_4

    goto/16 :goto_c

    :cond_4
    invoke-interface {v8}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_8

    :try_start_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaProject;->getPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v11
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object v12, v11

    if-nez v12, :cond_5

    goto/16 :goto_c

    :cond_5
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->newRegion()Lorg/eclipse/jdt/core/IRegion;

    move-result-object v13

    const/4 v0, 0x0

    :goto_2
    array-length v8, v12

    if-lt v0, v8, :cond_7

    invoke-static {v13, v1}, Lorg/eclipse/jdt/core/JavaCore;->getGeneratedResources(Lorg/eclipse/jdt/core/IRegion;Z)[Lorg/eclipse/core/resources/IResource;

    move-result-object v8

    array-length v9, v8

    const/4 v0, 0x0

    :goto_3
    if-lt v0, v9, :cond_6

    goto/16 :goto_c

    :cond_6
    aget-object v10, v8, v0

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    aget-object v8, v12, v0

    invoke-interface {v13, v8}, Lorg/eclipse/jdt/core/IRegion;->add(Lorg/eclipse/jdt/core/IJavaElement;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    :try_start_1
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaProject;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v12, v0

    goto :goto_4

    :catch_1
    move-object v12, v11

    :goto_4
    move-object v0, v8

    :goto_5
    const/4 v13, 0x3

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v14

    if-ne v14, v13, :cond_9

    goto :goto_6

    :cond_9
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    goto :goto_5

    :cond_a
    :goto_6
    if-nez v0, :cond_b

    goto/16 :goto_c

    :cond_b
    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v14

    invoke-interface {v14}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v14

    :try_start_2
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getRawClasspathEntry()Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_c

    move-object v12, v0

    goto :goto_7

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/JavaModelException;->printStackTrace()V

    :cond_c
    :goto_7
    if-nez v12, :cond_d

    goto/16 :goto_c

    :cond_d
    invoke-interface {v9}, Lorg/eclipse/core/resources/IProject;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v0

    invoke-interface {v0, v12}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    check-cast v0, Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v9

    if-eq v9, v13, :cond_12

    const/4 v12, 0x4

    if-eq v9, v12, :cond_f

    const/4 v11, 0x5

    if-eq v9, v11, :cond_e

    goto :goto_c

    :cond_e
    check-cast v8, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-static {v8, v0, v10, v14, v4}, Lorg/eclipse/jdt/core/JavaCore;->getGeneratedResource(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/core/resources/IContainer;Lorg/eclipse/jdt/internal/core/builder/State;ILjava/util/ArrayList;)V

    goto :goto_c

    :cond_f
    move-object v9, v8

    check-cast v9, Lorg/eclipse/jdt/core/IPackageFragment;

    :try_start_3
    invoke-interface {v9}, Lorg/eclipse/jdt/core/IPackageFragment;->getCompilationUnits()[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v8
    :try_end_3
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v12, v8

    goto :goto_8

    :catch_3
    move-object v12, v11

    :goto_8
    if-nez v12, :cond_10

    goto :goto_c

    :cond_10
    array-length v13, v12

    const/4 v8, 0x0

    :goto_9
    if-lt v8, v13, :cond_11

    if-eqz v1, :cond_15

    :try_start_4
    invoke-interface {v9}, Lorg/eclipse/jdt/core/IPackageFragment;->getNonJavaResources()[Ljava/lang/Object;

    move-result-object v11
    :try_end_4
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    if-eqz v11, :cond_15

    invoke-static {v11, v0, v14, v4}, Lorg/eclipse/jdt/core/JavaCore;->addNonJavaResources([Ljava/lang/Object;Lorg/eclipse/core/resources/IContainer;ILjava/util/ArrayList;)V

    goto :goto_c

    :cond_11
    aget-object v15, v12, v8

    invoke-static {v15, v0, v10, v14, v4}, Lorg/eclipse/jdt/core/JavaCore;->getGeneratedResource(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/core/resources/IContainer;Lorg/eclipse/jdt/internal/core/builder/State;ILjava/util/ArrayList;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_12
    check-cast v8, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->isArchive()Z

    move-result v9

    if-eqz v9, :cond_13

    goto :goto_c

    :cond_13
    :try_start_5
    invoke-interface {v8}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v8
    :try_end_5
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_a

    :catch_5
    move-object v8, v11

    :goto_a
    if-nez v8, :cond_14

    goto :goto_c

    :cond_14
    array-length v9, v8

    const/4 v12, 0x0

    :goto_b
    if-lt v12, v9, :cond_16

    :cond_15
    :goto_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_16
    aget-object v13, v8, v12

    check-cast v13, Lorg/eclipse/jdt/core/IPackageFragment;

    :try_start_6
    invoke-interface {v13}, Lorg/eclipse/jdt/core/IPackageFragment;->getCompilationUnits()[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v15
    :try_end_6
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_d

    :catch_6
    move-object v15, v11

    :goto_d
    if-nez v15, :cond_17

    goto :goto_10

    :cond_17
    array-length v6, v15

    const/4 v11, 0x0

    :goto_e
    if-lt v11, v6, :cond_19

    if-eqz v1, :cond_18

    :try_start_7
    invoke-interface {v13}, Lorg/eclipse/jdt/core/IPackageFragment;->getNonJavaResources()[Ljava/lang/Object;

    move-result-object v6
    :try_end_7
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_f

    :catch_7
    const/4 v6, 0x0

    :goto_f
    if-eqz v6, :cond_18

    invoke-static {v6, v0, v14, v4}, Lorg/eclipse/jdt/core/JavaCore;->addNonJavaResources([Ljava/lang/Object;Lorg/eclipse/core/resources/IContainer;ILjava/util/ArrayList;)V

    :cond_18
    :goto_10
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x0

    goto :goto_b

    :cond_19
    aget-object v1, v15, v11

    invoke-static {v1, v0, v10, v14, v4}, Lorg/eclipse/jdt/core/JavaCore;->getGeneratedResource(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/core/resources/IContainer;Lorg/eclipse/jdt/internal/core/builder/State;ILjava/util/ArrayList;)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    goto :goto_e

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "region cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getJavaCore()Lorg/eclipse/jdt/core/JavaCore;
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/JavaCore;

    return-object v0
.end method

.method public static getJavaLikeExtensions()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/util/Util;->getJavaLikeExtensions()[[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModuleNameFromJar(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    const-string v2, "module-info.class"

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/util/zip/ZipFile;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_2

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_2

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_3
    move-object v0, v1

    :cond_3
    throw v0
    :try_end_4
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;)V

    :goto_5
    if-nez v2, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/env/AutomaticModuleNaming;->determineAutomaticModuleName(Ljava/lang/String;)[C

    move-result-object v2

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOptionForConfigurableBuildPathProblemSeverity(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3c4

    if-eq p0, v0, :cond_4

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3ec

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3f5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3f9

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "org.eclipse.jdt.core.classpath.mainOnlyProjectHasTestOnlyDependency"

    return-object p0

    :cond_1
    const-string p0, "org.eclipse.jdt.core.classpath.outputOverlappingAnotherSource"

    return-object p0

    :cond_2
    const-string p0, "org.eclipse.jdt.core.incompatibleJDKLevel"

    return-object p0

    :cond_3
    const-string p0, "org.eclipse.jdt.core.circularClasspath"

    return-object p0

    :cond_4
    const-string p0, "org.eclipse.jdt.core.incompleteClasspath"

    return-object p0
.end method

.method public static getOptionForConfigurableSeverity(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->getIrritant(I)I

    move-result p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->optionKeyFromIrritant(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOptions()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getOptions()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public static getPlugin()Lorg/eclipse/core/runtime/Plugin;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/JavaCore;->JAVA_CORE_PLUGIN:Lorg/eclipse/core/runtime/Plugin;

    return-object v0
.end method

.method public static getReferencedClasspathEntries(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IJavaProject;)[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getReferencedClasspathEntries(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IJavaProject;)[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p0

    return-object p0
.end method

.method public static getReferencedModules(Lorg/eclipse/jdt/core/IJavaProject;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/ModuleUtil;->getReferencedModules(Lorg/eclipse/jdt/core/IJavaProject;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRequiredModulesFromJar(Ljava/io/File;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string p0, "module-info.class"

    invoke-static {v1, p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/util/zip/ZipFile;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->requires()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lorg/eclipse/jdt/core/a;

    invoke-direct {v2}, Lorg/eclipse/jdt/core/a;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/tools/r8/internal/jK0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/jK0;-><init>()V

    invoke-static {v2}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v0, p0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_4

    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v0, :cond_3

    if-eq v0, p0, :cond_2

    :try_start_3
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    move-object p0, v0

    :cond_3
    throw p0
    :try_end_3
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;)V

    :goto_4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getResolvedClasspathEntry(Lorg/eclipse/jdt/core/IClasspathEntry;)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->resolveVariableEntry(Lorg/eclipse/jdt/core/IClasspathEntry;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p0

    return-object p0
.end method

.method public static getResolvedVariablePath(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;
    .locals 2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getResolvedVariablePath(Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    return-object p0
.end method

.method public static getSharedWorkingCopies(Lorg/eclipse/jdt/core/IBufferFactory;)[Lorg/eclipse/jdt/core/IWorkingCopy;
    .locals 0

    if-nez p0, :cond_0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/BufferManager;->getDefaultBufferManager()Lorg/eclipse/jdt/internal/core/BufferManager;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BufferManager;->getDefaultBufferFactory()Lorg/eclipse/jdt/core/IBufferFactory;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/BufferFactoryWrapper;->create(Lorg/eclipse/jdt/core/IBufferFactory;)Lorg/eclipse/jdt/core/WorkingCopyOwner;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/JavaCore;->getWorkingCopies(Lorg/eclipse/jdt/core/WorkingCopyOwner;)[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p0

    return-object p0
.end method

.method public static getUserLibraryNames()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getUserLibraryManager()Lorg/eclipse/jdt/internal/core/UserLibraryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/UserLibraryManager;->getUserLibraryNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWorkingCopies(Lorg/eclipse/jdt/core/WorkingCopyOwner;)[Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    if-nez p0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getWorkingCopies(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->NO_WORKING_COPY:[Lorg/eclipse/jdt/core/ICompilationUnit;

    :cond_1
    return-object p0
.end method

.method public static initializeAfterLoad(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->javamodel_initialization:Ljava/lang/String;

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/lang/String;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p0

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->javamodel_configuring_classpath_containers:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/eclipse/core/runtime/SubMonitor;->subTask(Ljava/lang/String;)V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    const/16 v2, 0x32

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->batchContainerInitializationsProgress:Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->initializeAfterLoadMonitor:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->forceBatchInitializations(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v1, Lorg/eclipse/core/runtime/Path;->EMPTY:Lorg/eclipse/core/runtime/Path;

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getClasspathContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IClasspathContainer;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_0
    :goto_0
    iget v4, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->batchContainerInitializations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_8

    :goto_1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->batchContainerInitializationsProgress:Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->initializeAfterLoadMonitor:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->javamodel_resetting_source_attachment_properties:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/eclipse/core/runtime/SubMonitor;->subTask(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getExternalManager()Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;

    move-result-object v6

    array-length v7, v4

    const/4 v8, 0x0

    move v1, v8

    :goto_2
    if-lt v1, v7, :cond_3

    :try_start_1
    invoke-virtual {p0, v2}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->createPendingFolders(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    const-string v5, "Error while processing external folders"

    invoke-static {v1, v5}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v1

    :try_start_2
    sget-object v5, Lorg/eclipse/jdt/internal/core/util/Messages;->javamodel_refreshing_external_jars:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/eclipse/core/runtime/SubMonitor;->subTask(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/eclipse/jdt/internal/core/JavaModel;->refreshExternalArchives([Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->javamodel_initializing_delta_state:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/eclipse/core/runtime/SubMonitor;->subTask(Ljava/lang/String;)V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deltaState:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->rootsAreStale:Z

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->initializeRoots(Z)V

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->javamodel_configuring_searchengine:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/eclipse/core/runtime/SubMonitor;->subTask(Ljava/lang/String;)V

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/JavaCore;->updateLegacyIndex(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->javamodel_getting_build_state_number:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/eclipse/core/runtime/SubMonitor;->subTask(Ljava/lang/String;)V

    new-instance v0, Lorg/eclipse/core/runtime/QualifiedName;

    const-string v1, "org.eclipse.jdt.core"

    const-string v5, "stateVersionNumber"

    invoke-direct {v0, v1, v5}, Lorg/eclipse/core/runtime/QualifiedName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    :try_start_3
    invoke-interface {v1, v0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getPersistentProperty(Lorg/eclipse/core/runtime/QualifiedName;)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    const/16 v5, 0x22

    invoke-static {v5}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-boolean v3, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Build state version number has changed"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v3, Lorg/eclipse/jdt/core/JavaCore$1;

    invoke-direct {v3, v4}, Lorg/eclipse/jdt/core/JavaCore$1;-><init>([Lorg/eclipse/jdt/core/IJavaProject;)V

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->javamodel_building_after_upgrade:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/eclipse/core/runtime/SubMonitor;->subTask(Ljava/lang/String;)V

    :try_start_4
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v4

    invoke-virtual {p0, v2}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p0

    invoke-interface {v4, v3, p0}, Lorg/eclipse/core/resources/IWorkspace;->run(Lorg/eclipse/core/resources/IWorkspaceRunnable;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_4
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :try_start_5
    invoke-interface {v1, v0, v5}, Lorg/eclipse/core/resources/IWorkspaceRoot;->setPersistentProperty(Lorg/eclipse/core/runtime/QualifiedName;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    const-string v0, "Could not persist build state version number"

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_2
    :goto_4
    return-void

    :cond_3
    aget-object v9, v4, v1

    check-cast v9, Lorg/eclipse/jdt/internal/core/JavaProject;

    :try_start_6
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v9
    :try_end_6
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_6 .. :try_end_6} :catch_5

    if-eqz v9, :cond_7

    array-length v10, v9

    move v11, v8

    :goto_5
    if-lt v11, v10, :cond_4

    goto :goto_6

    :cond_4
    aget-object v12, v9, v11

    invoke-interface {v12}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-static {v13, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->setSourceAttachmentProperty(Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)V

    :cond_5
    invoke-interface {v12}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v13

    if-ne v13, v2, :cond_6

    invoke-interface {v12}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v12

    invoke-static {v12}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->isExternalFolderPath(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v6, v12}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v13

    if-nez v13, :cond_6

    invoke-virtual {v6, v12, v2}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->addFolder(Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/core/resources/IFolder;

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :catch_5
    :cond_7
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_8
    :try_start_7
    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->batchContainerInitializationsProgress:Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->subTaskName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/eclipse/core/runtime/SubMonitor;->subTask(Ljava/lang/String;)V

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->batchContainerInitializationsProgress:Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->getWorked()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    monitor-enter v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-wide/16 v4, 0x64

    :try_start_8
    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_8

    :catch_6
    :goto_7
    :try_start_9
    monitor-exit v0

    goto/16 :goto_0

    :goto_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_9
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->batchContainerInitializationsProgress:Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->initializeAfterLoadMonitor:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw p0
.end method

.method public static isClasspathVariableReadOnly(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->readOnlyVariables:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isJavaLikeFileName(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isReferencedBy(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/resources/IMarker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lorg/eclipse/jdt/core/IMember;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Lorg/eclipse/jdt/core/IMember;

    .line 3
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IMember;->getClassFile()Lorg/eclipse/jdt/core/IClassFile;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_2

    return v0

    :cond_2
    if-nez p1, :cond_3

    return v0

    .line 6
    :cond_3
    const-string v1, "org.eclipse.jdt.internal.core.JavaModelManager.handleId"

    invoke-interface {p1, v1}, Lorg/eclipse/core/resources/IMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_4

    return v0

    .line 7
    :cond_4
    invoke-static {p1}, Lorg/eclipse/jdt/core/JavaCore;->create(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    .line 8
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p0, 0x1

    return p0

    .line 9
    :cond_5
    instance-of v1, p1, Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    if-eqz v1, :cond_6

    .line 10
    check-cast p1, Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IOrdinaryClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 11
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getClassFile()Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object p1

    goto :goto_1

    :cond_6
    return v0
.end method

.method public static isReferencedBy(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/resources/IMarkerDelta;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 12
    instance-of v0, p0, Lorg/eclipse/jdt/core/IMember;

    if-eqz v0, :cond_1

    .line 13
    check-cast p0, Lorg/eclipse/jdt/core/IMember;

    .line 14
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IMember;->getClassFile()Lorg/eclipse/jdt/core/IClassFile;

    move-result-object p0

    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_2

    return v0

    :cond_2
    if-nez p1, :cond_3

    return v0

    .line 17
    :cond_3
    const-string v1, "org.eclipse.jdt.internal.core.JavaModelManager.handleId"

    invoke-interface {p1, v1}, Lorg/eclipse/core/resources/IMarkerDelta;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_4

    return v0

    .line 18
    :cond_4
    invoke-static {p1}, Lorg/eclipse/jdt/core/JavaCore;->create(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    .line 19
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p0, 0x1

    return p0

    .line 20
    :cond_5
    instance-of v1, p1, Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    if-eqz v1, :cond_6

    .line 21
    check-cast p1, Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IOrdinaryClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 22
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getClassFile()Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object p1

    goto :goto_1

    :cond_6
    return v0
.end method

.method public static isSupportedJavaVersion(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;Z)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private static synthetic lambda$0(Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->name()[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static latestSupportedJavaVersion()Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/core/JavaCore;->allVersions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static newAccessRule(Lorg/eclipse/core/runtime/IPath;I)Lorg/eclipse/jdt/core/IAccessRule;
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getAccessRule(Lorg/eclipse/core/runtime/IPath;I)Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object p0

    return-object p0
.end method

.method public static newClasspathAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/core/IClasspathAttribute;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/ClasspathAttribute;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/ClasspathAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newContainerEntry(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 3

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ACCESS_RULES:[Lorg/eclipse/jdt/core/IAccessRule;

    .line 2
    sget-object v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_EXTRA_ATTRIBUTES:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    const/4 v2, 0x0

    .line 3
    invoke-static {p0, v0, v1, v2}, Lorg/eclipse/jdt/core/JavaCore;->newContainerEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p0

    return-object p0
.end method

.method public static newContainerEntry(Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 2

    .line 4
    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ACCESS_RULES:[Lorg/eclipse/jdt/core/IAccessRule;

    .line 5
    sget-object v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_EXTRA_ATTRIBUTES:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    .line 6
    invoke-static {p0, v0, v1, p1}, Lorg/eclipse/jdt/core/JavaCore;->newContainerEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p0

    return-object p0
.end method

.method public static newContainerEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 14

    move-object v0, p1

    move-object/from16 v1, p2

    if-eqz p0, :cond_5

    .line 7
    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_4

    if-eqz v0, :cond_1

    .line 8
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v10, v0

    goto :goto_2

    .line 9
    :cond_1
    :goto_1
    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ACCESS_RULES:[Lorg/eclipse/jdt/core/IAccessRule;

    goto :goto_0

    :goto_2
    if-eqz v1, :cond_3

    .line 10
    array-length v0, v1

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    move-object v12, v1

    goto :goto_4

    .line 11
    :cond_3
    :goto_3
    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_EXTRA_ATTRIBUTES:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-object v12, v0

    .line 12
    :goto_4
    new-instance v13, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    .line 13
    sget-object v4, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->INCLUDE_ALL:[Lorg/eclipse/core/runtime/IPath;

    .line 14
    sget-object v5, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->EXCLUDE_NONE:[Lorg/eclipse/core/runtime/IPath;

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v13

    move-object v3, p0

    move/from16 v9, p3

    .line 15
    invoke-direct/range {v0 .. v12}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;-><init>(IILorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Z[Lorg/eclipse/jdt/core/IAccessRule;Z[Lorg/eclipse/jdt/core/IClasspathAttribute;)V

    return-object v13

    .line 16
    :cond_4
    new-instance v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal classpath container path: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', must have at least one segment (containerID+hints)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_5
    new-instance v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;

    const-string v1, "Container path cannot be null"

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newLibraryEntry(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 6

    .line 1
    sget-object v3, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ACCESS_RULES:[Lorg/eclipse/jdt/core/IAccessRule;

    .line 2
    sget-object v4, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_EXTRA_ATTRIBUTES:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 3
    invoke-static/range {v0 .. v5}, Lorg/eclipse/jdt/core/JavaCore;->newLibraryEntry(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p0

    return-object p0
.end method

.method public static newLibraryEntry(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 6

    .line 4
    sget-object v3, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ACCESS_RULES:[Lorg/eclipse/jdt/core/IAccessRule;

    .line 5
    sget-object v4, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_EXTRA_ATTRIBUTES:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 6
    invoke-static/range {v0 .. v5}, Lorg/eclipse/jdt/core/JavaCore;->newLibraryEntry(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p0

    return-object p0
.end method

.method public static newLibraryEntry(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    if-eqz v0, :cond_a

    if-eqz v2, :cond_1

    .line 7
    array-length v4, v2

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v13, v2

    goto :goto_2

    .line 8
    :cond_1
    :goto_1
    sget-object v2, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ACCESS_RULES:[Lorg/eclipse/jdt/core/IAccessRule;

    goto :goto_0

    :goto_2
    if-eqz v3, :cond_3

    .line 9
    array-length v2, v3

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    move-object v15, v3

    goto :goto_4

    .line 10
    :cond_3
    :goto_3
    sget-object v2, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_EXTRA_ATTRIBUTES:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-object v15, v2

    .line 11
    :goto_4
    invoke-static/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->hasDotDot(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 12
    invoke-interface/range {p0 .. p0}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_5

    :cond_4
    new-instance v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Path for IClasspathEntry must be absolute: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    .line 13
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/core/runtime/IPath;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v1, 0x0

    :cond_6
    :goto_6
    move-object v9, v1

    goto :goto_7

    .line 14
    :cond_7
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_6

    .line 15
    :cond_8
    new-instance v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Source attachment path \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "\' for IClasspathEntry must be absolute"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :goto_7
    new-instance v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    if-eqz v2, :cond_9

    :goto_8
    move-object v6, v0

    goto :goto_9

    .line 20
    :cond_9
    invoke-static/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->canonicalizedPath(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    goto :goto_8

    .line 21
    :goto_9
    sget-object v7, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->INCLUDE_ALL:[Lorg/eclipse/core/runtime/IPath;

    .line 22
    sget-object v8, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->EXCLUDE_NONE:[Lorg/eclipse/core/runtime/IPath;

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v3, v1

    move-object/from16 v10, p2

    move/from16 v12, p5

    .line 23
    invoke-direct/range {v3 .. v15}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;-><init>(IILorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Z[Lorg/eclipse/jdt/core/IAccessRule;Z[Lorg/eclipse/jdt/core/IClasspathAttribute;)V

    return-object v1

    .line 24
    :cond_a
    new-instance v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;

    const-string v1, "Library path cannot be null"

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newProjectEntry(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/JavaCore;->newProjectEntry(Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p0

    return-object p0
.end method

.method public static newProjectEntry(Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 3

    .line 2
    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ACCESS_RULES:[Lorg/eclipse/jdt/core/IAccessRule;

    const/4 v1, 0x1

    .line 4
    sget-object v2, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_EXTRA_ATTRIBUTES:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    .line 5
    invoke-static {p0, v0, v1, v2, p1}, Lorg/eclipse/jdt/core/JavaCore;->newProjectEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;Z[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;

    const-string p1, "Path for IClasspathEntry must be absolute"

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newProjectEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;Z[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 14

    move-object v0, p1

    move-object/from16 v1, p3

    .line 7
    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_1

    .line 8
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v11, v0

    goto :goto_2

    .line 9
    :cond_1
    :goto_1
    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ACCESS_RULES:[Lorg/eclipse/jdt/core/IAccessRule;

    goto :goto_0

    :goto_2
    if-eqz v1, :cond_3

    .line 10
    array-length v0, v1

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    move-object v13, v1

    goto :goto_4

    .line 11
    :cond_3
    :goto_3
    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_EXTRA_ATTRIBUTES:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-object v13, v0

    .line 12
    :goto_4
    new-instance v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    .line 13
    sget-object v5, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->INCLUDE_ALL:[Lorg/eclipse/core/runtime/IPath;

    .line 14
    sget-object v6, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->EXCLUDE_NONE:[Lorg/eclipse/core/runtime/IPath;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v7, 0x0

    move-object v1, v0

    move-object v4, p0

    move/from16 v10, p4

    move/from16 v12, p2

    .line 15
    invoke-direct/range {v1 .. v13}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;-><init>(IILorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Z[Lorg/eclipse/jdt/core/IAccessRule;Z[Lorg/eclipse/jdt/core/IClasspathAttribute;)V

    return-object v0

    .line 16
    :cond_4
    new-instance v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;

    const-string v1, "Path for IClasspathEntry must be absolute"

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newRegion()Lorg/eclipse/jdt/core/IRegion;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/Region;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/Region;-><init>()V

    return-object v0
.end method

.method public static newSourceEntry(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 3

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->INCLUDE_ALL:[Lorg/eclipse/core/runtime/IPath;

    sget-object v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->EXCLUDE_NONE:[Lorg/eclipse/core/runtime/IPath;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/eclipse/jdt/core/JavaCore;->newSourceEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p0

    return-object p0
.end method

.method public static newSourceEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 2

    .line 2
    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->INCLUDE_ALL:[Lorg/eclipse/core/runtime/IPath;

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/JavaCore;->newSourceEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p0

    return-object p0
.end method

.method public static newSourceEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 1

    .line 3
    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->INCLUDE_ALL:[Lorg/eclipse/core/runtime/IPath;

    invoke-static {p0, v0, p1, p2}, Lorg/eclipse/jdt/core/JavaCore;->newSourceEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p0

    return-object p0
.end method

.method public static newSourceEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 1

    .line 4
    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_EXTRA_ATTRIBUTES:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    invoke-static {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/core/JavaCore;->newSourceEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IClasspathAttribute;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p0

    return-object p0
.end method

.method public static newSourceEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IClasspathAttribute;)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 14

    if-eqz p0, :cond_4

    .line 5
    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    .line 6
    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->EXCLUDE_NONE:[Lorg/eclipse/core/runtime/IPath;

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    :goto_0
    if-nez p1, :cond_1

    .line 7
    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->INCLUDE_ALL:[Lorg/eclipse/core/runtime/IPath;

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p1

    :goto_1
    if-nez p4, :cond_2

    .line 8
    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_EXTRA_ATTRIBUTES:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-object v12, v0

    goto :goto_2

    :cond_2
    move-object/from16 v12, p4

    .line 9
    :goto_2
    new-instance v13, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v13

    move-object v3, p0

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v12}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;-><init>(IILorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Z[Lorg/eclipse/jdt/core/IAccessRule;Z[Lorg/eclipse/jdt/core/IClasspathAttribute;)V

    return-object v13

    .line 10
    :cond_3
    new-instance v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;

    const-string v1, "Path for IClasspathEntry must be absolute"

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_4
    new-instance v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;

    const-string v1, "Source path cannot be null"

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newTypeHierarchy(Lorg/eclipse/jdt/core/IRegion;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getWorkingCopies(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, v1}, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;-><init>(Lorg/eclipse/jdt/core/IRegion;[Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/IType;Z)V

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;->getResult()Lorg/eclipse/jdt/core/ITypeHierarchy;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lorg/eclipse/jdt/internal/core/util/Messages;->hierarchy_nullRegion:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newVariableEntry(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lorg/eclipse/jdt/core/JavaCore;->newVariableEntry(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p0

    return-object p0
.end method

.method public static newVariableEntry(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 6

    .line 2
    sget-object v3, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ACCESS_RULES:[Lorg/eclipse/jdt/core/IAccessRule;

    .line 3
    sget-object v4, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_EXTRA_ATTRIBUTES:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 4
    invoke-static/range {v0 .. v5}, Lorg/eclipse/jdt/core/JavaCore;->newVariableEntry(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p0

    return-object p0
.end method

.method public static newVariableEntry(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 14

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-eqz p0, :cond_5

    .line 5
    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_4

    if-eqz v0, :cond_1

    .line 6
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v10, v0

    goto :goto_2

    .line 7
    :cond_1
    :goto_1
    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ACCESS_RULES:[Lorg/eclipse/jdt/core/IAccessRule;

    goto :goto_0

    :goto_2
    if-eqz v1, :cond_3

    .line 8
    array-length v0, v1

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    move-object v12, v1

    goto :goto_4

    .line 9
    :cond_3
    :goto_3
    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_EXTRA_ATTRIBUTES:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-object v12, v0

    .line 10
    :goto_4
    new-instance v13, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    .line 11
    sget-object v4, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->INCLUDE_ALL:[Lorg/eclipse/core/runtime/IPath;

    .line 12
    sget-object v5, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->EXCLUDE_NONE:[Lorg/eclipse/core/runtime/IPath;

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    move-object v0, v13

    move-object v3, p0

    move-object v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p5

    .line 13
    invoke-direct/range {v0 .. v12}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;-><init>(IILorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Z[Lorg/eclipse/jdt/core/IAccessRule;Z[Lorg/eclipse/jdt/core/IClasspathAttribute;)V

    return-object v13

    .line 14
    :cond_4
    new-instance v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal classpath variable path: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', must have at least one segment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_5
    new-instance v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;

    const-string v1, "Variable path cannot be null"

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static rebuildIndex(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    const/16 v0, 0x64

    invoke-static {p0, v0}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getIndexManager()Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->deleteIndexFiles(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->reset()V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->getInstance()Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {p0, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rebuildIndex(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/JavaCore;->updateLegacyIndex(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public static removeClasspathVariable(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/JavaCore;->removeClasspathVariable(Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public static removeClasspathVariable(Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 4

    .line 2
    :try_start_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lorg/eclipse/core/runtime/IPath;

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;-><init>([Ljava/lang/String;[Lorg/eclipse/core/runtime/IPath;Z)V

    .line 3
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception while removing variable "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static removeElementChangedListener(Lorg/eclipse/jdt/core/IElementChangedListener;)V
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDeltaState()Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->removeElementChangedListener(Lorg/eclipse/jdt/core/IElementChangedListener;)V

    return-void
.end method

.method public static removeJavaLikeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->getNameWithoutJavaLikeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removePreProcessingResourceChangedListener(Lorg/eclipse/core/resources/IResourceChangeListener;)V
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDeltaState()Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->removePreResourceChangedListener(Lorg/eclipse/core/resources/IResourceChangeListener;)V

    return-void
.end method

.method public static run(Lorg/eclipse/core/resources/IWorkspaceRunnable;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/eclipse/jdt/core/JavaCore;->run(Lorg/eclipse/core/resources/IWorkspaceRunnable;Lorg/eclipse/core/runtime/jobs/ISchedulingRule;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public static run(Lorg/eclipse/core/resources/IWorkspaceRunnable;Lorg/eclipse/core/runtime/jobs/ISchedulingRule;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->isTreeLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance p1, Lorg/eclipse/jdt/internal/core/BatchOperation;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/core/BatchOperation;-><init>(Lorg/eclipse/core/resources/IWorkspaceRunnable;)V

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->run(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/core/BatchOperation;

    invoke-direct {v1, p0}, Lorg/eclipse/jdt/internal/core/BatchOperation;-><init>(Lorg/eclipse/core/resources/IWorkspaceRunnable;)V

    const/4 p0, 0x1

    invoke-interface {v0, v1, p1, p0, p2}, Lorg/eclipse/core/resources/IWorkspace;->run(Lorg/eclipse/core/resources/IWorkspaceRunnable;Lorg/eclipse/core/runtime/jobs/ISchedulingRule;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    :goto_0
    return-void
.end method

.method public static setClasspathContainer(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/IClasspathContainer;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v1, p2, v0

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v2

    aget-object v0, p1, v0

    invoke-virtual {v2, v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerGet(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object v3

    sget-object v4, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CONTAINER_INITIALIZATION_IN_PROGRESS:Lorg/eclipse/jdt/core/IClasspathContainer;

    if-ne v3, v4, :cond_0

    invoke-virtual {v2, v0, p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerBeingInitializedPut(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;)V

    return-void

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/SetContainerOperation;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/core/SetContainerOperation;-><init>(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/IClasspathContainer;)V

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    :cond_1
    new-instance p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;

    const-string p1, "Projects and containers collections should have the same size"

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setClasspathVariable(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/core/JavaCore;->setClasspathVariable(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public static setClasspathVariable(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/core/runtime/IPath;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0, p2}, Lorg/eclipse/jdt/core/JavaCore;->setClasspathVariables([Ljava/lang/String;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;

    const-string p1, "Variable path cannot be null"

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setClasspathVariables([Ljava/lang/String;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;-><init>([Ljava/lang/String;[Lorg/eclipse/core/runtime/IPath;Z)V

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    :cond_0
    new-instance p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;

    const-string p1, "Variable names and paths collections should have the same size"

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setComplianceOptions(Ljava/lang/String;Ljava/util/Map;)V
    .locals 13

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v0

    const/16 p0, 0x10

    ushr-long v2, v0, p0

    long-to-int p0, v2

    const-string v2, "1.3"

    const-string v3, "warning"

    const-string v4, "org.eclipse.jdt.core.compiler.release"

    const-string v5, "org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode"

    const-string v6, "org.eclipse.jdt.core.compiler.problem.enumIdentifier"

    const-string v7, "org.eclipse.jdt.core.compiler.problem.assertIdentifier"

    const-string v8, "org.eclipse.jdt.core.compiler.codegen.targetPlatform"

    const-string v9, "org.eclipse.jdt.core.compiler.source"

    const-string v10, "org.eclipse.jdt.core.compiler.compliance"

    const-string v11, "enabled"

    const-string v12, "error"

    packed-switch p0, :pswitch_data_0

    const/16 v2, 0x36

    if-le p0, v2, :cond_0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionFromJdkLevel(J)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v10, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v9, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v8, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "org.eclipse.jdt.core.compiler.problem.enablePreviewFeatures"

    const-string v0, "disabled"

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "org.eclipse.jdt.core.compiler.problem.reportPreviewFeatures"

    invoke-interface {p1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_0
    const-string p0, "10"

    invoke-interface {p1, v10, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v9, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v8, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_1
    const-string p0, "9"

    invoke-interface {p1, v10, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v9, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v8, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_2
    const-string p0, "1.8"

    invoke-interface {p1, v10, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v9, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v8, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_3
    const-string p0, "1.7"

    invoke-interface {p1, v10, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v9, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v8, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_4
    const-string p0, "1.6"

    invoke-interface {p1, v10, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v9, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v8, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_5
    const-string p0, "1.5"

    invoke-interface {p1, v10, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v9, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v8, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_6
    const-string p0, "1.4"

    invoke-interface {p1, v10, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "1.2"

    invoke-interface {p1, v8, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_7
    invoke-interface {p1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "1.1"

    invoke-interface {p1, v8, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ignore"

    invoke-interface {p1, v7, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setOptions(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->setOptions(Ljava/util/Hashtable;)V

    return-void
.end method

.method private static updateLegacyIndex(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 10

    new-instance v0, Lorg/eclipse/jdt/core/search/SearchEngine;

    invoke-direct {v0}, Lorg/eclipse/jdt/core/search/SearchEngine;-><init>()V

    invoke-static {}, Lorg/eclipse/jdt/core/search/SearchEngine;->createWorkspaceScope()Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v6

    :try_start_0
    const-string v1, "!@$#!@"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    new-instance v7, Lorg/eclipse/jdt/core/JavaCore$2;

    invoke-direct {v7}, Lorg/eclipse/jdt/core/JavaCore$2;-><init>()V

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x5

    move-object v9, p0

    invoke-virtual/range {v0 .. v9}, Lorg/eclipse/jdt/core/search/SearchEngine;->searchAllTypeNames([CI[CIILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/TypeNameRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    throw v0

    :catch_1
    :goto_0
    return-void
.end method

.method private static verbose_failed_to_instanciate_container_initializer(Ljava/lang/String;Lorg/eclipse/core/runtime/IConfigurationElement;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPContainer INIT - failed to instanciate initializer\n\tcontainer ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\tclass: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "class"

    invoke-interface {p1, p0}, Lorg/eclipse/core/runtime/IConfigurationElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;Ljava/io/PrintStream;)V

    return-void
.end method

.method private static verbose_failed_to_instanciate_variable_initializer(Ljava/lang/String;Lorg/eclipse/core/runtime/IConfigurationElement;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPContainer INIT - failed to instanciate initializer\n\tvariable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\tclass: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "class"

    invoke-interface {p1, p0}, Lorg/eclipse/core/runtime/IConfigurationElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;Ljava/io/PrintStream;)V

    return-void
.end method

.method private static verbose_found_container_initializer(Ljava/lang/String;Lorg/eclipse/core/runtime/IConfigurationElement;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPContainer INIT - found initializer\n\tcontainer ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\tclass: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "class"

    invoke-interface {p1, p0}, Lorg/eclipse/core/runtime/IConfigurationElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private static verbose_found_variable_initializer(Ljava/lang/String;Lorg/eclipse/core/runtime/IConfigurationElement;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPVariable INIT - found initializer\n\tvariable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\tclass: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "class"

    invoke-interface {p1, p0}, Lorg/eclipse/core/runtime/IConfigurationElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private static verbose_no_variable_initializer_found(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPVariable INIT - no initializer found\n\tvariable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private static verbose_triggering_variable_initialization(Ljava/lang/String;Lorg/eclipse/jdt/core/ClasspathVariableInitializer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPVariable INIT - triggering initialization\n\tvariable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\tinitializer: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private static verbose_triggering_variable_initialization_invocation_trace()V
    .locals 2

    const-string v0, "CPVariable INIT - triggering initialization\n\tinvocation trace:"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "<Fake exception>"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method private static verbose_variable_value_after_initialization(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPVariable INIT - after initialization\n\tvariable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\tvariable path: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configureJavaElementMarker(Lorg/eclipse/core/resources/IMarker;Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    instance-of v0, p2, Lorg/eclipse/jdt/core/IMember;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/eclipse/jdt/core/IMember;

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IMember;->getClassFile()Lorg/eclipse/jdt/core/IClassFile;

    move-result-object p2

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string v0, "org.eclipse.jdt.internal.core.JavaModelManager.handleId"

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getHandleIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/eclipse/core/resources/IMarker;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public start(Lorg/osgi/framework/BundleContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/eclipse/core/runtime/Plugin;->start(Lorg/osgi/framework/BundleContext;)V

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->registerDebugOptionsListener(Lorg/osgi/framework/BundleContext;)V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->startup()V

    return-void
.end method

.method public stop(Lorg/osgi/framework/BundleContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->unregisterDebugOptionsListener()V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Lorg/eclipse/core/runtime/Plugin;->stop(Lorg/osgi/framework/BundleContext;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0, p1}, Lorg/eclipse/core/runtime/Plugin;->stop(Lorg/osgi/framework/BundleContext;)V

    throw v0
.end method
