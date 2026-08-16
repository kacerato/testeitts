package org.eclipse.jdt.internal.compiler.impl;

import Sg.b;
import Tj.d;
import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.openjdk.tools.doclint.DocLint;

public class CompilerOptions {
    public static final String ALL_STANDARD_TAGS = "all_standard_tags";
    public static final int APILeak = 1090519040;
    public static final int AccessEmulation = 128;
    public static final int AccidentalBooleanAssign = 262144;
    public static final int AnnotationSuperInterface = 536871424;
    public static final int AssertUsedAsAnIdentifier = 512;
    public static final int AutoBoxing = 536871168;
    public static final int ComparingIdentical = 671088640;
    public static final String DEFAULT = "default";
    public static final String DISABLED = "disabled";
    public static final String DO_NOT_GENERATE = "do not generate";
    public static final int DeadCode = 1073741826;
    public static final int DiscouragedReference = 536887296;
    public static final String ENABLED = "enabled";
    public static final String ERROR = "error";
    public static final int EmptyStatement = 524288;
    public static final int EnumUsedAsAnIdentifier = 536870928;
    public static final int ExplicitlyClosedAutoCloseable = 1073742336;
    public static final int FallthroughCase = 537395200;
    public static final int FieldHiding = 131072;
    public static final int FinalParameterBound = 536870916;
    public static final int FinallyBlockNotCompleting = 16777216;
    public static final int ForbiddenReference = 536870944;
    public static final String GENERATE = "generate";
    public static final String IGNORE = "ignore";
    public static final String INFO = "info";
    public static final int IncompatibleNonInheritedInterfaceMethod = 16384;
    public static final int IndirectStaticAccess = 268435456;
    public static final int InvalidJavadoc = 33554432;
    public static final int LocalVariableHiding = 65536;
    public static final int MaskedCatchBlock = 8;
    public static final int MethodCanBePotentiallyStatic = 1073741856;
    public static final int MethodCanBeStatic = 1073741840;
    public static final int MethodWithConstructorName = 1;
    public static final int MissingDefaultCase = 1073774592;
    public static final int MissingDeprecatedAnnotation = 536879104;
    public static final int MissingEnumConstantCase = 536875008;
    public static final int MissingJavadocComments = 1048576;
    public static final int MissingJavadocTagDescription = 545259520;
    public static final int MissingJavadocTags = 2097152;
    public static final int MissingNonNullByDefaultAnnotation = 1073758208;
    public static final int MissingOverrideAnnotation = 536872960;
    public static final int MissingSerialVersion = 536870920;
    public static final int MissingSynchronizedModifierInInheritedMethod = 805306368;
    public static final String NO_TAG = "no_tag";
    public static final int NoEffectAssignment = 8192;
    public static final int NoImplicitStringConversion = 64;
    public static final int NonExternalizedString = 256;
    public static final int NonNullTypeVariableFromLegacyInvocation = 1074790400;
    public static final int NonStaticAccessToStatic = 2048;
    public static final int NonnullParameterAnnotationDropped = 1073872896;
    public static final int NullAnnotationInferenceConflict = 1073743872;
    public static final int NullReference = 536871040;
    public static final int NullSpecViolation = 1073742848;
    public static final int NullUncheckedConversion = 1073745920;
    public static final String OPTIMIZE_OUT = "optimize out";
    public static final String OPTION_AnnotationBasedNullAnalysis = "org.eclipse.jdt.core.compiler.annotation.nullanalysis";
    public static final String OPTION_Compliance = "org.eclipse.jdt.core.compiler.compliance";
    public static final String OPTION_DocCommentSupport = "org.eclipse.jdt.core.compiler.doc.comment.support";
    public static final String OPTION_EmulateJavacBug8031744 = "org.eclipse.jdt.core.compiler.emulateJavacBug8031744";
    public static final String OPTION_EnablePreviews = "org.eclipse.jdt.core.compiler.problem.enablePreviewFeatures";
    public static final String OPTION_Encoding = "org.eclipse.jdt.core.encoding";
    public static final String OPTION_FatalOptionalError = "org.eclipse.jdt.core.compiler.problem.fatalOptionalError";
    public static final String OPTION_GenerateClassFiles = "org.eclipse.jdt.core.compiler.generateClassFiles";
    public static final String OPTION_IncludeNullInfoFromAsserts = "org.eclipse.jdt.core.compiler.problem.includeNullInfoFromAsserts";
    public static final String OPTION_InheritNullAnnotations = "org.eclipse.jdt.core.compiler.annotation.inheritNullAnnotations";
    public static final String OPTION_InlineJsr = "org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode";
    public static final String OPTION_JdtDebugCompileMode = "org.eclipse.jdt.internal.debug.compile.mode";
    public static final String OPTION_LambdaGenericSignature = "org.eclipse.jdt.core.compiler.codegen.lambda.genericSignature";
    public static final String OPTION_LineNumberAttribute = "org.eclipse.jdt.core.compiler.debug.lineNumber";
    public static final String OPTION_LocalVariableAttribute = "org.eclipse.jdt.core.compiler.debug.localVariable";
    public static final String OPTION_MaxProblemPerUnit = "org.eclipse.jdt.core.compiler.maxProblemPerUnit";
    public static final String OPTION_MethodParametersAttribute = "org.eclipse.jdt.core.compiler.codegen.methodParameters";
    public static final String OPTION_NonNullAnnotationName = "org.eclipse.jdt.core.compiler.annotation.nonnull";
    public static final String OPTION_NonNullAnnotationSecondaryNames = "org.eclipse.jdt.core.compiler.annotation.nonnull.secondary";
    public static final String OPTION_NonNullByDefaultAnnotationName = "org.eclipse.jdt.core.compiler.annotation.nonnullbydefault";
    public static final String OPTION_NonNullByDefaultAnnotationSecondaryNames = "org.eclipse.jdt.core.compiler.annotation.nonnullbydefault.secondary";
    public static final String OPTION_NullableAnnotationName = "org.eclipse.jdt.core.compiler.annotation.nullable";
    public static final String OPTION_NullableAnnotationSecondaryNames = "org.eclipse.jdt.core.compiler.annotation.nullable.secondary";
    public static final String OPTION_PessimisticNullAnalysisForFreeTypeVariables = "org.eclipse.jdt.core.compiler.problem.pessimisticNullAnalysisForFreeTypeVariables";
    public static final String OPTION_PreserveUnusedLocal = "org.eclipse.jdt.core.compiler.codegen.unusedLocal";
    public static final String OPTION_Process_Annotations = "org.eclipse.jdt.core.compiler.processAnnotations";
    public static final String OPTION_Release = "org.eclipse.jdt.core.compiler.release";
    public static final String OPTION_ReportAPILeak = "org.eclipse.jdt.core.compiler.problem.APILeak";
    public static final String OPTION_ReportAnnotationSuperInterface = "org.eclipse.jdt.core.compiler.problem.annotationSuperInterface";
    public static final String OPTION_ReportAssertIdentifier = "org.eclipse.jdt.core.compiler.problem.assertIdentifier";
    public static final String OPTION_ReportAutoboxing = "org.eclipse.jdt.core.compiler.problem.autoboxing";
    public static final String OPTION_ReportComparingIdentical = "org.eclipse.jdt.core.compiler.problem.comparingIdentical";
    public static final String OPTION_ReportDeadCode = "org.eclipse.jdt.core.compiler.problem.deadCode";
    public static final String OPTION_ReportDeadCodeInTrivialIfStatement = "org.eclipse.jdt.core.compiler.problem.deadCodeInTrivialIfStatement";
    public static final String OPTION_ReportDeprecation = "org.eclipse.jdt.core.compiler.problem.deprecation";
    public static final String OPTION_ReportDeprecationInDeprecatedCode = "org.eclipse.jdt.core.compiler.problem.deprecationInDeprecatedCode";
    public static final String OPTION_ReportDeprecationWhenOverridingDeprecatedMethod = "org.eclipse.jdt.core.compiler.problem.deprecationWhenOverridingDeprecatedMethod";
    public static final String OPTION_ReportDiscouragedReference = "org.eclipse.jdt.core.compiler.problem.discouragedReference";
    public static final String OPTION_ReportEmptyStatement = "org.eclipse.jdt.core.compiler.problem.emptyStatement";
    public static final String OPTION_ReportEnumIdentifier = "org.eclipse.jdt.core.compiler.problem.enumIdentifier";
    public static final String OPTION_ReportExplicitlyClosedAutoCloseable = "org.eclipse.jdt.core.compiler.problem.explicitlyClosedAutoCloseable";
    public static final String OPTION_ReportFallthroughCase = "org.eclipse.jdt.core.compiler.problem.fallthroughCase";
    public static final String OPTION_ReportFieldHiding = "org.eclipse.jdt.core.compiler.problem.fieldHiding";
    public static final String OPTION_ReportFinalParameterBound = "org.eclipse.jdt.core.compiler.problem.finalParameterBound";
    public static final String OPTION_ReportFinallyBlockNotCompletingNormally = "org.eclipse.jdt.core.compiler.problem.finallyBlockNotCompletingNormally";
    public static final String OPTION_ReportForbiddenReference = "org.eclipse.jdt.core.compiler.problem.forbiddenReference";
    public static final String OPTION_ReportHiddenCatchBlock = "org.eclipse.jdt.core.compiler.problem.hiddenCatchBlock";
    public static final String OPTION_ReportIncompatibleNonInheritedInterfaceMethod = "org.eclipse.jdt.core.compiler.problem.incompatibleNonInheritedInterfaceMethod";
    public static final String OPTION_ReportIncompleteEnumSwitch = "org.eclipse.jdt.core.compiler.problem.incompleteEnumSwitch";
    public static final String OPTION_ReportIndirectStaticAccess = "org.eclipse.jdt.core.compiler.problem.indirectStaticAccess";
    public static final String OPTION_ReportInvalidJavadoc = "org.eclipse.jdt.core.compiler.problem.invalidJavadoc";
    public static final String OPTION_ReportInvalidJavadocTags = "org.eclipse.jdt.core.compiler.problem.invalidJavadocTags";
    public static final String OPTION_ReportInvalidJavadocTagsDeprecatedRef = "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsDeprecatedRef";
    public static final String OPTION_ReportInvalidJavadocTagsNotVisibleRef = "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsNotVisibleRef";
    public static final String OPTION_ReportInvalidJavadocTagsVisibility = "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsVisibility";
    public static final String OPTION_ReportLocalVariableHiding = "org.eclipse.jdt.core.compiler.problem.localVariableHiding";
    public static final String OPTION_ReportMethodCanBePotentiallyStatic = "org.eclipse.jdt.core.compiler.problem.reportMethodCanBePotentiallyStatic";
    public static final String OPTION_ReportMethodCanBeStatic = "org.eclipse.jdt.core.compiler.problem.reportMethodCanBeStatic";
    public static final String OPTION_ReportMethodWithConstructorName = "org.eclipse.jdt.core.compiler.problem.methodWithConstructorName";
    public static final String OPTION_ReportMissingDefaultCase = "org.eclipse.jdt.core.compiler.problem.missingDefaultCase";
    public static final String OPTION_ReportMissingDeprecatedAnnotation = "org.eclipse.jdt.core.compiler.problem.missingDeprecatedAnnotation";
    public static final String OPTION_ReportMissingEnumCaseDespiteDefault = "org.eclipse.jdt.core.compiler.problem.missingEnumCaseDespiteDefault";
    public static final String OPTION_ReportMissingHashCodeMethod = "org.eclipse.jdt.core.compiler.problem.missingHashCodeMethod";
    public static final String OPTION_ReportMissingJavadocComments = "org.eclipse.jdt.core.compiler.problem.missingJavadocComments";
    public static final String OPTION_ReportMissingJavadocCommentsOverriding = "org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsOverriding";
    public static final String OPTION_ReportMissingJavadocCommentsVisibility = "org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsVisibility";
    public static final String OPTION_ReportMissingJavadocTagDescription = "org.eclipse.jdt.core.compiler.problem.missingJavadocTagDescription";
    public static final String OPTION_ReportMissingJavadocTags = "org.eclipse.jdt.core.compiler.problem.missingJavadocTags";
    public static final String OPTION_ReportMissingJavadocTagsMethodTypeParameters = "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsMethodTypeParameters";
    public static final String OPTION_ReportMissingJavadocTagsOverriding = "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsOverriding";
    public static final String OPTION_ReportMissingJavadocTagsVisibility = "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsVisibility";
    public static final String OPTION_ReportMissingNonNullByDefaultAnnotation = "org.eclipse.jdt.core.compiler.annotation.missingNonNullByDefaultAnnotation";
    public static final String OPTION_ReportMissingOverrideAnnotation = "org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotation";
    public static final String OPTION_ReportMissingOverrideAnnotationForInterfaceMethodImplementation = "org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotationForInterfaceMethodImplementation";
    public static final String OPTION_ReportMissingSerialVersion = "org.eclipse.jdt.core.compiler.problem.missingSerialVersion";
    public static final String OPTION_ReportMissingSynchronizedOnInheritedMethod = "org.eclipse.jdt.core.compiler.problem.missingSynchronizedOnInheritedMethod";
    public static final String OPTION_ReportNoEffectAssignment = "org.eclipse.jdt.core.compiler.problem.noEffectAssignment";
    public static final String OPTION_ReportNoImplicitStringConversion = "org.eclipse.jdt.core.compiler.problem.noImplicitStringConversion";
    public static final String OPTION_ReportNonExternalizedStringLiteral = "org.eclipse.jdt.core.compiler.problem.nonExternalizedStringLiteral";
    public static final String OPTION_ReportNonNullTypeVariableFromLegacyInvocation = "org.eclipse.jdt.core.compiler.problem.nonnullTypeVariableFromLegacyInvocation";
    public static final String OPTION_ReportNonStaticAccessToStatic = "org.eclipse.jdt.core.compiler.problem.staticAccessReceiver";
    public static final String OPTION_ReportNonnullParameterAnnotationDropped = "org.eclipse.jdt.core.compiler.problem.nonnullParameterAnnotationDropped";
    public static final String OPTION_ReportNullAnnotationInferenceConflict = "org.eclipse.jdt.core.compiler.problem.nullAnnotationInferenceConflict";
    public static final String OPTION_ReportNullReference = "org.eclipse.jdt.core.compiler.problem.nullReference";
    public static final String OPTION_ReportNullSpecViolation = "org.eclipse.jdt.core.compiler.problem.nullSpecViolation";
    public static final String OPTION_ReportNullUncheckedConversion = "org.eclipse.jdt.core.compiler.problem.nullUncheckedConversion";
    public static final String OPTION_ReportOverridingMethodWithoutSuperInvocation = "org.eclipse.jdt.core.compiler.problem.overridingMethodWithoutSuperInvocation";
    public static final String OPTION_ReportOverridingPackageDefaultMethod = "org.eclipse.jdt.core.compiler.problem.overridingPackageDefaultMethod";
    public static final String OPTION_ReportParameterAssignment = "org.eclipse.jdt.core.compiler.problem.parameterAssignment";
    public static final String OPTION_ReportPossibleAccidentalBooleanAssignment = "org.eclipse.jdt.core.compiler.problem.possibleAccidentalBooleanAssignment";
    public static final String OPTION_ReportPotentialNullReference = "org.eclipse.jdt.core.compiler.problem.potentialNullReference";
    public static final String OPTION_ReportPotentiallyUnclosedCloseable = "org.eclipse.jdt.core.compiler.problem.potentiallyUnclosedCloseable";
    public static final String OPTION_ReportPreviewFeatures = "org.eclipse.jdt.core.compiler.problem.reportPreviewFeatures";
    public static final String OPTION_ReportRawTypeReference = "org.eclipse.jdt.core.compiler.problem.rawTypeReference";
    public static final String OPTION_ReportRedundantNullAnnotation = "org.eclipse.jdt.core.compiler.problem.redundantNullAnnotation";
    public static final String OPTION_ReportRedundantNullCheck = "org.eclipse.jdt.core.compiler.problem.redundantNullCheck";
    public static final String OPTION_ReportRedundantSpecificationOfTypeArguments = "org.eclipse.jdt.core.compiler.problem.redundantSpecificationOfTypeArguments";
    public static final String OPTION_ReportRedundantSuperinterface = "org.eclipse.jdt.core.compiler.problem.redundantSuperinterface";
    public static final String OPTION_ReportSpecialParameterHidingField = "org.eclipse.jdt.core.compiler.problem.specialParameterHidingField";
    public static final String OPTION_ReportSyntheticAccessEmulation = "org.eclipse.jdt.core.compiler.problem.syntheticAccessEmulation";
    public static final String OPTION_ReportTasks = "org.eclipse.jdt.core.compiler.problem.tasks";
    public static final String OPTION_ReportTerminalDeprecation = "org.eclipse.jdt.core.compiler.problem.terminalDeprecation";
    public static final String OPTION_ReportTypeParameterHiding = "org.eclipse.jdt.core.compiler.problem.typeParameterHiding";
    public static final String OPTION_ReportUnavoidableGenericTypeProblems = "org.eclipse.jdt.core.compiler.problem.unavoidableGenericTypeProblems";
    public static final String OPTION_ReportUncheckedTypeOperation = "org.eclipse.jdt.core.compiler.problem.uncheckedTypeOperation";
    public static final String OPTION_ReportUnclosedCloseable = "org.eclipse.jdt.core.compiler.problem.unclosedCloseable";
    public static final String OPTION_ReportUndocumentedEmptyBlock = "org.eclipse.jdt.core.compiler.problem.undocumentedEmptyBlock";
    public static final String OPTION_ReportUnhandledWarningToken = "org.eclipse.jdt.core.compiler.problem.unhandledWarningToken";
    public static final String OPTION_ReportUninternedIdentityComparison = "org.eclipse.jdt.core.compiler.problem.uninternedIdentityComparison";
    public static final String OPTION_ReportUnlikelyCollectionMethodArgumentType = "org.eclipse.jdt.core.compiler.problem.unlikelyCollectionMethodArgumentType";
    public static final String OPTION_ReportUnlikelyCollectionMethodArgumentTypeStrict = "org.eclipse.jdt.core.compiler.problem.unlikelyCollectionMethodArgumentTypeStrict";
    public static final String OPTION_ReportUnlikelyEqualsArgumentType = "org.eclipse.jdt.core.compiler.problem.unlikelyEqualsArgumentType";
    public static final String OPTION_ReportUnnecessaryElse = "org.eclipse.jdt.core.compiler.problem.unnecessaryElse";
    public static final String OPTION_ReportUnnecessaryTypeCheck = "org.eclipse.jdt.core.compiler.problem.unnecessaryTypeCheck";
    public static final String OPTION_ReportUnqualifiedFieldAccess = "org.eclipse.jdt.core.compiler.problem.unqualifiedFieldAccess";
    public static final String OPTION_ReportUnstableAutoModuleName = "org.eclipse.jdt.core.compiler.problem.unstableAutoModuleName";
    public static final String OPTION_ReportUnusedDeclaredThrownException = "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownException";
    public static final String OPTION_ReportUnusedDeclaredThrownExceptionExemptExceptionAndThrowable = "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionExemptExceptionAndThrowable";
    public static final String OPTION_ReportUnusedDeclaredThrownExceptionIncludeDocCommentReference = "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionIncludeDocCommentReference";
    public static final String OPTION_ReportUnusedDeclaredThrownExceptionWhenOverriding = "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionWhenOverriding";
    public static final String OPTION_ReportUnusedExceptionParameter = "org.eclipse.jdt.core.compiler.problem.unusedExceptionParameter";
    public static final String OPTION_ReportUnusedImport = "org.eclipse.jdt.core.compiler.problem.unusedImport";
    public static final String OPTION_ReportUnusedLabel = "org.eclipse.jdt.core.compiler.problem.unusedLabel";
    public static final String OPTION_ReportUnusedLocal = "org.eclipse.jdt.core.compiler.problem.unusedLocal";
    public static final String OPTION_ReportUnusedObjectAllocation = "org.eclipse.jdt.core.compiler.problem.unusedObjectAllocation";
    public static final String OPTION_ReportUnusedParameter = "org.eclipse.jdt.core.compiler.problem.unusedParameter";
    public static final String OPTION_ReportUnusedParameterIncludeDocCommentReference = "org.eclipse.jdt.core.compiler.problem.unusedParameterIncludeDocCommentReference";
    public static final String OPTION_ReportUnusedParameterWhenImplementingAbstract = "org.eclipse.jdt.core.compiler.problem.unusedParameterWhenImplementingAbstract";
    public static final String OPTION_ReportUnusedParameterWhenOverridingConcrete = "org.eclipse.jdt.core.compiler.problem.unusedParameterWhenOverridingConcrete";
    public static final String OPTION_ReportUnusedPrivateMember = "org.eclipse.jdt.core.compiler.problem.unusedPrivateMember";
    public static final String OPTION_ReportUnusedTypeArgumentsForMethodInvocation = "org.eclipse.jdt.core.compiler.problem.unusedTypeArgumentsForMethodInvocation";
    public static final String OPTION_ReportUnusedTypeParameter = "org.eclipse.jdt.core.compiler.problem.unusedTypeParameter";
    public static final String OPTION_ReportUnusedWarningToken = "org.eclipse.jdt.core.compiler.problem.unusedWarningToken";
    public static final String OPTION_ReportVarargsArgumentNeedCast = "org.eclipse.jdt.core.compiler.problem.varargsArgumentNeedCast";
    public static final String OPTION_ShareCommonFinallyBlocks = "org.eclipse.jdt.core.compiler.codegen.shareCommonFinallyBlocks";
    public static final String OPTION_Source = "org.eclipse.jdt.core.compiler.source";
    public static final String OPTION_SourceFileAttribute = "org.eclipse.jdt.core.compiler.debug.sourceFile";
    public static final String OPTION_Store_Annotations = "org.eclipse.jdt.core.compiler.storeAnnotations";
    public static final String OPTION_SuppressOptionalErrors = "org.eclipse.jdt.core.compiler.problem.suppressOptionalErrors";
    public static final String OPTION_SuppressWarnings = "org.eclipse.jdt.core.compiler.problem.suppressWarnings";
    public static final String OPTION_SyntacticNullAnalysisForFields = "org.eclipse.jdt.core.compiler.problem.syntacticNullAnalysisForFields";
    public static final String OPTION_TargetPlatform = "org.eclipse.jdt.core.compiler.codegen.targetPlatform";
    public static final String OPTION_TaskCaseSensitive = "org.eclipse.jdt.core.compiler.taskCaseSensitive";
    public static final String OPTION_TaskPriorities = "org.eclipse.jdt.core.compiler.taskPriorities";
    public static final String OPTION_TaskTags = "org.eclipse.jdt.core.compiler.taskTags";
    public static final int OverriddenPackageDefaultMethod = 2;
    public static final int OverridingMethodWithoutSuperInvocation = 537919488;
    public static final String PRESERVE = "preserve";
    public static final String PRIVATE = "private";
    public static final String PROTECTED = "protected";
    public static final String PUBLIC = "public";
    public static final int ParameterAssignment = 537133056;
    public static final int PessimisticNullAnalysisForFreeTypeVariables = 1074266112;
    public static final int PotentialNullReference = 538968064;
    public static final int PotentiallyUnclosedCloseable = 1073742080;
    public static final int PreviewFeatureUsed = 1140850688;
    public static final String RETURN_TAG = "return_tag";
    public static final int RawTypeReference = 536936448;
    public static final int RedundantNullAnnotation = 1073750016;
    public static final int RedundantNullCheck = 541065216;
    public static final int RedundantSpecificationOfTypeArguments = 1073741888;
    public static final int RedundantSuperinterface = 603979776;
    public static final int ShouldImplementHashcode = 1073741825;
    public static final int Task = 4096;
    public static final int Tasks = 1073741828;
    public static final int TypeHiding = 536871936;
    public static final int UncheckedTypeOperation = 536870914;
    public static final int UnclosedCloseable = 1073741952;
    public static final int UndocumentedEmptyBlock = 134217728;
    public static final int UnhandledWarningToken = 536903680;
    public static final int UnlikelyCollectionMethodArgumentType = 1075838976;
    public static final int UnlikelyEqualsArgumentType = 1077936128;
    public static final int UnnecessaryElse = 536870913;
    public static final int UnnecessaryTypeCheck = 67108864;
    public static final int UnqualifiedFieldAccess = 4194304;
    public static final int UnstableAutoModuleName = 1107296256;
    public static final int UnusedArgument = 32;
    public static final int UnusedDeclaredThrownException = 8388608;
    public static final int UnusedExceptionParameter = 1074003968;
    public static final int UnusedImport = 1024;
    public static final int UnusedLabel = 537001984;
    public static final int UnusedLocalVariable = 16;
    public static final int UnusedObjectAllocation = 1073741832;
    public static final int UnusedPrivateMember = 32768;
    public static final int UnusedTypeArguments = 553648128;
    public static final int UnusedTypeParameter = 1073807360;
    public static final int UnusedWarningToken = 570425344;
    public static final int UsingDeprecatedAPI = 4;
    public static final int UsingTerminallyDeprecatedAPI = 1082130432;
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
    public static final String VERSION_CLDC1_1 = "cldc1.1";
    public static final String VERSION_JSR14 = "jsr14";
    public static final int VarargsArgumentNeedCast = 536870976;
    public static final String WARNING = "warning";
    public static boolean tolerateIllegalAmbiguousVarargsInvocation;
    public boolean analyseResourceLeaks;
    public boolean complainOnUninternedIdentityComparison;
    public long complianceLevel;
    public String defaultEncoding;
    public boolean docCommentSupport;
    public boolean emulateJavacBug8031744;
    public boolean enableJdtDebugCompileMode;
    public boolean enablePreviewFeatures;
    public boolean enableSyntacticNullAnalysisForFields;
    protected IrritantSet errorThreshold;
    public boolean generateClassFiles;
    public boolean generateGenericSignatureForLambdaExpressions;
    public boolean ignoreMethodBodies;
    public boolean ignoreSourceFolderWarningOption;
    public boolean includeNullInfoFromAsserts;
    protected IrritantSet infoThreshold;
    public boolean inheritNullAnnotations;
    public boolean inlineJsrBytecode;
    public long intendedDefaultNonNullness;
    public boolean isAnnotationBasedNullAnalysisEnabled;
    public boolean isTaskCaseSensitive;
    public int maxProblemsPerUnit;
    public char[][] nonNullAnnotationName;
    public String[] nonNullAnnotationSecondaryNames;
    public char[][] nonNullByDefaultAnnotationName;
    public String[] nonNullByDefaultAnnotationSecondaryNames;
    public char[][] nullableAnnotationName;
    public String[] nullableAnnotationSecondaryNames;
    public long originalComplianceLevel;
    public long originalSourceLevel;
    public boolean parseLiteralExpressionsAsConstants;
    public boolean performMethodsFullRecovery;
    public boolean performStatementsRecovery;
    public boolean pessimisticNullAnalysisForFreeTypeVariablesEnabled;
    public boolean preserveAllLocalVariables;
    public boolean processAnnotations;
    public int produceDebugAttributes;
    public boolean produceMethodParameters;
    public boolean produceReferenceInfo;
    public boolean reportDeadCodeInTrivialIfStatement;
    public boolean reportDeprecationInsideDeprecatedCode;
    public boolean reportDeprecationWhenOverridingDeprecatedMethod;
    public boolean reportInvalidJavadocTags;
    public boolean reportInvalidJavadocTagsDeprecatedRef;
    public boolean reportInvalidJavadocTagsNotVisibleRef;
    public int reportInvalidJavadocTagsVisibility;
    public boolean reportMissingEnumCaseDespiteDefault;
    public boolean reportMissingJavadocCommentsOverriding;
    public int reportMissingJavadocCommentsVisibility;
    public String reportMissingJavadocTagDescription;
    public boolean reportMissingJavadocTagsMethodTypeParameters;
    public boolean reportMissingJavadocTagsOverriding;
    public int reportMissingJavadocTagsVisibility;
    public boolean reportMissingOverrideAnnotationForInterfaceMethodImplementation;
    public boolean reportSpecialParameterHidingField;
    public boolean reportUnavoidableGenericTypeProblems;
    public boolean reportUnlikelyCollectionMethodArgumentTypeStrict;
    public boolean reportUnusedDeclaredThrownExceptionExemptExceptionAndThrowable;
    public boolean reportUnusedDeclaredThrownExceptionIncludeDocCommentReference;
    public boolean reportUnusedDeclaredThrownExceptionWhenOverriding;
    public boolean reportUnusedParameterIncludeDocCommentReference;
    public boolean reportUnusedParameterWhenImplementingAbstract;
    public boolean reportUnusedParameterWhenOverridingConcrete;
    public boolean shareCommonFinallyBlocks;
    public long sourceLevel;
    public boolean storeAnnotations;
    public boolean suppressOptionalErrors;
    public boolean suppressWarnings;
    public long targetJDK;
    public char[][] taskPriorities;
    public char[][] taskTags;
    public boolean treatOptionalErrorAsFatal;
    public Boolean useNullTypeAnnotations;
    public boolean verbose;
    protected IrritantSet warningThreshold;
    static final char[][] DEFAULT_NULLABLE_ANNOTATION_NAME = CharOperation.splitOn('.', "org.eclipse.jdt.annotation.Nullable".toCharArray());
    static final char[][] DEFAULT_NONNULL_ANNOTATION_NAME = CharOperation.splitOn('.', "org.eclipse.jdt.annotation.NonNull".toCharArray());
    static final char[][] DEFAULT_NONNULLBYDEFAULT_ANNOTATION_NAME = CharOperation.splitOn('.', "org.eclipse.jdt.annotation.NonNullByDefault".toCharArray());
    private static final String[] NO_STRINGS = new String[0];
    public static final String[] warningTokens = {d.f25405q, "boxing", "cast", "dep-ann", "deprecation", "exports", "fallthrough", "finally", "hiding", "incomplete-switch", "javadoc", IClasspathAttribute.MODULE, "nls", "null", "rawtypes", "removal", "resource", "restriction", "serial", "static-access", "static-method", "super", "synthetic-access", "sync-override", "unchecked", "unlikely-arg-type", "unqualified-field-access", "unused", "preview"};

    public CompilerOptions() {
        this(null);
    }

    public static String getLatestVersion() {
        return "12";
    }

    public static String optionKeyFromIrritant(int i10) {
        switch (i10) {
            case 1:
                return "org.eclipse.jdt.core.compiler.problem.methodWithConstructorName";
            case 2:
                return "org.eclipse.jdt.core.compiler.problem.overridingPackageDefaultMethod";
            case 4:
            case 33554436:
                return "org.eclipse.jdt.core.compiler.problem.deprecation";
            case 8:
                return "org.eclipse.jdt.core.compiler.problem.hiddenCatchBlock";
            case 16:
                return "org.eclipse.jdt.core.compiler.problem.unusedLocal";
            case 32:
                return "org.eclipse.jdt.core.compiler.problem.unusedParameter";
            case 64:
                return "org.eclipse.jdt.core.compiler.problem.noImplicitStringConversion";
            case 128:
                return "org.eclipse.jdt.core.compiler.problem.syntheticAccessEmulation";
            case 256:
                return "org.eclipse.jdt.core.compiler.problem.nonExternalizedStringLiteral";
            case 512:
                return "org.eclipse.jdt.core.compiler.problem.assertIdentifier";
            case 1024:
                return "org.eclipse.jdt.core.compiler.problem.unusedImport";
            case 2048:
                return "org.eclipse.jdt.core.compiler.problem.staticAccessReceiver";
            case 4096:
                return "org.eclipse.jdt.core.compiler.taskTags";
            case 8192:
                return "org.eclipse.jdt.core.compiler.problem.noEffectAssignment";
            case 16384:
                return "org.eclipse.jdt.core.compiler.problem.incompatibleNonInheritedInterfaceMethod";
            case 32768:
                return "org.eclipse.jdt.core.compiler.problem.unusedPrivateMember";
            case 65536:
                return "org.eclipse.jdt.core.compiler.problem.localVariableHiding";
            case 131072:
                return "org.eclipse.jdt.core.compiler.problem.fieldHiding";
            case 262144:
                return "org.eclipse.jdt.core.compiler.problem.possibleAccidentalBooleanAssignment";
            case 524288:
                return "org.eclipse.jdt.core.compiler.problem.emptyStatement";
            case 1048576:
                return "org.eclipse.jdt.core.compiler.problem.missingJavadocComments";
            case 2097152:
                return "org.eclipse.jdt.core.compiler.problem.missingJavadocTags";
            case 4194304:
                return "org.eclipse.jdt.core.compiler.problem.unqualifiedFieldAccess";
            case 8388608:
                return "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownException";
            case 16777216:
                return "org.eclipse.jdt.core.compiler.problem.finallyBlockNotCompletingNormally";
            case 33554432:
                return "org.eclipse.jdt.core.compiler.problem.invalidJavadoc";
            case 67108864:
                return "org.eclipse.jdt.core.compiler.problem.unnecessaryTypeCheck";
            case 134217728:
                return "org.eclipse.jdt.core.compiler.problem.undocumentedEmptyBlock";
            case 268435456:
                return "org.eclipse.jdt.core.compiler.problem.indirectStaticAccess";
            case UnnecessaryElse:
                return "org.eclipse.jdt.core.compiler.problem.unnecessaryElse";
            case UncheckedTypeOperation:
                return "org.eclipse.jdt.core.compiler.problem.uncheckedTypeOperation";
            case FinalParameterBound:
                return "org.eclipse.jdt.core.compiler.problem.finalParameterBound";
            case MissingSerialVersion:
                return "org.eclipse.jdt.core.compiler.problem.missingSerialVersion";
            case EnumUsedAsAnIdentifier:
                return "org.eclipse.jdt.core.compiler.problem.enumIdentifier";
            case 536870944:
                return "org.eclipse.jdt.core.compiler.problem.forbiddenReference";
            case 536870976:
                return "org.eclipse.jdt.core.compiler.problem.varargsArgumentNeedCast";
            case NullReference:
                return "org.eclipse.jdt.core.compiler.problem.nullReference";
            case AutoBoxing:
                return "org.eclipse.jdt.core.compiler.problem.autoboxing";
            case AnnotationSuperInterface:
                return "org.eclipse.jdt.core.compiler.problem.annotationSuperInterface";
            case TypeHiding:
                return "org.eclipse.jdt.core.compiler.problem.typeParameterHiding";
            case MissingOverrideAnnotation:
                return "org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotation";
            case MissingEnumConstantCase:
                return "org.eclipse.jdt.core.compiler.problem.incompleteEnumSwitch";
            case MissingDeprecatedAnnotation:
                return "org.eclipse.jdt.core.compiler.problem.missingDeprecatedAnnotation";
            case DiscouragedReference:
                return "org.eclipse.jdt.core.compiler.problem.discouragedReference";
            case UnhandledWarningToken:
                return "org.eclipse.jdt.core.compiler.problem.unhandledWarningToken";
            case RawTypeReference:
                return "org.eclipse.jdt.core.compiler.problem.rawTypeReference";
            case UnusedLabel:
                return "org.eclipse.jdt.core.compiler.problem.unusedLabel";
            case ParameterAssignment:
                return "org.eclipse.jdt.core.compiler.problem.parameterAssignment";
            case FallthroughCase:
                return "org.eclipse.jdt.core.compiler.problem.fallthroughCase";
            case OverridingMethodWithoutSuperInvocation:
                return "org.eclipse.jdt.core.compiler.problem.overridingMethodWithoutSuperInvocation";
            case PotentialNullReference:
                return "org.eclipse.jdt.core.compiler.problem.potentialNullReference";
            case RedundantNullCheck:
                return "org.eclipse.jdt.core.compiler.problem.redundantNullCheck";
            case MissingJavadocTagDescription:
                return "org.eclipse.jdt.core.compiler.problem.missingJavadocTagDescription";
            case UnusedTypeArguments:
                return "org.eclipse.jdt.core.compiler.problem.unusedTypeArgumentsForMethodInvocation";
            case UnusedWarningToken:
                return "org.eclipse.jdt.core.compiler.problem.unusedWarningToken";
            case RedundantSuperinterface:
                return "org.eclipse.jdt.core.compiler.problem.redundantSuperinterface";
            case ComparingIdentical:
                return "org.eclipse.jdt.core.compiler.problem.comparingIdentical";
            case 805306368:
                return "org.eclipse.jdt.core.compiler.problem.missingSynchronizedOnInheritedMethod";
            case ShouldImplementHashcode:
                return "org.eclipse.jdt.core.compiler.problem.missingHashCodeMethod";
            case DeadCode:
                return "org.eclipse.jdt.core.compiler.problem.deadCode";
            case UnusedObjectAllocation:
                return "org.eclipse.jdt.core.compiler.problem.unusedObjectAllocation";
            case MethodCanBeStatic:
                return "org.eclipse.jdt.core.compiler.problem.reportMethodCanBeStatic";
            case MethodCanBePotentiallyStatic:
                return "org.eclipse.jdt.core.compiler.problem.reportMethodCanBePotentiallyStatic";
            case RedundantSpecificationOfTypeArguments:
                return "org.eclipse.jdt.core.compiler.problem.redundantSpecificationOfTypeArguments";
            case UnclosedCloseable:
                return "org.eclipse.jdt.core.compiler.problem.unclosedCloseable";
            case PotentiallyUnclosedCloseable:
                return "org.eclipse.jdt.core.compiler.problem.potentiallyUnclosedCloseable";
            case ExplicitlyClosedAutoCloseable:
                return "org.eclipse.jdt.core.compiler.problem.explicitlyClosedAutoCloseable";
            case NullSpecViolation:
                return "org.eclipse.jdt.core.compiler.problem.nullSpecViolation";
            case NullAnnotationInferenceConflict:
                return "org.eclipse.jdt.core.compiler.problem.nullAnnotationInferenceConflict";
            case NullUncheckedConversion:
                return "org.eclipse.jdt.core.compiler.problem.nullUncheckedConversion";
            case RedundantNullAnnotation:
                return "org.eclipse.jdt.core.compiler.problem.redundantNullAnnotation";
            case MissingNonNullByDefaultAnnotation:
                return "org.eclipse.jdt.core.compiler.annotation.missingNonNullByDefaultAnnotation";
            case MissingDefaultCase:
                return "org.eclipse.jdt.core.compiler.problem.missingDefaultCase";
            case UnusedTypeParameter:
                return "org.eclipse.jdt.core.compiler.problem.unusedTypeParameter";
            case NonnullParameterAnnotationDropped:
                return "org.eclipse.jdt.core.compiler.problem.nonnullParameterAnnotationDropped";
            case UnusedExceptionParameter:
                return "org.eclipse.jdt.core.compiler.problem.unusedExceptionParameter";
            case PessimisticNullAnalysisForFreeTypeVariables:
                return "org.eclipse.jdt.core.compiler.problem.pessimisticNullAnalysisForFreeTypeVariables";
            case NonNullTypeVariableFromLegacyInvocation:
                return "org.eclipse.jdt.core.compiler.problem.nonnullTypeVariableFromLegacyInvocation";
            case UnlikelyCollectionMethodArgumentType:
                return "org.eclipse.jdt.core.compiler.problem.unlikelyCollectionMethodArgumentType";
            case UnlikelyEqualsArgumentType:
                return "org.eclipse.jdt.core.compiler.problem.unlikelyEqualsArgumentType";
            case UsingTerminallyDeprecatedAPI:
            case 1115684864:
                return "org.eclipse.jdt.core.compiler.problem.terminalDeprecation";
            case APILeak:
                return "org.eclipse.jdt.core.compiler.problem.APILeak";
            case UnstableAutoModuleName:
                return "org.eclipse.jdt.core.compiler.problem.unstableAutoModuleName";
            case PreviewFeatureUsed:
                return "org.eclipse.jdt.core.compiler.problem.reportPreviewFeatures";
            default:
                return null;
        }
    }

    public static long releaseToJDKLevel(String str) {
        int parseInt;
        if (str == null || str.length() <= 0 || (parseInt = Integer.parseInt(str) + 44) > 56) {
            return 0L;
        }
        return parseInt << 16;
    }

    private String[] stringToNameList(String str) {
        String[] split = str.split(DocLint.SEPARATOR);
        if (split == null) {
            return NO_STRINGS;
        }
        for (int i10 = 0; i10 < split.length; i10++) {
            split[i10] = split[i10].trim();
        }
        return split;
    }

    public static String versionFromJdkLevel(long j10) {
        int i10 = (int) (j10 >> 16);
        switch (i10) {
            case 45:
                if (j10 == ClassFileConstants.JDK1_1) {
                    return "1.1";
                }
                break;
            case 46:
                if (j10 == ClassFileConstants.JDK1_2) {
                    return "1.2";
                }
                break;
            case 47:
                if (j10 == ClassFileConstants.JDK1_3) {
                    return "1.3";
                }
                break;
            case 48:
                if (j10 == ClassFileConstants.JDK1_4) {
                    return "1.4";
                }
                break;
            case 49:
                if (j10 == ClassFileConstants.JDK1_5) {
                    return "1.5";
                }
                break;
            case 50:
                if (j10 == ClassFileConstants.JDK1_6) {
                    return "1.6";
                }
                break;
            case 51:
                if (j10 == ClassFileConstants.JDK1_7) {
                    return "1.7";
                }
                break;
            case 52:
                if (j10 == ClassFileConstants.JDK1_8) {
                    return "1.8";
                }
                break;
            case 53:
                if (j10 == ClassFileConstants.JDK9) {
                    return "9";
                }
                break;
            case 54:
                if (j10 == ClassFileConstants.JDK10) {
                    return "10";
                }
                break;
            default:
                if (i10 <= 54) {
                    return Util.EMPTY_STRING;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(i10 - 44);
                return sb2.toString();
        }
        return Util.EMPTY_STRING;
    }

    public static long versionToJdkLevel(String str) {
        return versionToJdkLevel(str, true);
    }

    public static String[] warningOptionNames() {
        return new String[]{"org.eclipse.jdt.core.compiler.problem.annotationSuperInterface", "org.eclipse.jdt.core.compiler.problem.assertIdentifier", "org.eclipse.jdt.core.compiler.problem.autoboxing", "org.eclipse.jdt.core.compiler.problem.comparingIdentical", "org.eclipse.jdt.core.compiler.problem.deadCode", "org.eclipse.jdt.core.compiler.problem.deadCodeInTrivialIfStatement", "org.eclipse.jdt.core.compiler.problem.deprecation", "org.eclipse.jdt.core.compiler.problem.deprecationInDeprecatedCode", "org.eclipse.jdt.core.compiler.problem.deprecationWhenOverridingDeprecatedMethod", "org.eclipse.jdt.core.compiler.problem.discouragedReference", "org.eclipse.jdt.core.compiler.problem.emptyStatement", "org.eclipse.jdt.core.compiler.problem.enumIdentifier", "org.eclipse.jdt.core.compiler.problem.fallthroughCase", "org.eclipse.jdt.core.compiler.problem.fieldHiding", "org.eclipse.jdt.core.compiler.problem.finallyBlockNotCompletingNormally", "org.eclipse.jdt.core.compiler.problem.finalParameterBound", "org.eclipse.jdt.core.compiler.problem.forbiddenReference", "org.eclipse.jdt.core.compiler.problem.hiddenCatchBlock", "org.eclipse.jdt.core.compiler.problem.incompatibleNonInheritedInterfaceMethod", "org.eclipse.jdt.core.compiler.problem.missingDefaultCase", "org.eclipse.jdt.core.compiler.problem.incompleteEnumSwitch", "org.eclipse.jdt.core.compiler.problem.missingEnumCaseDespiteDefault", "org.eclipse.jdt.core.compiler.problem.indirectStaticAccess", "org.eclipse.jdt.core.compiler.problem.invalidJavadoc", "org.eclipse.jdt.core.compiler.problem.invalidJavadocTags", "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsDeprecatedRef", "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsNotVisibleRef", "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsVisibility", "org.eclipse.jdt.core.compiler.problem.localVariableHiding", "org.eclipse.jdt.core.compiler.problem.reportMethodCanBePotentiallyStatic", "org.eclipse.jdt.core.compiler.problem.reportMethodCanBeStatic", "org.eclipse.jdt.core.compiler.problem.methodWithConstructorName", "org.eclipse.jdt.core.compiler.problem.missingDeprecatedAnnotation", "org.eclipse.jdt.core.compiler.problem.missingHashCodeMethod", "org.eclipse.jdt.core.compiler.problem.missingJavadocComments", "org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsOverriding", "org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsVisibility", "org.eclipse.jdt.core.compiler.problem.missingJavadocTagDescription", "org.eclipse.jdt.core.compiler.problem.missingJavadocTags", "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsMethodTypeParameters", "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsOverriding", "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsVisibility", "org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotation", "org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotationForInterfaceMethodImplementation", "org.eclipse.jdt.core.compiler.problem.missingSerialVersion", "org.eclipse.jdt.core.compiler.problem.missingSynchronizedOnInheritedMethod", "org.eclipse.jdt.core.compiler.problem.noEffectAssignment", "org.eclipse.jdt.core.compiler.problem.noImplicitStringConversion", "org.eclipse.jdt.core.compiler.problem.nonExternalizedStringLiteral", "org.eclipse.jdt.core.compiler.problem.staticAccessReceiver", "org.eclipse.jdt.core.compiler.problem.nullReference", "org.eclipse.jdt.core.compiler.problem.overridingMethodWithoutSuperInvocation", "org.eclipse.jdt.core.compiler.problem.overridingPackageDefaultMethod", "org.eclipse.jdt.core.compiler.problem.parameterAssignment", "org.eclipse.jdt.core.compiler.problem.possibleAccidentalBooleanAssignment", "org.eclipse.jdt.core.compiler.problem.potentialNullReference", "org.eclipse.jdt.core.compiler.problem.rawTypeReference", "org.eclipse.jdt.core.compiler.problem.redundantNullCheck", "org.eclipse.jdt.core.compiler.problem.redundantSuperinterface", "org.eclipse.jdt.core.compiler.problem.redundantSpecificationOfTypeArguments", "org.eclipse.jdt.core.compiler.problem.specialParameterHidingField", "org.eclipse.jdt.core.compiler.problem.syntheticAccessEmulation", OPTION_ReportTasks, "org.eclipse.jdt.core.compiler.problem.typeParameterHiding", "org.eclipse.jdt.core.compiler.problem.unavoidableGenericTypeProblems", "org.eclipse.jdt.core.compiler.problem.uncheckedTypeOperation", "org.eclipse.jdt.core.compiler.problem.undocumentedEmptyBlock", "org.eclipse.jdt.core.compiler.problem.unhandledWarningToken", "org.eclipse.jdt.core.compiler.problem.unnecessaryElse", "org.eclipse.jdt.core.compiler.problem.unnecessaryTypeCheck", "org.eclipse.jdt.core.compiler.problem.unqualifiedFieldAccess", "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownException", "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionExemptExceptionAndThrowable", "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionIncludeDocCommentReference", "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionWhenOverriding", "org.eclipse.jdt.core.compiler.problem.unusedImport", "org.eclipse.jdt.core.compiler.problem.unusedLabel", "org.eclipse.jdt.core.compiler.problem.unusedLocal", "org.eclipse.jdt.core.compiler.problem.unusedObjectAllocation", "org.eclipse.jdt.core.compiler.problem.unusedParameter", "org.eclipse.jdt.core.compiler.problem.unusedExceptionParameter", "org.eclipse.jdt.core.compiler.problem.unusedParameterIncludeDocCommentReference", "org.eclipse.jdt.core.compiler.problem.unusedParameterWhenImplementingAbstract", "org.eclipse.jdt.core.compiler.problem.unusedParameterWhenOverridingConcrete", "org.eclipse.jdt.core.compiler.problem.unusedPrivateMember", "org.eclipse.jdt.core.compiler.problem.unusedTypeArgumentsForMethodInvocation", "org.eclipse.jdt.core.compiler.problem.unusedWarningToken", "org.eclipse.jdt.core.compiler.problem.varargsArgumentNeedCast", "org.eclipse.jdt.core.compiler.problem.unclosedCloseable", "org.eclipse.jdt.core.compiler.problem.potentiallyUnclosedCloseable", "org.eclipse.jdt.core.compiler.problem.explicitlyClosedAutoCloseable", "org.eclipse.jdt.core.compiler.annotation.nullanalysis", "org.eclipse.jdt.core.compiler.annotation.nonnull", "org.eclipse.jdt.core.compiler.annotation.nullable", "org.eclipse.jdt.core.compiler.annotation.nonnullbydefault", "org.eclipse.jdt.core.compiler.annotation.missingNonNullByDefaultAnnotation", "org.eclipse.jdt.core.compiler.problem.nullSpecViolation", "org.eclipse.jdt.core.compiler.problem.nullAnnotationInferenceConflict", "org.eclipse.jdt.core.compiler.problem.nullUncheckedConversion", "org.eclipse.jdt.core.compiler.problem.redundantNullAnnotation", "org.eclipse.jdt.core.compiler.problem.syntacticNullAnalysisForFields", "org.eclipse.jdt.core.compiler.problem.unusedTypeParameter", "org.eclipse.jdt.core.compiler.annotation.inheritNullAnnotations", "org.eclipse.jdt.core.compiler.problem.nonnullParameterAnnotationDropped", "org.eclipse.jdt.core.compiler.problem.unlikelyCollectionMethodArgumentType", "org.eclipse.jdt.core.compiler.problem.unlikelyEqualsArgumentType", "org.eclipse.jdt.core.compiler.problem.APILeak", "org.eclipse.jdt.core.compiler.problem.reportPreviewFeatures"};
    }

    public static String warningTokenFromIrritant(int i10) {
        switch (i10) {
            case 4:
            case 33554436:
                return "deprecation";
            case 8:
            case 65536:
            case 131072:
                return "hiding";
            case 16:
            case 32:
            case 1024:
            case 32768:
            case 8388608:
            case UnusedLabel:
            case UnusedTypeArguments:
            case RedundantSuperinterface:
            case DeadCode:
            case UnusedObjectAllocation:
            case RedundantSpecificationOfTypeArguments:
            case UnusedTypeParameter:
            case UnusedExceptionParameter:
                return "unused";
            case 128:
                return "synthetic-access";
            case 256:
                return "nls";
            case 2048:
            case 268435456:
                return "static-access";
            case 1048576:
            case 2097152:
            case 33554432:
                return "javadoc";
            case 4194304:
                return "unqualified-field-access";
            case 16777216:
                return "finally";
            case 67108864:
                return "cast";
            case UncheckedTypeOperation:
                return "unchecked";
            case MissingSerialVersion:
                return "serial";
            case 536870944:
            case DiscouragedReference:
                return "restriction";
            case NullReference:
            case PotentialNullReference:
            case RedundantNullCheck:
            case NullSpecViolation:
            case NullAnnotationInferenceConflict:
            case NullUncheckedConversion:
            case RedundantNullAnnotation:
            case MissingNonNullByDefaultAnnotation:
            case NonnullParameterAnnotationDropped:
            case PessimisticNullAnalysisForFreeTypeVariables:
            case NonNullTypeVariableFromLegacyInvocation:
                return "null";
            case AutoBoxing:
                return "boxing";
            case TypeHiding:
                return "hiding";
            case MissingEnumConstantCase:
            case MissingDefaultCase:
                return "incomplete-switch";
            case MissingDeprecatedAnnotation:
                return "dep-ann";
            case RawTypeReference:
                return "rawtypes";
            case FallthroughCase:
                return "fallthrough";
            case OverridingMethodWithoutSuperInvocation:
                return "super";
            case 805306368:
                return "sync-override";
            case MethodCanBeStatic:
            case MethodCanBePotentiallyStatic:
                return "static-method";
            case UnclosedCloseable:
            case PotentiallyUnclosedCloseable:
            case ExplicitlyClosedAutoCloseable:
                return "resource";
            case UnlikelyCollectionMethodArgumentType:
            case UnlikelyEqualsArgumentType:
                return "unlikely-arg-type";
            case UsingTerminallyDeprecatedAPI:
            case 1115684864:
                return "removal";
            case APILeak:
                return "exports";
            case UnstableAutoModuleName:
                return IClasspathAttribute.MODULE;
            case PreviewFeatureUsed:
                return "preview";
            default:
                return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static IrritantSet warningTokenToIrritants(String str) {
        if (str != null && str.length() != 0) {
            switch (str.charAt(0)) {
                case 'a':
                    if (d.f25405q.equals(str)) {
                        return IrritantSet.ALL;
                    }
                    break;
                case 'b':
                    if ("boxing".equals(str)) {
                        return IrritantSet.BOXING;
                    }
                    break;
                case 'c':
                    if ("cast".equals(str)) {
                        return IrritantSet.CAST;
                    }
                    break;
                case 'd':
                    if ("deprecation".equals(str)) {
                        return IrritantSet.DEPRECATION;
                    }
                    if ("dep-ann".equals(str)) {
                        return IrritantSet.DEP_ANN;
                    }
                    break;
                case 'e':
                    if ("exports".equals(str)) {
                        return IrritantSet.API_LEAK;
                    }
                    break;
                case 'f':
                    if ("fallthrough".equals(str)) {
                        return IrritantSet.FALLTHROUGH;
                    }
                    if ("finally".equals(str)) {
                        return IrritantSet.FINALLY;
                    }
                    break;
                case 'h':
                    if ("hiding".equals(str)) {
                        return IrritantSet.HIDING;
                    }
                    break;
                case 'i':
                    if ("incomplete-switch".equals(str)) {
                        return IrritantSet.INCOMPLETE_SWITCH;
                    }
                    break;
                case 'j':
                    if ("javadoc".equals(str)) {
                        return IrritantSet.JAVADOC;
                    }
                    break;
                case 'm':
                    if (IClasspathAttribute.MODULE.equals(str)) {
                        return IrritantSet.MODULE;
                    }
                    break;
                case 'n':
                    if ("nls".equals(str)) {
                        return IrritantSet.NLS;
                    }
                    if ("null".equals(str)) {
                        return IrritantSet.NULL;
                    }
                    break;
                case 'p':
                    if ("preview".equals(str)) {
                        return IrritantSet.PREVIEW;
                    }
                    break;
                case 'r':
                    if ("rawtypes".equals(str)) {
                        return IrritantSet.RAW;
                    }
                    if ("resource".equals(str)) {
                        return IrritantSet.RESOURCE;
                    }
                    if ("restriction".equals(str)) {
                        return IrritantSet.RESTRICTION;
                    }
                    if ("removal".equals(str)) {
                        return IrritantSet.TERMINAL_DEPRECATION;
                    }
                    break;
                case 's':
                    if ("serial".equals(str)) {
                        return IrritantSet.SERIAL;
                    }
                    if ("static-access".equals(str)) {
                        return IrritantSet.STATIC_ACCESS;
                    }
                    if ("static-method".equals(str)) {
                        return IrritantSet.STATIC_METHOD;
                    }
                    if ("synthetic-access".equals(str)) {
                        return IrritantSet.SYNTHETIC_ACCESS;
                    }
                    if ("super".equals(str)) {
                        return IrritantSet.SUPER;
                    }
                    if ("sync-override".equals(str)) {
                        return IrritantSet.SYNCHRONIZED;
                    }
                    break;
                case 'u':
                    if ("unused".equals(str)) {
                        return IrritantSet.UNUSED;
                    }
                    if ("unchecked".equals(str)) {
                        return IrritantSet.UNCHECKED;
                    }
                    if ("unqualified-field-access".equals(str)) {
                        return IrritantSet.UNQUALIFIED_FIELD_ACCESS;
                    }
                    if ("unlikely-arg-type".equals(str)) {
                        return IrritantSet.UNLIKELY_ARGUMENT_TYPE;
                    }
                    break;
            }
        }
        return null;
    }

    public int getIgnoredIrritant(IrritantSet irritantSet) {
        int i10;
        int[] bits = irritantSet.getBits();
        for (int i11 = 0; i11 < 3; i11++) {
            int i12 = bits[i11];
            for (int i13 = 0; i13 < 29; i13++) {
                int i14 = (1 << i13) & i12;
                if (i14 > 0 && (i10 = i14 | (i11 << 29)) != 1073758208 && !this.warningThreshold.isSet(i10) && !this.errorThreshold.isSet(i10) && !this.infoThreshold.isSet(i10)) {
                    return i10;
                }
            }
        }
        return 0;
    }

    public Map<String, String> getMap() {
        HashMap hashMap = new HashMap(30);
        hashMap.put("org.eclipse.jdt.core.compiler.debug.localVariable", (this.produceDebugAttributes & 4) != 0 ? "generate" : "do not generate");
        hashMap.put("org.eclipse.jdt.core.compiler.debug.lineNumber", (this.produceDebugAttributes & 2) != 0 ? "generate" : "do not generate");
        hashMap.put("org.eclipse.jdt.core.compiler.debug.sourceFile", (this.produceDebugAttributes & 1) != 0 ? "generate" : "do not generate");
        hashMap.put("org.eclipse.jdt.core.compiler.codegen.methodParameters", this.produceMethodParameters ? "generate" : "do not generate");
        hashMap.put(OPTION_LambdaGenericSignature, this.generateGenericSignatureForLambdaExpressions ? "generate" : "do not generate");
        hashMap.put("org.eclipse.jdt.core.compiler.codegen.unusedLocal", this.preserveAllLocalVariables ? "preserve" : "optimize out");
        hashMap.put("org.eclipse.jdt.core.compiler.doc.comment.support", this.docCommentSupport ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.methodWithConstructorName", getSeverityString(1));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.overridingPackageDefaultMethod", getSeverityString(2));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.deprecation", getSeverityString(4));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.terminalDeprecation", getSeverityString(UsingTerminallyDeprecatedAPI));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.deprecationInDeprecatedCode", this.reportDeprecationInsideDeprecatedCode ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.deprecationWhenOverridingDeprecatedMethod", this.reportDeprecationWhenOverridingDeprecatedMethod ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.hiddenCatchBlock", getSeverityString(8));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unusedLocal", getSeverityString(16));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unusedParameter", getSeverityString(32));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unusedExceptionParameter", getSeverityString(UnusedExceptionParameter));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unusedImport", getSeverityString(1024));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.syntheticAccessEmulation", getSeverityString(128));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.noEffectAssignment", getSeverityString(8192));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.nonExternalizedStringLiteral", getSeverityString(256));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.noImplicitStringConversion", getSeverityString(64));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.staticAccessReceiver", getSeverityString(2048));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.indirectStaticAccess", getSeverityString(268435456));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.incompatibleNonInheritedInterfaceMethod", getSeverityString(16384));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unusedPrivateMember", getSeverityString(32768));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.localVariableHiding", getSeverityString(65536));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.fieldHiding", getSeverityString(131072));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.typeParameterHiding", getSeverityString(TypeHiding));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.possibleAccidentalBooleanAssignment", getSeverityString(262144));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.emptyStatement", getSeverityString(524288));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.assertIdentifier", getSeverityString(512));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.enumIdentifier", getSeverityString(EnumUsedAsAnIdentifier));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.undocumentedEmptyBlock", getSeverityString(134217728));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unnecessaryTypeCheck", getSeverityString(67108864));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unnecessaryElse", getSeverityString(UnnecessaryElse));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.autoboxing", getSeverityString(AutoBoxing));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.annotationSuperInterface", getSeverityString(AnnotationSuperInterface));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.incompleteEnumSwitch", getSeverityString(MissingEnumConstantCase));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.missingEnumCaseDespiteDefault", this.reportMissingEnumCaseDespiteDefault ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.missingDefaultCase", getSeverityString(MissingDefaultCase));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.invalidJavadoc", getSeverityString(33554432));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsVisibility", getVisibilityString(this.reportInvalidJavadocTagsVisibility));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.invalidJavadocTags", this.reportInvalidJavadocTags ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsDeprecatedRef", this.reportInvalidJavadocTagsDeprecatedRef ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsNotVisibleRef", this.reportInvalidJavadocTagsNotVisibleRef ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.missingJavadocTags", getSeverityString(2097152));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.missingJavadocTagsVisibility", getVisibilityString(this.reportMissingJavadocTagsVisibility));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.missingJavadocTagsOverriding", this.reportMissingJavadocTagsOverriding ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.missingJavadocTagsMethodTypeParameters", this.reportMissingJavadocTagsMethodTypeParameters ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.missingJavadocComments", getSeverityString(1048576));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.missingJavadocTagDescription", this.reportMissingJavadocTagDescription);
        hashMap.put("org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsVisibility", getVisibilityString(this.reportMissingJavadocCommentsVisibility));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsOverriding", this.reportMissingJavadocCommentsOverriding ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.finallyBlockNotCompletingNormally", getSeverityString(16777216));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownException", getSeverityString(8388608));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionWhenOverriding", this.reportUnusedDeclaredThrownExceptionWhenOverriding ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionIncludeDocCommentReference", this.reportUnusedDeclaredThrownExceptionIncludeDocCommentReference ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionExemptExceptionAndThrowable", this.reportUnusedDeclaredThrownExceptionExemptExceptionAndThrowable ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unqualifiedFieldAccess", getSeverityString(4194304));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unavoidableGenericTypeProblems", this.reportUnavoidableGenericTypeProblems ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.uncheckedTypeOperation", getSeverityString(UncheckedTypeOperation));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.rawTypeReference", getSeverityString(RawTypeReference));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.finalParameterBound", getSeverityString(FinalParameterBound));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.missingSerialVersion", getSeverityString(MissingSerialVersion));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.forbiddenReference", getSeverityString(536870944));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.discouragedReference", getSeverityString(DiscouragedReference));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.varargsArgumentNeedCast", getSeverityString(536870976));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotation", getSeverityString(MissingOverrideAnnotation));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotationForInterfaceMethodImplementation", this.reportMissingOverrideAnnotationForInterfaceMethodImplementation ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.missingDeprecatedAnnotation", getSeverityString(MissingDeprecatedAnnotation));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unusedLabel", getSeverityString(UnusedLabel));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unusedTypeArgumentsForMethodInvocation", getSeverityString(UnusedTypeArguments));
        hashMap.put("org.eclipse.jdt.core.compiler.compliance", versionFromJdkLevel(this.complianceLevel));
        hashMap.put("org.eclipse.jdt.core.compiler.release", "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.source", versionFromJdkLevel(this.sourceLevel));
        hashMap.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", versionFromJdkLevel(this.targetJDK));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.fatalOptionalError", this.treatOptionalErrorAsFatal ? "enabled" : "disabled");
        String str = this.defaultEncoding;
        if (str != null) {
            hashMap.put("org.eclipse.jdt.core.encoding", str);
        }
        char[][] cArr = this.taskTags;
        hashMap.put("org.eclipse.jdt.core.compiler.taskTags", cArr == null ? Util.EMPTY_STRING : new String(CharOperation.concatWith(cArr, IIndexConstants.PARAMETER_SEPARATOR)));
        char[][] cArr2 = this.taskPriorities;
        hashMap.put("org.eclipse.jdt.core.compiler.taskPriorities", cArr2 == null ? Util.EMPTY_STRING : new String(CharOperation.concatWith(cArr2, IIndexConstants.PARAMETER_SEPARATOR)));
        hashMap.put("org.eclipse.jdt.core.compiler.taskCaseSensitive", this.isTaskCaseSensitive ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unusedParameterWhenImplementingAbstract", this.reportUnusedParameterWhenImplementingAbstract ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unusedParameterWhenOverridingConcrete", this.reportUnusedParameterWhenOverridingConcrete ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unusedParameterIncludeDocCommentReference", this.reportUnusedParameterIncludeDocCommentReference ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.specialParameterHidingField", this.reportSpecialParameterHidingField ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.maxProblemPerUnit", String.valueOf(this.maxProblemsPerUnit));
        hashMap.put("org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode", this.inlineJsrBytecode ? "enabled" : "disabled");
        hashMap.put(OPTION_ShareCommonFinallyBlocks, this.shareCommonFinallyBlocks ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.nullReference", getSeverityString(NullReference));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.potentialNullReference", getSeverityString(PotentialNullReference));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.redundantNullCheck", getSeverityString(RedundantNullCheck));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.suppressWarnings", this.suppressWarnings ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.suppressOptionalErrors", this.suppressOptionalErrors ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unhandledWarningToken", getSeverityString(UnhandledWarningToken));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unusedWarningToken", getSeverityString(UnusedWarningToken));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.parameterAssignment", getSeverityString(ParameterAssignment));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.fallthroughCase", getSeverityString(FallthroughCase));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.overridingMethodWithoutSuperInvocation", getSeverityString(OverridingMethodWithoutSuperInvocation));
        hashMap.put(OPTION_GenerateClassFiles, this.generateClassFiles ? "enabled" : "disabled");
        hashMap.put(OPTION_Process_Annotations, this.processAnnotations ? "enabled" : "disabled");
        hashMap.put(OPTION_Store_Annotations, this.storeAnnotations ? "enabled" : "disabled");
        hashMap.put(OPTION_EmulateJavacBug8031744, this.emulateJavacBug8031744 ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.redundantSuperinterface", getSeverityString(RedundantSuperinterface));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.comparingIdentical", getSeverityString(ComparingIdentical));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.missingSynchronizedOnInheritedMethod", getSeverityString(805306368));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.missingHashCodeMethod", getSeverityString(ShouldImplementHashcode));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.deadCode", getSeverityString(DeadCode));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.deadCodeInTrivialIfStatement", this.reportDeadCodeInTrivialIfStatement ? "enabled" : "disabled");
        hashMap.put(OPTION_ReportTasks, getSeverityString(Tasks));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unusedObjectAllocation", getSeverityString(UnusedObjectAllocation));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.includeNullInfoFromAsserts", this.includeNullInfoFromAsserts ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.reportMethodCanBeStatic", getSeverityString(MethodCanBeStatic));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.reportMethodCanBePotentiallyStatic", getSeverityString(MethodCanBePotentiallyStatic));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.redundantSpecificationOfTypeArguments", getSeverityString(RedundantSpecificationOfTypeArguments));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unclosedCloseable", getSeverityString(UnclosedCloseable));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.potentiallyUnclosedCloseable", getSeverityString(PotentiallyUnclosedCloseable));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.explicitlyClosedAutoCloseable", getSeverityString(ExplicitlyClosedAutoCloseable));
        hashMap.put("org.eclipse.jdt.core.compiler.annotation.nullanalysis", this.isAnnotationBasedNullAnalysisEnabled ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.nullSpecViolation", getSeverityString(NullSpecViolation));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.nullAnnotationInferenceConflict", getSeverityString(NullAnnotationInferenceConflict));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.nullUncheckedConversion", getSeverityString(NullUncheckedConversion));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.redundantNullAnnotation", getSeverityString(RedundantNullAnnotation));
        hashMap.put("org.eclipse.jdt.core.compiler.annotation.nullable", String.valueOf(CharOperation.concatWith(this.nullableAnnotationName, '.')));
        hashMap.put("org.eclipse.jdt.core.compiler.annotation.nonnull", String.valueOf(CharOperation.concatWith(this.nonNullAnnotationName, '.')));
        hashMap.put("org.eclipse.jdt.core.compiler.annotation.nonnullbydefault", String.valueOf(CharOperation.concatWith(this.nonNullByDefaultAnnotationName, '.')));
        hashMap.put("org.eclipse.jdt.core.compiler.annotation.nullable.secondary", nameListToString(this.nullableAnnotationSecondaryNames));
        hashMap.put("org.eclipse.jdt.core.compiler.annotation.nonnull.secondary", nameListToString(this.nonNullAnnotationSecondaryNames));
        hashMap.put("org.eclipse.jdt.core.compiler.annotation.nonnullbydefault.secondary", nameListToString(this.nonNullByDefaultAnnotationSecondaryNames));
        hashMap.put("org.eclipse.jdt.core.compiler.annotation.missingNonNullByDefaultAnnotation", getSeverityString(MissingNonNullByDefaultAnnotation));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unusedTypeParameter", getSeverityString(UnusedTypeParameter));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.syntacticNullAnalysisForFields", this.enableSyntacticNullAnalysisForFields ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.annotation.inheritNullAnnotations", this.inheritNullAnnotations ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.nonnullParameterAnnotationDropped", getSeverityString(NonnullParameterAnnotationDropped));
        hashMap.put(OPTION_ReportUninternedIdentityComparison, this.complainOnUninternedIdentityComparison ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.pessimisticNullAnalysisForFreeTypeVariables", getSeverityString(PessimisticNullAnalysisForFreeTypeVariables));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.nonnullTypeVariableFromLegacyInvocation", getSeverityString(NonNullTypeVariableFromLegacyInvocation));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unlikelyCollectionMethodArgumentType", getSeverityString(UnlikelyCollectionMethodArgumentType));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unlikelyCollectionMethodArgumentTypeStrict", this.reportUnlikelyCollectionMethodArgumentTypeStrict ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unlikelyEqualsArgumentType", getSeverityString(UnlikelyEqualsArgumentType));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.APILeak", getSeverityString(APILeak));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.unstableAutoModuleName", getSeverityString(UnstableAutoModuleName));
        hashMap.put("org.eclipse.jdt.core.compiler.problem.enablePreviewFeatures", this.enablePreviewFeatures ? "enabled" : "disabled");
        hashMap.put("org.eclipse.jdt.core.compiler.problem.reportPreviewFeatures", getSeverityString(PreviewFeatureUsed));
        return hashMap;
    }

    public int getSeverity(int i10) {
        if (this.errorThreshold.isSet(i10)) {
            return ((i10 & (-503316480)) != 570425344 && this.treatOptionalErrorAsFatal) ? 161 : 33;
        }
        if (this.warningThreshold.isSet(i10)) {
            return 32;
        }
        return this.infoThreshold.isSet(i10) ? 1056 : 256;
    }

    public String getSeverityString(int i10) {
        return this.errorThreshold.isSet(i10) ? "error" : this.warningThreshold.isSet(i10) ? "warning" : this.infoThreshold.isSet(i10) ? "info" : "ignore";
    }

    public String getVisibilityString(int i10) {
        int i11 = i10 & 7;
        return i11 != 1 ? i11 != 2 ? i11 != 4 ? "default" : "protected" : "private" : "public";
    }

    public boolean isAnyEnabled(IrritantSet irritantSet) {
        return this.warningThreshold.isAnySet(irritantSet) || this.errorThreshold.isAnySet(irritantSet) || this.infoThreshold.isAnySet(irritantSet);
    }

    public String nameListToString(String[] strArr) {
        if (strArr == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (i10 > 0) {
                sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
            sb2.append(strArr[i10]);
        }
        return sb2.toString();
    }

    public void resetDefaults() {
        this.errorThreshold = new IrritantSet(IrritantSet.COMPILER_DEFAULT_ERRORS);
        this.warningThreshold = new IrritantSet(IrritantSet.COMPILER_DEFAULT_WARNINGS);
        this.infoThreshold = new IrritantSet(IrritantSet.COMPILER_DEFAULT_INFOS);
        this.produceDebugAttributes = 3;
        this.originalComplianceLevel = ClassFileConstants.JDK1_4;
        this.complianceLevel = ClassFileConstants.JDK1_4;
        this.originalSourceLevel = ClassFileConstants.JDK1_3;
        this.sourceLevel = ClassFileConstants.JDK1_3;
        this.targetJDK = ClassFileConstants.JDK1_2;
        this.defaultEncoding = null;
        this.verbose = Compiler.DEBUG;
        this.produceReferenceInfo = false;
        this.preserveAllLocalVariables = false;
        this.produceMethodParameters = false;
        this.parseLiteralExpressionsAsConstants = true;
        this.maxProblemsPerUnit = 100;
        this.taskTags = null;
        this.taskPriorities = null;
        this.isTaskCaseSensitive = true;
        this.reportDeprecationInsideDeprecatedCode = false;
        this.reportDeprecationWhenOverridingDeprecatedMethod = false;
        this.reportUnusedParameterWhenImplementingAbstract = false;
        this.reportUnusedParameterWhenOverridingConcrete = false;
        this.reportUnusedParameterIncludeDocCommentReference = true;
        this.reportUnusedDeclaredThrownExceptionWhenOverriding = false;
        this.reportUnusedDeclaredThrownExceptionIncludeDocCommentReference = true;
        this.reportUnusedDeclaredThrownExceptionExemptExceptionAndThrowable = true;
        this.reportSpecialParameterHidingField = false;
        this.reportUnavoidableGenericTypeProblems = true;
        this.reportInvalidJavadocTagsVisibility = 1;
        this.reportInvalidJavadocTags = false;
        this.reportInvalidJavadocTagsDeprecatedRef = false;
        this.reportInvalidJavadocTagsNotVisibleRef = false;
        this.reportMissingJavadocTagDescription = "return_tag";
        this.reportMissingJavadocTagsVisibility = 1;
        this.reportMissingJavadocTagsOverriding = false;
        this.reportMissingJavadocTagsMethodTypeParameters = false;
        this.reportMissingJavadocCommentsVisibility = 1;
        this.reportMissingJavadocCommentsOverriding = false;
        this.inlineJsrBytecode = false;
        this.shareCommonFinallyBlocks = false;
        this.docCommentSupport = false;
        this.suppressWarnings = true;
        this.suppressOptionalErrors = false;
        this.treatOptionalErrorAsFatal = false;
        this.performMethodsFullRecovery = true;
        this.performStatementsRecovery = true;
        this.storeAnnotations = false;
        this.generateClassFiles = true;
        this.processAnnotations = false;
        this.reportMissingOverrideAnnotationForInterfaceMethodImplementation = true;
        this.reportDeadCodeInTrivialIfStatement = false;
        this.ignoreMethodBodies = false;
        this.ignoreSourceFolderWarningOption = false;
        this.includeNullInfoFromAsserts = false;
        this.isAnnotationBasedNullAnalysisEnabled = false;
        this.nullableAnnotationName = DEFAULT_NULLABLE_ANNOTATION_NAME;
        this.nonNullAnnotationName = DEFAULT_NONNULL_ANNOTATION_NAME;
        this.nonNullByDefaultAnnotationName = DEFAULT_NONNULLBYDEFAULT_ANNOTATION_NAME;
        this.intendedDefaultNonNullness = 0L;
        this.enableSyntacticNullAnalysisForFields = false;
        this.inheritNullAnnotations = false;
        this.analyseResourceLeaks = true;
        this.reportMissingEnumCaseDespiteDefault = false;
        this.complainOnUninternedIdentityComparison = false;
        this.enablePreviewFeatures = false;
        this.enableJdtDebugCompileMode = false;
    }

    public void set(Map<String, String> map) {
        String str = map.get("org.eclipse.jdt.core.compiler.debug.localVariable");
        if (str != null) {
            if ("generate".equals(str)) {
                this.produceDebugAttributes |= 4;
            } else if ("do not generate".equals(str)) {
                this.produceDebugAttributes &= -5;
            }
        }
        String str2 = map.get("org.eclipse.jdt.core.compiler.debug.lineNumber");
        if (str2 != null) {
            if ("generate".equals(str2)) {
                this.produceDebugAttributes |= 2;
            } else if ("do not generate".equals(str2)) {
                this.produceDebugAttributes &= -3;
            }
        }
        String str3 = map.get("org.eclipse.jdt.core.compiler.debug.sourceFile");
        if (str3 != null) {
            if ("generate".equals(str3)) {
                this.produceDebugAttributes |= 1;
            } else if ("do not generate".equals(str3)) {
                this.produceDebugAttributes &= -2;
            }
        }
        String str4 = map.get("org.eclipse.jdt.core.compiler.codegen.unusedLocal");
        if (str4 != null) {
            if ("preserve".equals(str4)) {
                this.preserveAllLocalVariables = true;
            } else if ("optimize out".equals(str4)) {
                this.preserveAllLocalVariables = false;
            }
        }
        String str5 = map.get("org.eclipse.jdt.core.compiler.problem.deprecationInDeprecatedCode");
        if (str5 != null) {
            if ("enabled".equals(str5)) {
                this.reportDeprecationInsideDeprecatedCode = true;
            } else if ("disabled".equals(str5)) {
                this.reportDeprecationInsideDeprecatedCode = false;
            }
        }
        String str6 = map.get("org.eclipse.jdt.core.compiler.problem.deprecationWhenOverridingDeprecatedMethod");
        if (str6 != null) {
            if ("enabled".equals(str6)) {
                this.reportDeprecationWhenOverridingDeprecatedMethod = true;
            } else if ("disabled".equals(str6)) {
                this.reportDeprecationWhenOverridingDeprecatedMethod = false;
            }
        }
        String str7 = map.get("org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionWhenOverriding");
        if (str7 != null) {
            if ("enabled".equals(str7)) {
                this.reportUnusedDeclaredThrownExceptionWhenOverriding = true;
            } else if ("disabled".equals(str7)) {
                this.reportUnusedDeclaredThrownExceptionWhenOverriding = false;
            }
        }
        String str8 = map.get("org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionIncludeDocCommentReference");
        if (str8 != null) {
            if ("enabled".equals(str8)) {
                this.reportUnusedDeclaredThrownExceptionIncludeDocCommentReference = true;
            } else if ("disabled".equals(str8)) {
                this.reportUnusedDeclaredThrownExceptionIncludeDocCommentReference = false;
            }
        }
        String str9 = map.get("org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionExemptExceptionAndThrowable");
        if (str9 != null) {
            if ("enabled".equals(str9)) {
                this.reportUnusedDeclaredThrownExceptionExemptExceptionAndThrowable = true;
            } else if ("disabled".equals(str9)) {
                this.reportUnusedDeclaredThrownExceptionExemptExceptionAndThrowable = false;
            }
        }
        String str10 = map.get("org.eclipse.jdt.core.compiler.compliance");
        if (str10 != null) {
            long versionToJdkLevel = versionToJdkLevel(str10);
            if (versionToJdkLevel != 0) {
                this.originalComplianceLevel = versionToJdkLevel;
                this.complianceLevel = versionToJdkLevel;
            }
        }
        String str11 = map.get("org.eclipse.jdt.core.compiler.source");
        if (str11 != null) {
            long versionToJdkLevel2 = versionToJdkLevel(str11);
            if (versionToJdkLevel2 != 0) {
                this.originalSourceLevel = versionToJdkLevel2;
                this.sourceLevel = versionToJdkLevel2;
            }
        }
        String str12 = map.get("org.eclipse.jdt.core.compiler.codegen.targetPlatform");
        if (str12 != null) {
            long versionToJdkLevel3 = versionToJdkLevel(str12);
            if (versionToJdkLevel3 != 0) {
                if (this.enablePreviewFeatures) {
                    versionToJdkLevel3 |= b.f23266s;
                }
                this.targetJDK = versionToJdkLevel3;
            }
            if (this.targetJDK >= ClassFileConstants.JDK1_5) {
                this.inlineJsrBytecode = true;
            }
        }
        String str13 = map.get("org.eclipse.jdt.core.encoding");
        if (str13 != null) {
            this.defaultEncoding = null;
            if (str13.length() > 0) {
                try {
                    new InputStreamReader(new ByteArrayInputStream(new byte[0]), str13);
                    this.defaultEncoding = str13;
                } catch (UnsupportedEncodingException unused) {
                }
            }
        }
        String str14 = map.get("org.eclipse.jdt.core.compiler.problem.unusedParameterWhenImplementingAbstract");
        if (str14 != null) {
            if ("enabled".equals(str14)) {
                this.reportUnusedParameterWhenImplementingAbstract = true;
            } else if ("disabled".equals(str14)) {
                this.reportUnusedParameterWhenImplementingAbstract = false;
            }
        }
        String str15 = map.get("org.eclipse.jdt.core.compiler.problem.unusedParameterWhenOverridingConcrete");
        if (str15 != null) {
            if ("enabled".equals(str15)) {
                this.reportUnusedParameterWhenOverridingConcrete = true;
            } else if ("disabled".equals(str15)) {
                this.reportUnusedParameterWhenOverridingConcrete = false;
            }
        }
        String str16 = map.get("org.eclipse.jdt.core.compiler.problem.unusedParameterIncludeDocCommentReference");
        if (str16 != null) {
            if ("enabled".equals(str16)) {
                this.reportUnusedParameterIncludeDocCommentReference = true;
            } else if ("disabled".equals(str16)) {
                this.reportUnusedParameterIncludeDocCommentReference = false;
            }
        }
        String str17 = map.get("org.eclipse.jdt.core.compiler.problem.specialParameterHidingField");
        if (str17 != null) {
            if ("enabled".equals(str17)) {
                this.reportSpecialParameterHidingField = true;
            } else if ("disabled".equals(str17)) {
                this.reportSpecialParameterHidingField = false;
            }
        }
        String str18 = map.get("org.eclipse.jdt.core.compiler.problem.unavoidableGenericTypeProblems");
        if (str18 != null) {
            if ("enabled".equals(str18)) {
                this.reportUnavoidableGenericTypeProblems = true;
            } else if ("disabled".equals(str18)) {
                this.reportUnavoidableGenericTypeProblems = false;
            }
        }
        String str19 = map.get("org.eclipse.jdt.core.compiler.problem.deadCodeInTrivialIfStatement");
        if (str19 != null) {
            if ("enabled".equals(str19)) {
                this.reportDeadCodeInTrivialIfStatement = true;
            } else if ("disabled".equals(str19)) {
                this.reportDeadCodeInTrivialIfStatement = false;
            }
        }
        String str20 = map.get("org.eclipse.jdt.core.compiler.maxProblemPerUnit");
        if (str20 != null) {
            try {
                int parseInt = Integer.parseInt(str20);
                if (parseInt >= 0) {
                    this.maxProblemsPerUnit = parseInt;
                }
            } catch (NumberFormatException unused2) {
            }
        }
        String str21 = map.get("org.eclipse.jdt.core.compiler.taskTags");
        if (str21 != null) {
            if (str21.length() == 0) {
                this.taskTags = null;
            } else {
                this.taskTags = CharOperation.splitAndTrimOn(IIndexConstants.PARAMETER_SEPARATOR, str21.toCharArray());
            }
        }
        String str22 = map.get("org.eclipse.jdt.core.compiler.taskPriorities");
        if (str22 != null) {
            if (str22.length() == 0) {
                this.taskPriorities = null;
            } else {
                this.taskPriorities = CharOperation.splitAndTrimOn(IIndexConstants.PARAMETER_SEPARATOR, str22.toCharArray());
            }
        }
        String str23 = map.get("org.eclipse.jdt.core.compiler.taskCaseSensitive");
        if (str23 != null) {
            if ("enabled".equals(str23)) {
                this.isTaskCaseSensitive = true;
            } else if ("disabled".equals(str23)) {
                this.isTaskCaseSensitive = false;
            }
        }
        String str24 = map.get("org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode");
        if (str24 != null && this.targetJDK < ClassFileConstants.JDK1_5) {
            if ("enabled".equals(str24)) {
                this.inlineJsrBytecode = true;
            } else if ("disabled".equals(str24)) {
                this.inlineJsrBytecode = false;
            }
        }
        String str25 = map.get(OPTION_ShareCommonFinallyBlocks);
        if (str25 != null) {
            if ("enabled".equals(str25)) {
                this.shareCommonFinallyBlocks = true;
            } else if ("disabled".equals(str25)) {
                this.shareCommonFinallyBlocks = false;
            }
        }
        String str26 = map.get("org.eclipse.jdt.core.compiler.codegen.methodParameters");
        if (str26 != null) {
            if ("generate".equals(str26)) {
                this.produceMethodParameters = true;
            } else if ("do not generate".equals(str26)) {
                this.produceMethodParameters = false;
            }
        }
        String str27 = map.get(OPTION_LambdaGenericSignature);
        if (str27 != null) {
            if ("generate".equals(str27)) {
                this.generateGenericSignatureForLambdaExpressions = true;
            } else if ("do not generate".equals(str27)) {
                this.generateGenericSignatureForLambdaExpressions = false;
            }
        }
        String str28 = map.get("org.eclipse.jdt.core.compiler.problem.suppressWarnings");
        if (str28 != null) {
            if ("enabled".equals(str28)) {
                this.suppressWarnings = true;
            } else if ("disabled".equals(str28)) {
                this.suppressWarnings = false;
            }
        }
        String str29 = map.get("org.eclipse.jdt.core.compiler.problem.suppressOptionalErrors");
        if (str29 != null) {
            if ("enabled".equals(str29)) {
                this.suppressOptionalErrors = true;
            } else if ("disabled".equals(str29)) {
                this.suppressOptionalErrors = false;
            }
        }
        String str30 = map.get("org.eclipse.jdt.core.compiler.problem.fatalOptionalError");
        if (str30 != null) {
            if ("enabled".equals(str30)) {
                this.treatOptionalErrorAsFatal = true;
            } else if ("disabled".equals(str30)) {
                this.treatOptionalErrorAsFatal = false;
            }
        }
        String str31 = map.get("org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotationForInterfaceMethodImplementation");
        if (str31 != null) {
            if ("enabled".equals(str31)) {
                this.reportMissingOverrideAnnotationForInterfaceMethodImplementation = true;
            } else if ("disabled".equals(str31)) {
                this.reportMissingOverrideAnnotationForInterfaceMethodImplementation = false;
            }
        }
        String str32 = map.get("org.eclipse.jdt.core.compiler.problem.includeNullInfoFromAsserts");
        if (str32 != null) {
            if ("enabled".equals(str32)) {
                this.includeNullInfoFromAsserts = true;
            } else if ("disabled".equals(str32)) {
                this.includeNullInfoFromAsserts = false;
            }
        }
        String str33 = map.get("org.eclipse.jdt.core.compiler.problem.methodWithConstructorName");
        if (str33 != null) {
            updateSeverity(1, str33);
        }
        String str34 = map.get("org.eclipse.jdt.core.compiler.problem.overridingPackageDefaultMethod");
        if (str34 != null) {
            updateSeverity(2, str34);
        }
        String str35 = map.get("org.eclipse.jdt.core.compiler.problem.deprecation");
        if (str35 != null) {
            updateSeverity(4, str35);
        }
        String str36 = map.get("org.eclipse.jdt.core.compiler.problem.terminalDeprecation");
        if (str36 != null) {
            updateSeverity(UsingTerminallyDeprecatedAPI, str36);
        }
        String str37 = map.get("org.eclipse.jdt.core.compiler.problem.hiddenCatchBlock");
        if (str37 != null) {
            updateSeverity(8, str37);
        }
        String str38 = map.get("org.eclipse.jdt.core.compiler.problem.unusedLocal");
        if (str38 != null) {
            updateSeverity(16, str38);
        }
        String str39 = map.get("org.eclipse.jdt.core.compiler.problem.unusedParameter");
        if (str39 != null) {
            updateSeverity(32, str39);
        }
        String str40 = map.get("org.eclipse.jdt.core.compiler.problem.unusedExceptionParameter");
        if (str40 != null) {
            updateSeverity(UnusedExceptionParameter, str40);
        }
        String str41 = map.get("org.eclipse.jdt.core.compiler.problem.unusedImport");
        if (str41 != null) {
            updateSeverity(1024, str41);
        }
        String str42 = map.get("org.eclipse.jdt.core.compiler.problem.unusedPrivateMember");
        if (str42 != null) {
            updateSeverity(32768, str42);
        }
        String str43 = map.get("org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownException");
        if (str43 != null) {
            updateSeverity(8388608, str43);
        }
        String str44 = map.get("org.eclipse.jdt.core.compiler.problem.noImplicitStringConversion");
        if (str44 != null) {
            updateSeverity(64, str44);
        }
        String str45 = map.get("org.eclipse.jdt.core.compiler.problem.syntheticAccessEmulation");
        if (str45 != null) {
            updateSeverity(128, str45);
        }
        String str46 = map.get("org.eclipse.jdt.core.compiler.problem.localVariableHiding");
        if (str46 != null) {
            updateSeverity(65536, str46);
        }
        String str47 = map.get("org.eclipse.jdt.core.compiler.problem.fieldHiding");
        if (str47 != null) {
            updateSeverity(131072, str47);
        }
        String str48 = map.get("org.eclipse.jdt.core.compiler.problem.typeParameterHiding");
        if (str48 != null) {
            updateSeverity(TypeHiding, str48);
        }
        String str49 = map.get("org.eclipse.jdt.core.compiler.problem.possibleAccidentalBooleanAssignment");
        if (str49 != null) {
            updateSeverity(262144, str49);
        }
        String str50 = map.get("org.eclipse.jdt.core.compiler.problem.emptyStatement");
        if (str50 != null) {
            updateSeverity(524288, str50);
        }
        String str51 = map.get("org.eclipse.jdt.core.compiler.problem.nonExternalizedStringLiteral");
        if (str51 != null) {
            updateSeverity(256, str51);
        }
        String str52 = map.get("org.eclipse.jdt.core.compiler.problem.assertIdentifier");
        if (str52 != null) {
            updateSeverity(512, str52);
        }
        String str53 = map.get("org.eclipse.jdt.core.compiler.problem.enumIdentifier");
        if (str53 != null) {
            updateSeverity(EnumUsedAsAnIdentifier, str53);
        }
        String str54 = map.get("org.eclipse.jdt.core.compiler.problem.staticAccessReceiver");
        if (str54 != null) {
            updateSeverity(2048, str54);
        }
        String str55 = map.get("org.eclipse.jdt.core.compiler.problem.indirectStaticAccess");
        if (str55 != null) {
            updateSeverity(268435456, str55);
        }
        String str56 = map.get("org.eclipse.jdt.core.compiler.problem.incompatibleNonInheritedInterfaceMethod");
        if (str56 != null) {
            updateSeverity(16384, str56);
        }
        String str57 = map.get("org.eclipse.jdt.core.compiler.problem.undocumentedEmptyBlock");
        if (str57 != null) {
            updateSeverity(134217728, str57);
        }
        String str58 = map.get("org.eclipse.jdt.core.compiler.problem.unnecessaryTypeCheck");
        if (str58 != null) {
            updateSeverity(67108864, str58);
        }
        String str59 = map.get("org.eclipse.jdt.core.compiler.problem.unnecessaryElse");
        if (str59 != null) {
            updateSeverity(UnnecessaryElse, str59);
        }
        String str60 = map.get("org.eclipse.jdt.core.compiler.problem.finallyBlockNotCompletingNormally");
        if (str60 != null) {
            updateSeverity(16777216, str60);
        }
        String str61 = map.get("org.eclipse.jdt.core.compiler.problem.unqualifiedFieldAccess");
        if (str61 != null) {
            updateSeverity(4194304, str61);
        }
        String str62 = map.get("org.eclipse.jdt.core.compiler.problem.noEffectAssignment");
        if (str62 != null) {
            updateSeverity(8192, str62);
        }
        String str63 = map.get("org.eclipse.jdt.core.compiler.problem.uncheckedTypeOperation");
        if (str63 != null) {
            updateSeverity(UncheckedTypeOperation, str63);
        }
        String str64 = map.get("org.eclipse.jdt.core.compiler.problem.rawTypeReference");
        if (str64 != null) {
            updateSeverity(RawTypeReference, str64);
        }
        String str65 = map.get("org.eclipse.jdt.core.compiler.problem.finalParameterBound");
        if (str65 != null) {
            updateSeverity(FinalParameterBound, str65);
        }
        String str66 = map.get("org.eclipse.jdt.core.compiler.problem.missingSerialVersion");
        if (str66 != null) {
            updateSeverity(MissingSerialVersion, str66);
        }
        String str67 = map.get("org.eclipse.jdt.core.compiler.problem.forbiddenReference");
        if (str67 != null) {
            updateSeverity(536870944, str67);
        }
        String str68 = map.get("org.eclipse.jdt.core.compiler.problem.discouragedReference");
        if (str68 != null) {
            updateSeverity(DiscouragedReference, str68);
        }
        String str69 = map.get("org.eclipse.jdt.core.compiler.problem.varargsArgumentNeedCast");
        if (str69 != null) {
            updateSeverity(536870976, str69);
        }
        String str70 = map.get("org.eclipse.jdt.core.compiler.problem.nullReference");
        if (str70 != null) {
            updateSeverity(NullReference, str70);
        }
        String str71 = map.get("org.eclipse.jdt.core.compiler.problem.potentialNullReference");
        if (str71 != null) {
            updateSeverity(PotentialNullReference, str71);
        }
        String str72 = map.get("org.eclipse.jdt.core.compiler.problem.redundantNullCheck");
        if (str72 != null) {
            updateSeverity(RedundantNullCheck, str72);
        }
        String str73 = map.get("org.eclipse.jdt.core.compiler.problem.autoboxing");
        if (str73 != null) {
            updateSeverity(AutoBoxing, str73);
        }
        String str74 = map.get("org.eclipse.jdt.core.compiler.problem.annotationSuperInterface");
        if (str74 != null) {
            updateSeverity(AnnotationSuperInterface, str74);
        }
        String str75 = map.get("org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotation");
        if (str75 != null) {
            updateSeverity(MissingOverrideAnnotation, str75);
        }
        String str76 = map.get("org.eclipse.jdt.core.compiler.problem.missingDeprecatedAnnotation");
        if (str76 != null) {
            updateSeverity(MissingDeprecatedAnnotation, str76);
        }
        String str77 = map.get("org.eclipse.jdt.core.compiler.problem.incompleteEnumSwitch");
        if (str77 != null) {
            updateSeverity(MissingEnumConstantCase, str77);
        }
        String str78 = map.get("org.eclipse.jdt.core.compiler.problem.missingEnumCaseDespiteDefault");
        if (str78 != null) {
            if ("enabled".equals(str78)) {
                this.reportMissingEnumCaseDespiteDefault = true;
            } else if ("disabled".equals(str78)) {
                this.reportMissingEnumCaseDespiteDefault = false;
            }
        }
        String str79 = map.get("org.eclipse.jdt.core.compiler.problem.missingDefaultCase");
        if (str79 != null) {
            updateSeverity(MissingDefaultCase, str79);
        }
        String str80 = map.get("org.eclipse.jdt.core.compiler.problem.unhandledWarningToken");
        if (str80 != null) {
            updateSeverity(UnhandledWarningToken, str80);
        }
        String str81 = map.get("org.eclipse.jdt.core.compiler.problem.unusedWarningToken");
        if (str81 != null) {
            updateSeverity(UnusedWarningToken, str81);
        }
        String str82 = map.get("org.eclipse.jdt.core.compiler.problem.unusedLabel");
        if (str82 != null) {
            updateSeverity(UnusedLabel, str82);
        }
        String str83 = map.get("org.eclipse.jdt.core.compiler.problem.parameterAssignment");
        if (str83 != null) {
            updateSeverity(ParameterAssignment, str83);
        }
        String str84 = map.get("org.eclipse.jdt.core.compiler.problem.fallthroughCase");
        if (str84 != null) {
            updateSeverity(FallthroughCase, str84);
        }
        String str85 = map.get("org.eclipse.jdt.core.compiler.problem.overridingMethodWithoutSuperInvocation");
        if (str85 != null) {
            updateSeverity(OverridingMethodWithoutSuperInvocation, str85);
        }
        String str86 = map.get("org.eclipse.jdt.core.compiler.problem.unusedTypeArgumentsForMethodInvocation");
        if (str86 != null) {
            updateSeverity(UnusedTypeArguments, str86);
        }
        String str87 = map.get("org.eclipse.jdt.core.compiler.problem.redundantSuperinterface");
        if (str87 != null) {
            updateSeverity(RedundantSuperinterface, str87);
        }
        String str88 = map.get("org.eclipse.jdt.core.compiler.problem.comparingIdentical");
        if (str88 != null) {
            updateSeverity(ComparingIdentical, str88);
        }
        String str89 = map.get("org.eclipse.jdt.core.compiler.problem.missingSynchronizedOnInheritedMethod");
        if (str89 != null) {
            updateSeverity(805306368, str89);
        }
        String str90 = map.get("org.eclipse.jdt.core.compiler.problem.missingHashCodeMethod");
        if (str90 != null) {
            updateSeverity(ShouldImplementHashcode, str90);
        }
        String str91 = map.get("org.eclipse.jdt.core.compiler.problem.deadCode");
        if (str91 != null) {
            updateSeverity(DeadCode, str91);
        }
        String str92 = map.get(OPTION_ReportTasks);
        if (str92 != null) {
            updateSeverity(Tasks, str92);
        }
        String str93 = map.get("org.eclipse.jdt.core.compiler.problem.unusedObjectAllocation");
        if (str93 != null) {
            updateSeverity(UnusedObjectAllocation, str93);
        }
        String str94 = map.get("org.eclipse.jdt.core.compiler.problem.reportMethodCanBeStatic");
        if (str94 != null) {
            updateSeverity(MethodCanBeStatic, str94);
        }
        String str95 = map.get("org.eclipse.jdt.core.compiler.problem.reportMethodCanBePotentiallyStatic");
        if (str95 != null) {
            updateSeverity(MethodCanBePotentiallyStatic, str95);
        }
        String str96 = map.get("org.eclipse.jdt.core.compiler.problem.redundantSpecificationOfTypeArguments");
        if (str96 != null) {
            updateSeverity(RedundantSpecificationOfTypeArguments, str96);
        }
        String str97 = map.get("org.eclipse.jdt.core.compiler.problem.unclosedCloseable");
        if (str97 != null) {
            updateSeverity(UnclosedCloseable, str97);
        }
        String str98 = map.get("org.eclipse.jdt.core.compiler.problem.potentiallyUnclosedCloseable");
        if (str98 != null) {
            updateSeverity(PotentiallyUnclosedCloseable, str98);
        }
        String str99 = map.get("org.eclipse.jdt.core.compiler.problem.explicitlyClosedAutoCloseable");
        if (str99 != null) {
            updateSeverity(ExplicitlyClosedAutoCloseable, str99);
        }
        String str100 = map.get("org.eclipse.jdt.core.compiler.problem.unusedTypeParameter");
        if (str100 != null) {
            updateSeverity(UnusedTypeParameter, str100);
        }
        String str101 = map.get("org.eclipse.jdt.core.compiler.problem.unlikelyCollectionMethodArgumentType");
        if (str101 != null) {
            updateSeverity(UnlikelyCollectionMethodArgumentType, str101);
        }
        String str102 = map.get("org.eclipse.jdt.core.compiler.problem.unlikelyCollectionMethodArgumentTypeStrict");
        if (str102 != null) {
            this.reportUnlikelyCollectionMethodArgumentTypeStrict = "enabled".equals(str102);
        }
        String str103 = map.get("org.eclipse.jdt.core.compiler.problem.unlikelyEqualsArgumentType");
        if (str103 != null) {
            updateSeverity(UnlikelyEqualsArgumentType, str103);
        }
        if (getSeverity(UnclosedCloseable) == 256 && getSeverity(PotentiallyUnclosedCloseable) == 256 && getSeverity(ExplicitlyClosedAutoCloseable) == 256) {
            this.analyseResourceLeaks = false;
        } else {
            this.analyseResourceLeaks = true;
        }
        String str104 = map.get("org.eclipse.jdt.core.compiler.problem.APILeak");
        if (str104 != null) {
            updateSeverity(APILeak, str104);
        }
        String str105 = map.get("org.eclipse.jdt.core.compiler.problem.unstableAutoModuleName");
        if (str105 != null) {
            updateSeverity(UnstableAutoModuleName, str105);
        }
        String str106 = map.get("org.eclipse.jdt.core.compiler.annotation.nullanalysis");
        if (str106 != null) {
            this.isAnnotationBasedNullAnalysisEnabled = "enabled".equals(str106);
        }
        if (this.isAnnotationBasedNullAnalysisEnabled) {
            this.storeAnnotations = true;
            String str107 = map.get("org.eclipse.jdt.core.compiler.problem.nullSpecViolation");
            if (str107 != null) {
                if ("error".equals(str107)) {
                    this.errorThreshold.set(NullSpecViolation);
                    this.warningThreshold.clear(NullSpecViolation);
                } else if ("warning".equals(str107)) {
                    this.errorThreshold.clear(NullSpecViolation);
                    this.warningThreshold.set(NullSpecViolation);
                }
            }
            String str108 = map.get("org.eclipse.jdt.core.compiler.problem.nullAnnotationInferenceConflict");
            if (str108 != null) {
                updateSeverity(NullAnnotationInferenceConflict, str108);
            }
            String str109 = map.get("org.eclipse.jdt.core.compiler.problem.nullUncheckedConversion");
            if (str109 != null) {
                updateSeverity(NullUncheckedConversion, str109);
            }
            String str110 = map.get("org.eclipse.jdt.core.compiler.problem.redundantNullAnnotation");
            if (str110 != null) {
                updateSeverity(RedundantNullAnnotation, str110);
            }
            String str111 = map.get("org.eclipse.jdt.core.compiler.annotation.nullable");
            if (str111 != null) {
                this.nullableAnnotationName = CharOperation.splitAndTrimOn('.', str111.toCharArray());
            }
            String str112 = map.get("org.eclipse.jdt.core.compiler.annotation.nonnull");
            if (str112 != null) {
                this.nonNullAnnotationName = CharOperation.splitAndTrimOn('.', str112.toCharArray());
            }
            String str113 = map.get("org.eclipse.jdt.core.compiler.annotation.nonnullbydefault");
            if (str113 != null) {
                this.nonNullByDefaultAnnotationName = CharOperation.splitAndTrimOn('.', str113.toCharArray());
            }
            String str114 = map.get("org.eclipse.jdt.core.compiler.annotation.nullable.secondary");
            if (str114 != null) {
                this.nullableAnnotationSecondaryNames = stringToNameList(str114);
            }
            String str115 = map.get("org.eclipse.jdt.core.compiler.annotation.nonnull.secondary");
            if (str115 != null) {
                this.nonNullAnnotationSecondaryNames = stringToNameList(str115);
            }
            String str116 = map.get("org.eclipse.jdt.core.compiler.annotation.nonnullbydefault.secondary");
            if (str116 != null) {
                this.nonNullByDefaultAnnotationSecondaryNames = stringToNameList(str116);
            }
            String str117 = map.get("org.eclipse.jdt.core.compiler.annotation.missingNonNullByDefaultAnnotation");
            if (str117 != null) {
                updateSeverity(MissingNonNullByDefaultAnnotation, str117);
            }
            String str118 = map.get("org.eclipse.jdt.core.compiler.problem.syntacticNullAnalysisForFields");
            if (str118 != null) {
                this.enableSyntacticNullAnalysisForFields = "enabled".equals(str118);
            }
            String str119 = map.get("org.eclipse.jdt.core.compiler.annotation.inheritNullAnnotations");
            if (str119 != null) {
                this.inheritNullAnnotations = "enabled".equals(str119);
            }
            String str120 = map.get("org.eclipse.jdt.core.compiler.problem.nonnullParameterAnnotationDropped");
            if (str120 != null) {
                updateSeverity(NonnullParameterAnnotationDropped, str120);
            }
            String str121 = map.get("org.eclipse.jdt.core.compiler.problem.pessimisticNullAnalysisForFreeTypeVariables");
            if (str121 != null) {
                updateSeverity(PessimisticNullAnalysisForFreeTypeVariables, str121);
            }
            if (getSeverity(PessimisticNullAnalysisForFreeTypeVariables) == 256) {
                this.pessimisticNullAnalysisForFreeTypeVariablesEnabled = false;
            } else {
                this.pessimisticNullAnalysisForFreeTypeVariablesEnabled = true;
            }
            String str122 = map.get("org.eclipse.jdt.core.compiler.problem.nonnullTypeVariableFromLegacyInvocation");
            if (str122 != null) {
                updateSeverity(NonNullTypeVariableFromLegacyInvocation, str122);
            }
        }
        String str123 = map.get("org.eclipse.jdt.core.compiler.doc.comment.support");
        if (str123 != null) {
            if ("enabled".equals(str123)) {
                this.docCommentSupport = true;
            } else if ("disabled".equals(str123)) {
                this.docCommentSupport = false;
            }
        }
        String str124 = map.get("org.eclipse.jdt.core.compiler.problem.invalidJavadoc");
        if (str124 != null) {
            updateSeverity(33554432, str124);
        }
        String str125 = map.get("org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsVisibility");
        if (str125 != null) {
            if ("public".equals(str125)) {
                this.reportInvalidJavadocTagsVisibility = 1;
            } else if ("protected".equals(str125)) {
                this.reportInvalidJavadocTagsVisibility = 4;
            } else if ("default".equals(str125)) {
                this.reportInvalidJavadocTagsVisibility = 0;
            } else if ("private".equals(str125)) {
                this.reportInvalidJavadocTagsVisibility = 2;
            }
        }
        String str126 = map.get("org.eclipse.jdt.core.compiler.problem.invalidJavadocTags");
        if (str126 != null) {
            if ("enabled".equals(str126)) {
                this.reportInvalidJavadocTags = true;
            } else if ("disabled".equals(str126)) {
                this.reportInvalidJavadocTags = false;
            }
        }
        String str127 = map.get("org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsDeprecatedRef");
        if (str127 != null) {
            if ("enabled".equals(str127)) {
                this.reportInvalidJavadocTagsDeprecatedRef = true;
            } else if ("disabled".equals(str127)) {
                this.reportInvalidJavadocTagsDeprecatedRef = false;
            }
        }
        String str128 = map.get("org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsNotVisibleRef");
        if (str128 != null) {
            if ("enabled".equals(str128)) {
                this.reportInvalidJavadocTagsNotVisibleRef = true;
            } else if ("disabled".equals(str128)) {
                this.reportInvalidJavadocTagsNotVisibleRef = false;
            }
        }
        String str129 = map.get("org.eclipse.jdt.core.compiler.problem.missingJavadocTags");
        if (str129 != null) {
            updateSeverity(2097152, str129);
        }
        String str130 = map.get("org.eclipse.jdt.core.compiler.problem.missingJavadocTagsVisibility");
        if (str130 != null) {
            if ("public".equals(str130)) {
                this.reportMissingJavadocTagsVisibility = 1;
            } else if ("protected".equals(str130)) {
                this.reportMissingJavadocTagsVisibility = 4;
            } else if ("default".equals(str130)) {
                this.reportMissingJavadocTagsVisibility = 0;
            } else if ("private".equals(str130)) {
                this.reportMissingJavadocTagsVisibility = 2;
            }
        }
        String str131 = map.get("org.eclipse.jdt.core.compiler.problem.missingJavadocTagsOverriding");
        if (str131 != null) {
            if ("enabled".equals(str131)) {
                this.reportMissingJavadocTagsOverriding = true;
            } else if ("disabled".equals(str131)) {
                this.reportMissingJavadocTagsOverriding = false;
            }
        }
        String str132 = map.get("org.eclipse.jdt.core.compiler.problem.missingJavadocTagsMethodTypeParameters");
        if (str132 != null) {
            if ("enabled".equals(str132)) {
                this.reportMissingJavadocTagsMethodTypeParameters = true;
            } else if ("disabled".equals(str132)) {
                this.reportMissingJavadocTagsMethodTypeParameters = false;
            }
        }
        String str133 = map.get("org.eclipse.jdt.core.compiler.problem.missingJavadocComments");
        if (str133 != null) {
            updateSeverity(1048576, str133);
        }
        String str134 = map.get("org.eclipse.jdt.core.compiler.problem.missingJavadocTagDescription");
        if (str134 != null) {
            this.reportMissingJavadocTagDescription = str134;
        }
        String str135 = map.get("org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsVisibility");
        if (str135 != null) {
            if ("public".equals(str135)) {
                this.reportMissingJavadocCommentsVisibility = 1;
            } else if ("protected".equals(str135)) {
                this.reportMissingJavadocCommentsVisibility = 4;
            } else if ("default".equals(str135)) {
                this.reportMissingJavadocCommentsVisibility = 0;
            } else if ("private".equals(str135)) {
                this.reportMissingJavadocCommentsVisibility = 2;
            }
        }
        String str136 = map.get("org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsOverriding");
        if (str136 != null) {
            if ("enabled".equals(str136)) {
                this.reportMissingJavadocCommentsOverriding = true;
            } else if ("disabled".equals(str136)) {
                this.reportMissingJavadocCommentsOverriding = false;
            }
        }
        String str137 = map.get(OPTION_GenerateClassFiles);
        if (str137 != null) {
            if ("enabled".equals(str137)) {
                this.generateClassFiles = true;
            } else if ("disabled".equals(str137)) {
                this.generateClassFiles = false;
            }
        }
        String str138 = map.get(OPTION_Process_Annotations);
        if (str138 != null) {
            if ("enabled".equals(str138)) {
                this.processAnnotations = true;
                this.storeAnnotations = true;
            } else if ("disabled".equals(str138)) {
                this.processAnnotations = false;
                if (!this.isAnnotationBasedNullAnalysisEnabled) {
                    this.storeAnnotations = false;
                }
            }
        }
        String str139 = map.get(OPTION_Store_Annotations);
        if (str139 != null) {
            if ("enabled".equals(str139)) {
                this.storeAnnotations = true;
            } else if ("disabled".equals(str139) && !this.isAnnotationBasedNullAnalysisEnabled && !this.processAnnotations) {
                this.storeAnnotations = false;
            }
        }
        String str140 = map.get(OPTION_EmulateJavacBug8031744);
        if (str140 != null) {
            if ("enabled".equals(str140)) {
                this.emulateJavacBug8031744 = true;
            } else if ("disabled".equals(str140)) {
                this.emulateJavacBug8031744 = false;
            }
        }
        String str141 = map.get(OPTION_ReportUninternedIdentityComparison);
        if (str141 != null) {
            if ("enabled".equals(str141)) {
                this.complainOnUninternedIdentityComparison = true;
            } else if ("disabled".equals(str141)) {
                this.complainOnUninternedIdentityComparison = false;
            }
        }
        String str142 = map.get("org.eclipse.jdt.core.compiler.problem.enablePreviewFeatures");
        if (str142 != null) {
            if ("enabled".equals(str142)) {
                this.enablePreviewFeatures = true;
                long j10 = this.targetJDK;
                if (j10 != 0) {
                    this.targetJDK = j10 | b.f23266s;
                }
            } else if ("disabled".equals(str142)) {
                this.enablePreviewFeatures = false;
            }
        }
        String str143 = map.get("org.eclipse.jdt.core.compiler.problem.reportPreviewFeatures");
        if (str143 != null) {
            updateSeverity(PreviewFeatureUsed, str143);
        }
        String str144 = map.get(OPTION_JdtDebugCompileMode);
        if (str144 != null) {
            if ("enabled".equals(str144)) {
                this.enableJdtDebugCompileMode = true;
            } else if ("disabled".equals(str144)) {
                this.enableJdtDebugCompileMode = false;
            }
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("CompilerOptions:");
        stringBuffer.append("\n\t- local variables debug attributes: ");
        stringBuffer.append((this.produceDebugAttributes & 4) != 0 ? "ON" : " OFF");
        stringBuffer.append("\n\t- line number debug attributes: ");
        stringBuffer.append((this.produceDebugAttributes & 2) != 0 ? "ON" : " OFF");
        stringBuffer.append("\n\t- source debug attributes: ");
        stringBuffer.append((this.produceDebugAttributes & 1) != 0 ? "ON" : " OFF");
        stringBuffer.append("\n\t- MethodParameters attributes: ");
        stringBuffer.append(this.produceMethodParameters ? "generate" : "do not generate");
        stringBuffer.append("\n\t- Generic signature for lambda expressions: ");
        stringBuffer.append(this.generateGenericSignatureForLambdaExpressions ? "generate" : "do not generate");
        stringBuffer.append("\n\t- preserve all local variables: ");
        stringBuffer.append(this.preserveAllLocalVariables ? "ON" : " OFF");
        stringBuffer.append("\n\t- method with constructor name: ");
        stringBuffer.append(getSeverityString(1));
        stringBuffer.append("\n\t- overridden package default method: ");
        stringBuffer.append(getSeverityString(2));
        stringBuffer.append("\n\t- deprecation: ");
        stringBuffer.append(getSeverityString(4));
        stringBuffer.append("\n\t- removal: ");
        stringBuffer.append(getSeverityString(UsingTerminallyDeprecatedAPI));
        stringBuffer.append("\n\t- masked catch block: ");
        stringBuffer.append(getSeverityString(8));
        stringBuffer.append("\n\t- unused local variable: ");
        stringBuffer.append(getSeverityString(16));
        stringBuffer.append("\n\t- unused parameter: ");
        stringBuffer.append(getSeverityString(32));
        stringBuffer.append("\n\t- unused exception parameter: ");
        stringBuffer.append(getSeverityString(UnusedExceptionParameter));
        stringBuffer.append("\n\t- unused import: ");
        stringBuffer.append(getSeverityString(1024));
        stringBuffer.append("\n\t- synthetic access emulation: ");
        stringBuffer.append(getSeverityString(128));
        stringBuffer.append("\n\t- assignment with no effect: ");
        stringBuffer.append(getSeverityString(8192));
        stringBuffer.append("\n\t- non externalized string: ");
        stringBuffer.append(getSeverityString(256));
        stringBuffer.append("\n\t- static access receiver: ");
        stringBuffer.append(getSeverityString(2048));
        stringBuffer.append("\n\t- indirect static access: ");
        stringBuffer.append(getSeverityString(268435456));
        stringBuffer.append("\n\t- incompatible non inherited interface method: ");
        stringBuffer.append(getSeverityString(16384));
        stringBuffer.append("\n\t- unused private member: ");
        stringBuffer.append(getSeverityString(32768));
        stringBuffer.append("\n\t- local variable hiding another variable: ");
        stringBuffer.append(getSeverityString(65536));
        stringBuffer.append("\n\t- field hiding another variable: ");
        stringBuffer.append(getSeverityString(131072));
        stringBuffer.append("\n\t- type hiding another type: ");
        stringBuffer.append(getSeverityString(TypeHiding));
        stringBuffer.append("\n\t- possible accidental boolean assignment: ");
        stringBuffer.append(getSeverityString(262144));
        stringBuffer.append("\n\t- superfluous semicolon: ");
        stringBuffer.append(getSeverityString(524288));
        stringBuffer.append("\n\t- uncommented empty block: ");
        stringBuffer.append(getSeverityString(134217728));
        stringBuffer.append("\n\t- unnecessary type check: ");
        stringBuffer.append(getSeverityString(67108864));
        stringBuffer.append("\n\t- javadoc comment support: ");
        stringBuffer.append(this.docCommentSupport ? "ON" : " OFF");
        stringBuffer.append("\n\t\t+ invalid javadoc: ");
        stringBuffer.append(getSeverityString(33554432));
        stringBuffer.append("\n\t\t+ report invalid javadoc tags: ");
        stringBuffer.append(this.reportInvalidJavadocTags ? "enabled" : "disabled");
        stringBuffer.append("\n\t\t\t* deprecated references: ");
        stringBuffer.append(this.reportInvalidJavadocTagsDeprecatedRef ? "enabled" : "disabled");
        stringBuffer.append("\n\t\t\t* not visible references: ");
        stringBuffer.append(this.reportInvalidJavadocTagsNotVisibleRef ? "enabled" : "disabled");
        stringBuffer.append("\n\t\t+ visibility level to report invalid javadoc tags: ");
        stringBuffer.append(getVisibilityString(this.reportInvalidJavadocTagsVisibility));
        stringBuffer.append("\n\t\t+ missing javadoc tags: ");
        stringBuffer.append(getSeverityString(2097152));
        stringBuffer.append("\n\t\t+ visibility level to report missing javadoc tags: ");
        stringBuffer.append(getVisibilityString(this.reportMissingJavadocTagsVisibility));
        stringBuffer.append("\n\t\t+ report missing javadoc tags for method type parameters: ");
        stringBuffer.append(this.reportMissingJavadocTagsMethodTypeParameters ? "enabled" : "disabled");
        stringBuffer.append("\n\t\t+ report missing javadoc tags in overriding methods: ");
        stringBuffer.append(this.reportMissingJavadocTagsOverriding ? "enabled" : "disabled");
        stringBuffer.append("\n\t\t+ missing javadoc comments: ");
        stringBuffer.append(getSeverityString(1048576));
        stringBuffer.append("\n\t\t+ report missing tag description option: ");
        stringBuffer.append(this.reportMissingJavadocTagDescription);
        stringBuffer.append("\n\t\t+ visibility level to report missing javadoc comments: ");
        stringBuffer.append(getVisibilityString(this.reportMissingJavadocCommentsVisibility));
        stringBuffer.append("\n\t\t+ report missing javadoc comments in overriding methods: ");
        stringBuffer.append(this.reportMissingJavadocCommentsOverriding ? "enabled" : "disabled");
        stringBuffer.append("\n\t- finally block not completing normally: ");
        stringBuffer.append(getSeverityString(16777216));
        stringBuffer.append("\n\t- report unused declared thrown exception: ");
        stringBuffer.append(getSeverityString(8388608));
        stringBuffer.append("\n\t- report unused declared thrown exception when overriding: ");
        stringBuffer.append(this.reportUnusedDeclaredThrownExceptionWhenOverriding ? "enabled" : "disabled");
        stringBuffer.append("\n\t- report unused declared thrown exception include doc comment reference: ");
        stringBuffer.append(this.reportUnusedDeclaredThrownExceptionIncludeDocCommentReference ? "enabled" : "disabled");
        stringBuffer.append("\n\t- report unused declared thrown exception exempt exception and throwable: ");
        stringBuffer.append(this.reportUnusedDeclaredThrownExceptionExemptExceptionAndThrowable ? "enabled" : "disabled");
        stringBuffer.append("\n\t- unnecessary else: ");
        stringBuffer.append(getSeverityString(UnnecessaryElse));
        stringBuffer.append("\n\t- JDK compliance level: " + versionFromJdkLevel(this.complianceLevel));
        stringBuffer.append("\n\t- JDK source level: " + versionFromJdkLevel(this.sourceLevel));
        stringBuffer.append("\n\t- JDK target level: " + versionFromJdkLevel(this.targetJDK));
        stringBuffer.append("\n\t- verbose : ");
        stringBuffer.append(this.verbose ? "ON" : "OFF");
        stringBuffer.append("\n\t- produce reference info : ");
        stringBuffer.append(this.produceReferenceInfo ? "ON" : "OFF");
        stringBuffer.append("\n\t- parse literal expressions as constants : ");
        stringBuffer.append(this.parseLiteralExpressionsAsConstants ? "ON" : "OFF");
        stringBuffer.append("\n\t- encoding : ");
        String str = this.defaultEncoding;
        if (str == null) {
            str = "<default>";
        }
        stringBuffer.append(str);
        stringBuffer.append("\n\t- task tags: ");
        char[][] cArr = this.taskTags;
        stringBuffer.append(cArr == null ? Util.EMPTY_STRING : new String(CharOperation.concatWith(cArr, IIndexConstants.PARAMETER_SEPARATOR)));
        stringBuffer.append("\n\t- task priorities : ");
        char[][] cArr2 = this.taskPriorities;
        stringBuffer.append(cArr2 == null ? Util.EMPTY_STRING : new String(CharOperation.concatWith(cArr2, IIndexConstants.PARAMETER_SEPARATOR)));
        stringBuffer.append("\n\t- report deprecation inside deprecated code : ");
        stringBuffer.append(this.reportDeprecationInsideDeprecatedCode ? "enabled" : "disabled");
        stringBuffer.append("\n\t- report deprecation when overriding deprecated method : ");
        stringBuffer.append(this.reportDeprecationWhenOverridingDeprecatedMethod ? "enabled" : "disabled");
        stringBuffer.append("\n\t- report unused parameter when implementing abstract method : ");
        stringBuffer.append(this.reportUnusedParameterWhenImplementingAbstract ? "enabled" : "disabled");
        stringBuffer.append("\n\t- report unused parameter when overriding concrete method : ");
        stringBuffer.append(this.reportUnusedParameterWhenOverridingConcrete ? "enabled" : "disabled");
        stringBuffer.append("\n\t- report unused parameter include doc comment reference : ");
        stringBuffer.append(this.reportUnusedParameterIncludeDocCommentReference ? "enabled" : "disabled");
        stringBuffer.append("\n\t- report constructor/setter parameter hiding existing field : ");
        stringBuffer.append(this.reportSpecialParameterHidingField ? "enabled" : "disabled");
        stringBuffer.append("\n\t- inline JSR bytecode : ");
        stringBuffer.append(this.inlineJsrBytecode ? "enabled" : "disabled");
        stringBuffer.append("\n\t- share common finally blocks : ");
        stringBuffer.append(this.shareCommonFinallyBlocks ? "enabled" : "disabled");
        stringBuffer.append("\n\t- report unavoidable generic type problems : ");
        stringBuffer.append(this.reportUnavoidableGenericTypeProblems ? "enabled" : "disabled");
        stringBuffer.append("\n\t- unsafe type operation: ");
        stringBuffer.append(getSeverityString(UncheckedTypeOperation));
        stringBuffer.append("\n\t- unsafe raw type: ");
        stringBuffer.append(getSeverityString(RawTypeReference));
        stringBuffer.append("\n\t- final bound for type parameter: ");
        stringBuffer.append(getSeverityString(FinalParameterBound));
        stringBuffer.append("\n\t- missing serialVersionUID: ");
        stringBuffer.append(getSeverityString(MissingSerialVersion));
        stringBuffer.append("\n\t- varargs argument need cast: ");
        stringBuffer.append(getSeverityString(536870976));
        stringBuffer.append("\n\t- forbidden reference to type with access restriction: ");
        stringBuffer.append(getSeverityString(536870944));
        stringBuffer.append("\n\t- discouraged reference to type with access restriction: ");
        stringBuffer.append(getSeverityString(DiscouragedReference));
        stringBuffer.append("\n\t- null reference: ");
        stringBuffer.append(getSeverityString(NullReference));
        stringBuffer.append("\n\t- potential null reference: ");
        stringBuffer.append(getSeverityString(PotentialNullReference));
        stringBuffer.append("\n\t- redundant null check: ");
        stringBuffer.append(getSeverityString(RedundantNullCheck));
        stringBuffer.append("\n\t- autoboxing: ");
        stringBuffer.append(getSeverityString(AutoBoxing));
        stringBuffer.append("\n\t- annotation super interface: ");
        stringBuffer.append(getSeverityString(AnnotationSuperInterface));
        stringBuffer.append("\n\t- missing @Override annotation: ");
        stringBuffer.append(getSeverityString(MissingOverrideAnnotation));
        stringBuffer.append("\n\t- missing @Override annotation for interface method implementation: ");
        stringBuffer.append(this.reportMissingOverrideAnnotationForInterfaceMethodImplementation ? "enabled" : "disabled");
        stringBuffer.append("\n\t- missing @Deprecated annotation: ");
        stringBuffer.append(getSeverityString(MissingDeprecatedAnnotation));
        stringBuffer.append("\n\t- incomplete enum switch: ");
        stringBuffer.append(getSeverityString(MissingEnumConstantCase));
        stringBuffer.append("\n\t- raise null related warnings for variables tainted in assert statements: ");
        stringBuffer.append(this.includeNullInfoFromAsserts ? "enabled" : "disabled");
        stringBuffer.append("\n\t- suppress warnings: ");
        stringBuffer.append(this.suppressWarnings ? "enabled" : "disabled");
        stringBuffer.append("\n\t- suppress optional errors: ");
        stringBuffer.append(this.suppressOptionalErrors ? "enabled" : "disabled");
        stringBuffer.append("\n\t- unhandled warning token: ");
        stringBuffer.append(getSeverityString(UnhandledWarningToken));
        stringBuffer.append("\n\t- unused warning token: ");
        stringBuffer.append(getSeverityString(UnusedWarningToken));
        stringBuffer.append("\n\t- unused label: ");
        stringBuffer.append(getSeverityString(UnusedLabel));
        stringBuffer.append("\n\t- treat optional error as fatal: ");
        stringBuffer.append(this.treatOptionalErrorAsFatal ? "enabled" : "disabled");
        stringBuffer.append("\n\t- parameter assignment: ");
        stringBuffer.append(getSeverityString(ParameterAssignment));
        stringBuffer.append("\n\t- generate class files: ");
        stringBuffer.append(this.generateClassFiles ? "enabled" : "disabled");
        stringBuffer.append("\n\t- process annotations: ");
        stringBuffer.append(this.processAnnotations ? "enabled" : "disabled");
        stringBuffer.append("\n\t- unused type arguments for method/constructor invocation: ");
        stringBuffer.append(getSeverityString(UnusedTypeArguments));
        stringBuffer.append("\n\t- redundant superinterface: ");
        stringBuffer.append(getSeverityString(RedundantSuperinterface));
        stringBuffer.append("\n\t- comparing identical expr: ");
        stringBuffer.append(getSeverityString(ComparingIdentical));
        stringBuffer.append("\n\t- missing synchronized on inherited method: ");
        stringBuffer.append(getSeverityString(805306368));
        stringBuffer.append("\n\t- should implement hashCode() method: ");
        stringBuffer.append(getSeverityString(ShouldImplementHashcode));
        stringBuffer.append("\n\t- dead code: ");
        stringBuffer.append(getSeverityString(DeadCode));
        stringBuffer.append("\n\t- dead code in trivial if statement: ");
        stringBuffer.append(this.reportDeadCodeInTrivialIfStatement ? "enabled" : "disabled");
        stringBuffer.append("\n\t- tasks severity: ");
        stringBuffer.append(getSeverityString(Tasks));
        stringBuffer.append("\n\t- unused object allocation: ");
        stringBuffer.append(getSeverityString(UnusedObjectAllocation));
        stringBuffer.append("\n\t- method can be static: ");
        stringBuffer.append(getSeverityString(MethodCanBeStatic));
        stringBuffer.append("\n\t- method can be potentially static: ");
        stringBuffer.append(getSeverityString(MethodCanBePotentiallyStatic));
        stringBuffer.append("\n\t- redundant specification of type arguments: ");
        stringBuffer.append(getSeverityString(RedundantSpecificationOfTypeArguments));
        stringBuffer.append("\n\t- resource is not closed: ");
        stringBuffer.append(getSeverityString(UnclosedCloseable));
        stringBuffer.append("\n\t- resource may not be closed: ");
        stringBuffer.append(getSeverityString(PotentiallyUnclosedCloseable));
        stringBuffer.append("\n\t- resource should be handled by try-with-resources: ");
        stringBuffer.append(getSeverityString(ExplicitlyClosedAutoCloseable));
        stringBuffer.append("\n\t- Unused Type Parameter: ");
        stringBuffer.append(getSeverityString(UnusedTypeParameter));
        stringBuffer.append("\n\t- pessimistic null analysis for free type variables: ");
        stringBuffer.append(getSeverityString(PessimisticNullAnalysisForFreeTypeVariables));
        stringBuffer.append("\n\t- report unsafe nonnull return from legacy method: ");
        stringBuffer.append(getSeverityString(NonNullTypeVariableFromLegacyInvocation));
        stringBuffer.append("\n\t- unlikely argument type for collection methods: ");
        stringBuffer.append(getSeverityString(UnlikelyCollectionMethodArgumentType));
        stringBuffer.append("\n\t- unlikely argument type for collection methods, strict check against expected type: ");
        stringBuffer.append(this.reportUnlikelyCollectionMethodArgumentTypeStrict ? "enabled" : "disabled");
        stringBuffer.append("\n\t- unlikely argument types for equals(): ");
        stringBuffer.append(getSeverityString(UnlikelyEqualsArgumentType));
        stringBuffer.append("\n\t- API leak: ");
        stringBuffer.append(getSeverityString(APILeak));
        stringBuffer.append("\n\t- unstable auto module name: ");
        stringBuffer.append(getSeverityString(UnstableAutoModuleName));
        return stringBuffer.toString();
    }

    public void updateSeverity(int i10, Object obj) {
        if ("error".equals(obj)) {
            this.errorThreshold.set(i10);
            this.warningThreshold.clear(i10);
            this.infoThreshold.clear(i10);
            return;
        }
        if ("warning".equals(obj)) {
            this.errorThreshold.clear(i10);
            this.warningThreshold.set(i10);
            this.infoThreshold.clear(i10);
        } else if ("info".equals(obj)) {
            this.errorThreshold.clear(i10);
            this.warningThreshold.clear(i10);
            this.infoThreshold.set(i10);
        } else if ("ignore".equals(obj)) {
            this.errorThreshold.clear(i10);
            this.warningThreshold.clear(i10);
            this.infoThreshold.clear(i10);
        }
    }

    public boolean usesNullTypeAnnotations() {
        Boolean bool = this.useNullTypeAnnotations;
        return bool != null ? bool.booleanValue() : this.isAnnotationBasedNullAnalysisEnabled && this.sourceLevel >= ClassFileConstants.JDK1_8;
    }

    public CompilerOptions(Map<String, String> map) {
        String[] strArr = NO_STRINGS;
        this.nullableAnnotationSecondaryNames = strArr;
        this.nonNullAnnotationSecondaryNames = strArr;
        this.nonNullByDefaultAnnotationSecondaryNames = strArr;
        String property = System.getProperty("tolerateIllegalAmbiguousVarargsInvocation");
        tolerateIllegalAmbiguousVarargsInvocation = property != null && property.equalsIgnoreCase("true");
        this.emulateJavacBug8031744 = true;
        this.useNullTypeAnnotations = null;
        resetDefaults();
        if (map != null) {
            set(map);
        }
    }

    public static long versionToJdkLevel(String str, boolean z10) {
        String substring;
        if (str != null && str.length() > 0) {
            if (str.length() >= 3 && str.charAt(0) == '1' && str.charAt(1) == '.') {
                switch (str.charAt(2)) {
                    case '1':
                        return ClassFileConstants.JDK1_1;
                    case '2':
                        return ClassFileConstants.JDK1_2;
                    case '3':
                        return ClassFileConstants.JDK1_3;
                    case '4':
                        return ClassFileConstants.JDK1_4;
                    case '5':
                        return ClassFileConstants.JDK1_5;
                    case '6':
                        return ClassFileConstants.JDK1_6;
                    case '7':
                        return ClassFileConstants.JDK1_7;
                    case '8':
                        return ClassFileConstants.JDK1_8;
                    default:
                        return 0L;
                }
            }
            try {
                int indexOf = str.indexOf(46);
                if (indexOf != -1) {
                    substring = str.substring(0, indexOf);
                } else {
                    int indexOf2 = str.indexOf(45);
                    substring = indexOf2 != -1 ? str.substring(0, indexOf2) : str;
                }
                int parseInt = Integer.parseInt(substring) + 44;
                if (parseInt > 56) {
                    if (!z10) {
                        return 0L;
                    }
                    parseInt = 56;
                }
                return parseInt << 16;
            } catch (NumberFormatException unused) {
            }
        }
        if (VERSION_JSR14.equals(str)) {
            return ClassFileConstants.JDK1_4;
        }
        if ("cldc1.1".equals(str)) {
            return ClassFileConstants.CLDC_1_1;
        }
        return 0L;
    }

    public CompilerOptions(Map map, boolean z10) {
        this(map);
        this.parseLiteralExpressionsAsConstants = z10;
    }
}
