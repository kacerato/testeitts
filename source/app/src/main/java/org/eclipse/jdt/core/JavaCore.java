package org.eclipse.jdt.core;

import com.android.tools.r8.internal.C7905jK0;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IMarkerDelta;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchEngine;
import org.eclipse.jdt.core.search.TypeNameRequestor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.AutomaticModuleNaming;
import org.eclipse.jdt.internal.compiler.env.IBinaryModule;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.core.BatchOperation;
import org.eclipse.jdt.internal.core.BufferFactoryWrapper;
import org.eclipse.jdt.internal.core.BufferManager;
import org.eclipse.jdt.internal.core.ClasspathAttribute;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.ClasspathValidation;
import org.eclipse.jdt.internal.core.CreateTypeHierarchyOperation;
import org.eclipse.jdt.internal.core.DefaultWorkingCopyOwner;
import org.eclipse.jdt.internal.core.DeltaProcessingState;
import org.eclipse.jdt.internal.core.ExternalFoldersManager;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.Region;
import org.eclipse.jdt.internal.core.SetContainerOperation;
import org.eclipse.jdt.internal.core.SetVariablesOperation;
import org.eclipse.jdt.internal.core.builder.JavaBuilder;
import org.eclipse.jdt.internal.core.builder.ModuleInfoBuilder;
import org.eclipse.jdt.internal.core.builder.State;
import org.eclipse.jdt.internal.core.nd.indexer.Indexer;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.ModuleUtil;
import org.eclipse.jdt.internal.core.util.Util;
import org.osgi.framework.BundleContext;

public final class JavaCore extends Plugin {
    public static final String ABORT = "abort";
    protected static final String ATT_HANDLE_ID = "org.eclipse.jdt.internal.core.JavaModelManager.handleId";
    public static final String BUILDER_ID = "org.eclipse.jdt.core.javabuilder";
    public static final String CLEAN = "clean";
    public static final String CLEAR_ALL = "clear all";
    public static final String CODEASSIST_ARGUMENT_PREFIXES = "org.eclipse.jdt.core.codeComplete.argumentPrefixes";
    public static final String CODEASSIST_ARGUMENT_SUFFIXES = "org.eclipse.jdt.core.codeComplete.argumentSuffixes";
    public static final String CODEASSIST_CAMEL_CASE_MATCH = "org.eclipse.jdt.core.codeComplete.camelCaseMatch";
    public static final String CODEASSIST_DEPRECATION_CHECK = "org.eclipse.jdt.core.codeComplete.deprecationCheck";
    public static final String CODEASSIST_DISCOURAGED_REFERENCE_CHECK = "org.eclipse.jdt.core.codeComplete.discouragedReferenceCheck";
    public static final String CODEASSIST_FIELD_PREFIXES = "org.eclipse.jdt.core.codeComplete.fieldPrefixes";
    public static final String CODEASSIST_FIELD_SUFFIXES = "org.eclipse.jdt.core.codeComplete.fieldSuffixes";
    public static final String CODEASSIST_FORBIDDEN_REFERENCE_CHECK = "org.eclipse.jdt.core.codeComplete.forbiddenReferenceCheck";
    public static final String CODEASSIST_IMPLICIT_QUALIFICATION = "org.eclipse.jdt.core.codeComplete.forceImplicitQualification";
    public static final String CODEASSIST_LOCAL_PREFIXES = "org.eclipse.jdt.core.codeComplete.localPrefixes";
    public static final String CODEASSIST_LOCAL_SUFFIXES = "org.eclipse.jdt.core.codeComplete.localSuffixes";
    public static final String CODEASSIST_STATIC_FIELD_PREFIXES = "org.eclipse.jdt.core.codeComplete.staticFieldPrefixes";
    public static final String CODEASSIST_STATIC_FIELD_SUFFIXES = "org.eclipse.jdt.core.codeComplete.staticFieldSuffixes";
    public static final String CODEASSIST_STATIC_FINAL_FIELD_PREFIXES = "org.eclipse.jdt.core.codeComplete.staticFinalFieldPrefixes";
    public static final String CODEASSIST_STATIC_FINAL_FIELD_SUFFIXES = "org.eclipse.jdt.core.codeComplete.staticFinalFieldSuffixes";
    public static final String CODEASSIST_SUBSTRING_MATCH = "org.eclipse.jdt.core.codeComplete.substringMatch";
    public static final String CODEASSIST_SUGGEST_STATIC_IMPORTS = "org.eclipse.jdt.core.codeComplete.suggestStaticImports";
    public static final String CODEASSIST_VISIBILITY_CHECK = "org.eclipse.jdt.core.codeComplete.visibilityCheck";
    public static final String COMPACT = "compact";
    public static final String COMPILER_ANNOTATION_NULL_ANALYSIS = "org.eclipse.jdt.core.compiler.annotation.nullanalysis";
    public static final String COMPILER_CODEGEN_INLINE_JSR_BYTECODE = "org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode";
    public static final String COMPILER_CODEGEN_METHOD_PARAMETERS_ATTR = "org.eclipse.jdt.core.compiler.codegen.methodParameters";
    public static final String COMPILER_CODEGEN_TARGET_PLATFORM = "org.eclipse.jdt.core.compiler.codegen.targetPlatform";
    public static final String COMPILER_CODEGEN_UNUSED_LOCAL = "org.eclipse.jdt.core.compiler.codegen.unusedLocal";
    public static final String COMPILER_COMPLIANCE = "org.eclipse.jdt.core.compiler.compliance";
    public static final String COMPILER_DOC_COMMENT_SUPPORT = "org.eclipse.jdt.core.compiler.doc.comment.support";
    public static final String COMPILER_INHERIT_NULL_ANNOTATIONS = "org.eclipse.jdt.core.compiler.annotation.inheritNullAnnotations";
    public static final String COMPILER_LINE_NUMBER_ATTR = "org.eclipse.jdt.core.compiler.debug.lineNumber";
    public static final String COMPILER_LOCAL_VARIABLE_ATTR = "org.eclipse.jdt.core.compiler.debug.localVariable";
    public static final String COMPILER_NONNULL_ANNOTATION_NAME = "org.eclipse.jdt.core.compiler.annotation.nonnull";
    public static final String COMPILER_NONNULL_ANNOTATION_SECONDARY_NAMES = "org.eclipse.jdt.core.compiler.annotation.nonnull.secondary";
    public static final String COMPILER_NONNULL_BY_DEFAULT_ANNOTATION_NAME = "org.eclipse.jdt.core.compiler.annotation.nonnullbydefault";
    public static final String COMPILER_NONNULL_BY_DEFAULT_ANNOTATION_SECONDARY_NAMES = "org.eclipse.jdt.core.compiler.annotation.nonnullbydefault.secondary";
    public static final String COMPILER_NULLABLE_ANNOTATION_NAME = "org.eclipse.jdt.core.compiler.annotation.nullable";
    public static final String COMPILER_NULLABLE_ANNOTATION_SECONDARY_NAMES = "org.eclipse.jdt.core.compiler.annotation.nullable.secondary";
    public static final String COMPILER_PB_ANNOTATION_SUPER_INTERFACE = "org.eclipse.jdt.core.compiler.problem.annotationSuperInterface";
    public static final String COMPILER_PB_API_LEAKS = "org.eclipse.jdt.core.compiler.problem.APILeak";
    public static final String COMPILER_PB_ASSERT_IDENTIFIER = "org.eclipse.jdt.core.compiler.problem.assertIdentifier";
    public static final String COMPILER_PB_AUTOBOXING = "org.eclipse.jdt.core.compiler.problem.autoboxing";
    public static final String COMPILER_PB_BOOLEAN_METHOD_THROWING_EXCEPTION = "org.eclipse.jdt.core.compiler.problem.booleanMethodThrowingException";
    public static final String COMPILER_PB_CHAR_ARRAY_IN_STRING_CONCATENATION = "org.eclipse.jdt.core.compiler.problem.noImplicitStringConversion";
    public static final String COMPILER_PB_COMPARING_IDENTICAL = "org.eclipse.jdt.core.compiler.problem.comparingIdentical";
    public static final String COMPILER_PB_DEAD_CODE = "org.eclipse.jdt.core.compiler.problem.deadCode";
    public static final String COMPILER_PB_DEAD_CODE_IN_TRIVIAL_IF_STATEMENT = "org.eclipse.jdt.core.compiler.problem.deadCodeInTrivialIfStatement";
    public static final String COMPILER_PB_DEPRECATION = "org.eclipse.jdt.core.compiler.problem.deprecation";
    public static final String COMPILER_PB_DEPRECATION_IN_DEPRECATED_CODE = "org.eclipse.jdt.core.compiler.problem.deprecationInDeprecatedCode";
    public static final String COMPILER_PB_DEPRECATION_WHEN_OVERRIDING_DEPRECATED_METHOD = "org.eclipse.jdt.core.compiler.problem.deprecationWhenOverridingDeprecatedMethod";
    public static final String COMPILER_PB_DISCOURAGED_REFERENCE = "org.eclipse.jdt.core.compiler.problem.discouragedReference";
    public static final String COMPILER_PB_EMPTY_STATEMENT = "org.eclipse.jdt.core.compiler.problem.emptyStatement";
    public static final String COMPILER_PB_ENABLE_PREVIEW_FEATURES = "org.eclipse.jdt.core.compiler.problem.enablePreviewFeatures";
    public static final String COMPILER_PB_ENUM_IDENTIFIER = "org.eclipse.jdt.core.compiler.problem.enumIdentifier";
    public static final String COMPILER_PB_EXPLICITLY_CLOSED_AUTOCLOSEABLE = "org.eclipse.jdt.core.compiler.problem.explicitlyClosedAutoCloseable";
    public static final String COMPILER_PB_FALLTHROUGH_CASE = "org.eclipse.jdt.core.compiler.problem.fallthroughCase";
    public static final String COMPILER_PB_FATAL_OPTIONAL_ERROR = "org.eclipse.jdt.core.compiler.problem.fatalOptionalError";
    public static final String COMPILER_PB_FIELD_HIDING = "org.eclipse.jdt.core.compiler.problem.fieldHiding";
    public static final String COMPILER_PB_FINALLY_BLOCK_NOT_COMPLETING = "org.eclipse.jdt.core.compiler.problem.finallyBlockNotCompletingNormally";
    public static final String COMPILER_PB_FINAL_PARAMETER_BOUND = "org.eclipse.jdt.core.compiler.problem.finalParameterBound";
    public static final String COMPILER_PB_FORBIDDEN_REFERENCE = "org.eclipse.jdt.core.compiler.problem.forbiddenReference";
    public static final String COMPILER_PB_HIDDEN_CATCH_BLOCK = "org.eclipse.jdt.core.compiler.problem.hiddenCatchBlock";
    public static final String COMPILER_PB_INCLUDE_ASSERTS_IN_NULL_ANALYSIS = "org.eclipse.jdt.core.compiler.problem.includeNullInfoFromAsserts";
    public static final String COMPILER_PB_INCOMPATIBLE_NON_INHERITED_INTERFACE_METHOD = "org.eclipse.jdt.core.compiler.problem.incompatibleNonInheritedInterfaceMethod";
    public static final String COMPILER_PB_INCOMPLETE_ENUM_SWITCH = "org.eclipse.jdt.core.compiler.problem.incompleteEnumSwitch";
    public static final String COMPILER_PB_INCONSISTENT_NULL_CHECK = "org.eclipse.jdt.core.compiler.problem.inconsistentNullCheck";
    public static final String COMPILER_PB_INDIRECT_STATIC_ACCESS = "org.eclipse.jdt.core.compiler.problem.indirectStaticAccess";
    public static final String COMPILER_PB_INVALID_IMPORT = "org.eclipse.jdt.core.compiler.problem.invalidImport";
    public static final String COMPILER_PB_INVALID_JAVADOC = "org.eclipse.jdt.core.compiler.problem.invalidJavadoc";
    public static final String COMPILER_PB_INVALID_JAVADOC_TAGS = "org.eclipse.jdt.core.compiler.problem.invalidJavadocTags";
    public static final String COMPILER_PB_INVALID_JAVADOC_TAGS_VISIBILITY = "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsVisibility";
    public static final String COMPILER_PB_INVALID_JAVADOC_TAGS__DEPRECATED_REF = "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsDeprecatedRef";
    public static final String COMPILER_PB_INVALID_JAVADOC_TAGS__NOT_VISIBLE_REF = "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsNotVisibleRef";
    public static final String COMPILER_PB_LOCAL_VARIABLE_HIDING = "org.eclipse.jdt.core.compiler.problem.localVariableHiding";
    public static final String COMPILER_PB_MAX_PER_UNIT = "org.eclipse.jdt.core.compiler.maxProblemPerUnit";
    public static final String COMPILER_PB_METHOD_WITH_CONSTRUCTOR_NAME = "org.eclipse.jdt.core.compiler.problem.methodWithConstructorName";
    public static final String COMPILER_PB_MISSING_DEPRECATED_ANNOTATION = "org.eclipse.jdt.core.compiler.problem.missingDeprecatedAnnotation";
    public static final String COMPILER_PB_MISSING_ENUM_CASE_DESPITE_DEFAULT = "org.eclipse.jdt.core.compiler.problem.missingEnumCaseDespiteDefault";
    public static final String COMPILER_PB_MISSING_HASHCODE_METHOD = "org.eclipse.jdt.core.compiler.problem.missingHashCodeMethod";
    public static final String COMPILER_PB_MISSING_JAVADOC_COMMENTS = "org.eclipse.jdt.core.compiler.problem.missingJavadocComments";
    public static final String COMPILER_PB_MISSING_JAVADOC_COMMENTS_OVERRIDING = "org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsOverriding";
    public static final String COMPILER_PB_MISSING_JAVADOC_COMMENTS_VISIBILITY = "org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsVisibility";
    public static final String COMPILER_PB_MISSING_JAVADOC_TAGS = "org.eclipse.jdt.core.compiler.problem.missingJavadocTags";
    public static final String COMPILER_PB_MISSING_JAVADOC_TAGS_METHOD_TYPE_PARAMETERS = "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsMethodTypeParameters";
    public static final String COMPILER_PB_MISSING_JAVADOC_TAGS_OVERRIDING = "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsOverriding";
    public static final String COMPILER_PB_MISSING_JAVADOC_TAGS_VISIBILITY = "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsVisibility";
    public static final String COMPILER_PB_MISSING_JAVADOC_TAG_DESCRIPTION = "org.eclipse.jdt.core.compiler.problem.missingJavadocTagDescription";
    public static final String COMPILER_PB_MISSING_JAVADOC_TAG_DESCRIPTION_ALL_STANDARD_TAGS = "all_standard_tags";
    public static final String COMPILER_PB_MISSING_JAVADOC_TAG_DESCRIPTION_NO_TAG = "no_tag";
    public static final String COMPILER_PB_MISSING_JAVADOC_TAG_DESCRIPTION_RETURN_TAG = "return_tag";
    public static final String COMPILER_PB_MISSING_NONNULL_BY_DEFAULT_ANNOTATION = "org.eclipse.jdt.core.compiler.annotation.missingNonNullByDefaultAnnotation";
    public static final String COMPILER_PB_MISSING_OVERRIDE_ANNOTATION = "org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotation";
    public static final String COMPILER_PB_MISSING_OVERRIDE_ANNOTATION_FOR_INTERFACE_METHOD_IMPLEMENTATION = "org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotationForInterfaceMethodImplementation";
    public static final String COMPILER_PB_MISSING_SERIAL_VERSION = "org.eclipse.jdt.core.compiler.problem.missingSerialVersion";
    public static final String COMPILER_PB_MISSING_STATIC_ON_METHOD = "org.eclipse.jdt.core.compiler.problem.reportMethodCanBeStatic";
    public static final String COMPILER_PB_MISSING_SYNCHRONIZED_ON_INHERITED_METHOD = "org.eclipse.jdt.core.compiler.problem.missingSynchronizedOnInheritedMethod";
    public static final String COMPILER_PB_NONNULL_PARAMETER_ANNOTATION_DROPPED = "org.eclipse.jdt.core.compiler.problem.nonnullParameterAnnotationDropped";
    public static final String COMPILER_PB_NONNULL_TYPEVAR_FROM_LEGACY_INVOCATION = "org.eclipse.jdt.core.compiler.problem.nonnullTypeVariableFromLegacyInvocation";
    public static final String COMPILER_PB_NON_NLS_STRING_LITERAL = "org.eclipse.jdt.core.compiler.problem.nonExternalizedStringLiteral";
    public static final String COMPILER_PB_NO_EFFECT_ASSIGNMENT = "org.eclipse.jdt.core.compiler.problem.noEffectAssignment";
    public static final String COMPILER_PB_NULL_ANNOTATION_INFERENCE_CONFLICT = "org.eclipse.jdt.core.compiler.problem.nullAnnotationInferenceConflict";
    public static final String COMPILER_PB_NULL_REFERENCE = "org.eclipse.jdt.core.compiler.problem.nullReference";
    public static final String COMPILER_PB_NULL_SPECIFICATION_VIOLATION = "org.eclipse.jdt.core.compiler.problem.nullSpecViolation";
    public static final String COMPILER_PB_NULL_UNCHECKED_CONVERSION = "org.eclipse.jdt.core.compiler.problem.nullUncheckedConversion";
    public static final String COMPILER_PB_OVERRIDING_METHOD_WITHOUT_SUPER_INVOCATION = "org.eclipse.jdt.core.compiler.problem.overridingMethodWithoutSuperInvocation";
    public static final String COMPILER_PB_OVERRIDING_PACKAGE_DEFAULT_METHOD = "org.eclipse.jdt.core.compiler.problem.overridingPackageDefaultMethod";
    public static final String COMPILER_PB_PARAMETER_ASSIGNMENT = "org.eclipse.jdt.core.compiler.problem.parameterAssignment";
    public static final String COMPILER_PB_PESSIMISTIC_NULL_ANALYSIS_FOR_FREE_TYPE_VARIABLES = "org.eclipse.jdt.core.compiler.problem.pessimisticNullAnalysisForFreeTypeVariables";
    public static final String COMPILER_PB_POSSIBLE_ACCIDENTAL_BOOLEAN_ASSIGNMENT = "org.eclipse.jdt.core.compiler.problem.possibleAccidentalBooleanAssignment";
    public static final String COMPILER_PB_POTENTIALLY_MISSING_STATIC_ON_METHOD = "org.eclipse.jdt.core.compiler.problem.reportMethodCanBePotentiallyStatic";
    public static final String COMPILER_PB_POTENTIALLY_UNCLOSED_CLOSEABLE = "org.eclipse.jdt.core.compiler.problem.potentiallyUnclosedCloseable";
    public static final String COMPILER_PB_POTENTIAL_NULL_REFERENCE = "org.eclipse.jdt.core.compiler.problem.potentialNullReference";
    public static final String COMPILER_PB_RAW_TYPE_REFERENCE = "org.eclipse.jdt.core.compiler.problem.rawTypeReference";
    public static final String COMPILER_PB_REDUNDANT_NULL_ANNOTATION = "org.eclipse.jdt.core.compiler.problem.redundantNullAnnotation";
    public static final String COMPILER_PB_REDUNDANT_NULL_CHECK = "org.eclipse.jdt.core.compiler.problem.redundantNullCheck";
    public static final String COMPILER_PB_REDUNDANT_SUPERINTERFACE = "org.eclipse.jdt.core.compiler.problem.redundantSuperinterface";
    public static final String COMPILER_PB_REDUNDANT_TYPE_ARGUMENTS = "org.eclipse.jdt.core.compiler.problem.redundantSpecificationOfTypeArguments";
    public static final String COMPILER_PB_REPORT_PREVIEW_FEATURES = "org.eclipse.jdt.core.compiler.problem.reportPreviewFeatures";
    public static final String COMPILER_PB_SPECIAL_PARAMETER_HIDING_FIELD = "org.eclipse.jdt.core.compiler.problem.specialParameterHidingField";
    public static final String COMPILER_PB_STATIC_ACCESS_RECEIVER = "org.eclipse.jdt.core.compiler.problem.staticAccessReceiver";
    public static final String COMPILER_PB_SUPPRESS_OPTIONAL_ERRORS = "org.eclipse.jdt.core.compiler.problem.suppressOptionalErrors";
    public static final String COMPILER_PB_SUPPRESS_WARNINGS = "org.eclipse.jdt.core.compiler.problem.suppressWarnings";
    public static final String COMPILER_PB_SWITCH_MISSING_DEFAULT_CASE = "org.eclipse.jdt.core.compiler.problem.missingDefaultCase";
    public static final String COMPILER_PB_SYNTACTIC_NULL_ANALYSIS_FOR_FIELDS = "org.eclipse.jdt.core.compiler.problem.syntacticNullAnalysisForFields";
    public static final String COMPILER_PB_SYNTHETIC_ACCESS_EMULATION = "org.eclipse.jdt.core.compiler.problem.syntheticAccessEmulation";
    public static final String COMPILER_PB_TERMINAL_DEPRECATION = "org.eclipse.jdt.core.compiler.problem.terminalDeprecation";
    public static final String COMPILER_PB_TYPE_PARAMETER_HIDING = "org.eclipse.jdt.core.compiler.problem.typeParameterHiding";
    public static final String COMPILER_PB_UNAVOIDABLE_GENERIC_TYPE_PROBLEMS = "org.eclipse.jdt.core.compiler.problem.unavoidableGenericTypeProblems";
    public static final String COMPILER_PB_UNCHECKED_TYPE_OPERATION = "org.eclipse.jdt.core.compiler.problem.uncheckedTypeOperation";
    public static final String COMPILER_PB_UNCLOSED_CLOSEABLE = "org.eclipse.jdt.core.compiler.problem.unclosedCloseable";
    public static final String COMPILER_PB_UNDOCUMENTED_EMPTY_BLOCK = "org.eclipse.jdt.core.compiler.problem.undocumentedEmptyBlock";
    public static final String COMPILER_PB_UNHANDLED_WARNING_TOKEN = "org.eclipse.jdt.core.compiler.problem.unhandledWarningToken";
    public static final String COMPILER_PB_UNLIKELY_COLLECTION_METHOD_ARGUMENT_TYPE = "org.eclipse.jdt.core.compiler.problem.unlikelyCollectionMethodArgumentType";
    public static final String COMPILER_PB_UNLIKELY_COLLECTION_METHOD_ARGUMENT_TYPE_STRICT = "org.eclipse.jdt.core.compiler.problem.unlikelyCollectionMethodArgumentTypeStrict";
    public static final String COMPILER_PB_UNLIKELY_EQUALS_ARGUMENT_TYPE = "org.eclipse.jdt.core.compiler.problem.unlikelyEqualsArgumentType";
    public static final String COMPILER_PB_UNNECESSARY_ELSE = "org.eclipse.jdt.core.compiler.problem.unnecessaryElse";
    public static final String COMPILER_PB_UNNECESSARY_TYPE_CHECK = "org.eclipse.jdt.core.compiler.problem.unnecessaryTypeCheck";
    public static final String COMPILER_PB_UNQUALIFIED_FIELD_ACCESS = "org.eclipse.jdt.core.compiler.problem.unqualifiedFieldAccess";
    public static final String COMPILER_PB_UNREACHABLE_CODE = "org.eclipse.jdt.core.compiler.problem.unreachableCode";
    public static final String COMPILER_PB_UNSAFE_TYPE_OPERATION = "org.eclipse.jdt.core.compiler.problem.uncheckedTypeOperation";
    public static final String COMPILER_PB_UNSTABLE_AUTO_MODULE_NAME = "org.eclipse.jdt.core.compiler.problem.unstableAutoModuleName";
    public static final String COMPILER_PB_UNUSED_DECLARED_THROWN_EXCEPTION = "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownException";
    public static final String COMPILER_PB_UNUSED_DECLARED_THROWN_EXCEPTION_EXEMPT_EXCEPTION_AND_THROWABLE = "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionExemptExceptionAndThrowable";
    public static final String COMPILER_PB_UNUSED_DECLARED_THROWN_EXCEPTION_INCLUDE_DOC_COMMENT_REFERENCE = "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionIncludeDocCommentReference";
    public static final String COMPILER_PB_UNUSED_DECLARED_THROWN_EXCEPTION_WHEN_OVERRIDING = "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionWhenOverriding";
    public static final String COMPILER_PB_UNUSED_EXCEPTION_PARAMETER = "org.eclipse.jdt.core.compiler.problem.unusedExceptionParameter";
    public static final String COMPILER_PB_UNUSED_IMPORT = "org.eclipse.jdt.core.compiler.problem.unusedImport";
    public static final String COMPILER_PB_UNUSED_LABEL = "org.eclipse.jdt.core.compiler.problem.unusedLabel";
    public static final String COMPILER_PB_UNUSED_LOCAL = "org.eclipse.jdt.core.compiler.problem.unusedLocal";
    public static final String COMPILER_PB_UNUSED_OBJECT_ALLOCATION = "org.eclipse.jdt.core.compiler.problem.unusedObjectAllocation";
    public static final String COMPILER_PB_UNUSED_PARAMETER = "org.eclipse.jdt.core.compiler.problem.unusedParameter";
    public static final String COMPILER_PB_UNUSED_PARAMETER_INCLUDE_DOC_COMMENT_REFERENCE = "org.eclipse.jdt.core.compiler.problem.unusedParameterIncludeDocCommentReference";
    public static final String COMPILER_PB_UNUSED_PARAMETER_WHEN_IMPLEMENTING_ABSTRACT = "org.eclipse.jdt.core.compiler.problem.unusedParameterWhenImplementingAbstract";
    public static final String COMPILER_PB_UNUSED_PARAMETER_WHEN_OVERRIDING_CONCRETE = "org.eclipse.jdt.core.compiler.problem.unusedParameterWhenOverridingConcrete";
    public static final String COMPILER_PB_UNUSED_PRIVATE_MEMBER = "org.eclipse.jdt.core.compiler.problem.unusedPrivateMember";
    public static final String COMPILER_PB_UNUSED_TYPE_ARGUMENTS_FOR_METHOD_INVOCATION = "org.eclipse.jdt.core.compiler.problem.unusedTypeArgumentsForMethodInvocation";
    public static final String COMPILER_PB_UNUSED_TYPE_PARAMETER = "org.eclipse.jdt.core.compiler.problem.unusedTypeParameter";
    public static final String COMPILER_PB_UNUSED_WARNING_TOKEN = "org.eclipse.jdt.core.compiler.problem.unusedWarningToken";
    public static final String COMPILER_PB_VARARGS_ARGUMENT_NEED_CAST = "org.eclipse.jdt.core.compiler.problem.varargsArgumentNeedCast";
    public static final String COMPILER_RELEASE = "org.eclipse.jdt.core.compiler.release";
    public static final String COMPILER_SOURCE = "org.eclipse.jdt.core.compiler.source";
    public static final String COMPILER_SOURCE_FILE_ATTR = "org.eclipse.jdt.core.compiler.debug.sourceFile";
    public static final String COMPILER_TASK_CASE_SENSITIVE = "org.eclipse.jdt.core.compiler.taskCaseSensitive";
    public static final String COMPILER_TASK_PRIORITIES = "org.eclipse.jdt.core.compiler.taskPriorities";
    public static final String COMPILER_TASK_PRIORITY_HIGH = "HIGH";
    public static final String COMPILER_TASK_PRIORITY_LOW = "LOW";
    public static final String COMPILER_TASK_PRIORITY_NORMAL = "NORMAL";
    public static final String COMPILER_TASK_TAGS = "org.eclipse.jdt.core.compiler.taskTags";
    public static final String COMPUTE = "compute";
    public static final String CORE_CIRCULAR_CLASSPATH = "org.eclipse.jdt.core.circularClasspath";
    public static final String CORE_ENABLE_CLASSPATH_EXCLUSION_PATTERNS = "org.eclipse.jdt.core.classpath.exclusionPatterns";
    public static final String CORE_ENABLE_CLASSPATH_MULTIPLE_OUTPUT_LOCATIONS = "org.eclipse.jdt.core.classpath.multipleOutputLocations";
    public static final String CORE_ENCODING = "org.eclipse.jdt.core.encoding";
    public static final String CORE_INCOMPATIBLE_JDK_LEVEL = "org.eclipse.jdt.core.incompatibleJDKLevel";
    public static final String CORE_INCOMPLETE_CLASSPATH = "org.eclipse.jdt.core.incompleteClasspath";
    public static final String CORE_JAVA_BUILD_CLEAN_OUTPUT_FOLDER = "org.eclipse.jdt.core.builder.cleanOutputFolder";
    public static final String CORE_JAVA_BUILD_DUPLICATE_RESOURCE = "org.eclipse.jdt.core.builder.duplicateResourceTask";
    public static final String CORE_JAVA_BUILD_INVALID_CLASSPATH = "org.eclipse.jdt.core.builder.invalidClasspath";
    public static final String CORE_JAVA_BUILD_ORDER = "org.eclipse.jdt.core.computeJavaBuildOrder";
    public static final String CORE_JAVA_BUILD_RECREATE_MODIFIED_CLASS_FILES_IN_OUTPUT_FOLDER = "org.eclipse.jdt.core.builder.recreateModifiedClassFileInOutputFolder";
    public static final String CORE_JAVA_BUILD_RESOURCE_COPY_FILTER = "org.eclipse.jdt.core.builder.resourceCopyExclusionFilter";
    public static final String CORE_MAIN_ONLY_PROJECT_HAS_TEST_ONLY_DEPENDENCY = "org.eclipse.jdt.core.classpath.mainOnlyProjectHasTestOnlyDependency";
    public static final String CORE_OUTPUT_LOCATION_OVERLAPPING_ANOTHER_SOURCE = "org.eclipse.jdt.core.classpath.outputOverlappingAnotherSource";
    public static final String DEFAULT = "default";
    public static final String DEFAULT_JAVA_FORMATTER = "org.eclipse.jdt.core.defaultJavaFormatter";
    public static final String DEFAULT_TASK_PRIORITIES = "NORMAL,HIGH,NORMAL";
    public static final String DEFAULT_TASK_PRIORITY = "NORMAL";
    public static final String DEFAULT_TASK_TAG = "TODO";
    public static final String DEFAULT_TASK_TAGS = "TODO,FIXME,XXX";
    public static final String DISABLED = "disabled";
    public static final String DO_NOT_GENERATE = "do not generate";
    public static final String DO_NOT_INSERT = "do not insert";
    public static final String ENABLED = "enabled";
    public static final String ERROR = "error";
    public static final String FORMATTER_CLEAR_BLANK_LINES = "org.eclipse.jdt.core.formatter.newline.clearAll";
    public static final String FORMATTER_COMPACT_ASSIGNMENT = "org.eclipse.jdt.core.formatter.style.assignment";
    public static final String FORMATTER_LINE_SPLIT = "org.eclipse.jdt.core.formatter.lineSplit";
    public static final String FORMATTER_NEWLINE_CONTROL = "org.eclipse.jdt.core.formatter.newline.controlStatement";
    public static final String FORMATTER_NEWLINE_ELSE_IF = "org.eclipse.jdt.core.formatter.newline.elseIf";
    public static final String FORMATTER_NEWLINE_EMPTY_BLOCK = "org.eclipse.jdt.core.formatter.newline.emptyBlock";
    public static final String FORMATTER_NEWLINE_OPENING_BRACE = "org.eclipse.jdt.core.formatter.newline.openingBrace";
    public static final String FORMATTER_SPACE_CASTEXPRESSION = "org.eclipse.jdt.core.formatter.space.castexpression";
    public static final String FORMATTER_TAB_CHAR = "org.eclipse.jdt.core.formatter.tabulation.char";
    public static final String FORMATTER_TAB_SIZE = "org.eclipse.jdt.core.formatter.tabulation.size";
    public static final String GENERATE = "generate";
    public static final String IGNORE = "ignore";
    public static final String INFO = "info";
    public static final String INSERT = "insert";
    public static final String JAVA_FORMATTER = "org.eclipse.jdt.core.javaFormatter";
    public static final String JAVA_FORMATTER_EXTENSION_POINT_ID = "javaFormatter";
    public static final String JAVA_SOURCE_CONTENT_TYPE = "org.eclipse.jdt.core.javaSource";
    public static final String MODEL_ID = "org.eclipse.jdt.core.javamodel";
    public static final String MODULE_PATH_CONTAINER_ID = "org.eclipse.jdt.MODULE_PATH";
    public static final String NATURE_ID = "org.eclipse.jdt.core.javanature";
    public static final String NEVER = "never";
    public static final String NORMAL = "normal";
    public static final String OPTIMIZE_OUT = "optimize out";
    public static final String PLUGIN_ID = "org.eclipse.jdt.core";
    public static final String PRESERVE = "preserve";
    public static final String PRESERVE_ONE = "preserve one";
    public static final String PRIVATE = "private";
    public static final String PROTECTED = "protected";
    public static final String PUBLIC = "public";
    public static final String SPACE = "space";
    public static final String TAB = "tab";
    public static final String TIMEOUT_FOR_PARAMETER_NAME_FROM_ATTACHED_JAVADOC = "org.eclipse.jdt.core.timeoutForParameterNameFromAttachedJavadoc";
    public static final String USER_LIBRARY_CONTAINER_ID = "org.eclipse.jdt.USER_LIBRARY";
    public static final String VERSION_10 = "10";
    public static final String VERSION_11 = "11";
    public static final String VERSION_12 = "12";
    public static final String VERSION_1_1 = "1.1";
    public static final String VERSION_1_2 = "1.2";
    public static final String VERSION_1_3 = "1.3";
    public static final String VERSION_1_4 = "1.4";
    public static final String VERSION_1_5 = "1.5";
    public static final String VERSION_1_6 = "1.6";
    public static final String VERSION_1_7 = "1.7";
    public static final String VERSION_1_8 = "1.8";
    public static final String VERSION_9 = "9";
    public static final String VERSION_CLDC_1_1 = "cldc1.1";
    public static final String WARNING = "warning";
    private static final IResource[] NO_GENERATED_RESOURCES = new IResource[0];
    private static Plugin JAVA_CORE_PLUGIN = null;
    private static List<String> allVersions = Arrays.asList("cldc1.1", "1.1", "1.2", "1.3", "1.4", "1.5", "1.6", "1.7", "1.8", "9", "10", "11", "12");

    public JavaCore() {
        JAVA_CORE_PLUGIN = this;
    }

    public static void addElementChangedListener(IElementChangedListener iElementChangedListener) {
        addElementChangedListener(iElementChangedListener, 5);
    }

    public static void addJavaElementMarkerAttributes(Map map, IJavaElement iJavaElement) {
        if (iJavaElement instanceof IMember) {
            iJavaElement = ((IMember) iJavaElement).getClassFile();
        }
        if (map == null || iJavaElement == null) {
            return;
        }
        map.put(ATT_HANDLE_ID, iJavaElement.getHandleIdentifier());
    }

    private static void addNonJavaResources(Object[] objArr, IContainer iContainer, int i10, ArrayList arrayList) {
        IResource[] iResourceArr;
        for (Object obj : objArr) {
            if (obj instanceof IFile) {
                IResource findMember = iContainer.findMember(((IFile) obj).getFullPath().removeFirstSegments(i10));
                if (findMember != null && findMember.exists()) {
                    arrayList.add(findMember);
                }
            } else if (obj instanceof IFolder) {
                try {
                    iResourceArr = ((IFolder) obj).members();
                } catch (CoreException unused) {
                    iResourceArr = null;
                }
                if (iResourceArr != null) {
                    addNonJavaResources(iResourceArr, iContainer, i10, arrayList);
                }
            }
        }
    }

    public static void addPreProcessingResourceChangedListener(IResourceChangeListener iResourceChangeListener) {
        addPreProcessingResourceChangedListener(iResourceChangeListener, 1);
    }

    public static int compareJavaVersions(String str, String str2) {
        return Long.compare(CompilerOptions.versionToJdkLevel(str), CompilerOptions.versionToJdkLevel(str2));
    }

    public static byte[] compileWithAttributes(IModuleDescription iModuleDescription, Map<String, String> map) throws JavaModelException, IllegalArgumentException {
        return new ModuleInfoBuilder().compileWithAttributes(iModuleDescription, map);
    }

    private static ClasspathContainerInitializer computeClasspathContainerInitializer(String str) {
        IExtensionPoint extensionPoint;
        if (getPlugin() != null && (extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(PLUGIN_ID, JavaModelManager.CPCONTAINER_INITIALIZER_EXTPOINT_ID)) != null) {
            for (IExtension iExtension : extensionPoint.getExtensions()) {
                for (IConfigurationElement iConfigurationElement : iExtension.getConfigurationElements()) {
                    String attribute = iConfigurationElement.getAttribute("id");
                    if (attribute != null && attribute.equals(str)) {
                        if (JavaModelManager.CP_RESOLVE_VERBOSE_ADVANCED) {
                            verbose_found_container_initializer(str, iConfigurationElement);
                        }
                        try {
                            Object createExecutableExtension = iConfigurationElement.createExecutableExtension("class");
                            if (createExecutableExtension instanceof ClasspathContainerInitializer) {
                                return (ClasspathContainerInitializer) createExecutableExtension;
                            }
                            continue;
                        } catch (CoreException e10) {
                            if (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                                verbose_failed_to_instanciate_container_initializer(str, iConfigurationElement);
                                e10.printStackTrace();
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    public static IJavaElement create(String str) {
        return create(str, DefaultWorkingCopyOwner.PRIMARY);
    }

    public static IClassFile createClassFileFrom(IFile iFile) {
        return JavaModelManager.createClassFileFrom(iFile, null);
    }

    public static ICompilationUnit createCompilationUnitFrom(IFile iFile) {
        return JavaModelManager.createCompilationUnitFrom(iFile, null);
    }

    public static IPackageFragmentRoot createJarPackageFragmentRootFrom(IFile iFile) {
        return JavaModelManager.createJarPackageFragmentRootFrom(iFile, null);
    }

    public static List<String> defaultRootModules(Iterable<IPackageFragmentRoot> iterable) {
        return JavaProject.defaultRootModules(iterable);
    }

    public static List<String> getAllVersions() {
        return allVersions;
    }

    public static IModuleDescription getAutomaticModuleDescription(IJavaElement iJavaElement) throws JavaModelException, IllegalArgumentException {
        int elementType = iJavaElement.getElementType();
        if (elementType == 2) {
            return ((JavaProject) iJavaElement).getAutomaticModuleDescription();
        }
        if (elementType == 3) {
            return ((PackageFragmentRoot) iJavaElement).getAutomaticModuleDescription();
        }
        throw new IllegalArgumentException("Illegal kind of java element: " + iJavaElement.getElementType());
    }

    public static IClasspathContainer getClasspathContainer(IPath iPath, IJavaProject iJavaProject) throws JavaModelException {
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        IClasspathContainer classpathContainer = javaModelManager.getClasspathContainer(iPath, iJavaProject);
        return classpathContainer == JavaModelManager.CONTAINER_INITIALIZATION_IN_PROGRESS ? javaModelManager.getPreviousSessionContainer(iPath, iJavaProject) : classpathContainer;
    }

    public static ClasspathContainerInitializer getClasspathContainerInitializer(String str) {
        Hashtable<String, ClasspathContainerInitializer> hashtable = JavaModelManager.getJavaModelManager().containerInitializersCache;
        ClasspathContainerInitializer classpathContainerInitializer = hashtable.get(str);
        if (classpathContainerInitializer == null) {
            classpathContainerInitializer = computeClasspathContainerInitializer(str);
            if (classpathContainerInitializer == null) {
                return null;
            }
            hashtable.put(str, classpathContainerInitializer);
        }
        return classpathContainerInitializer;
    }

    public static IPath getClasspathVariable(String str) {
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        IPath variableGet = javaModelManager.variableGet(str);
        IPath iPath = JavaModelManager.VARIABLE_INITIALIZATION_IN_PROGRESS;
        if (variableGet == iPath) {
            return javaModelManager.getPreviousSessionVariable(str);
        }
        if (variableGet != null) {
            if (variableGet == JavaModelManager.CP_ENTRY_IGNORE_PATH) {
                return null;
            }
            return variableGet;
        }
        ClasspathVariableInitializer classpathVariableInitializer = getClasspathVariableInitializer(str);
        if (classpathVariableInitializer != null) {
            if (JavaModelManager.CP_RESOLVE_VERBOSE) {
                verbose_triggering_variable_initialization(str, classpathVariableInitializer);
            }
            if (JavaModelManager.CP_RESOLVE_VERBOSE_ADVANCED) {
                verbose_triggering_variable_initialization_invocation_trace();
            }
            javaModelManager.variablePut(str, iPath);
            try {
                try {
                    classpathVariableInitializer.initialize(str);
                    variableGet = javaModelManager.variableGet(str);
                    if (variableGet == iPath) {
                        JavaModelManager.getJavaModelManager().variablePut(str, null);
                        return null;
                    }
                    if (JavaModelManager.CP_RESOLVE_VERBOSE_ADVANCED) {
                        verbose_variable_value_after_initialization(str, variableGet);
                    }
                    javaModelManager.variablesWithInitializer.add(str);
                } catch (Error e10) {
                    if (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                        e10.printStackTrace();
                    }
                    throw e10;
                } catch (RuntimeException e11) {
                    if (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                        e11.printStackTrace();
                    }
                    throw e11;
                }
            } catch (Throwable th2) {
                JavaModelManager.getJavaModelManager().variablePut(str, null);
                throw th2;
            }
        } else if (JavaModelManager.CP_RESOLVE_VERBOSE_ADVANCED || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
            verbose_no_variable_initializer_found(str);
        }
        return variableGet;
    }

    public static String getClasspathVariableDeprecationMessage(String str) {
        IExtensionPoint extensionPoint;
        String attribute;
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        String str2 = javaModelManager.deprecatedVariables.get(str);
        if (str2 != null) {
            return str2;
        }
        IPath variableGet = javaModelManager.variableGet(str);
        if ((variableGet == null || variableGet == JavaModelManager.VARIABLE_INITIALIZATION_IN_PROGRESS) && getPlugin() != null && (extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(PLUGIN_ID, JavaModelManager.CPVARIABLE_INITIALIZER_EXTPOINT_ID)) != null) {
            for (IExtension iExtension : extensionPoint.getExtensions()) {
                for (IConfigurationElement iConfigurationElement : iExtension.getConfigurationElements()) {
                    if (str.equals(iConfigurationElement.getAttribute("variable")) && (attribute = iConfigurationElement.getAttribute("deprecated")) != null) {
                        return attribute;
                    }
                }
            }
        }
        return null;
    }

    public static ClasspathVariableInitializer getClasspathVariableInitializer(String str) {
        IExtensionPoint extensionPoint;
        if (getPlugin() != null && (extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(PLUGIN_ID, JavaModelManager.CPVARIABLE_INITIALIZER_EXTPOINT_ID)) != null) {
            for (IExtension iExtension : extensionPoint.getExtensions()) {
                for (IConfigurationElement iConfigurationElement : iExtension.getConfigurationElements()) {
                    try {
                        if (str.equals(iConfigurationElement.getAttribute("variable"))) {
                            if (JavaModelManager.CP_RESOLVE_VERBOSE_ADVANCED) {
                                verbose_found_variable_initializer(str, iConfigurationElement);
                            }
                            Object createExecutableExtension = iConfigurationElement.createExecutableExtension("class");
                            if (createExecutableExtension instanceof ClasspathVariableInitializer) {
                                ClasspathVariableInitializer classpathVariableInitializer = (ClasspathVariableInitializer) createExecutableExtension;
                                String attribute = iConfigurationElement.getAttribute("deprecated");
                                if (attribute != null) {
                                    JavaModelManager.getJavaModelManager().deprecatedVariables.put(str, attribute);
                                }
                                if ("true".equals(iConfigurationElement.getAttribute("readOnly"))) {
                                    JavaModelManager.getJavaModelManager().readOnlyVariables.add(str);
                                }
                                return classpathVariableInitializer;
                            }
                            continue;
                        } else {
                            continue;
                        }
                    } catch (CoreException e10) {
                        if (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                            verbose_failed_to_instanciate_variable_initializer(str, iConfigurationElement);
                            e10.printStackTrace();
                        }
                    }
                }
            }
        }
        return null;
    }

    public static String[] getClasspathVariableNames() {
        return JavaModelManager.getJavaModelManager().variableNames();
    }

    public static Hashtable<String, String> getDefaultOptions() {
        return JavaModelManager.getJavaModelManager().getDefaultOptions();
    }

    public static String getEncoding() {
        try {
            return ResourcesPlugin.getWorkspace().getRoot().getDefaultCharset();
        } catch (CoreException unused) {
            return ResourcesPlugin.getEncoding();
        } catch (IllegalStateException unused2) {
            return System.getProperty("file.encoding");
        }
    }

    private static void getGeneratedResource(ICompilationUnit iCompilationUnit, IContainer iContainer, State state, int i10, ArrayList arrayList) {
        char[][] definedTypeNamesFor = state.getDefinedTypeNamesFor(iCompilationUnit.getResource().getProjectRelativePath().toString());
        if (definedTypeNamesFor == null) {
            IResource findMember = iContainer.findMember(iCompilationUnit.getPath().removeFirstSegments(i10).removeLastSegments(1).append(String.valueOf(Util.getNameWithoutJavaLikeExtension(iCompilationUnit.getElementName())) + ".class"));
            if (findMember == null || !findMember.exists()) {
                return;
            }
            arrayList.add(findMember);
            return;
        }
        IPath removeLastSegments = iCompilationUnit.getPath().removeFirstSegments(i10).removeLastSegments(1);
        for (char[] cArr : definedTypeNamesFor) {
            IResource findMember2 = iContainer.findMember(removeLastSegments.append(new String(cArr) + ".class"));
            if (findMember2 != null && findMember2.exists()) {
                arrayList.add(findMember2);
            }
        }
    }

    public static IResource[] getGeneratedResources(IRegion iRegion, boolean z10) {
        IPath iPath;
        IJavaElement[] iJavaElementArr;
        ICompilationUnit[] iCompilationUnitArr;
        Object[] objArr;
        ICompilationUnit[] iCompilationUnitArr2;
        boolean z11 = z10;
        if (iRegion == null) {
            throw new IllegalArgumentException("region cannot be null");
        }
        IJavaElement[] elements = iRegion.getElements();
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (IJavaElement iJavaElement : elements) {
            IJavaProject javaProject = iJavaElement.getJavaProject();
            IProject project = javaProject.getProject();
            State state = (State) hashMap.get(project);
            ICompilationUnit[] iCompilationUnitArr3 = null;
            IPackageFragmentRoot[] iPackageFragmentRootArr = null;
            Object[] objArr2 = null;
            if (state == null && (state = (State) JavaModelManager.getJavaModelManager().getLastBuiltState(project, null)) != null) {
                hashMap.put(project, state);
            }
            if (state != null) {
                if (iJavaElement.getElementType() == 2) {
                    try {
                        iPackageFragmentRootArr = javaProject.getPackageFragmentRoots();
                    } catch (JavaModelException unused) {
                    }
                    IPackageFragmentRoot[] iPackageFragmentRootArr2 = iPackageFragmentRootArr;
                    if (iPackageFragmentRootArr2 != null) {
                        IRegion newRegion = newRegion();
                        for (IPackageFragmentRoot iPackageFragmentRoot : iPackageFragmentRootArr2) {
                            newRegion.add(iPackageFragmentRoot);
                        }
                        for (IResource iResource : getGeneratedResources(newRegion, z11)) {
                            arrayList.add(iResource);
                        }
                    }
                } else {
                    try {
                        iPath = javaProject.getOutputLocation();
                    } catch (JavaModelException unused2) {
                        iPath = null;
                    }
                    IJavaElement iJavaElement2 = iJavaElement;
                    while (iJavaElement2 != null && iJavaElement2.getElementType() != 3) {
                        iJavaElement2 = iJavaElement2.getParent();
                    }
                    if (iJavaElement2 != null) {
                        IPackageFragmentRoot iPackageFragmentRoot2 = (IPackageFragmentRoot) iJavaElement2;
                        int segmentCount = iPackageFragmentRoot2.getPath().segmentCount();
                        try {
                            IPath outputLocation = iPackageFragmentRoot2.getRawClasspathEntry().getOutputLocation();
                            if (outputLocation != null) {
                                iPath = outputLocation;
                            }
                        } catch (JavaModelException e10) {
                            e10.printStackTrace();
                        }
                        if (iPath != null) {
                            IContainer findMember = project.getWorkspace().getRoot().findMember(iPath);
                            int elementType = iJavaElement.getElementType();
                            if (elementType == 3) {
                                IPackageFragmentRoot iPackageFragmentRoot3 = (IPackageFragmentRoot) iJavaElement;
                                if (!iPackageFragmentRoot3.isArchive()) {
                                    try {
                                        iJavaElementArr = iPackageFragmentRoot3.getChildren();
                                    } catch (JavaModelException unused3) {
                                        iJavaElementArr = null;
                                    }
                                    if (iJavaElementArr != null) {
                                        int length = iJavaElementArr.length;
                                        int i10 = 0;
                                        while (i10 < length) {
                                            IPackageFragment iPackageFragment = (IPackageFragment) iJavaElementArr[i10];
                                            try {
                                                iCompilationUnitArr = iPackageFragment.getCompilationUnits();
                                            } catch (JavaModelException unused4) {
                                                iCompilationUnitArr = iCompilationUnitArr3;
                                            }
                                            if (iCompilationUnitArr != null) {
                                                int length2 = iCompilationUnitArr.length;
                                                int i11 = 0;
                                                while (i11 < length2) {
                                                    getGeneratedResource(iCompilationUnitArr[i11], findMember, state, segmentCount, arrayList);
                                                    i11++;
                                                    z11 = z10;
                                                }
                                                if (z11) {
                                                    try {
                                                        objArr = iPackageFragment.getNonJavaResources();
                                                    } catch (JavaModelException unused5) {
                                                        objArr = null;
                                                    }
                                                    if (objArr != null) {
                                                        addNonJavaResources(objArr, findMember, segmentCount, arrayList);
                                                    }
                                                }
                                            }
                                            i10++;
                                            iCompilationUnitArr3 = null;
                                        }
                                    }
                                }
                            } else if (elementType == 4) {
                                IPackageFragment iPackageFragment2 = (IPackageFragment) iJavaElement;
                                try {
                                    iCompilationUnitArr2 = iPackageFragment2.getCompilationUnits();
                                } catch (JavaModelException unused6) {
                                    iCompilationUnitArr2 = null;
                                }
                                if (iCompilationUnitArr2 != null) {
                                    for (ICompilationUnit iCompilationUnit : iCompilationUnitArr2) {
                                        getGeneratedResource(iCompilationUnit, findMember, state, segmentCount, arrayList);
                                    }
                                    if (z11) {
                                        try {
                                            objArr2 = iPackageFragment2.getNonJavaResources();
                                        } catch (JavaModelException unused7) {
                                        }
                                        if (objArr2 != null) {
                                            addNonJavaResources(objArr2, findMember, segmentCount, arrayList);
                                        }
                                    }
                                }
                            } else if (elementType == 5) {
                                getGeneratedResource((ICompilationUnit) iJavaElement, findMember, state, segmentCount, arrayList);
                            }
                        }
                    }
                }
            }
        }
        int size = arrayList.size();
        if (size == 0) {
            return NO_GENERATED_RESOURCES;
        }
        IResource[] iResourceArr = new IResource[size];
        arrayList.toArray(iResourceArr);
        return iResourceArr;
    }

    public static JavaCore getJavaCore() {
        return (JavaCore) getPlugin();
    }

    public static String[] getJavaLikeExtensions() {
        return CharOperation.toStrings(Util.getJavaLikeExtensions());
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String getModuleNameFromJar(File file) {
        char[] cArr;
        ZipFile zipFile;
        IBinaryModule moduleDeclaration;
        Throwable th2 = null;
        if (!file.isFile()) {
            return null;
        }
        try {
            zipFile = new ZipFile(file);
            try {
                ClassFileReader read = ClassFileReader.read(zipFile, "module-info.class");
                cArr = (read == null || (moduleDeclaration = read.getModuleDeclaration()) == null) ? null : moduleDeclaration.name();
            } catch (Throwable th3) {
                try {
                    zipFile.close();
                    throw th3;
                } catch (Throwable th4) {
                    th = th4;
                    cArr = null;
                    th2 = th3;
                    if (th2 != null) {
                    }
                }
            }
        } catch (Throwable th5) {
            th = th5;
            cArr = null;
        }
        try {
            zipFile.close();
            if (cArr == null) {
                cArr = AutomaticModuleNaming.determineAutomaticModuleName(file.getAbsolutePath());
            }
            return new String(cArr);
        } catch (Throwable th6) {
            th = th6;
            if (th2 != null) {
                throw th;
            }
            if (th2 != th) {
                try {
                    th2.addSuppressed(th);
                } catch (IOException e10) {
                    e = e10;
                    Util.log(e);
                    if (cArr == null) {
                    }
                    return new String(cArr);
                } catch (ClassFormatException e11) {
                    e = e11;
                    Util.log(e);
                    if (cArr == null) {
                    }
                    return new String(cArr);
                }
            }
            throw th2;
        }
    }

    public static String getOption(String str) {
        return JavaModelManager.getJavaModelManager().getOption(str);
    }

    public static String getOptionForConfigurableBuildPathProblemSeverity(int i10) {
        if (i10 == 964) {
            return CORE_INCOMPLETE_CLASSPATH;
        }
        if (i10 == 1001) {
            return CORE_CIRCULAR_CLASSPATH;
        }
        if (i10 == 1004) {
            return CORE_INCOMPATIBLE_JDK_LEVEL;
        }
        if (i10 == 1013) {
            return CORE_OUTPUT_LOCATION_OVERLAPPING_ANOTHER_SOURCE;
        }
        if (i10 != 1017) {
            return null;
        }
        return CORE_MAIN_ONLY_PROJECT_HAS_TEST_ONLY_DEPENDENCY;
    }

    public static String getOptionForConfigurableSeverity(int i10) {
        return CompilerOptions.optionKeyFromIrritant(ProblemReporter.getIrritant(i10));
    }

    public static Hashtable<String, String> getOptions() {
        return JavaModelManager.getJavaModelManager().getOptions();
    }

    public static Plugin getPlugin() {
        return JAVA_CORE_PLUGIN;
    }

    public static IClasspathEntry[] getReferencedClasspathEntries(IClasspathEntry iClasspathEntry, IJavaProject iJavaProject) {
        return JavaModelManager.getJavaModelManager().getReferencedClasspathEntries(iClasspathEntry, iJavaProject);
    }

    public static String[] getReferencedModules(IJavaProject iJavaProject) throws CoreException {
        return ModuleUtil.getReferencedModules(iJavaProject);
    }

    public static Set<String> getRequiredModulesFromJar(File file) {
        IBinaryModule moduleDeclaration;
        IModule.IModuleReference[] requires;
        if (!file.isFile()) {
            return Collections.emptySet();
        }
        Throwable th2 = null;
        try {
            ZipFile zipFile = new ZipFile(file);
            try {
                ClassFileReader read = ClassFileReader.read(zipFile, "module-info.class");
                if (read == null || (moduleDeclaration = read.getModuleDeclaration()) == null || (requires = moduleDeclaration.requires()) == null) {
                    zipFile.close();
                    return Collections.emptySet();
                }
                Set<String> set = (Set) Stream.of((Object[]) requires).map(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        String lambda$0;
                        lambda$0 = JavaCore.lambda$0((IModule.IModuleReference) obj);
                        return lambda$0;
                    }
                }).collect(Collectors.toCollection(new C7905jK0()));
                zipFile.close();
                return set;
            } catch (Throwable th3) {
                zipFile.close();
                throw th3;
            }
        } catch (Throwable th4) {
            if (0 == 0) {
                throw th4;
            }
            if (null != th4) {
                try {
                    th2.addSuppressed(th4);
                } catch (IOException e10) {
                    e = e10;
                    Util.log(e);
                    return Collections.emptySet();
                } catch (ClassFormatException e11) {
                    e = e11;
                    Util.log(e);
                    return Collections.emptySet();
                }
            }
            throw null;
        }
    }

    public static IClasspathEntry getResolvedClasspathEntry(IClasspathEntry iClasspathEntry) {
        return JavaModelManager.getJavaModelManager().resolveVariableEntry(iClasspathEntry, false);
    }

    public static IPath getResolvedVariablePath(IPath iPath) {
        return JavaModelManager.getJavaModelManager().getResolvedVariablePath(iPath, false);
    }

    public static IWorkingCopy[] getSharedWorkingCopies(IBufferFactory iBufferFactory) {
        if (iBufferFactory == null) {
            iBufferFactory = BufferManager.getDefaultBufferManager().getDefaultBufferFactory();
        }
        return getWorkingCopies(BufferFactoryWrapper.create(iBufferFactory));
    }

    public static String[] getUserLibraryNames() {
        return JavaModelManager.getUserLibraryManager().getUserLibraryNames();
    }

    public static ICompilationUnit[] getWorkingCopies(WorkingCopyOwner workingCopyOwner) {
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        if (workingCopyOwner == null) {
            workingCopyOwner = DefaultWorkingCopyOwner.PRIMARY;
        }
        ICompilationUnit[] workingCopies = javaModelManager.getWorkingCopies(workingCopyOwner, false);
        return workingCopies == null ? JavaModelManager.NO_WORKING_COPY : workingCopies;
    }

    public static void initializeAfterLoad(IProgressMonitor iProgressMonitor) throws CoreException {
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, Messages.javamodel_initialization, 100);
        convert.subTask(Messages.javamodel_configuring_classpath_containers);
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        String str = null;
        try {
            SubMonitor workRemaining = convert.split(50).setWorkRemaining(100);
            workRemaining.split(5);
            javaModelManager.batchContainerInitializationsProgress.initializeAfterLoadMonitor.set(workRemaining);
            if (javaModelManager.forceBatchInitializations(true)) {
                javaModelManager.getClasspathContainer(Path.EMPTY, null);
            } else {
                while (javaModelManager.batchContainerInitializations == 2) {
                    workRemaining.subTask(javaModelManager.batchContainerInitializationsProgress.subTaskName);
                    workRemaining.split(javaModelManager.batchContainerInitializationsProgress.getWorked());
                    synchronized (javaModelManager) {
                        try {
                            javaModelManager.wait(100L);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
            javaModelManager.batchContainerInitializationsProgress.initializeAfterLoadMonitor.set(null);
            convert.subTask(Messages.javamodel_resetting_source_attachment_properties);
            final IJavaProject[] javaProjects = javaModelManager.getJavaModel().getJavaProjects();
            HashSet hashSet = new HashSet();
            ExternalFoldersManager externalManager = JavaModelManager.getExternalManager();
            for (IJavaProject iJavaProject : javaProjects) {
                try {
                    IClasspathEntry[] resolvedClasspath = ((JavaProject) iJavaProject).getResolvedClasspath();
                    if (resolvedClasspath != null) {
                        for (IClasspathEntry iClasspathEntry : resolvedClasspath) {
                            if (iClasspathEntry.getSourceAttachmentPath() != null) {
                                IPath path = iClasspathEntry.getPath();
                                if (hashSet.add(path)) {
                                    Util.setSourceAttachmentProperty(path, null);
                                }
                            }
                            if (iClasspathEntry.getEntryKind() == 1) {
                                IPath path2 = iClasspathEntry.getPath();
                                if (ExternalFoldersManager.isExternalFolderPath(path2) && externalManager.getFolder(path2) == null) {
                                    externalManager.addFolder(path2, true);
                                }
                            }
                        }
                    }
                } catch (JavaModelException unused2) {
                }
            }
            try {
                externalManager.createPendingFolders(convert.split(1));
            } catch (JavaModelException e10) {
                Util.log((Throwable) e10, "Error while processing external folders");
            }
            JavaModel javaModel = javaModelManager.getJavaModel();
            try {
                convert.subTask(Messages.javamodel_refreshing_external_jars);
                javaModel.refreshExternalArchives(null, convert.split(1));
            } catch (JavaModelException unused3) {
            }
            convert.subTask(Messages.javamodel_initializing_delta_state);
            DeltaProcessingState deltaProcessingState = javaModelManager.deltaState;
            deltaProcessingState.rootsAreStale = true;
            deltaProcessingState.initializeRoots(true);
            convert.subTask(Messages.javamodel_configuring_searchengine);
            updateLegacyIndex(convert.split(47));
            convert.subTask(Messages.javamodel_getting_build_state_number);
            QualifiedName qualifiedName = new QualifiedName(PLUGIN_ID, "stateVersionNumber");
            IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
            try {
                str = root.getPersistentProperty(qualifiedName);
            } catch (CoreException unused4) {
            }
            String b10 = Byte.toString((byte) 34);
            if (b10.equals(str)) {
                return;
            }
            if (JavaBuilder.DEBUG) {
                System.out.println("Build state version number has changed");
            }
            IWorkspaceRunnable iWorkspaceRunnable = new IWorkspaceRunnable() {
                public void run(IProgressMonitor iProgressMonitor2) throws CoreException {
                    int length = javaProjects.length;
                    for (int i10 = 0; i10 < length; i10++) {
                        IJavaProject iJavaProject2 = javaProjects[i10];
                        try {
                            if (JavaBuilder.DEBUG) {
                                System.out.println("Touching " + iJavaProject2.getElementName());
                            }
                            new ClasspathValidation((JavaProject) iJavaProject2).validate();
                            iJavaProject2.getProject().touch(iProgressMonitor2);
                        } catch (CoreException unused5) {
                        }
                    }
                }
            };
            convert.subTask(Messages.javamodel_building_after_upgrade);
            try {
                ResourcesPlugin.getWorkspace().run(iWorkspaceRunnable, convert.split(1));
            } catch (CoreException unused5) {
            }
            try {
                root.setPersistentProperty(qualifiedName, b10);
            } catch (CoreException e11) {
                Util.log((Throwable) e11, "Could not persist build state version number");
            }
        } catch (Throwable th2) {
            javaModelManager.batchContainerInitializationsProgress.initializeAfterLoadMonitor.set(null);
            throw th2;
        }
    }

    public static boolean isClasspathVariableReadOnly(String str) {
        return JavaModelManager.getJavaModelManager().readOnlyVariables.contains(str);
    }

    public static boolean isJavaLikeFileName(String str) {
        return Util.isJavaLikeFileName(str);
    }

    public static boolean isReferencedBy(IJavaElement iJavaElement, IMarker iMarker) throws CoreException {
        String str;
        IType declaringType;
        if (iJavaElement instanceof IMember) {
            IMember iMember = (IMember) iJavaElement;
            if (iMember.isBinary()) {
                iJavaElement = iMember.getClassFile();
            } else {
                iJavaElement = iMember.getCompilationUnit();
            }
        }
        if (iJavaElement == null || iMarker == null || (str = (String) iMarker.getAttribute(ATT_HANDLE_ID)) == null) {
            return false;
        }
        Object create = create(str);
        while (!iJavaElement.equals(create)) {
            if (!(create instanceof IOrdinaryClassFile) || (declaringType = ((IOrdinaryClassFile) create).getType().getDeclaringType()) == null) {
                return false;
            }
            create = declaringType.getClassFile();
        }
        return true;
    }

    public static boolean isSupportedJavaVersion(String str) {
        return CompilerOptions.versionToJdkLevel(str, false) > 0;
    }

    public static String lambda$0(IModule.IModuleReference iModuleReference) {
        return new String(iModuleReference.name());
    }

    public static String latestSupportedJavaVersion() {
        return allVersions.get(r0.size() - 1);
    }

    public static IAccessRule newAccessRule(IPath iPath, int i10) {
        return JavaModelManager.getJavaModelManager().getAccessRule(iPath, i10);
    }

    public static IClasspathAttribute newClasspathAttribute(String str, String str2) {
        return new ClasspathAttribute(str, str2);
    }

    public static IClasspathEntry newContainerEntry(IPath iPath) {
        return newContainerEntry(iPath, ClasspathEntry.NO_ACCESS_RULES, ClasspathEntry.NO_EXTRA_ATTRIBUTES, false);
    }

    public static IClasspathEntry newLibraryEntry(IPath iPath, IPath iPath2, IPath iPath3) {
        return newLibraryEntry(iPath, iPath2, iPath3, ClasspathEntry.NO_ACCESS_RULES, ClasspathEntry.NO_EXTRA_ATTRIBUTES, false);
    }

    public static IClasspathEntry newProjectEntry(IPath iPath) {
        return newProjectEntry(iPath, false);
    }

    public static IRegion newRegion() {
        return new Region();
    }

    public static IClasspathEntry newSourceEntry(IPath iPath) {
        return newSourceEntry(iPath, ClasspathEntry.INCLUDE_ALL, ClasspathEntry.EXCLUDE_NONE, null);
    }

    public static ITypeHierarchy newTypeHierarchy(IRegion iRegion, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (iRegion == null) {
            throw new IllegalArgumentException(Messages.hierarchy_nullRegion);
        }
        CreateTypeHierarchyOperation createTypeHierarchyOperation = new CreateTypeHierarchyOperation(iRegion, JavaModelManager.getJavaModelManager().getWorkingCopies(workingCopyOwner, true), (IType) null, true);
        createTypeHierarchyOperation.runOperation(iProgressMonitor);
        return createTypeHierarchyOperation.getResult();
    }

    public static IClasspathEntry newVariableEntry(IPath iPath, IPath iPath2, IPath iPath3) {
        return newVariableEntry(iPath, iPath2, iPath3, false);
    }

    public static void rebuildIndex(IProgressMonitor iProgressMonitor) throws CoreException {
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, 100);
        IndexManager indexManager = JavaModelManager.getIndexManager();
        indexManager.deleteIndexFiles(convert.split(1));
        indexManager.reset();
        Indexer.getInstance().lambda$1(convert.split(95));
        updateLegacyIndex(convert.split(4));
    }

    public static void removeClasspathVariable(String str) {
        removeClasspathVariable(str, null);
    }

    public static void removeElementChangedListener(IElementChangedListener iElementChangedListener) {
        JavaModelManager.getDeltaState().removeElementChangedListener(iElementChangedListener);
    }

    public static String removeJavaLikeExtension(String str) {
        return Util.getNameWithoutJavaLikeExtension(str);
    }

    public static void removePreProcessingResourceChangedListener(IResourceChangeListener iResourceChangeListener) {
        JavaModelManager.getDeltaState().removePreResourceChangedListener(iResourceChangeListener);
    }

    public static void run(IWorkspaceRunnable iWorkspaceRunnable, IProgressMonitor iProgressMonitor) throws CoreException {
        run(iWorkspaceRunnable, ResourcesPlugin.getWorkspace().getRoot(), iProgressMonitor);
    }

    public static void setClasspathContainer(IPath iPath, IJavaProject[] iJavaProjectArr, IClasspathContainer[] iClasspathContainerArr, IProgressMonitor iProgressMonitor) throws JavaModelException {
        IClasspathContainer iClasspathContainer;
        if (iJavaProjectArr.length != iClasspathContainerArr.length) {
            throw new ClasspathEntry.AssertionFailedException("Projects and containers collections should have the same size");
        }
        if (iJavaProjectArr.length == 1 && (iClasspathContainer = iClasspathContainerArr[0]) != null) {
            JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
            IJavaProject iJavaProject = iJavaProjectArr[0];
            if (javaModelManager.containerGet(iJavaProject, iPath) == JavaModelManager.CONTAINER_INITIALIZATION_IN_PROGRESS) {
                javaModelManager.containerBeingInitializedPut(iJavaProject, iPath, iClasspathContainer);
                return;
            }
        }
        new SetContainerOperation(iPath, iJavaProjectArr, iClasspathContainerArr).runOperation(iProgressMonitor);
    }

    public static void setClasspathVariable(String str, IPath iPath) throws JavaModelException {
        setClasspathVariable(str, iPath, null);
    }

    public static void setClasspathVariables(String[] strArr, IPath[] iPathArr, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (strArr.length != iPathArr.length) {
            throw new ClasspathEntry.AssertionFailedException("Variable names and paths collections should have the same size");
        }
        new SetVariablesOperation(strArr, iPathArr, true).runOperation(iProgressMonitor);
    }

    public static void setComplianceOptions(String str, Map map) {
        long versionToJdkLevel = CompilerOptions.versionToJdkLevel(str);
        int i10 = (int) (versionToJdkLevel >>> 16);
        switch (i10) {
            case 47:
                map.put("org.eclipse.jdt.core.compiler.compliance", "1.3");
                map.put("org.eclipse.jdt.core.compiler.source", "1.3");
                map.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.1");
                map.put("org.eclipse.jdt.core.compiler.problem.assertIdentifier", "ignore");
                map.put("org.eclipse.jdt.core.compiler.problem.enumIdentifier", "ignore");
                return;
            case 48:
                map.put("org.eclipse.jdt.core.compiler.compliance", "1.4");
                map.put("org.eclipse.jdt.core.compiler.source", "1.3");
                map.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.2");
                map.put("org.eclipse.jdt.core.compiler.problem.assertIdentifier", "warning");
                map.put("org.eclipse.jdt.core.compiler.problem.enumIdentifier", "warning");
                return;
            case 49:
                map.put("org.eclipse.jdt.core.compiler.compliance", "1.5");
                map.put("org.eclipse.jdt.core.compiler.source", "1.5");
                map.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.5");
                map.put("org.eclipse.jdt.core.compiler.problem.assertIdentifier", "error");
                map.put("org.eclipse.jdt.core.compiler.problem.enumIdentifier", "error");
                map.put("org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode", "enabled");
                return;
            case 50:
                map.put("org.eclipse.jdt.core.compiler.compliance", "1.6");
                map.put("org.eclipse.jdt.core.compiler.source", "1.6");
                map.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.6");
                map.put("org.eclipse.jdt.core.compiler.problem.assertIdentifier", "error");
                map.put("org.eclipse.jdt.core.compiler.problem.enumIdentifier", "error");
                map.put("org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode", "enabled");
                return;
            case 51:
                map.put("org.eclipse.jdt.core.compiler.compliance", "1.7");
                map.put("org.eclipse.jdt.core.compiler.source", "1.7");
                map.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.7");
                map.put("org.eclipse.jdt.core.compiler.problem.assertIdentifier", "error");
                map.put("org.eclipse.jdt.core.compiler.problem.enumIdentifier", "error");
                map.put("org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode", "enabled");
                return;
            case 52:
                map.put("org.eclipse.jdt.core.compiler.compliance", "1.8");
                map.put("org.eclipse.jdt.core.compiler.source", "1.8");
                map.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.8");
                map.put("org.eclipse.jdt.core.compiler.problem.assertIdentifier", "error");
                map.put("org.eclipse.jdt.core.compiler.problem.enumIdentifier", "error");
                map.put("org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode", "enabled");
                return;
            case 53:
                map.put("org.eclipse.jdt.core.compiler.compliance", "9");
                map.put("org.eclipse.jdt.core.compiler.source", "9");
                map.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "9");
                map.put("org.eclipse.jdt.core.compiler.problem.assertIdentifier", "error");
                map.put("org.eclipse.jdt.core.compiler.problem.enumIdentifier", "error");
                map.put("org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode", "enabled");
                map.put("org.eclipse.jdt.core.compiler.release", "enabled");
                return;
            case 54:
                map.put("org.eclipse.jdt.core.compiler.compliance", "10");
                map.put("org.eclipse.jdt.core.compiler.source", "10");
                map.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "10");
                map.put("org.eclipse.jdt.core.compiler.problem.assertIdentifier", "error");
                map.put("org.eclipse.jdt.core.compiler.problem.enumIdentifier", "error");
                map.put("org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode", "enabled");
                map.put("org.eclipse.jdt.core.compiler.release", "enabled");
                return;
            default:
                if (i10 > 54) {
                    String versionFromJdkLevel = CompilerOptions.versionFromJdkLevel(versionToJdkLevel);
                    map.put("org.eclipse.jdt.core.compiler.compliance", versionFromJdkLevel);
                    map.put("org.eclipse.jdt.core.compiler.source", versionFromJdkLevel);
                    map.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", versionFromJdkLevel);
                    map.put("org.eclipse.jdt.core.compiler.problem.assertIdentifier", "error");
                    map.put("org.eclipse.jdt.core.compiler.problem.enumIdentifier", "error");
                    map.put("org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode", "enabled");
                    map.put("org.eclipse.jdt.core.compiler.release", "enabled");
                    map.put("org.eclipse.jdt.core.compiler.problem.enablePreviewFeatures", "disabled");
                    map.put("org.eclipse.jdt.core.compiler.problem.reportPreviewFeatures", "warning");
                    return;
                }
                return;
        }
    }

    public static void setOptions(Hashtable<String, String> hashtable) {
        JavaModelManager.getJavaModelManager().setOptions(hashtable);
    }

    private static void updateLegacyIndex(IProgressMonitor iProgressMonitor) {
        try {
            new SearchEngine().searchAllTypeNames((char[]) null, 0, "!@$#!@".toCharArray(), 10, 5, SearchEngine.createWorkspaceScope(), new TypeNameRequestor() {
                @Override
                public void acceptType(int i10, char[] cArr, char[] cArr2, char[][] cArr3, String str) {
                }
            }, 2, iProgressMonitor);
        } catch (JavaModelException unused) {
        } catch (OperationCanceledException e10) {
            if (iProgressMonitor.isCanceled()) {
                throw e10;
            }
        }
    }

    private static void verbose_failed_to_instanciate_container_initializer(String str, IConfigurationElement iConfigurationElement) {
        Util.verbose("CPContainer INIT - failed to instanciate initializer\n\tcontainer ID: " + str + "\n\tclass: " + iConfigurationElement.getAttribute("class"), System.err);
    }

    private static void verbose_failed_to_instanciate_variable_initializer(String str, IConfigurationElement iConfigurationElement) {
        Util.verbose("CPContainer INIT - failed to instanciate initializer\n\tvariable: " + str + "\n\tclass: " + iConfigurationElement.getAttribute("class"), System.err);
    }

    private static void verbose_found_container_initializer(String str, IConfigurationElement iConfigurationElement) {
        Util.verbose("CPContainer INIT - found initializer\n\tcontainer ID: " + str + "\n\tclass: " + iConfigurationElement.getAttribute("class"));
    }

    private static void verbose_found_variable_initializer(String str, IConfigurationElement iConfigurationElement) {
        Util.verbose("CPVariable INIT - found initializer\n\tvariable: " + str + "\n\tclass: " + iConfigurationElement.getAttribute("class"));
    }

    private static void verbose_no_variable_initializer_found(String str) {
        Util.verbose("CPVariable INIT - no initializer found\n\tvariable: " + str);
    }

    private static void verbose_triggering_variable_initialization(String str, ClasspathVariableInitializer classpathVariableInitializer) {
        Util.verbose("CPVariable INIT - triggering initialization\n\tvariable: " + str + "\n\tinitializer: " + ((Object) classpathVariableInitializer));
    }

    private static void verbose_triggering_variable_initialization_invocation_trace() {
        Util.verbose("CPVariable INIT - triggering initialization\n\tinvocation trace:");
        new Exception("<Fake exception>").printStackTrace(System.out);
    }

    private static void verbose_variable_value_after_initialization(String str, IPath iPath) {
        Util.verbose("CPVariable INIT - after initialization\n\tvariable: " + str + "\n\tvariable path: " + ((Object) iPath));
    }

    public void configureJavaElementMarker(IMarker iMarker, IJavaElement iJavaElement) throws CoreException {
        if (iJavaElement instanceof IMember) {
            iJavaElement = ((IMember) iJavaElement).getClassFile();
        }
        if (iMarker == null || iJavaElement == null) {
            return;
        }
        iMarker.setAttribute(ATT_HANDLE_ID, iJavaElement.getHandleIdentifier());
    }

    public void start(BundleContext bundleContext) throws Exception {
        super.start(bundleContext);
        JavaModelManager.registerDebugOptionsListener(bundleContext);
        JavaModelManager.getJavaModelManager().startup();
    }

    public void stop(BundleContext bundleContext) throws Exception {
        try {
            JavaModelManager.unregisterDebugOptionsListener();
            JavaModelManager.getJavaModelManager().shutdown();
        } finally {
            super.stop(bundleContext);
        }
    }

    public static void addElementChangedListener(IElementChangedListener iElementChangedListener, int i10) {
        JavaModelManager.getDeltaState().addElementChangedListener(iElementChangedListener, i10);
    }

    public static void addPreProcessingResourceChangedListener(IResourceChangeListener iResourceChangeListener, int i10) {
        JavaModelManager.getDeltaState().addPreResourceChangedListener(iResourceChangeListener, i10);
    }

    public static IJavaElement create(String str, WorkingCopyOwner workingCopyOwner) {
        if (str == null) {
            return null;
        }
        if (workingCopyOwner == null) {
            workingCopyOwner = DefaultWorkingCopyOwner.PRIMARY;
        }
        return JavaModelManager.getJavaModelManager().getJavaModel().getHandleFromMemento(new MementoTokenizer(str), workingCopyOwner);
    }

    public static IClasspathEntry newProjectEntry(IPath iPath, boolean z10) {
        if (iPath.isAbsolute()) {
            return newProjectEntry(iPath, ClasspathEntry.NO_ACCESS_RULES, true, ClasspathEntry.NO_EXTRA_ATTRIBUTES, z10);
        }
        throw new ClasspathEntry.AssertionFailedException("Path for IClasspathEntry must be absolute");
    }

    public static IClasspathEntry newSourceEntry(IPath iPath, IPath[] iPathArr) {
        return newSourceEntry(iPath, ClasspathEntry.INCLUDE_ALL, iPathArr, null);
    }

    public static IClasspathEntry newVariableEntry(IPath iPath, IPath iPath2, IPath iPath3, boolean z10) {
        return newVariableEntry(iPath, iPath2, iPath3, ClasspathEntry.NO_ACCESS_RULES, ClasspathEntry.NO_EXTRA_ATTRIBUTES, z10);
    }

    public static void removeClasspathVariable(String str, IProgressMonitor iProgressMonitor) {
        try {
            new SetVariablesOperation(new String[]{str}, new IPath[1], true).runOperation(iProgressMonitor);
        } catch (JavaModelException e10) {
            Util.log((Throwable) e10, "Exception while removing variable " + str);
        }
    }

    public static void run(IWorkspaceRunnable iWorkspaceRunnable, ISchedulingRule iSchedulingRule, IProgressMonitor iProgressMonitor) throws CoreException {
        IWorkspace workspace = ResourcesPlugin.getWorkspace();
        if (workspace.isTreeLocked()) {
            new BatchOperation(iWorkspaceRunnable).run(iProgressMonitor);
        } else {
            workspace.run(new BatchOperation(iWorkspaceRunnable), iSchedulingRule, 1, iProgressMonitor);
        }
    }

    public static void setClasspathVariable(String str, IPath iPath, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (iPath != null) {
            setClasspathVariables(new String[]{str}, new IPath[]{iPath}, iProgressMonitor);
            return;
        }
        throw new ClasspathEntry.AssertionFailedException("Variable path cannot be null");
    }

    public static IClasspathEntry newSourceEntry(IPath iPath, IPath[] iPathArr, IPath iPath2) {
        return newSourceEntry(iPath, ClasspathEntry.INCLUDE_ALL, iPathArr, iPath2);
    }

    public static IClasspathEntry newContainerEntry(IPath iPath, boolean z10) {
        return newContainerEntry(iPath, ClasspathEntry.NO_ACCESS_RULES, ClasspathEntry.NO_EXTRA_ATTRIBUTES, z10);
    }

    public static IClasspathEntry newLibraryEntry(IPath iPath, IPath iPath2, IPath iPath3, boolean z10) {
        return newLibraryEntry(iPath, iPath2, iPath3, ClasspathEntry.NO_ACCESS_RULES, ClasspathEntry.NO_EXTRA_ATTRIBUTES, z10);
    }

    public static IClasspathEntry newSourceEntry(IPath iPath, IPath[] iPathArr, IPath[] iPathArr2, IPath iPath2) {
        return newSourceEntry(iPath, iPathArr, iPathArr2, iPath2, ClasspathEntry.NO_EXTRA_ATTRIBUTES);
    }

    public static IClasspathEntry newSourceEntry(IPath iPath, IPath[] iPathArr, IPath[] iPathArr2, IPath iPath2, IClasspathAttribute[] iClasspathAttributeArr) {
        if (iPath != null) {
            if (iPath.isAbsolute()) {
                return new ClasspathEntry(1, 3, iPath, iPathArr == null ? ClasspathEntry.INCLUDE_ALL : iPathArr, iPathArr2 == null ? ClasspathEntry.EXCLUDE_NONE : iPathArr2, null, null, iPath2, false, null, false, iClasspathAttributeArr == null ? ClasspathEntry.NO_EXTRA_ATTRIBUTES : iClasspathAttributeArr);
            }
            throw new ClasspathEntry.AssertionFailedException("Path for IClasspathEntry must be absolute");
        }
        throw new ClasspathEntry.AssertionFailedException("Source path cannot be null");
    }

    public static IClasspathEntry newVariableEntry(IPath iPath, IPath iPath2, IPath iPath3, IAccessRule[] iAccessRuleArr, IClasspathAttribute[] iClasspathAttributeArr, boolean z10) {
        IAccessRule[] iAccessRuleArr2 = iAccessRuleArr;
        if (iPath != null) {
            if (iPath.segmentCount() >= 1) {
                if (iAccessRuleArr2 == null || iAccessRuleArr2.length == 0) {
                    iAccessRuleArr2 = ClasspathEntry.NO_ACCESS_RULES;
                }
                return new ClasspathEntry(1, 4, iPath, ClasspathEntry.INCLUDE_ALL, ClasspathEntry.EXCLUDE_NONE, iPath2, iPath3, null, z10, iAccessRuleArr2, false, (iClasspathAttributeArr == null || iClasspathAttributeArr.length == 0) ? ClasspathEntry.NO_EXTRA_ATTRIBUTES : iClasspathAttributeArr);
            }
            throw new ClasspathEntry.AssertionFailedException("Illegal classpath variable path: '" + iPath.makeRelative().toString() + "', must have at least one segment");
        }
        throw new ClasspathEntry.AssertionFailedException("Variable path cannot be null");
    }

    public static IJavaElement create(IFile iFile) {
        return JavaModelManager.create(iFile, (IJavaProject) null);
    }

    public static IJavaElement create(IFolder iFolder) {
        return JavaModelManager.create(iFolder, (IJavaProject) null);
    }

    public static IClasspathEntry newContainerEntry(IPath iPath, IAccessRule[] iAccessRuleArr, IClasspathAttribute[] iClasspathAttributeArr, boolean z10) {
        IAccessRule[] iAccessRuleArr2 = iAccessRuleArr;
        if (iPath != null) {
            if (iPath.segmentCount() >= 1) {
                if (iAccessRuleArr2 == null || iAccessRuleArr2.length == 0) {
                    iAccessRuleArr2 = ClasspathEntry.NO_ACCESS_RULES;
                }
                return new ClasspathEntry(1, 5, iPath, ClasspathEntry.INCLUDE_ALL, ClasspathEntry.EXCLUDE_NONE, null, null, null, z10, iAccessRuleArr2, true, (iClasspathAttributeArr == null || iClasspathAttributeArr.length == 0) ? ClasspathEntry.NO_EXTRA_ATTRIBUTES : iClasspathAttributeArr);
            }
            throw new ClasspathEntry.AssertionFailedException("Illegal classpath container path: '" + iPath.makeRelative().toString() + "', must have at least one segment (containerID+hints)");
        }
        throw new ClasspathEntry.AssertionFailedException("Container path cannot be null");
    }

    public static IClasspathEntry newLibraryEntry(IPath iPath, IPath iPath2, IPath iPath3, IAccessRule[] iAccessRuleArr, IClasspathAttribute[] iClasspathAttributeArr, boolean z10) {
        IPath iPath4 = iPath;
        IPath iPath5 = iPath2;
        IAccessRule[] iAccessRuleArr2 = iAccessRuleArr;
        if (iPath4 != null) {
            if (iAccessRuleArr2 == null || iAccessRuleArr2.length == 0) {
                iAccessRuleArr2 = ClasspathEntry.NO_ACCESS_RULES;
            }
            IAccessRule[] iAccessRuleArr3 = iAccessRuleArr2;
            IClasspathAttribute[] iClasspathAttributeArr2 = (iClasspathAttributeArr == null || iClasspathAttributeArr.length == 0) ? ClasspathEntry.NO_EXTRA_ATTRIBUTES : iClasspathAttributeArr;
            boolean hasDotDot = ClasspathEntry.hasDotDot(iPath);
            if (!hasDotDot && !iPath.isAbsolute()) {
                throw new ClasspathEntry.AssertionFailedException("Path for IClasspathEntry must be absolute: " + ((Object) iPath4));
            }
            if (iPath5 != null) {
                if (iPath2.isEmpty()) {
                    iPath5 = null;
                } else if (!iPath2.isAbsolute()) {
                    throw new ClasspathEntry.AssertionFailedException("Source attachment path '" + ((Object) iPath5) + "' for IClasspathEntry must be absolute");
                }
            }
            IPath iPath6 = iPath5;
            if (!hasDotDot) {
                iPath4 = JavaProject.canonicalizedPath(iPath);
            }
            return new ClasspathEntry(2, 1, iPath4, ClasspathEntry.INCLUDE_ALL, ClasspathEntry.EXCLUDE_NONE, iPath6, iPath3, null, z10, iAccessRuleArr3, false, iClasspathAttributeArr2);
        }
        throw new ClasspathEntry.AssertionFailedException("Library path cannot be null");
    }

    public static IClasspathEntry newProjectEntry(IPath iPath, IAccessRule[] iAccessRuleArr, boolean z10, IClasspathAttribute[] iClasspathAttributeArr, boolean z11) {
        IAccessRule[] iAccessRuleArr2 = iAccessRuleArr;
        if (iPath.isAbsolute()) {
            if (iAccessRuleArr2 == null || iAccessRuleArr2.length == 0) {
                iAccessRuleArr2 = ClasspathEntry.NO_ACCESS_RULES;
            }
            return new ClasspathEntry(1, 2, iPath, ClasspathEntry.INCLUDE_ALL, ClasspathEntry.EXCLUDE_NONE, null, null, null, z11, iAccessRuleArr2, z10, (iClasspathAttributeArr == null || iClasspathAttributeArr.length == 0) ? ClasspathEntry.NO_EXTRA_ATTRIBUTES : iClasspathAttributeArr);
        }
        throw new ClasspathEntry.AssertionFailedException("Path for IClasspathEntry must be absolute");
    }

    public static IJavaProject create(IProject iProject) {
        if (iProject == null) {
            return null;
        }
        return JavaModelManager.getJavaModelManager().getJavaModel().getJavaProject((IResource) iProject);
    }

    public static IJavaElement create(IResource iResource) {
        return JavaModelManager.create(iResource, (IJavaProject) null);
    }

    public static IJavaElement create(IResource iResource, IJavaProject iJavaProject) {
        return JavaModelManager.create(iResource, iJavaProject);
    }

    public static IJavaModel create(IWorkspaceRoot iWorkspaceRoot) {
        if (iWorkspaceRoot == null) {
            return null;
        }
        return JavaModelManager.getJavaModelManager().getJavaModel();
    }

    public static boolean isReferencedBy(IJavaElement iJavaElement, IMarkerDelta iMarkerDelta) throws CoreException {
        String str;
        IType declaringType;
        if (iJavaElement instanceof IMember) {
            IMember iMember = (IMember) iJavaElement;
            if (iMember.isBinary()) {
                iJavaElement = iMember.getClassFile();
            } else {
                iJavaElement = iMember.getCompilationUnit();
            }
        }
        if (iJavaElement == null || iMarkerDelta == null || (str = (String) iMarkerDelta.getAttribute(ATT_HANDLE_ID)) == null) {
            return false;
        }
        Object create = create(str);
        while (!iJavaElement.equals(create)) {
            if (!(create instanceof IOrdinaryClassFile) || (declaringType = ((IOrdinaryClassFile) create).getType().getDeclaringType()) == null) {
                return false;
            }
            create = declaringType.getClassFile();
        }
        return true;
    }
}
