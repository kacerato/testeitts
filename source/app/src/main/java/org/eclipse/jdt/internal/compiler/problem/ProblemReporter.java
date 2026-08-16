package org.eclipse.jdt.internal.compiler.problem;

import android.provider.MediaStore;
import java.io.CharConversionException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import okhttp3.v;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AbstractVariableDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.AnnotationMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.ArrayQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.BinaryExpression;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.BranchStatement;
import org.eclipse.jdt.internal.compiler.ast.CaseStatement;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.ClassLiteralAccess;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CompoundAssignment;
import org.eclipse.jdt.internal.compiler.ast.ConditionalExpression;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.EqualExpression;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ExpressionContext;
import org.eclipse.jdt.internal.compiler.ast.FakedTrackingVariable;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.FunctionalExpression;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.InstanceOfExpression;
import org.eclipse.jdt.internal.compiler.ast.LabeledStatement;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.Literal;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleReference;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.NullAnnotationMatching;
import org.eclipse.jdt.internal.compiler.ast.NullLiteral;
import org.eclipse.jdt.internal.compiler.ast.OpensStatement;
import org.eclipse.jdt.internal.compiler.ast.PackageVisibilityStatement;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedSuperReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Receiver;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.SwitchExpression;
import org.eclipse.jdt.internal.compiler.ast.SwitchStatement;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.UnaryExpression;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.CaptureBinding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.SplitPackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticArgumentBinding;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;
import org.eclipse.jdt.internal.compiler.parser.JavadocTagConstants;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScanner;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.util.Messages;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import w2.C15883c;

public class ProblemReporter extends ProblemHandler {
    private static final byte CONSTRUCTOR_ACCESS = 8;
    private static final byte FIELD_ACCESS = 4;
    private static final byte METHOD_ACCESS = 12;
    private Scanner positionScanner;
    public ReferenceContext referenceContext;
    private boolean underScoreIsError;

    public ProblemReporter(IErrorHandlingPolicy iErrorHandlingPolicy, CompilerOptions compilerOptions, IProblemFactory iProblemFactory) {
        super(iErrorHandlingPolicy, compilerOptions, iProblemFactory);
    }

    private String annotatedTypeName(TypeBinding typeBinding, char[][] cArr) {
        if ((typeBinding.tagBits & TagBits.AnnotationNullMASK) != 0) {
            return String.valueOf(typeBinding.nullAnnotatedReadableName(this.options, false));
        }
        return internalAnnotatedTypeName(CharOperation.concatWith(cArr, '.'), typeBinding.readableName(), 0);
    }

    private boolean excludeDueToAnnotation(Annotation[] annotationArr, int i10) {
        int i11;
        if (annotationArr == null || (annotationArr.length) == 0) {
            return false;
        }
        for (Annotation annotation : annotationArr) {
            TypeBinding typeBinding = annotation.resolvedType;
            if (typeBinding != null && (i11 = typeBinding.f102482id) != 44 && i11 != 49 && i11 != 60) {
                switch (i11) {
                    case 80:
                    case 81:
                    case 82:
                        if (i10 != 570425421) {
                            return true;
                        }
                        break;
                    default:
                        if (!(typeBinding instanceof ReferenceBinding) || !((ReferenceBinding) typeBinding).hasNullBit(224)) {
                            return true;
                        }
                        break;
                        break;
                }
            }
        }
        return false;
    }

    private Annotation findAnnotation(Annotation[] annotationArr, int i10) {
        if (annotationArr == null) {
            return null;
        }
        for (int length = annotationArr.length - 1; length >= 0; length--) {
            if (annotationArr[length].hasNullBit(i10)) {
                return annotationArr[length];
            }
        }
        return null;
    }

    private static int getElaborationId(int i10, byte b10) {
        return (i10 << 8) | b10;
    }

    public static int getIrritant(int i10) {
        if (i10 == 969 || i10 == 970) {
            return CompilerOptions.PessimisticNullAnalysisForFreeTypeVariables;
        }
        if (i10 == 1200) {
            return CompilerOptions.UnlikelyCollectionMethodArgumentType;
        }
        if (i10 == 1201) {
            return CompilerOptions.UnlikelyEqualsArgumentType;
        }
        switch (i10) {
            case IProblem.JavadocInvalidSeeUrlReference:
            case IProblem.JavadocMissingTagDescription:
            case IProblem.JavadocDuplicateTag:
            case IProblem.JavadocHiddenReference:
            case IProblem.JavadocInvalidMemberTypeQualification:
            case IProblem.JavadocMissingIdentifier:
            case IProblem.JavadocNonStaticTypeFromStaticInvocation:
            case IProblem.JavadocInvalidParamTagTypeParameter:
            case IProblem.JavadocUnexpectedTag:
            case IProblem.JavadocMissingParamName:
            case IProblem.JavadocDuplicateParamName:
            case IProblem.JavadocInvalidParamName:
            case IProblem.JavadocDuplicateReturnTag:
            case IProblem.JavadocMissingThrowsClassName:
            case IProblem.JavadocInvalidThrowsClass:
            case IProblem.JavadocDuplicateThrowsClassName:
            case IProblem.JavadocInvalidThrowsClassName:
            case IProblem.JavadocMissingSeeReference:
            case IProblem.JavadocInvalidSeeReference:
            case IProblem.JavadocInvalidSeeHref:
            case IProblem.JavadocInvalidSeeArgs:
            case IProblem.JavadocInvalidTag:
            case IProblem.JavadocUndefinedField:
            case IProblem.JavadocNotVisibleField:
            case IProblem.JavadocAmbiguousField:
            case IProblem.JavadocUsingDeprecatedField:
            case IProblem.JavadocUndefinedConstructor:
            case IProblem.JavadocNotVisibleConstructor:
            case IProblem.JavadocAmbiguousConstructor:
            case IProblem.JavadocUsingDeprecatedConstructor:
            case IProblem.JavadocUndefinedMethod:
            case IProblem.JavadocNotVisibleMethod:
            case IProblem.JavadocAmbiguousMethod:
            case IProblem.JavadocUsingDeprecatedMethod:
            case IProblem.JavadocNoMessageSendOnBaseType:
            case IProblem.JavadocParameterMismatch:
            case IProblem.JavadocNoMessageSendOnArrayType:
            case IProblem.JavadocUndefinedType:
            case IProblem.JavadocNotVisibleType:
            case IProblem.JavadocAmbiguousType:
            case IProblem.JavadocUsingDeprecatedType:
            case IProblem.JavadocInternalTypeNameProvided:
            case IProblem.JavadocInheritedMethodHidesEnclosingName:
            case IProblem.JavadocInheritedFieldHidesEnclosingName:
            case IProblem.JavadocInheritedNameHidesEnclosingTypeName:
            case IProblem.JavadocAmbiguousMethodReference:
            case IProblem.JavadocUnterminatedInlineTag:
            case IProblem.JavadocMalformedSeeReference:
                return 33554432;
            case IProblem.JavadocMissingParamTag:
            case IProblem.JavadocMissingReturnTag:
            case IProblem.JavadocMissingThrowsTag:
                return 2097152;
            case IProblem.JavadocMissing:
                return 1048576;
            case IProblem.PreviewFeatureUsed:
                return CompilerOptions.PreviewFeatureUsed;
            case IProblem.UnstableAutoModuleName:
                return CompilerOptions.UnstableAutoModuleName;
            case IProblem.UsingDeprecatedType:
            case IProblem.UsingDeprecatedSinceVersionType:
            case IProblem.UsingDeprecatedField:
            case IProblem.UsingDeprecatedSinceVersionField:
            case IProblem.UsingDeprecatedMethod:
            case IProblem.OverridingDeprecatedMethod:
            case IProblem.UsingDeprecatedSinceVersionMethod:
            case IProblem.UsingDeprecatedSinceVersionConstructor:
            case IProblem.OverridingDeprecatedSinceVersionMethod:
            case IProblem.UsingDeprecatedConstructor:
                return 4;
            case IProblem.TypeHidingType:
            case IProblem.TypeParameterHidingType:
            case IProblem.TypeHidingTypeParameterFromType:
            case IProblem.TypeHidingTypeParameterFromMethod:
                return CompilerOptions.TypeHiding;
            case IProblem.MaskedCatch:
                return 8;
            case IProblem.DiscouragedReference:
                return CompilerOptions.DiscouragedReference;
            case IProblem.ForbiddenReference:
                return 536870944;
            case IProblem.UnsafeRawFieldAssignment:
            case IProblem.UnsafeGenericCast:
            case IProblem.UnsafeRawGenericConstructorInvocation:
            case IProblem.UnsafeRawGenericMethodInvocation:
            case IProblem.UnsafeElementTypeConversion:
            case IProblem.UnsafeReturnTypeOverride:
            case IProblem.UnsafeGenericArrayForVarargs:
            case IProblem.PotentialHeapPollutionFromVararg:
                return CompilerOptions.UncheckedTypeOperation;
            case IProblem.FinalBoundForTypeVariable:
                return CompilerOptions.FinalParameterBound;
            case IProblem.RawTypeReference:
                return CompilerOptions.RawTypeReference;
            case IProblem.AnnotationTypeUsedAsSuperInterface:
                return CompilerOptions.AnnotationSuperInterface;
            case IProblem.UnusedTypeParameter:
                return CompilerOptions.UnusedTypeParameter;
            case IProblem.RedundantSpecificationOfTypeArguments:
                return CompilerOptions.RedundantSpecificationOfTypeArguments;
            case IProblem.RequiredNonNullButProvidedNull:
            case IProblem.UninitializedNonNullField:
            case IProblem.UninitializedNonNullFieldHintMissingDefault:
            case IProblem.IllegalReturnNullityRedefinition:
            case IProblem.IllegalRedefinitionToNonNullParameter:
            case IProblem.IllegalDefinitionToNonNullParameter:
            case IProblem.ParameterLackingNullableAnnotation:
            case IProblem.ConflictingNullAnnotations:
            case IProblem.ConflictingInheritedNullAnnotations:
            case IProblem.ReferenceExpressionParameterNullityMismatch:
            case IProblem.ReferenceExpressionReturnNullRedef:
            case IProblem.IllegalParameterNullityRedefinition:
            case IProblem.ContradictoryNullAnnotationsInferredFunctionType:
            case IProblem.IllegalReturnNullityRedefinitionFreeTypeVariable:
            case IProblem.CannotImplementIncompatibleNullness:
            case IProblem.ContradictoryNullAnnotations:
            case IProblem.RequiredNonNullButProvidedSpecdNullable:
            case IProblem.NullityMismatchingTypeAnnotation:
            case IProblem.NullityMismatchingTypeAnnotationSuperHint:
            case IProblem.NullityMismatchTypeArgument:
            case IProblem.ContradictoryNullAnnotationsOnBound:
            case IProblem.ContradictoryNullAnnotationsInferred:
                return CompilerOptions.NullSpecViolation;
            case IProblem.RequiredNonNullButProvidedPotentialNull:
                return CompilerOptions.NullAnnotationInferenceConflict;
            case IProblem.RequiredNonNullButProvidedUnknown:
            case IProblem.ReferenceExpressionParameterNullityUnchecked:
            case IProblem.ReferenceExpressionReturnNullRedefUnchecked:
            case IProblem.NullityUncheckedTypeAnnotationDetail:
            case IProblem.NullityUncheckedTypeAnnotationDetailSuperHint:
            case IProblem.UnsafeNullnessCast:
                return CompilerOptions.NullUncheckedConversion;
            case IProblem.RequiredNonNullButProvidedFreeTypeVariable:
                return CompilerOptions.PessimisticNullAnalysisForFreeTypeVariables;
            case IProblem.NonNullTypeVariableFromLegacyMethod:
            case IProblem.NonNullMethodTypeVariableFromLegacyMethod:
                return CompilerOptions.NonNullTypeVariableFromLegacyInvocation;
            case IProblem.UsingTerminallyDeprecatedType:
            case IProblem.UsingTerminallyDeprecatedSinceVersionType:
            case IProblem.UsingTerminallyDeprecatedField:
            case IProblem.UsingTerminallyDeprecatedSinceVersionField:
            case IProblem.UsingTerminallyDeprecatedMethod:
            case IProblem.UsingTerminallyDeprecatedConstructor:
            case IProblem.OverridingTerminallyDeprecatedMethod:
            case IProblem.UsingTerminallyDeprecatedSinceVersionMethod:
            case IProblem.UsingTerminallyDeprecatedSinceVersionConstructor:
            case IProblem.OverridingTerminallyDeprecatedSinceVersionMethod:
                return CompilerOptions.UsingTerminallyDeprecatedAPI;
            case IProblem.NeedToEmulateFieldReadAccess:
            case IProblem.NeedToEmulateFieldWriteAccess:
            case IProblem.NeedToEmulateMethodAccess:
            case IProblem.NeedToEmulateConstructorAccess:
                return 128;
            case IProblem.MissingEnumConstantCase:
            case IProblem.MissingEnumConstantCaseDespiteDefault:
                return CompilerOptions.MissingEnumConstantCase;
            case IProblem.NullableFieldReference:
            case IProblem.PotentialNullLocalVariableReference:
            case IProblem.PotentialNullUnboxing:
            case IProblem.PotentialNullExpressionReference:
            case IProblem.PotentialNullMessageSendReference:
            case IProblem.ArrayReferencePotentialNullReference:
            case IProblem.DereferencingNullableExpression:
                return CompilerOptions.PotentialNullReference;
            case IProblem.MethodButWithConstructorName:
                return 1;
            case IProblem.OverridingNonVisibleMethod:
                return 2;
            case IProblem.IncompatibleReturnTypeForNonInheritedInterfaceMethod:
            case IProblem.IncompatibleExceptionInThrowsClauseForNonInheritedInterfaceMethod:
                return 16384;
            case IProblem.OverridingMethodWithoutSuperInvocation:
                return CompilerOptions.OverridingMethodWithoutSuperInvocation;
            case IProblem.MissingSynchronizedModifierInInheritedMethod:
                return 805306368;
            case IProblem.UnusedTypeArgumentsForMethodInvocation:
            case IProblem.UnusedTypeArgumentsForConstructorInvocation:
                return CompilerOptions.UnusedTypeArguments;
            case IProblem.MissingOverrideAnnotation:
            case IProblem.MissingOverrideAnnotationForInterfaceMethodImplementation:
                return CompilerOptions.MissingOverrideAnnotation;
            case IProblem.MethodVarargsArgumentNeedCast:
            case IProblem.ConstructorVarargsArgumentNeedCast:
                return 536870976;
            case IProblem.ParameterLackingNonNullAnnotation:
                return CompilerOptions.NonnullParameterAnnotationDropped;
            case IProblem.RedundantNullAnnotation:
            case IProblem.RedundantNullDefaultAnnotation:
            case IProblem.RedundantNullDefaultAnnotationPackage:
            case IProblem.RedundantNullDefaultAnnotationType:
            case IProblem.RedundantNullDefaultAnnotationMethod:
            case IProblem.RedundantNullDefaultAnnotationModule:
            case IProblem.RedundantNullDefaultAnnotationLocal:
            case IProblem.RedundantNullDefaultAnnotationField:
                return CompilerOptions.RedundantNullAnnotation;
            case IProblem.UnusedImport:
                return 1024;
            case IProblem.ParameterAssignment:
                return CompilerOptions.ParameterAssignment;
            case IProblem.LocalVariableIsNeverUsed:
                return 16;
            case IProblem.ArgumentIsNeverUsed:
                return 32;
            case IProblem.ExceptionParameterIsNeverUsed:
                return CompilerOptions.UnusedExceptionParameter;
            case IProblem.LocalVariableHidingLocalVariable:
            case IProblem.ArgumentHidingLocalVariable:
            case IProblem.ArgumentHidingField:
            case IProblem.LocalVariableHidingField:
                return 65536;
            case IProblem.MissingSerialVersion:
                return CompilerOptions.MissingSerialVersion;
            case IProblem.UnusedObjectAllocation:
                return CompilerOptions.UnusedObjectAllocation;
            case IProblem.DeadCode:
                return CompilerOptions.DeadCode;
            case IProblem.NoImplicitStringConversionForCharArrayExpression:
                return 64;
            case IProblem.AssignmentHasNoEffect:
                return 8192;
            case IProblem.PossibleAccidentalBooleanAssignment:
                return 262144;
            case IProblem.SuperfluousSemicolon:
            case IProblem.EmptyControlFlowStatement:
                return 524288;
            case IProblem.FinallyMustCompleteNormally:
                return 16777216;
            case IProblem.UnusedMethodDeclaredThrownException:
            case IProblem.UnusedConstructorDeclaredThrownException:
                return 8388608;
            case IProblem.UnnecessaryElse:
                return CompilerOptions.UnnecessaryElse;
            case IProblem.FallthroughCase:
                return CompilerOptions.FallthroughCase;
            case IProblem.UnusedLabel:
                return CompilerOptions.UnusedLabel;
            case IProblem.ComparingIdentical:
                return CompilerOptions.ComparingIdentical;
            case IProblem.NonExternalizedStringLiteral:
            case IProblem.UnnecessaryNLSTag:
                return 256;
            case IProblem.UseAssertAsAnIdentifier:
                return 512;
            case IProblem.UseEnumAsAnIdentifier:
                return CompilerOptions.EnumUsedAsAnIdentifier;
            case IProblem.Task:
                return CompilerOptions.Tasks;
            case IProblem.NullLocalVariableReference:
            case IProblem.NullUnboxing:
            case IProblem.NullExpressionReference:
                return CompilerOptions.NullReference;
            case IProblem.RedundantNullCheckOnNullLocalVariable:
            case IProblem.NullLocalVariableComparisonYieldsFalse:
            case IProblem.RedundantLocalVariableNullAssignment:
            case IProblem.NullLocalVariableInstanceofYieldsFalse:
            case IProblem.RedundantNullCheckOnNonNullLocalVariable:
            case IProblem.NonNullLocalVariableComparisonYieldsFalse:
            case IProblem.NonNullExpressionComparisonYieldsFalse:
            case IProblem.RedundantNullCheckOnNonNullExpression:
            case IProblem.RedundantNullCheckOnNonNullMessageSend:
            case IProblem.RedundantNullCheckOnSpecdNonNullLocalVariable:
            case IProblem.SpecdNonNullLocalVariableComparisonYieldsFalse:
            case IProblem.NonNullMessageSendComparisonYieldsFalse:
            case IProblem.RedundantNullCheckOnNonNullSpecdField:
            case IProblem.NonNullSpecdFieldComparisonYieldsFalse:
            case IProblem.RedundantNullCheckOnField:
            case IProblem.FieldComparisonYieldsFalse:
            case IProblem.RedundantNullCheckAgainstNonNullType:
                return CompilerOptions.RedundantNullCheck;
            case IProblem.UndocumentedEmptyBlock:
                return 134217728;
            case IProblem.FieldMissingDeprecatedAnnotation:
            case IProblem.MethodMissingDeprecatedAnnotation:
            case IProblem.TypeMissingDeprecatedAnnotation:
                return CompilerOptions.MissingDeprecatedAnnotation;
            case IProblem.UnhandledWarningToken:
                return CompilerOptions.UnhandledWarningToken;
            case IProblem.UnusedWarningToken:
                return CompilerOptions.UnusedWarningToken;
            case IProblem.BoxingConversion:
            case IProblem.UnboxingConversion:
                return CompilerOptions.AutoBoxing;
            case IProblem.MissingEnumDefaultCase:
            case IProblem.MissingDefaultCase:
                return CompilerOptions.MissingDefaultCase;
            case IProblem.PotentiallyUnclosedCloseable:
            case IProblem.PotentiallyUnclosedCloseableAtExit:
                return CompilerOptions.PotentiallyUnclosedCloseable;
            case IProblem.UnclosedCloseable:
            case IProblem.UnclosedCloseableAtExit:
                return CompilerOptions.UnclosedCloseable;
            case IProblem.ExplicitlyClosedAutoCloseable:
                return CompilerOptions.ExplicitlyClosedAutoCloseable;
            case IProblem.MissingNonNullByDefaultAnnotationOnPackage:
            case IProblem.MissingNonNullByDefaultAnnotationOnType:
                return CompilerOptions.MissingNonNullByDefaultAnnotation;
            case IProblem.UnusedPrivateType:
            case IProblem.UnusedPrivateField:
            case IProblem.UnusedPrivateMethod:
            case IProblem.UnusedPrivateConstructor:
                return 32768;
            case IProblem.IndirectAccessToStaticType:
            case IProblem.IndirectAccessToStaticField:
            case IProblem.IndirectAccessToStaticMethod:
                return 268435456;
            case IProblem.UnnecessaryCast:
            case IProblem.UnnecessaryInstanceof:
                return 67108864;
            case IProblem.NonStaticAccessToStaticField:
            case IProblem.NonStaticAccessToStaticMethod:
                return 2048;
            case IProblem.UnqualifiedFieldAccess:
                return 4194304;
            case IProblem.FieldHidingLocalVariable:
            case IProblem.FieldHidingField:
                return 131072;
            case IProblem.MethodCanBeStatic:
                return CompilerOptions.MethodCanBeStatic;
            case IProblem.MethodCanBePotentiallyStatic:
                return CompilerOptions.MethodCanBePotentiallyStatic;
            default:
                switch (i10) {
                    case IProblem.JavadocMissingHashCharacter:
                    case IProblem.JavadocEmptyReturnTag:
                    case IProblem.JavadocInvalidValueReference:
                    case IProblem.JavadocUnexpectedText:
                    case IProblem.JavadocInvalidParamTagName:
                        return 33554432;
                    default:
                        switch (i10) {
                            case IProblem.JavadocGenericMethodTypeArgumentMismatch:
                            case IProblem.JavadocNonGenericMethod:
                            case IProblem.JavadocIncorrectArityForParameterizedMethod:
                            case IProblem.JavadocParameterizedMethodArgumentTypeMismatch:
                            case IProblem.JavadocTypeArgumentsForRawGenericMethod:
                            case IProblem.JavadocGenericConstructorTypeArgumentMismatch:
                            case IProblem.JavadocNonGenericConstructor:
                            case IProblem.JavadocIncorrectArityForParameterizedConstructor:
                            case IProblem.JavadocParameterizedConstructorArgumentTypeMismatch:
                            case IProblem.JavadocTypeArgumentsForRawGenericConstructor:
                                return 33554432;
                            default:
                                switch (i10) {
                                    case IProblem.IllegalRedefinitionOfTypeVariable:
                                        return CompilerOptions.NullSpecViolation;
                                    case 976:
                                    case 977:
                                    case 978:
                                        return CompilerOptions.PessimisticNullAnalysisForFreeTypeVariables;
                                    default:
                                        switch (i10) {
                                            case IProblem.UsingDeprecatedModule:
                                            case IProblem.UsingDeprecatedSinceVersionModule:
                                                return 4;
                                            case IProblem.UsingTerminallyDeprecatedModule:
                                            case IProblem.UsingTerminallyDeprecatedSinceVersionModule:
                                                return CompilerOptions.UsingTerminallyDeprecatedAPI;
                                            default:
                                                switch (i10) {
                                                    case IProblem.NonPublicTypeInAPI:
                                                    case IProblem.NotExportedTypeInAPI:
                                                    case IProblem.MissingRequiresTransitiveForTypeInAPI:
                                                        return CompilerOptions.APILeak;
                                                    default:
                                                        switch (i10) {
                                                            case 16777547:
                                                                return CompilerOptions.RedundantSuperinterface;
                                                            case 16777548:
                                                                return CompilerOptions.ShouldImplementHashcode;
                                                            default:
                                                                switch (i10) {
                                                                    case IProblem.UnsafeRawConstructorInvocation:
                                                                    case IProblem.UnsafeRawMethodInvocation:
                                                                    case IProblem.UnsafeTypeConversion:
                                                                        return CompilerOptions.UncheckedTypeOperation;
                                                                    default:
                                                                        return 0;
                                                                }
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x000d. Please report as an issue. */
    public static int getProblemCategory(int i10, int i11) {
        if ((i10 & 128) == 0) {
            switch (getIrritant(i11)) {
                case 1:
                case 128:
                case 512:
                case 2048:
                case 4194304:
                case 134217728:
                case 268435456:
                case CompilerOptions.FinalParameterBound:
                case CompilerOptions.EnumUsedAsAnIdentifier:
                case CompilerOptions.AutoBoxing:
                case CompilerOptions.AnnotationSuperInterface:
                case CompilerOptions.MissingOverrideAnnotation:
                case CompilerOptions.MissingDeprecatedAnnotation:
                case CompilerOptions.ParameterAssignment:
                case CompilerOptions.MethodCanBeStatic:
                case CompilerOptions.MethodCanBePotentiallyStatic:
                case CompilerOptions.ExplicitlyClosedAutoCloseable:
                    return 80;
                case 2:
                case 16384:
                case 65536:
                case 131072:
                case CompilerOptions.TypeHiding:
                    return 100;
                case 4:
                case CompilerOptions.UsingTerminallyDeprecatedAPI:
                    return 110;
                case 8:
                case 64:
                case 8192:
                case 262144:
                case 524288:
                case 16777216:
                case CompilerOptions.MissingSerialVersion:
                case 536870976:
                case CompilerOptions.NullReference:
                case CompilerOptions.MissingEnumConstantCase:
                case CompilerOptions.FallthroughCase:
                case CompilerOptions.OverridingMethodWithoutSuperInvocation:
                case CompilerOptions.PotentialNullReference:
                case CompilerOptions.RedundantNullCheck:
                case CompilerOptions.ComparingIdentical:
                case 805306368:
                case CompilerOptions.ShouldImplementHashcode:
                case CompilerOptions.DeadCode:
                case CompilerOptions.UnusedObjectAllocation:
                case CompilerOptions.UnclosedCloseable:
                case CompilerOptions.PotentiallyUnclosedCloseable:
                case CompilerOptions.MissingDefaultCase:
                case CompilerOptions.PessimisticNullAnalysisForFreeTypeVariables:
                case CompilerOptions.NonNullTypeVariableFromLegacyInvocation:
                case CompilerOptions.UnlikelyCollectionMethodArgumentType:
                case CompilerOptions.UnlikelyEqualsArgumentType:
                case CompilerOptions.APILeak:
                case CompilerOptions.UnstableAutoModuleName:
                    return 90;
                case 16:
                case 32:
                case 1024:
                case 32768:
                case 8388608:
                case 67108864:
                case CompilerOptions.UnnecessaryElse:
                case CompilerOptions.UnhandledWarningToken:
                case CompilerOptions.UnusedLabel:
                case CompilerOptions.UnusedWarningToken:
                case CompilerOptions.RedundantSuperinterface:
                case CompilerOptions.RedundantSpecificationOfTypeArguments:
                case CompilerOptions.UnusedTypeParameter:
                case CompilerOptions.UnusedExceptionParameter:
                    return 120;
                case 256:
                    return 140;
                case 4096:
                    return 0;
                case 1048576:
                case 2097152:
                case 33554432:
                case 33554436:
                case 1115684864:
                    return 70;
                case CompilerOptions.UncheckedTypeOperation:
                case CompilerOptions.RawTypeReference:
                    return 130;
                case 536870944:
                case CompilerOptions.DiscouragedReference:
                    return 150;
                case CompilerOptions.NullSpecViolation:
                case CompilerOptions.NullAnnotationInferenceConflict:
                case CompilerOptions.NullUncheckedConversion:
                case CompilerOptions.MissingNonNullByDefaultAnnotation:
                case CompilerOptions.NonnullParameterAnnotationDropped:
                    return 90;
                case CompilerOptions.RedundantNullAnnotation:
                    return 120;
            }
        }
        if (i11 != 1102) {
            if (i11 == 8389927 || i11 == 16777540 || i11 == 536871612) {
                return 10;
            }
            if ((1073741824 & i11) != 0) {
                return 20;
            }
            if ((268435456 & i11) != 0) {
                return 30;
            }
            if ((16777216 & i11) != 0) {
                return 40;
            }
            if ((234881024 & i11) != 0) {
                return 50;
            }
            if ((8388608 & i11) != 0) {
                return 160;
            }
            return (4194304 & i11) != 0 ? 170 : 60;
        }
        return 120;
    }

    private void handle(int i10, String[] strArr, int i11, String[] strArr2, int i12, int i13, int i14) {
        ReferenceContext referenceContext = this.referenceContext;
        handle(i10, strArr, i11, strArr2, i12, i13, i14, referenceContext, referenceContext == null ? null : referenceContext.compilationResult());
        this.referenceContext = null;
    }

    private void inheritedMethodReducesVisibility(int i10, int i11, MethodBinding methodBinding, MethodBinding[] methodBindingArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(methodBinding.declaringClass.readableName());
        stringBuffer.append('.');
        stringBuffer.append(methodBinding.readableName());
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(methodBinding.declaringClass.shortReadableName());
        stringBuffer2.append('.');
        stringBuffer2.append(methodBinding.shortReadableName());
        handle(IProblem.InheritedMethodReducesVisibility, new String[]{stringBuffer.toString(), new String(methodBindingArr[0].declaringClass.readableName())}, new String[]{stringBuffer2.toString(), new String(methodBindingArr[0].declaringClass.shortReadableName())}, i10, i11);
    }

    private boolean isIdentifier(int i10) {
        return i10 == 22;
    }

    private boolean isKeyword(int i10) {
        if (i10 == 17 || i10 == 48 || i10 == 67 || i10 == 70 || i10 == 120 || i10 == 123 || i10 == 85 || i10 == 86) {
            return true;
        }
        switch (i10) {
            case 34:
            case 35:
            case 36:
                return true;
            default:
                switch (i10) {
                    case 38:
                    case 39:
                    case 40:
                        return true;
                    default:
                        switch (i10) {
                            case 50:
                            case 51:
                            case 52:
                            case 53:
                            case 54:
                            case 55:
                            case 56:
                            case 57:
                            case 58:
                            case 59:
                            case 60:
                                return true;
                            default:
                                switch (i10) {
                                    case 73:
                                    case 74:
                                    case 75:
                                    case 76:
                                    case 77:
                                    case 78:
                                    case 79:
                                    case 80:
                                    case 81:
                                    case 82:
                                    case 83:
                                        return true;
                                    default:
                                        switch (i10) {
                                            case 99:
                                            case 100:
                                            case 101:
                                            case 102:
                                            case 103:
                                            case 104:
                                            case 105:
                                            case 106:
                                            case 107:
                                            case 108:
                                            case 109:
                                            case 110:
                                            case 111:
                                            case 112:
                                                return true;
                                            default:
                                                return false;
                                        }
                                }
                        }
                }
        }
    }

    private boolean isLiteral(int i10) {
        return Scanner.isLiteral(i10);
    }

    private boolean isRecoveredName(char[] cArr) {
        return cArr == RecoveryScanner.FAKE_IDENTIFIER;
    }

    private boolean javadocVisibility(int i10, int i11) {
        if (i11 < 0) {
            return true;
        }
        int i12 = i11 & 7;
        return i12 != 0 ? i12 != 2 ? (i12 == 4 && i10 == 1) ? false : true : i10 == 2 : i10 == 0 || i10 == 2;
    }

    private String javadocVisibilityArgument(int i10, int i11) {
        int i12 = i11 & 7;
        if (i12 != 0) {
            if (i12 == 1) {
                return "public";
            }
            if (i12 != 2) {
                if (i12 == 4 && i10 != 1) {
                    return "protected";
                }
            } else if (i10 == 2) {
                return "private";
            }
        } else if (i10 == 0 || i10 == 2) {
            return "default";
        }
        return null;
    }

    public static AnnotationBinding[] lambda$2(MethodBinding methodBinding) {
        return methodBinding.declaringClass.getAnnotations();
    }

    public static String lambda$6(PackageBinding packageBinding) {
        return String.valueOf(packageBinding.enclosingModule.readableName());
    }

    public static String lambda$7(ModuleBinding moduleBinding) {
        return String.valueOf(moduleBinding.name());
    }

    public static String lambda$8(ModuleBinding moduleBinding) {
        return String.valueOf(moduleBinding.name());
    }

    private boolean methodHasMissingSwitchDefault() {
        Object obj = this.referenceContext;
        MethodScope methodScope = obj instanceof Block ? ((Block) obj).scope.methodScope() : obj instanceof AbstractMethodDeclaration ? ((AbstractMethodDeclaration) obj).scope : null;
        return methodScope != null && methodScope.hasMissingSwitchDefault;
    }

    private void missingSwitchExpressionEnumConstantCase(CaseStatement caseStatement, FieldBinding fieldBinding, ASTNode aSTNode) {
        handle(IProblem.SwitchExpressionMissingEnumConstantCase, new String[]{new String(fieldBinding.declaringClass.readableName()), new String(fieldBinding.name)}, new String[]{new String(fieldBinding.declaringClass.shortReadableName()), new String(fieldBinding.name)}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    private int nodeSourceEnd(ASTNode aSTNode) {
        FieldBinding lastFieldBinding;
        if ((aSTNode instanceof Reference) && (lastFieldBinding = ((Reference) aSTNode).lastFieldBinding()) != null) {
            return nodeSourceEnd(lastFieldBinding, aSTNode);
        }
        return aSTNode.sourceEnd;
    }

    private int nodeSourceStart(ASTNode aSTNode) {
        FieldBinding lastFieldBinding;
        if ((aSTNode instanceof Reference) && (lastFieldBinding = ((Reference) aSTNode).lastFieldBinding()) != null) {
            return nodeSourceStart(lastFieldBinding, aSTNode);
        }
        return aSTNode.sourceStart;
    }

    private void nullityMismatchIsFreeTypeVariable(TypeBinding typeBinding, int i10, int i11) {
        CompilerOptions compilerOptions = this.options;
        char[][] cArr = compilerOptions.nullableAnnotationName;
        String[] strArr = {new String(compilerOptions.nonNullAnnotationName[r0.length - 1]), new String(typeBinding.readableName()), new String(cArr[cArr.length - 1])};
        handle(IProblem.RequiredNonNullButProvidedFreeTypeVariable, strArr, strArr, i10, i11);
    }

    private String parameterBoundAsString(TypeVariableBinding typeVariableBinding, boolean z10) {
        StringBuffer stringBuffer = new StringBuffer(10);
        if (TypeBinding.equalsEquals(typeVariableBinding.firstBound, typeVariableBinding.superclass)) {
            ReferenceBinding referenceBinding = typeVariableBinding.superclass;
            stringBuffer.append(z10 ? referenceBinding.shortReadableName() : referenceBinding.readableName());
        }
        int length = typeVariableBinding.superInterfaces.length;
        if (length > 0) {
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 > 0 || TypeBinding.equalsEquals(typeVariableBinding.firstBound, typeVariableBinding.superclass)) {
                    stringBuffer.append(" & ");
                }
                ReferenceBinding[] referenceBindingArr = typeVariableBinding.superInterfaces;
                stringBuffer.append(z10 ? referenceBindingArr[i10].shortReadableName() : referenceBindingArr[i10].readableName());
            }
        }
        return stringBuffer.toString();
    }

    private String replaceIfSynthetic(String str) {
        return str.equals("BeginTypeArguments") ? "." : str.equals("BeginLambda") ? "(" : str;
    }

    private int retrieveClosingAngleBracketPosition(int i10) {
        CompilationResult compilationResult;
        ICompilationUnit compilationUnit;
        ReferenceContext referenceContext = this.referenceContext;
        if (referenceContext == null || (compilationResult = referenceContext.compilationResult()) == null || (compilationUnit = compilationResult.getCompilationUnit()) == null) {
            return i10;
        }
        char[] contents = compilationUnit.getContents();
        if (contents.length == 0) {
            return i10;
        }
        if (this.positionScanner == null) {
            CompilerOptions compilerOptions = this.options;
            Scanner scanner = new Scanner(false, false, false, compilerOptions.sourceLevel, compilerOptions.complianceLevel, null, null, false);
            this.positionScanner = scanner;
            scanner.returnOnlyGreater = true;
        }
        this.positionScanner.setSource(contents);
        this.positionScanner.resetTo(i10, contents.length);
        int i11 = 0;
        while (true) {
            try {
                int nextToken = this.positionScanner.getNextToken();
                if (nextToken == 61) {
                    return i10;
                }
                if (nextToken == 11) {
                    i11++;
                } else if (nextToken == 15) {
                    i11--;
                    if (i11 == 0) {
                        return this.positionScanner.currentPosition - 1;
                    }
                } else if (nextToken == 49) {
                    return i10;
                }
            } catch (InvalidInputException unused) {
                return i10;
            }
        }
    }

    private int retrieveEndingPositionAfterOpeningParenthesis(int i10, int i11, int i12) {
        CompilationResult compilationResult;
        ICompilationUnit compilationUnit;
        ReferenceContext referenceContext = this.referenceContext;
        if (referenceContext == null || (compilationResult = referenceContext.compilationResult()) == null || (compilationUnit = compilationResult.getCompilationUnit()) == null) {
            return i11;
        }
        char[] contents = compilationUnit.getContents();
        if (contents.length == 0) {
            return i11;
        }
        if (this.positionScanner == null) {
            CompilerOptions compilerOptions = this.options;
            this.positionScanner = new Scanner(false, false, false, compilerOptions.sourceLevel, compilerOptions.complianceLevel, null, null, false);
        }
        this.positionScanner.setSource(contents);
        this.positionScanner.resetTo(i10, i11);
        int i13 = i11;
        while (true) {
            try {
                int nextToken = this.positionScanner.getNextToken();
                if (nextToken == 61) {
                    break;
                }
                if (nextToken == 25) {
                    return i13;
                }
                i13 = this.positionScanner.currentPosition - 1;
            } catch (InvalidInputException unused) {
            }
        }
        return i11;
    }

    private int retrieveStartingPositionAfterOpeningParenthesis(int i10, int i11, int i12) {
        CompilationResult compilationResult;
        ICompilationUnit compilationUnit;
        ReferenceContext referenceContext = this.referenceContext;
        if (referenceContext == null || (compilationResult = referenceContext.compilationResult()) == null || (compilationUnit = compilationResult.getCompilationUnit()) == null) {
            return i10;
        }
        char[] contents = compilationUnit.getContents();
        if (contents.length == 0) {
            return i10;
        }
        if (this.positionScanner == null) {
            CompilerOptions compilerOptions = this.options;
            this.positionScanner = new Scanner(false, false, false, compilerOptions.sourceLevel, compilerOptions.complianceLevel, null, null, false);
        }
        this.positionScanner.setSource(contents);
        this.positionScanner.resetTo(i10, i11);
        int i13 = 0;
        while (true) {
            try {
                int nextToken = this.positionScanner.getNextToken();
                if (nextToken == 61) {
                    return i10;
                }
                if (nextToken == 23 && (i13 = i13 + 1) == i12) {
                    this.positionScanner.getNextToken();
                    return this.positionScanner.startPosition;
                }
            } catch (InvalidInputException unused) {
                return i10;
            }
        }
    }

    private String shortAnnotatedTypeName(TypeBinding typeBinding, char[][] cArr) {
        if ((typeBinding.tagBits & TagBits.AnnotationNullMASK) != 0) {
            return String.valueOf(typeBinding.nullAnnotatedReadableName(this.options, true));
        }
        return internalAnnotatedTypeName(cArr[cArr.length - 1], typeBinding.shortReadableName(), 0);
    }

    private void syntaxError(int i10, int i11, int i12, int i13, char[] cArr, String str, String str2) {
        if (i13 == 37 && str2 != null && str2.equals("@")) {
            return;
        }
        if (isKeyword(i13) || isLiteral(i13) || isIdentifier(i13)) {
            str = new String(cArr);
        }
        String[] strArr = str2 != null ? new String[]{str, replaceIfSynthetic(str2)} : new String[]{str};
        handle(i10, strArr, strArr, i11, i12);
    }

    private String typesAsString(MethodBinding methodBinding, boolean z10) {
        return typesAsString(methodBinding, methodBinding.parameters, z10);
    }

    public void abortDueToInternalError(String str) {
        abortDueToInternalError(str, null);
    }

    public void abstractMethodCannotBeOverridden(SourceTypeBinding sourceTypeBinding, MethodBinding methodBinding) {
        handle(IProblem.AbstractMethodCannotBeOverridden, new String[]{new String(sourceTypeBinding.sourceName()), new String(CharOperation.concat(methodBinding.declaringClass.readableName(), methodBinding.readableName(), '.'))}, new String[]{new String(sourceTypeBinding.sourceName()), new String(CharOperation.concat(methodBinding.declaringClass.shortReadableName(), methodBinding.shortReadableName(), '.'))}, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void abstractMethodInAbstractClass(SourceTypeBinding sourceTypeBinding, AbstractMethodDeclaration abstractMethodDeclaration) {
        if (sourceTypeBinding.isEnum() && sourceTypeBinding.isLocalType()) {
            String[] strArr = {new String(sourceTypeBinding.scope.enclosingMethodScope().initializedField.sourceField().name), new String(abstractMethodDeclaration.selector)};
            handle(IProblem.AbstractMethodInEnum, strArr, strArr, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
        } else {
            String[] strArr2 = {new String(sourceTypeBinding.sourceName()), new String(abstractMethodDeclaration.selector)};
            handle(IProblem.AbstractMethodInAbstractClass, strArr2, strArr2, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
        }
    }

    public void abstractMethodInConcreteClass(SourceTypeBinding sourceTypeBinding) {
        if (!sourceTypeBinding.isEnum() || !sourceTypeBinding.isLocalType()) {
            String[] strArr = {new String(sourceTypeBinding.sourceName())};
            handle(16777549, strArr, strArr, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
        } else {
            FieldDeclaration sourceField = sourceTypeBinding.scope.enclosingMethodScope().initializedField.sourceField();
            String[] strArr2 = {new String(sourceField.name)};
            handle(IProblem.EnumConstantCannotDefineAbstractMethod, strArr2, strArr2, sourceField.sourceStart(), sourceField.sourceEnd());
        }
    }

    public void abstractMethodMustBeImplemented(SourceTypeBinding sourceTypeBinding, MethodBinding methodBinding) {
        if (sourceTypeBinding.isEnum() && sourceTypeBinding.isLocalType()) {
            FieldDeclaration sourceField = sourceTypeBinding.scope.enclosingMethodScope().initializedField.sourceField();
            handle(IProblem.EnumConstantMustImplementAbstractMethod, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, false), new String(sourceField.name)}, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, true), new String(sourceField.name)}, sourceField.sourceStart(), sourceField.sourceEnd());
        } else {
            handle(IProblem.AbstractMethodMustBeImplemented, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, false), new String(methodBinding.declaringClass.readableName()), new String(sourceTypeBinding.readableName())}, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, true), new String(methodBinding.declaringClass.shortReadableName()), new String(sourceTypeBinding.shortReadableName())}, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
        }
    }

    public void abstractMethodNeedingNoBody(AbstractMethodDeclaration abstractMethodDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.BodyForAbstractMethod, strArr, strArr, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd, abstractMethodDeclaration, abstractMethodDeclaration.compilationResult());
    }

    public void alreadyDefinedLabel(char[] cArr, ASTNode aSTNode) {
        String[] strArr = {new String(cArr)};
        handle(IProblem.DuplicateLabel, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void annotationCannotOverrideMethod(MethodBinding methodBinding, MethodBinding methodBinding2) {
        AbstractMethodDeclaration sourceMethod = methodBinding.sourceMethod();
        handle(IProblem.AnnotationCannotOverrideMethod, new String[]{new String(methodBinding.declaringClass.readableName()), new String(methodBinding2.declaringClass.readableName()), new String(methodBinding2.selector), typesAsString(methodBinding2, false)}, new String[]{new String(methodBinding.declaringClass.shortReadableName()), new String(methodBinding2.declaringClass.shortReadableName()), new String(methodBinding2.selector), typesAsString(methodBinding2, true)}, sourceMethod.sourceStart, sourceMethod.sourceEnd);
    }

    public void annotationCircularity(TypeBinding typeBinding, TypeBinding typeBinding2, TypeReference typeReference) {
        if (TypeBinding.equalsEquals(typeBinding, typeBinding2)) {
            handle(IProblem.AnnotationCircularitySelfReference, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, typeReference.sourceStart, typeReference.sourceEnd);
        } else {
            handle(IProblem.AnnotationCircularity, new String[]{new String(typeBinding.readableName()), new String(typeBinding2.readableName())}, new String[]{new String(typeBinding.shortReadableName()), new String(typeBinding2.shortReadableName())}, typeReference.sourceStart, typeReference.sourceEnd);
        }
    }

    public void annotationMembersCannotHaveParameters(AnnotationMethodDeclaration annotationMethodDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.AnnotationMembersCannotHaveParameters, strArr, strArr, annotationMethodDeclaration.sourceStart, annotationMethodDeclaration.sourceEnd);
    }

    public void annotationMembersCannotHaveTypeParameters(AnnotationMethodDeclaration annotationMethodDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.AnnotationMembersCannotHaveTypeParameters, strArr, strArr, annotationMethodDeclaration.sourceStart, annotationMethodDeclaration.sourceEnd);
    }

    public void annotationTypeDeclarationCannotHaveConstructor(ConstructorDeclaration constructorDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.AnnotationTypeDeclarationCannotHaveConstructor, strArr, strArr, constructorDeclaration.sourceStart, constructorDeclaration.sourceEnd);
    }

    public void annotationTypeDeclarationCannotHaveSuperclass(TypeDeclaration typeDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.AnnotationTypeDeclarationCannotHaveSuperclass, strArr, strArr, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void annotationTypeDeclarationCannotHaveSuperinterfaces(TypeDeclaration typeDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.AnnotationTypeDeclarationCannotHaveSuperinterfaces, strArr, strArr, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void annotationTypeUsedAsSuperinterface(SourceTypeBinding sourceTypeBinding, TypeReference typeReference, ReferenceBinding referenceBinding) {
        handle(IProblem.AnnotationTypeUsedAsSuperInterface, new String[]{new String(referenceBinding.readableName()), new String(sourceTypeBinding.sourceName())}, new String[]{new String(referenceBinding.shortReadableName()), new String(sourceTypeBinding.sourceName())}, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void annotationValueMustBeAnnotation(TypeBinding typeBinding, char[] cArr, Expression expression, TypeBinding typeBinding2) {
        String str = new String(cArr);
        handle(IProblem.AnnotationValueMustBeAnnotation, new String[]{new String(typeBinding.readableName()), str, new String(typeBinding2.readableName())}, new String[]{new String(typeBinding.shortReadableName()), str, new String(typeBinding2.readableName())}, expression.sourceStart, expression.sourceEnd);
    }

    public void annotationValueMustBeArrayInitializer(TypeBinding typeBinding, char[] cArr, Expression expression) {
        String str = new String(cArr);
        handle(IProblem.AnnotationValueMustBeArrayInitializer, new String[]{new String(typeBinding.readableName()), str}, new String[]{new String(typeBinding.shortReadableName()), str}, expression.sourceStart, expression.sourceEnd);
    }

    public void annotationValueMustBeClassLiteral(TypeBinding typeBinding, char[] cArr, Expression expression) {
        String str = new String(cArr);
        handle(IProblem.AnnotationValueMustBeClassLiteral, new String[]{new String(typeBinding.readableName()), str}, new String[]{new String(typeBinding.shortReadableName()), str}, expression.sourceStart, expression.sourceEnd);
    }

    public void annotationValueMustBeConstant(TypeBinding typeBinding, char[] cArr, Expression expression, boolean z10) {
        String str = new String(cArr);
        if (z10) {
            handle(IProblem.AnnotationValueMustBeAnEnumConstant, new String[]{new String(typeBinding.readableName()), str}, new String[]{new String(typeBinding.shortReadableName()), str}, expression.sourceStart, expression.sourceEnd);
        } else {
            handle(IProblem.AnnotationValueMustBeConstant, new String[]{new String(typeBinding.readableName()), str}, new String[]{new String(typeBinding.shortReadableName()), str}, expression.sourceStart, expression.sourceEnd);
        }
    }

    public void anonymousClassCannotExtendFinalClass(TypeReference typeReference, TypeBinding typeBinding) {
        handle(IProblem.AnonymousClassCannotExtendFinalClass, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void anonymousDiamondWithNonDenotableTypeArguments(TypeReference typeReference, TypeBinding typeBinding) {
        handle(IProblem.NonDenotableTypeArgumentForAnonymousDiamond, new String[]{new String(typeBinding.leafComponentType().shortReadableName()), typeReference.toString()}, new String[]{new String(typeBinding.leafComponentType().shortReadableName()), typeReference.toString()}, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void argumentTypeCannotBeVoid(ASTNode aSTNode, Argument argument) {
        String[] strArr = {new String(argument.name)};
        handle(IProblem.ArgumentTypeCannotBeVoid, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void argumentTypeCannotBeVoidArray(Argument argument) {
        String[] strArr = ProblemHandler.NoArgument;
        TypeReference typeReference = argument.type;
        handle(IProblem.CannotAllocateVoidArray, strArr, strArr, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void arrayConstantsOnlyInArrayInitializers(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.ArrayConstantsOnlyInArrayInitializers, strArr, strArr, i10, i11);
    }

    public void arrayReferencePotentialNullReference(ArrayReference arrayReference) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.ArrayReferencePotentialNullReference, strArr, strArr, arrayReference.sourceStart, arrayReference.sourceEnd);
    }

    public void assignmentHasNoEffect(AbstractVariableDeclaration abstractVariableDeclaration, char[] cArr) {
        int computeSeverity = computeSeverity(IProblem.AssignmentHasNoEffect);
        if (computeSeverity == 256) {
            return;
        }
        String[] strArr = {new String(cArr)};
        int i10 = abstractVariableDeclaration.sourceStart;
        int i11 = abstractVariableDeclaration.sourceEnd;
        Expression expression = abstractVariableDeclaration.initialization;
        handle(IProblem.AssignmentHasNoEffect, strArr, strArr, computeSeverity, i10, expression != null ? expression.sourceEnd : i11);
    }

    public void attemptToReturnNonVoidExpression(ReturnStatement returnStatement, TypeBinding typeBinding) {
        handle(IProblem.VoidMethodReturnsValue, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, returnStatement.sourceStart, returnStatement.sourceEnd);
    }

    public void attemptToReturnVoidValue(ReturnStatement returnStatement) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.MethodReturnsVoid, strArr, strArr, returnStatement.sourceStart, returnStatement.sourceEnd);
    }

    public void autoManagedResourcesNotBelow17(Statement[] statementArr) {
        Statement statement = statementArr[0];
        Statement statement2 = statementArr[statementArr.length - 1];
        int i10 = statement instanceof LocalDeclaration ? ((LocalDeclaration) statement).declarationSourceStart : statement.sourceStart;
        int i11 = statement2 instanceof LocalDeclaration ? ((LocalDeclaration) statement2).declarationSourceEnd : statement2.sourceEnd;
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.AutoManagedResourceNotBelow17, strArr, strArr, i10, i11);
    }

    public void autoManagedVariableResourcesNotBelow9(Expression expression) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.AutoManagedVariableResourceNotBelow9, strArr, strArr, expression.sourceStart, expression.sourceEnd);
    }

    public void autoModuleWithUnstableName(ModuleReference moduleReference) {
        String[] strArr = {new String(moduleReference.moduleName)};
        handle(IProblem.UnstableAutoModuleName, strArr, strArr, moduleReference.sourceStart, moduleReference.sourceEnd);
    }

    public void autoboxing(Expression expression, TypeBinding typeBinding, TypeBinding typeBinding2) {
        if (this.options.getSeverity(CompilerOptions.AutoBoxing) == 256) {
            return;
        }
        handle(typeBinding.isBaseType() ? IProblem.BoxingConversion : IProblem.UnboxingConversion, new String[]{new String(typeBinding.readableName()), new String(typeBinding2.readableName())}, new String[]{new String(typeBinding.shortReadableName()), new String(typeBinding2.shortReadableName())}, expression.sourceStart, expression.sourceEnd);
    }

    public void boundCannotBeArray(ASTNode aSTNode, TypeBinding typeBinding) {
        handle(IProblem.BoundCannotBeArray, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void boundMustBeAnInterface(ASTNode aSTNode, TypeBinding typeBinding) {
        handle(IProblem.BoundMustBeAnInterface, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void bytecodeExceeds64KLimit(SwitchStatement switchStatement) {
        TypeBinding typeBinding = switchStatement.expression.resolvedType;
        handle(IProblem.BytecodeExceeds64KLimitForSwitchTable, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, 159, switchStatement.sourceStart(), switchStatement.sourceEnd());
    }

    public void cannotAllocateVoidArray(Expression expression) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.CannotAllocateVoidArray, strArr, strArr, expression.sourceStart, expression.sourceEnd);
    }

    public void cannotAssignToFinalField(FieldBinding fieldBinding, ASTNode aSTNode) {
        ReferenceBinding referenceBinding = fieldBinding.declaringClass;
        String[] strArr = {referenceBinding == null ? "array" : new String(referenceBinding.readableName()), new String(fieldBinding.readableName())};
        ReferenceBinding referenceBinding2 = fieldBinding.declaringClass;
        handle(IProblem.FinalFieldAssignment, strArr, new String[]{referenceBinding2 != null ? new String(referenceBinding2.shortReadableName()) : "array", new String(fieldBinding.shortReadableName())}, nodeSourceStart(fieldBinding, aSTNode), nodeSourceEnd(fieldBinding, aSTNode));
    }

    public void cannotAssignToFinalLocal(LocalVariableBinding localVariableBinding, ASTNode aSTNode) {
        long j10 = localVariableBinding.tagBits;
        int i10 = (4096 & j10) != 0 ? IProblem.AssignmentToMultiCatchParameter : (j10 & 8192) != 0 ? IProblem.AssignmentToResource : IProblem.NonBlankFinalLocalAssignment;
        String[] strArr = {new String(localVariableBinding.readableName())};
        handle(i10, strArr, strArr, nodeSourceStart(localVariableBinding, aSTNode), nodeSourceEnd(localVariableBinding, aSTNode));
    }

    public void cannotAssignToFinalOuterLocal(LocalVariableBinding localVariableBinding, ASTNode aSTNode) {
        String[] strArr = {new String(localVariableBinding.readableName())};
        handle(IProblem.FinalOuterLocalAssignment, strArr, strArr, nodeSourceStart(localVariableBinding, aSTNode), nodeSourceEnd(localVariableBinding, aSTNode));
    }

    public void cannotDefineDimensionsAndInitializer(ArrayAllocationExpression arrayAllocationExpression) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.CannotDefineDimensionExpressionsWithInit, strArr, strArr, arrayAllocationExpression.sourceStart, arrayAllocationExpression.sourceEnd);
    }

    public void cannotDireclyInvokeAbstractMethod(ASTNode aSTNode, MethodBinding methodBinding) {
        handle(IProblem.DirectInvocationOfAbstractMethod, new String[]{new String(methodBinding.declaringClass.readableName()), new String(methodBinding.selector), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding.declaringClass.shortReadableName()), new String(methodBinding.selector), typesAsString(methodBinding, true)}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void cannotExtendEnum(SourceTypeBinding sourceTypeBinding, TypeReference typeReference, TypeBinding typeBinding) {
        String str = new String(sourceTypeBinding.sourceName());
        String str2 = new String(typeBinding.readableName());
        String str3 = new String(typeBinding.shortReadableName());
        if (str3.equals(str)) {
            str3 = str2;
        }
        handle(IProblem.CannotExtendEnum, new String[]{str2, str}, new String[]{str3, str}, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void cannotImplementIncompatibleNullness(ReferenceContext referenceContext, MethodBinding methodBinding, MethodBinding methodBinding2, boolean z10) {
        int i10;
        int i11;
        String str;
        if (referenceContext instanceof TypeDeclaration) {
            TypeDeclaration typeDeclaration = (TypeDeclaration) referenceContext;
            int i12 = typeDeclaration.sourceStart;
            i11 = typeDeclaration.sourceEnd;
            i10 = i12;
        } else {
            i10 = 0;
            i11 = 0;
        }
        String str2 = "";
        if (z10) {
            str = new String(methodBinding.returnType.nullAnnotatedReadableName(this.options, false)) + C15883c.f126249O;
        } else {
            str = "";
        }
        String[] strArr = {str, new String(methodBinding.selector), typesAsString(methodBinding, false, true), new String(methodBinding.declaringClass.readableName()), new String(methodBinding2.declaringClass.readableName())};
        if (z10) {
            str2 = new String(methodBinding.returnType.nullAnnotatedReadableName(this.options, true)) + C15883c.f126249O;
        }
        handle(IProblem.CannotImplementIncompatibleNullness, strArr, new String[]{str2, new String(methodBinding.selector), typesAsString(methodBinding, true, true), new String(methodBinding.declaringClass.shortReadableName()), new String(methodBinding2.declaringClass.shortReadableName())}, i10, i11);
    }

    public void cannotImportPackage(ImportReference importReference) {
        String[] strArr = {CharOperation.toString(importReference.tokens)};
        handleUntagged(IProblem.CannotImportPackage, strArr, strArr, importReference.sourceStart, importReference.sourceEnd);
    }

    public void cannotInferElidedTypes(AllocationExpression allocationExpression) {
        String[] strArr = {allocationExpression.type.toString()};
        handle(IProblem.CannotInferElidedTypes, strArr, strArr, allocationExpression.sourceStart, allocationExpression.sourceEnd);
    }

    public void cannotInstantiate(Expression expression, TypeBinding typeBinding) {
        handle(IProblem.InvalidClassInstantiation, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, expression.sourceStart, expression.sourceEnd);
    }

    public void cannotInvokeSuperConstructorInEnum(ExplicitConstructorCall explicitConstructorCall, MethodBinding methodBinding) {
        handle(IProblem.CannotInvokeSuperConstructorInEnum, new String[]{new String(methodBinding.declaringClass.sourceName()), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding.declaringClass.sourceName()), typesAsString(methodBinding, true)}, explicitConstructorCall.sourceStart, explicitConstructorCall.sourceEnd);
    }

    public void cannotReadSource(CompilationUnitDeclaration compilationUnitDeclaration, AbortCompilationUnit abortCompilationUnit, boolean z10) {
        String str = new String(compilationUnitDeclaration.compilationResult.fileName);
        if (abortCompilationUnit.exception instanceof CharConversionException) {
            String str2 = abortCompilationUnit.encoding;
            if (str2 == null) {
                str2 = System.getProperty("file.encoding");
            }
            String[] strArr = {str, str2};
            handle(IProblem.InvalidEncoding, strArr, strArr, 0, 0);
            return;
        }
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        if (z10) {
            abortCompilationUnit.exception.printStackTrace(printWriter);
            System.err.println(stringWriter.toString());
            stringWriter = new StringWriter();
            printWriter = new PrintWriter(stringWriter);
        }
        printWriter.print(abortCompilationUnit.exception.getClass().getName());
        printWriter.print(':');
        printWriter.print(abortCompilationUnit.exception.getMessage());
        String[] strArr2 = {str, stringWriter.toString()};
        handle(IProblem.CannotReadSource, strArr2, strArr2, 0, 0);
    }

    public void cannotRedefineTypeArgumentNullity(TypeBinding typeBinding, Binding binding, ASTNode aSTNode) {
        String[] strArr = new String[2];
        String[] strArr2 = new String[2];
        strArr[0] = String.valueOf(typeBinding.nullAnnotatedReadableName(this.options, false));
        strArr2[0] = String.valueOf(typeBinding.nullAnnotatedReadableName(this.options, true));
        if (binding instanceof MethodBinding) {
            ReferenceBinding referenceBinding = ((MethodBinding) binding).declaringClass;
            strArr[1] = String.valueOf(CharOperation.concat(referenceBinding.readableName(), binding.shortReadableName(), '.'));
            strArr2[1] = String.valueOf(CharOperation.concat(referenceBinding.shortReadableName(), binding.shortReadableName(), '.'));
        } else {
            strArr[1] = String.valueOf(binding.readableName());
            strArr2[1] = String.valueOf(binding.shortReadableName());
        }
        handle(IProblem.IllegalRedefinitionOfTypeVariable, strArr, strArr2, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void cannotReferToNonEffectivelyFinalOuterLocal(VariableBinding variableBinding, ASTNode aSTNode) {
        String[] strArr = {new String(variableBinding.readableName())};
        handle(IProblem.OuterLocalMustBeEffectivelyFinal, strArr, strArr, nodeSourceStart(variableBinding, aSTNode), nodeSourceEnd(variableBinding, aSTNode));
    }

    public void cannotReferToNonFinalField(VariableBinding variableBinding, ASTNode aSTNode) {
        String[] strArr = {new String(variableBinding.readableName())};
        handle(IProblem.FieldMustBeFinal, strArr, strArr, nodeSourceStart(variableBinding, aSTNode), nodeSourceEnd(variableBinding, aSTNode));
    }

    public void cannotReferToNonFinalOuterLocal(LocalVariableBinding localVariableBinding, ASTNode aSTNode) {
        String[] strArr = {new String(localVariableBinding.readableName())};
        handle(IProblem.OuterLocalMustBeFinal, strArr, strArr, nodeSourceStart(localVariableBinding, aSTNode), nodeSourceEnd(localVariableBinding, aSTNode));
    }

    public void cannotReturnInInitializer(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.CannotReturnInInitializer, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void cannotThrowNull(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.CannotThrowNull, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void cannotThrowType(ASTNode aSTNode, TypeBinding typeBinding) {
        handle(IProblem.CannotThrowType, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void cannotUseQualifiedEnumConstantInCaseLabel(Reference reference, FieldBinding fieldBinding) {
        handle(IProblem.IllegalQualifiedEnumConstantLabel, new String[]{String.valueOf(fieldBinding.declaringClass.readableName()), String.valueOf(fieldBinding.name)}, new String[]{String.valueOf(fieldBinding.declaringClass.shortReadableName()), String.valueOf(fieldBinding.name)}, reference.sourceStart(), reference.sourceEnd());
    }

    public void cannotUseSuperInCodeSnippet(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.CannotUseSuperInCodeSnippet, strArr, strArr, 159, i10, i11);
    }

    public void cannotUseSuperInJavaLangObject(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.ObjectHasNoSuperclass, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void caseExpressionMustBeConstant(Expression expression) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.NonConstantExpression, strArr, strArr, expression.sourceStart, expression.sourceEnd);
    }

    public void classExtendFinalClass(SourceTypeBinding sourceTypeBinding, TypeReference typeReference, TypeBinding typeBinding) {
        String str = new String(sourceTypeBinding.sourceName());
        String str2 = new String(typeBinding.readableName());
        String str3 = new String(typeBinding.shortReadableName());
        if (str3.equals(str)) {
            str3 = str2;
        }
        handle(IProblem.ClassExtendFinalClass, new String[]{str2, str}, new String[]{str3, str}, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void codeSnippetMissingClass(String str, int i10, int i11) {
        String[] strArr = {str};
        handle(IProblem.CodeSnippetMissingClass, strArr, strArr, 159, i10, i11);
    }

    public void codeSnippetMissingMethod(String str, String str2, String str3, int i10, int i11) {
        String[] strArr = {str, str2, str3};
        handle(IProblem.CodeSnippetMissingMethod, strArr, strArr, 159, i10, i11);
    }

    public void comparingIdenticalExpressions(Expression expression) {
        int computeSeverity = computeSeverity(IProblem.ComparingIdentical);
        if (computeSeverity == 256) {
            return;
        }
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.ComparingIdentical, strArr, strArr, computeSeverity, expression.sourceStart, expression.sourceEnd);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0003. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0006. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0009. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x000c. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x000f. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0012. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:11:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0070 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0043 A[FALL_THROUGH] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int computeSeverity(int i10) {
        int irritant;
        switch (i10) {
            case IProblem.JavadocMissingTagDescription:
                if (!"all_standard_tags".equals(this.options.reportMissingJavadocTagDescription)) {
                    return 256;
                }
                irritant = getIrritant(i10);
                if (irritant != 0) {
                    return 129;
                }
                if ((i10 & Integer.MIN_VALUE) == 0 || this.options.docCommentSupport) {
                    return this.options.getSeverity(irritant);
                }
                return 256;
            case IProblem.JavadocNonStaticTypeFromStaticInvocation:
            case IProblem.JavadocMissingThrowsClassName:
                if (!this.options.reportInvalidJavadocTags) {
                    return 256;
                }
                irritant = getIrritant(i10);
                if (irritant != 0) {
                }
                break;
            case IProblem.ProblemNotAnalysed:
                return 1024;
            case IProblem.TypeCollidesWithPackage:
            case IProblem.RepeatableAnnotationWithRepeatingContainerAnnotation:
            case IProblem.VarargsConflict:
            case IProblem.ToleratedMisplacedTypeAnnotations:
                return 0;
            case IProblem.IllegalUseOfUnderscoreAsAnIdentifier:
                return this.underScoreIsError ? 1 : 0;
            default:
                switch (i10) {
                    case IProblem.JavadocHiddenReference:
                        CompilerOptions compilerOptions = this.options;
                        if (!compilerOptions.reportInvalidJavadocTags || !compilerOptions.reportInvalidJavadocTagsNotVisibleRef) {
                            return 256;
                        }
                        irritant = getIrritant(i10);
                        if (irritant != 0) {
                        }
                        break;
                    case IProblem.JavadocInvalidMemberTypeQualification:
                        break;
                    default:
                        switch (i10) {
                            default:
                                switch (i10) {
                                    default:
                                        switch (i10) {
                                            case IProblem.JavadocUndefinedField:
                                            case IProblem.JavadocAmbiguousField:
                                            case IProblem.JavadocUndefinedConstructor:
                                            case IProblem.JavadocAmbiguousConstructor:
                                            case IProblem.JavadocUndefinedMethod:
                                            case IProblem.JavadocAmbiguousMethod:
                                            case IProblem.JavadocNoMessageSendOnBaseType:
                                            case IProblem.JavadocParameterMismatch:
                                            case IProblem.JavadocNoMessageSendOnArrayType:
                                            case IProblem.JavadocUndefinedType:
                                            case IProblem.JavadocAmbiguousType:
                                            case IProblem.JavadocInternalTypeNameProvided:
                                            case IProblem.JavadocInheritedMethodHidesEnclosingName:
                                            case IProblem.JavadocInheritedFieldHidesEnclosingName:
                                            case IProblem.JavadocInheritedNameHidesEnclosingTypeName:
                                            case IProblem.JavadocAmbiguousMethodReference:
                                                break;
                                            case IProblem.JavadocNotVisibleField:
                                            case IProblem.JavadocNotVisibleConstructor:
                                            case IProblem.JavadocNotVisibleMethod:
                                            case IProblem.JavadocNotVisibleType:
                                                break;
                                            case IProblem.JavadocUsingDeprecatedField:
                                            case IProblem.JavadocUsingDeprecatedConstructor:
                                            case IProblem.JavadocUsingDeprecatedMethod:
                                            case IProblem.JavadocUsingDeprecatedType:
                                                CompilerOptions compilerOptions2 = this.options;
                                                if (!compilerOptions2.reportInvalidJavadocTags || !compilerOptions2.reportInvalidJavadocTagsDeprecatedRef) {
                                                    return 256;
                                                }
                                                irritant = getIrritant(i10);
                                                if (irritant != 0) {
                                                }
                                                break;
                                            default:
                                                switch (i10) {
                                                    case IProblem.JavadocEmptyReturnTag:
                                                        if ("no_tag".equals(this.options.reportMissingJavadocTagDescription)) {
                                                            return 256;
                                                        }
                                                        irritant = getIrritant(i10);
                                                        if (irritant != 0) {
                                                        }
                                                        break;
                                                    default:
                                                        switch (i10) {
                                                        }
                                                        irritant = getIrritant(i10);
                                                        if (irritant != 0) {
                                                        }
                                                        break;
                                                    case IProblem.JavadocInvalidValueReference:
                                                        break;
                                                }
                                        }
                                    case IProblem.JavadocDuplicateThrowsClassName:
                                    case IProblem.JavadocInvalidThrowsClassName:
                                    case IProblem.JavadocMissingSeeReference:
                                        break;
                                }
                            case IProblem.JavadocMissingParamName:
                            case IProblem.JavadocDuplicateParamName:
                            case IProblem.JavadocInvalidParamName:
                                break;
                        }
                }
        }
    }

    public void conditionalArgumentsIncompatibleTypes(ConditionalExpression conditionalExpression, TypeBinding typeBinding, TypeBinding typeBinding2) {
        handle(16777232, new String[]{new String(typeBinding.readableName()), new String(typeBinding2.readableName())}, new String[]{new String(typeBinding.shortReadableName()), new String(typeBinding2.shortReadableName())}, conditionalExpression.sourceStart, conditionalExpression.sourceEnd);
    }

    public void conflictingImport(ImportReference importReference) {
        String[] strArr = {CharOperation.toString(importReference.tokens)};
        handleUntagged(IProblem.ConflictingImport, strArr, strArr, importReference.sourceStart, importReference.sourceEnd);
    }

    public void conflictingInheritedNullAnnotations(ASTNode aSTNode, boolean z10, MethodBinding methodBinding, boolean z11, MethodBinding methodBinding2) {
        CompilerOptions compilerOptions = this.options;
        char[][] cArr = z10 ? compilerOptions.nonNullAnnotationName : compilerOptions.nullableAnnotationName;
        CompilerOptions compilerOptions2 = this.options;
        char[][] cArr2 = z11 ? compilerOptions2.nonNullAnnotationName : compilerOptions2.nullableAnnotationName;
        handle(IProblem.ConflictingInheritedNullAnnotations, new String[]{new String(CharOperation.concatWith(cArr, '.')), new String(methodBinding.declaringClass.readableName()), new String(CharOperation.concatWith(cArr2, '.')), new String(methodBinding2.declaringClass.readableName())}, new String[]{new String(cArr[cArr.length - 1]), new String(methodBinding.declaringClass.shortReadableName()), new String(cArr2[cArr2.length - 1]), new String(methodBinding2.declaringClass.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void conflictingNullAnnotations(MethodBinding methodBinding, ASTNode aSTNode, MethodBinding methodBinding2) {
        CompilerOptions compilerOptions = this.options;
        char[][] cArr = compilerOptions.nonNullAnnotationName;
        char[][] cArr2 = compilerOptions.nullableAnnotationName;
        handle(IProblem.ConflictingNullAnnotations, new String[]{new String(CharOperation.concatWith(cArr, '.')), new String(CharOperation.concatWith(cArr2, '.')), new String(methodBinding2.declaringClass.readableName())}, new String[]{new String(cArr[cArr.length - 1]), new String(cArr2[cArr2.length - 1]), new String(methodBinding2.declaringClass.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void conflictingPackagesFromModules(SplitPackageBinding splitPackageBinding, final ModuleBinding moduleBinding, int i10, int i11) {
        Stream<PackageBinding> stream = splitPackageBinding.incarnations.stream();
        moduleBinding.getClass();
        String[] strArr = {CharOperation.toString(splitPackageBinding.compoundName), (String) stream.filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ModuleBinding.this.canAccess((PackageBinding) obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$6;
                lambda$6 = ProblemReporter.lambda$6((PackageBinding) obj);
                return lambda$6;
            }
        }).sorted().collect(Collectors.joining(", "))};
        handle(IProblem.ConflictingPackageFromModules, strArr, strArr, i10, i11);
    }

    public void conflictingPackagesFromOtherModules(ImportReference importReference, Set<ModuleBinding> set) {
        String[] strArr = {CharOperation.toString(importReference.tokens), (String) set.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$8;
                lambda$8 = ProblemReporter.lambda$8((ModuleBinding) obj);
                return lambda$8;
            }
        }).sorted().collect(Collectors.joining(", "))};
        handle(IProblem.ConflictingPackageFromOtherModules, strArr, strArr, importReference.sourceStart, importReference.sourceEnd);
    }

    public void constantOutOfRange(Literal literal, TypeBinding typeBinding) {
        String[] strArr = {new String(typeBinding.readableName()), new String(literal.source())};
        handle(IProblem.NumericValueOutOfRange, strArr, strArr, literal.sourceStart, literal.sourceEnd);
    }

    public void constructedArrayIncompatible(ReferenceExpression referenceExpression, TypeBinding typeBinding, TypeBinding typeBinding2) {
        handle(IProblem.ConstructedArrayIncompatible, new String[]{new String(typeBinding.readableName()), new String(typeBinding2.readableName())}, new String[]{new String(typeBinding.shortReadableName()), new String(typeBinding2.shortReadableName())}, referenceExpression.sourceStart, referenceExpression.sourceEnd);
    }

    public void containerAnnotationTypeHasNonDefaultMembers(ASTNode aSTNode, ReferenceBinding referenceBinding, char[] cArr) {
        handle(IProblem.ContainerAnnotationTypeHasNonDefaultMembers, new String[]{new String(referenceBinding.readableName()), new String(cArr)}, new String[]{new String(referenceBinding.shortReadableName()), new String(cArr)}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void containerAnnotationTypeHasShorterRetention(ASTNode aSTNode, ReferenceBinding referenceBinding, String str, ReferenceBinding referenceBinding2, String str2) {
        handle(IProblem.ContainerAnnotationTypeHasShorterRetention, new String[]{new String(referenceBinding.readableName()), str, new String(referenceBinding2.readableName()), str2}, new String[]{new String(referenceBinding.shortReadableName()), str, new String(referenceBinding2.shortReadableName()), str2}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void containerAnnotationTypeHasWrongValueType(ASTNode aSTNode, ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2, TypeBinding typeBinding) {
        handle(IProblem.ContainerAnnotationTypeHasWrongValueType, new String[]{new String(referenceBinding.readableName()), new String(referenceBinding2.readableName()), new String(typeBinding.readableName())}, new String[]{new String(referenceBinding.shortReadableName()), new String(referenceBinding2.shortReadableName()), new String(typeBinding.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void containerAnnotationTypeMustHaveValue(ASTNode aSTNode, ReferenceBinding referenceBinding) {
        handle(IProblem.ContainerAnnotationTypeMustHaveValue, new String[]{new String(referenceBinding.readableName())}, new String[]{new String(referenceBinding.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void contradictoryNullAnnotations(Annotation annotation) {
        contradictoryNullAnnotations(annotation.sourceStart, annotation.sourceEnd);
    }

    public void contradictoryNullAnnotationsInferred(MethodBinding methodBinding, ASTNode aSTNode) {
        contradictoryNullAnnotationsInferred(methodBinding, aSTNode.sourceStart, aSTNode.sourceEnd, false);
    }

    public void contradictoryNullAnnotationsOnBounds(Annotation annotation, long j10) {
        char[][] cArr = j10 == 72057594037927936L ? this.options.nonNullAnnotationName : this.options.nullableAnnotationName;
        handle(IProblem.ContradictoryNullAnnotationsOnBound, new String[]{new String(CharOperation.concatWith(cArr, '.'))}, new String[]{new String(cArr[cArr.length - 1])}, annotation.sourceStart, annotation.sourceEnd);
    }

    public void corruptedSignature(TypeBinding typeBinding, char[] cArr, int i10) {
        handle(IProblem.CorruptedSignature, new String[]{new String(typeBinding.readableName()), new String(cArr), String.valueOf(i10)}, new String[]{new String(typeBinding.shortReadableName()), new String(cArr), String.valueOf(i10)}, 159, 0, 0);
    }

    public void cyclicModuleDependency(ModuleBinding moduleBinding, ModuleReference moduleReference) {
        handle(IProblem.CyclicModuleDependency, ProblemHandler.NoArgument, new String[]{CharOperation.charToString(moduleBinding.moduleName), CharOperation.charToString(moduleReference.moduleName)}, moduleReference.sourceStart, moduleReference.sourceEnd);
    }

    public void danglingReference(ReferenceExpression referenceExpression, TypeBinding typeBinding, char[] cArr, TypeBinding[] typeBindingArr) {
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        int length = typeBindingArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                stringBuffer.append(", ");
                stringBuffer2.append(", ");
            }
            stringBuffer.append(new String(typeBindingArr[i10].readableName()));
            stringBuffer2.append(new String(typeBindingArr[i10].shortReadableName()));
        }
        handle(IProblem.DanglingReference, new String[]{new String(typeBinding.readableName()), new String(cArr), stringBuffer.toString()}, new String[]{new String(typeBinding.shortReadableName()), new String(cArr), stringBuffer2.toString()}, referenceExpression.sourceStart, referenceExpression.sourceEnd);
    }

    public void defaultMethodOverridesObjectMethod(MethodBinding methodBinding) {
        int i10;
        int i11;
        AbstractMethodDeclaration sourceMethod = methodBinding.sourceMethod();
        if (sourceMethod != null) {
            int i12 = sourceMethod.sourceStart;
            i11 = sourceMethod.sourceEnd;
            i10 = i12;
        } else {
            i10 = 0;
            i11 = 0;
        }
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.DefaultMethodOverridesObjectMethod, strArr, strArr, i10, i11);
    }

    public void defaultMethodsNotBelow18(MethodDeclaration methodDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.DefaultMethodNotBelow18, strArr, strArr, methodDeclaration.sourceStart, methodDeclaration.sourceEnd);
    }

    public void defaultModifierIllegallySpecified(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.IllegalDefaultModifierSpecification, strArr, strArr, i10, i11);
    }

    public void deprecatedField(final FieldBinding fieldBinding, ASTNode aSTNode) {
        String str = new String(fieldBinding.name);
        int nodeSourceStart = nodeSourceStart(fieldBinding, aSTNode);
        int nodeSourceEnd = nodeSourceEnd(fieldBinding, aSTNode);
        String deprecatedSinceValue = deprecatedSinceValue(new Supplier() {
            @Override
            public final Object get() {
                AnnotationBinding[] annotations;
                annotations = FieldBinding.this.getAnnotations();
                return annotations;
            }
        });
        if (deprecatedSinceValue != null) {
            handle((4611686018427387904L & fieldBinding.tagBits) == 0 ? IProblem.UsingDeprecatedSinceVersionField : IProblem.UsingTerminallyDeprecatedSinceVersionField, new String[]{new String(fieldBinding.declaringClass.readableName()), str, deprecatedSinceValue}, new String[]{new String(fieldBinding.declaringClass.shortReadableName()), str, deprecatedSinceValue}, nodeSourceStart, nodeSourceEnd);
        } else {
            handle((4611686018427387904L & fieldBinding.tagBits) == 0 ? IProblem.UsingDeprecatedField : IProblem.UsingTerminallyDeprecatedField, new String[]{new String(fieldBinding.declaringClass.readableName()), str}, new String[]{new String(fieldBinding.declaringClass.shortReadableName()), str}, nodeSourceStart, nodeSourceEnd);
        }
    }

    public void deprecatedMethod(final MethodBinding methodBinding, ASTNode aSTNode) {
        int i10;
        String str = new String(methodBinding.declaringClass.readableName());
        String str2 = new String(methodBinding.declaringClass.shortReadableName());
        String str3 = new String(methodBinding.selector);
        String typesAsString = typesAsString(methodBinding, false);
        String typesAsString2 = typesAsString(methodBinding, true);
        boolean isConstructor = methodBinding.isConstructor();
        if (isConstructor) {
            if (aSTNode instanceof AllocationExpression) {
                i10 = ((AllocationExpression) aSTNode).nameSourceStart();
            }
            i10 = -1;
        } else {
            if (aSTNode instanceof MessageSend) {
                i10 = (int) (((MessageSend) aSTNode).nameSourcePosition >>> 32);
            }
            i10 = -1;
        }
        int i11 = i10 == -1 ? aSTNode.sourceStart : i10;
        int i12 = aSTNode.sourceEnd;
        boolean z10 = (methodBinding.tagBits & 4611686018427387904L) != 0;
        String deprecatedSinceValue = deprecatedSinceValue(new Supplier() {
            @Override
            public final Object get() {
                AnnotationBinding[] annotations;
                annotations = MethodBinding.this.getAnnotations();
                return annotations;
            }
        });
        if (deprecatedSinceValue == null && methodBinding.isConstructor()) {
            deprecatedSinceValue = deprecatedSinceValue(new Supplier() {
                @Override
                public final Object get() {
                    AnnotationBinding[] lambda$2;
                    lambda$2 = ProblemReporter.lambda$2(MethodBinding.this);
                    return lambda$2;
                }
            });
        }
        if (deprecatedSinceValue != null) {
            if (isConstructor) {
                handle(z10 ? IProblem.UsingTerminallyDeprecatedSinceVersionConstructor : IProblem.UsingDeprecatedSinceVersionConstructor, new String[]{str, typesAsString, deprecatedSinceValue}, new String[]{str2, typesAsString2, deprecatedSinceValue}, i11, i12);
                return;
            } else {
                handle(z10 ? IProblem.UsingTerminallyDeprecatedSinceVersionMethod : IProblem.UsingDeprecatedSinceVersionMethod, new String[]{str, str3, typesAsString, deprecatedSinceValue}, new String[]{str2, str3, typesAsString2, deprecatedSinceValue}, i11, i12);
                return;
            }
        }
        if (isConstructor) {
            handle(z10 ? IProblem.UsingTerminallyDeprecatedConstructor : IProblem.UsingDeprecatedConstructor, new String[]{str, typesAsString}, new String[]{str2, typesAsString2}, i11, i12);
        } else {
            handle(z10 ? IProblem.UsingTerminallyDeprecatedMethod : IProblem.UsingDeprecatedMethod, new String[]{str, str3, typesAsString}, new String[]{str2, str3, typesAsString2}, i11, i12);
        }
    }

    public void deprecatedModule(ModuleReference moduleReference, final ModuleBinding moduleBinding) {
        String deprecatedSinceValue = deprecatedSinceValue(new Supplier() {
            @Override
            public final Object get() {
                AnnotationBinding[] annotations;
                annotations = ModuleBinding.this.getAnnotations();
                return annotations;
            }
        });
        boolean z10 = (moduleBinding.tagBits & 4611686018427387904L) != 0;
        if (deprecatedSinceValue != null) {
            String[] strArr = {String.valueOf(moduleBinding.name()), deprecatedSinceValue};
            handle(z10 ? IProblem.UsingTerminallyDeprecatedSinceVersionModule : IProblem.UsingDeprecatedSinceVersionModule, strArr, strArr, moduleReference.sourceStart, moduleReference.sourceEnd);
        } else {
            String[] strArr2 = {String.valueOf(moduleBinding.name())};
            handle(z10 ? IProblem.UsingTerminallyDeprecatedModule : IProblem.UsingDeprecatedModule, strArr2, strArr2, moduleReference.sourceStart, moduleReference.sourceEnd);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0027, code lost:
    
        r8 = r4.getElementValuePairs();
        r1 = r8.length;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002c, code lost:
    
        if (r2 < r1) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
    
        r3 = r8[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003d, code lost:
    
        if (org.eclipse.jdt.core.compiler.CharOperation.equals(r3.getName(), org.eclipse.jdt.internal.compiler.lookup.TypeConstants.SINCE) == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003f, code lost:
    
        r3 = r3.value;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0043, code lost:
    
        if ((r3 instanceof org.eclipse.jdt.internal.compiler.impl.StringConstant) == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004d, code lost:
    
        return ((org.eclipse.jdt.internal.compiler.impl.StringConstant) r3).stringValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0050, code lost:
    
        r2 = r2 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String deprecatedSinceValue(Supplier<AnnotationBinding[]> supplier) {
        CompilerOptions compilerOptions = this.options;
        if (compilerOptions == null || compilerOptions.complianceLevel < ClassFileConstants.JDK9) {
            return null;
        }
        ReferenceContext referenceContext = this.referenceContext;
        try {
            AnnotationBinding[] annotationBindingArr = supplier.get();
            int length = annotationBindingArr.length;
            int i10 = 0;
            int i11 = 0;
            while (true) {
                if (i11 >= length) {
                    break;
                }
                AnnotationBinding annotationBinding = annotationBindingArr[i11];
                if (annotationBinding.getAnnotationType().f102482id == 44) {
                    break;
                }
                i11++;
            }
            return null;
        } finally {
            this.referenceContext = referenceContext;
        }
    }

    public void deprecatedType(TypeBinding typeBinding, ASTNode aSTNode) {
        deprecatedType(typeBinding, aSTNode, Integer.MAX_VALUE);
    }

    public void dereferencingNullableExpression(Expression expression) {
        if (expression instanceof MessageSend) {
            MessageSend messageSend = (MessageSend) expression;
            messageSendPotentialNullReference(messageSend.binding, messageSend);
        } else {
            String[] strArr = {String.valueOf(this.options.nullableAnnotationName[r0.length - 1])};
            handle(IProblem.DereferencingNullableExpression, strArr, strArr, nodeSourceStart(expression), nodeSourceEnd(expression));
        }
    }

    public void descriptorHasInvisibleType(FunctionalExpression functionalExpression, ReferenceBinding referenceBinding) {
        handle(99, new String[]{new String(referenceBinding.readableName())}, new String[]{new String(referenceBinding.shortReadableName())}, functionalExpression.sourceStart, functionalExpression.diagnosticsSourceEnd());
    }

    public void diamondNotBelow17(ASTNode aSTNode) {
        diamondNotBelow17(aSTNode, Integer.MAX_VALUE);
    }

    public void diamondNotWithAnoymousClasses(TypeReference typeReference) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.CannotUseDiamondWithAnonymousClasses, strArr, strArr, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void diamondNotWithExplicitTypeArguments(TypeReference[] typeReferenceArr) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.CannotUseDiamondWithExplicitTypeArguments, strArr, strArr, typeReferenceArr[0].sourceStart, typeReferenceArr[typeReferenceArr.length - 1].sourceEnd);
    }

    public void disallowedTargetForAnnotation(Annotation annotation) {
        handle(IProblem.DisallowedTargetForAnnotation, new String[]{new String(annotation.resolvedType.readableName())}, new String[]{new String(annotation.resolvedType.shortReadableName())}, annotation.sourceStart, annotation.sourceEnd);
    }

    public void disallowedTargetForContainerAnnotation(Annotation annotation, TypeBinding typeBinding) {
        handle(IProblem.DisallowedTargetForContainerAnnotationType, new String[]{new String(annotation.resolvedType.readableName()), new String(typeBinding.readableName())}, new String[]{new String(annotation.resolvedType.shortReadableName()), new String(typeBinding.shortReadableName())}, annotation.sourceStart, annotation.sourceEnd);
    }

    public void disallowedThisParameter(Receiver receiver) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.DisallowedExplicitThisParameter, strArr, strArr, receiver.sourceStart, receiver.sourceEnd);
    }

    public void duplicateAnnotation(Annotation annotation, long j10) {
        handle(j10 >= ClassFileConstants.JDK1_8 ? IProblem.DuplicateAnnotationNotMarkedRepeatable : IProblem.DuplicateAnnotation, new String[]{new String(annotation.resolvedType.readableName())}, new String[]{new String(annotation.resolvedType.shortReadableName())}, annotation.sourceStart, annotation.sourceEnd);
    }

    public void duplicateAnnotationValue(TypeBinding typeBinding, MemberValuePair memberValuePair) {
        String str = new String(memberValuePair.name);
        handle(IProblem.DuplicateAnnotationMember, new String[]{str, new String(typeBinding.readableName())}, new String[]{str, new String(typeBinding.shortReadableName())}, memberValuePair.sourceStart, memberValuePair.sourceEnd);
    }

    public void duplicateBoundInIntersectionCast(TypeReference typeReference) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.DuplicateBoundInIntersectionCast, strArr, strArr, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void duplicateBounds(ASTNode aSTNode, TypeBinding typeBinding) {
        handle(IProblem.DuplicateBounds, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void duplicateCase(CaseStatement caseStatement) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.DuplicateCase, strArr, strArr, caseStatement.sourceStart, caseStatement.sourceEnd);
    }

    public void duplicateDefaultCase(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.DuplicateDefaultCase, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void duplicateEnumSpecialMethod(SourceTypeBinding sourceTypeBinding, AbstractMethodDeclaration abstractMethodDeclaration) {
        MethodBinding methodBinding = abstractMethodDeclaration.binding;
        handle(IProblem.CannotDeclareEnumSpecialMethod, new String[]{new String(abstractMethodDeclaration.selector), new String(methodBinding.declaringClass.readableName()), typesAsString(methodBinding, false)}, new String[]{new String(abstractMethodDeclaration.selector), new String(methodBinding.declaringClass.shortReadableName()), typesAsString(methodBinding, true)}, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
    }

    public void duplicateFieldInType(SourceTypeBinding sourceTypeBinding, FieldDeclaration fieldDeclaration) {
        handle(IProblem.DuplicateField, new String[]{new String(sourceTypeBinding.sourceName()), new String(fieldDeclaration.name)}, new String[]{new String(sourceTypeBinding.shortReadableName()), new String(fieldDeclaration.name)}, fieldDeclaration.sourceStart, fieldDeclaration.sourceEnd);
    }

    public void duplicateImport(ImportReference importReference) {
        String[] strArr = {CharOperation.toString(importReference.tokens)};
        handleUntagged(IProblem.DuplicateImport, strArr, strArr, importReference.sourceStart, importReference.sourceEnd);
    }

    public void duplicateInheritedMethods(SourceTypeBinding sourceTypeBinding, MethodBinding methodBinding, MethodBinding methodBinding2, boolean z10) {
        int i10;
        if (!TypeBinding.notEquals(methodBinding.declaringClass, methodBinding2.declaringClass)) {
            handle(IProblem.DuplicateParameterizedMethods, new String[]{new String(methodBinding.selector), new String(methodBinding.declaringClass.readableName()), typesAsString(methodBinding, methodBinding.original().parameters, false), typesAsString(methodBinding2, methodBinding2.original().parameters, false)}, new String[]{new String(methodBinding.selector), new String(methodBinding.declaringClass.shortReadableName()), typesAsString(methodBinding, methodBinding.original().parameters, true), typesAsString(methodBinding2, methodBinding2.original().parameters, true)}, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
            return;
        }
        if (!methodBinding.isDefaultMethod() || !methodBinding2.isDefaultMethod()) {
            i10 = IProblem.DuplicateInheritedMethods;
        } else if (!z10) {
            return;
        } else {
            i10 = IProblem.DuplicateInheritedDefaultMethods;
        }
        handle(i10, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, methodBinding.original().parameters, false), typesAsString(methodBinding2, methodBinding2.original().parameters, false), new String(methodBinding.declaringClass.readableName()), new String(methodBinding2.declaringClass.readableName())}, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, methodBinding.original().parameters, true), typesAsString(methodBinding2, methodBinding2.original().parameters, true), new String(methodBinding.declaringClass.shortReadableName()), new String(methodBinding2.declaringClass.shortReadableName())}, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void duplicateInitializationOfBlankFinalField(FieldBinding fieldBinding, Reference reference) {
        String[] strArr = {new String(fieldBinding.readableName())};
        handle(IProblem.DuplicateBlankFinalFieldInitialization, strArr, strArr, nodeSourceStart(fieldBinding, reference), nodeSourceEnd(fieldBinding, reference));
    }

    public void duplicateInitializationOfFinalLocal(LocalVariableBinding localVariableBinding, ASTNode aSTNode) {
        String[] strArr = {new String(localVariableBinding.readableName())};
        handle(IProblem.DuplicateFinalLocalInitialization, strArr, strArr, nodeSourceStart(localVariableBinding, aSTNode), nodeSourceEnd(localVariableBinding, aSTNode));
    }

    public void duplicateMethodInType(AbstractMethodDeclaration abstractMethodDeclaration, boolean z10, int i10) {
        MethodBinding methodBinding = abstractMethodDeclaration.binding;
        if (z10) {
            handle(IProblem.DuplicateMethod, new String[]{new String(abstractMethodDeclaration.selector), new String(methodBinding.declaringClass.readableName()), typesAsString(methodBinding, false)}, new String[]{new String(abstractMethodDeclaration.selector), new String(methodBinding.declaringClass.shortReadableName()), typesAsString(methodBinding, true)}, i10, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
        } else {
            handle(IProblem.DuplicateMethodErasure, new String[]{new String(abstractMethodDeclaration.selector), new String(methodBinding.declaringClass.readableName()), typesAsString(methodBinding, false)}, new String[]{new String(abstractMethodDeclaration.selector), new String(methodBinding.declaringClass.shortReadableName()), typesAsString(methodBinding, true)}, i10, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
        }
    }

    public void duplicateModifierForField(ReferenceBinding referenceBinding, FieldDeclaration fieldDeclaration) {
        String[] strArr = {new String(fieldDeclaration.name)};
        handle(IProblem.DuplicateModifierForField, strArr, strArr, fieldDeclaration.sourceStart, fieldDeclaration.sourceEnd);
    }

    public void duplicateModifierForMethod(ReferenceBinding referenceBinding, AbstractMethodDeclaration abstractMethodDeclaration) {
        handle(IProblem.DuplicateModifierForMethod, new String[]{new String(referenceBinding.sourceName()), new String(abstractMethodDeclaration.selector)}, new String[]{new String(referenceBinding.shortReadableName()), new String(abstractMethodDeclaration.selector)}, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
    }

    public void duplicateModifierForType(SourceTypeBinding sourceTypeBinding) {
        String[] strArr = {new String(sourceTypeBinding.sourceName())};
        handle(IProblem.DuplicateModifierForType, strArr, strArr, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void duplicateModifierForVariable(LocalDeclaration localDeclaration, boolean z10) {
        String[] strArr = {new String(localDeclaration.name)};
        handle(z10 ? IProblem.DuplicateModifierForArgument : IProblem.DuplicateModifierForVariable, strArr, strArr, localDeclaration.sourceStart, localDeclaration.sourceEnd);
    }

    public void duplicateModuleReference(int i10, ModuleReference moduleReference) {
        handle(i10, ProblemHandler.NoArgument, new String[]{CharOperation.charToString(moduleReference.moduleName)}, moduleReference.sourceStart, moduleReference.sourceEnd);
    }

    public void duplicateNestedType(TypeDeclaration typeDeclaration) {
        String[] strArr = {new String(typeDeclaration.name)};
        handle(IProblem.DuplicateNestedType, strArr, strArr, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void duplicateResourceReference(Reference reference) {
        handle(IProblem.DuplicateResource, ProblemHandler.NoArgument, new String[]{reference.toString()}, 0, reference.sourceStart, reference.sourceEnd);
    }

    public void duplicateSuperinterface(SourceTypeBinding sourceTypeBinding, TypeReference typeReference, ReferenceBinding referenceBinding) {
        handle(IProblem.DuplicateSuperInterface, new String[]{new String(referenceBinding.readableName()), new String(sourceTypeBinding.sourceName())}, new String[]{new String(referenceBinding.shortReadableName()), new String(sourceTypeBinding.sourceName())}, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void duplicateTargetInTargetAnnotation(TypeBinding typeBinding, NameReference nameReference) {
        FieldBinding fieldBinding = nameReference.fieldBinding();
        String str = new String(fieldBinding.name);
        handle(IProblem.DuplicateTargetInTargetAnnotation, new String[]{str, new String(typeBinding.readableName())}, new String[]{str, new String(typeBinding.shortReadableName())}, nodeSourceStart(fieldBinding, nameReference), nodeSourceEnd(fieldBinding, nameReference));
    }

    public void duplicateTypeParameterInType(TypeParameter typeParameter) {
        handle(IProblem.DuplicateTypeVariable, new String[]{new String(typeParameter.name)}, new String[]{new String(typeParameter.name)}, typeParameter.sourceStart, typeParameter.sourceEnd);
    }

    public void duplicateTypeReference(int i10, TypeReference typeReference) {
        handle(i10, ProblemHandler.NoArgument, new String[]{typeReference.toString()}, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void duplicateTypes(CompilationUnitDeclaration compilationUnitDeclaration, TypeDeclaration typeDeclaration) {
        String[] strArr = {new String(compilationUnitDeclaration.getFileName()), new String(typeDeclaration.name)};
        this.referenceContext = typeDeclaration;
        int i10 = typeDeclaration.sourceEnd;
        if (i10 <= 0) {
            i10 = -1;
        }
        handle(IProblem.DuplicateTypes, strArr, strArr, typeDeclaration.sourceStart, i10, compilationUnitDeclaration.compilationResult);
    }

    public void emptyControlFlowStatement(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.EmptyControlFlowStatement, strArr, strArr, i10, i11);
    }

    public void enumAbstractMethodMustBeImplemented(AbstractMethodDeclaration abstractMethodDeclaration) {
        MethodBinding methodBinding = abstractMethodDeclaration.binding;
        handle(IProblem.EnumAbstractMethodMustBeImplemented, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, false), new String(methodBinding.declaringClass.readableName())}, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, true), new String(methodBinding.declaringClass.shortReadableName())}, abstractMethodDeclaration.sourceStart(), abstractMethodDeclaration.sourceEnd());
    }

    public void enumConstantMustImplementAbstractMethod(AbstractMethodDeclaration abstractMethodDeclaration, FieldDeclaration fieldDeclaration) {
        MethodBinding methodBinding = abstractMethodDeclaration.binding;
        handle(IProblem.EnumConstantMustImplementAbstractMethod, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, false), new String(fieldDeclaration.name)}, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, true), new String(fieldDeclaration.name)}, fieldDeclaration.sourceStart(), fieldDeclaration.sourceEnd());
    }

    public void enumConstantsCannotBeSurroundedByParenthesis(Expression expression) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.EnumConstantsCannotBeSurroundedByParenthesis, strArr, strArr, expression.sourceStart, expression.sourceEnd);
    }

    public void enumStaticFieldUsedDuringInitialization(FieldBinding fieldBinding, ASTNode aSTNode) {
        handle(IProblem.EnumStaticFieldInInInitializerContext, new String[]{new String(fieldBinding.declaringClass.readableName()), new String(fieldBinding.name)}, new String[]{new String(fieldBinding.declaringClass.shortReadableName()), new String(fieldBinding.name)}, nodeSourceStart(fieldBinding, aSTNode), nodeSourceEnd(fieldBinding, aSTNode));
    }

    public void enumSwitchCannotTargetField(Reference reference, FieldBinding fieldBinding) {
        handle(IProblem.EnumSwitchCannotTargetField, new String[]{String.valueOf(fieldBinding.declaringClass.readableName()), String.valueOf(fieldBinding.name)}, new String[]{String.valueOf(fieldBinding.declaringClass.shortReadableName()), String.valueOf(fieldBinding.name)}, nodeSourceStart(fieldBinding, reference), nodeSourceEnd(fieldBinding, reference));
    }

    public void errorNoMethodFor(MessageSend messageSend, TypeBinding typeBinding, TypeBinding[] typeBindingArr) {
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        int length = typeBindingArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                stringBuffer.append(", ");
                stringBuffer2.append(", ");
            }
            stringBuffer.append(new String(typeBindingArr[i10].readableName()));
            stringBuffer2.append(new String(typeBindingArr[i10].shortReadableName()));
        }
        handle(typeBinding.isArrayType() ? IProblem.NoMessageSendOnArrayType : IProblem.NoMessageSendOnBaseType, new String[]{new String(typeBinding.readableName()), new String(messageSend.selector), stringBuffer.toString()}, new String[]{new String(typeBinding.shortReadableName()), new String(messageSend.selector), stringBuffer2.toString()}, messageSend.sourceStart, messageSend.sourceEnd);
    }

    public void errorNoSuperInInterface(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.NoSuperInInterfaceContext, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void errorThisSuperInStatic(ASTNode aSTNode) {
        String[] strArr = {aSTNode.isSuper() ? "super" : "this"};
        handle(IProblem.ThisInStaticContext, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void explicitlyClosedAutoCloseable(FakedTrackingVariable fakedTrackingVariable) {
        String[] strArr = {String.valueOf(fakedTrackingVariable.name)};
        handle(IProblem.ExplicitlyClosedAutoCloseable, strArr, strArr, fakedTrackingVariable.sourceStart, fakedTrackingVariable.sourceEnd);
    }

    public void explitAnnotationTargetRequired(Annotation annotation) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.ExplicitAnnotationTargetRequired, strArr, strArr, annotation.sourceStart, annotation.sourceEnd);
    }

    public boolean expressionNonNullComparison(Expression expression, boolean z10) {
        String[] strArr;
        int i10;
        int i11;
        TypeBinding typeBinding = expression.resolvedType;
        if (typeBinding != null && (typeBinding.tagBits & TagBits.AnnotationNullMASK) == 72057594037927936L) {
            String[] strArr2 = {String.valueOf(typeBinding.nullAnnotatedReadableName(this.options, true))};
            handle(IProblem.RedundantNullCheckAgainstNonNullType, strArr2, strArr2, nodeSourceStart(expression), nodeSourceEnd(expression));
            return true;
        }
        Expression expression2 = expression;
        while (true) {
            int i12 = 0;
            if (expression2 instanceof Assignment) {
                return false;
            }
            if (!(expression2 instanceof CastExpression)) {
                if (expression2 instanceof MessageSend) {
                    int i13 = z10 ? IProblem.NonNullMessageSendComparisonYieldsFalse : IProblem.RedundantNullCheckOnNonNullMessageSend;
                    strArr = new String[]{new String(((MessageSend) expression2).binding.shortReadableName())};
                    int i14 = expression.sourceStart;
                    i10 = expression.sourceEnd;
                    i12 = i13;
                    i11 = i14;
                } else if (!(expression2 instanceof Reference) || (expression2 instanceof ThisReference) || (expression2 instanceof ArrayReference)) {
                    if (!(expression2 instanceof AllocationExpression) && !(expression2 instanceof ArrayAllocationExpression) && !(expression2 instanceof ArrayInitializer) && !(expression2 instanceof ClassLiteralAccess) && !(expression2 instanceof ThisReference)) {
                        if ((expression2 instanceof Literal) || (expression2 instanceof ConditionalExpression) || (expression2 instanceof SwitchExpression)) {
                            if (expression2 instanceof NullLiteral) {
                                needImplementation(expression);
                                return false;
                            }
                            TypeBinding typeBinding2 = expression2.resolvedType;
                            if (typeBinding2 != null && typeBinding2.isBaseType()) {
                                return false;
                            }
                        } else {
                            if (!(expression2 instanceof BinaryExpression)) {
                                needImplementation(expression2);
                                return false;
                            }
                            if ((expression2.bits & 15) != 11) {
                                return false;
                            }
                        }
                    }
                    strArr = null;
                    i10 = 0;
                    i11 = 0;
                } else {
                    FieldBinding lastFieldBinding = ((Reference) expression2).lastFieldBinding();
                    if (lastFieldBinding == null) {
                        return false;
                    }
                    if (lastFieldBinding.isNonNull()) {
                        int i15 = z10 ? IProblem.NonNullSpecdFieldComparisonYieldsFalse : IProblem.RedundantNullCheckOnNonNullSpecdField;
                        char[][] cArr = this.options.nonNullAnnotationName;
                        i12 = i15;
                        strArr = new String[]{new String(lastFieldBinding.name), new String(cArr[cArr.length - 1])};
                    } else {
                        int i16 = z10 ? IProblem.FieldComparisonYieldsFalse : IProblem.RedundantNullCheckOnField;
                        strArr = new String[]{String.valueOf(lastFieldBinding.name)};
                        i12 = i16;
                    }
                    i11 = nodeSourceStart(lastFieldBinding, expression);
                    i10 = nodeSourceEnd(lastFieldBinding, expression);
                }
                if (i12 == 0) {
                    i12 = z10 ? IProblem.NonNullExpressionComparisonYieldsFalse : IProblem.RedundantNullCheckOnNonNullExpression;
                    i11 = expression.sourceStart;
                    i10 = expression.sourceEnd;
                    strArr = ProblemHandler.NoArgument;
                }
                String[] strArr3 = strArr;
                handle(i12, strArr3, strArr3, i11, i10);
                return true;
            }
            expression2 = ((CastExpression) expression2).expression;
        }
    }

    public void expressionNullReference(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.NullExpressionReference, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void expressionPotentialNullReference(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.PotentialNullExpressionReference, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void expressionShouldBeAVariable(Expression expression) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.ExpressionShouldBeAVariable, strArr, strArr, expression.sourceStart, expression.sourceEnd);
    }

    public void fakeReachable(ASTNode aSTNode) {
        int i10 = aSTNode.sourceStart;
        int i11 = aSTNode.sourceEnd;
        if (aSTNode instanceof LocalDeclaration) {
            LocalDeclaration localDeclaration = (LocalDeclaration) aSTNode;
            i10 = localDeclaration.declarationSourceStart;
            i11 = localDeclaration.declarationSourceEnd;
        }
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.DeadCode, strArr, strArr, i10, i11);
    }

    public void fieldFreeTypeVariableReference(FieldBinding fieldBinding, long j10) {
        String[] strArr = {new String(fieldBinding.type.readableName()), new String(this.options.nullableAnnotationName[r0.length - 1])};
        handle(976, strArr, strArr, (int) (j10 >>> 32), (int) j10);
    }

    public void fieldHiding(FieldDeclaration fieldDeclaration, Binding binding) {
        ReferenceBinding referenceBinding;
        ReferenceBinding referenceBinding2;
        FieldBinding fieldBinding = fieldDeclaration.binding;
        if (CharOperation.equals(TypeConstants.SERIALVERSIONUID, fieldBinding.name) && fieldBinding.isStatic() && fieldBinding.isPrivate() && fieldBinding.isFinal() && TypeBinding.equalsEquals(TypeBinding.LONG, fieldBinding.type) && (referenceBinding2 = fieldBinding.declaringClass) != null && referenceBinding2.findSuperTypeOriginatingFrom(37, false) != null) {
            return;
        }
        if (CharOperation.equals(TypeConstants.SERIALPERSISTENTFIELDS, fieldBinding.name) && fieldBinding.isStatic() && fieldBinding.isPrivate() && fieldBinding.isFinal() && fieldBinding.type.dimensions() == 1 && CharOperation.equals(TypeConstants.CharArray_JAVA_IO_OBJECTSTREAMFIELD, fieldBinding.type.leafComponentType().readableName()) && (referenceBinding = fieldBinding.declaringClass) != null && referenceBinding.findSuperTypeOriginatingFrom(37, false) != null) {
            return;
        }
        boolean z10 = binding instanceof LocalVariableBinding;
        int computeSeverity = computeSeverity(z10 ? IProblem.FieldHidingLocalVariable : IProblem.FieldHidingField);
        if (computeSeverity == 256) {
            return;
        }
        if (z10) {
            handle(IProblem.FieldHidingLocalVariable, new String[]{new String(fieldBinding.declaringClass.readableName()), new String(fieldBinding.name)}, new String[]{new String(fieldBinding.declaringClass.shortReadableName()), new String(fieldBinding.name)}, computeSeverity, nodeSourceStart(binding, fieldDeclaration), nodeSourceEnd(binding, fieldDeclaration));
        } else if (binding instanceof FieldBinding) {
            FieldBinding fieldBinding2 = (FieldBinding) binding;
            handle(IProblem.FieldHidingField, new String[]{new String(fieldBinding.declaringClass.readableName()), new String(fieldBinding.name), new String(fieldBinding2.declaringClass.readableName())}, new String[]{new String(fieldBinding.declaringClass.shortReadableName()), new String(fieldBinding.name), new String(fieldBinding2.declaringClass.shortReadableName())}, computeSeverity, nodeSourceStart(fieldBinding2, fieldDeclaration), nodeSourceEnd(fieldBinding2, fieldDeclaration));
        }
    }

    public void fieldsOrThisBeforeConstructorInvocation(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.ThisSuperDuringConstructorInvocation, strArr, strArr, aSTNode.sourceStart, aSTNode instanceof LambdaExpression ? ((LambdaExpression) aSTNode).diagnosticsSourceEnd() : aSTNode.sourceEnd);
    }

    public void finalMethodCannotBeOverridden(MethodBinding methodBinding, MethodBinding methodBinding2) {
        handle(IProblem.FinalMethodCannotBeOverridden, new String[]{new String(methodBinding2.declaringClass.readableName())}, new String[]{new String(methodBinding2.declaringClass.shortReadableName())}, methodBinding.sourceStart(), methodBinding.sourceEnd());
    }

    public void finalVariableBound(TypeVariableBinding typeVariableBinding, TypeReference typeReference) {
        int computeSeverity;
        if (this.options.sourceLevel >= ClassFileConstants.JDK1_5 && (computeSeverity = computeSeverity(IProblem.FinalBoundForTypeVariable)) != 256) {
            handle(IProblem.FinalBoundForTypeVariable, new String[]{new String(typeVariableBinding.sourceName()), new String(typeReference.resolvedType.readableName())}, new String[]{new String(typeVariableBinding.sourceName()), new String(typeReference.resolvedType.shortReadableName())}, computeSeverity, typeReference.sourceStart, typeReference.sourceEnd);
        }
    }

    public void finallyMustCompleteNormally(Block block) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.FinallyMustCompleteNormally, strArr, strArr, block.sourceStart, block.sourceEnd);
    }

    public void forbiddenReference(FieldBinding fieldBinding, ASTNode aSTNode, byte b10, String str, int i10) {
        int computeSeverity = computeSeverity(i10);
        if (computeSeverity == 256) {
            return;
        }
        handle(i10, new String[]{new String(fieldBinding.readableName())}, getElaborationId(IProblem.ForbiddenReference, (byte) (b10 | 4)), new String[]{str, new String(fieldBinding.shortReadableName()), new String(fieldBinding.declaringClass.shortReadableName())}, computeSeverity, nodeSourceStart(fieldBinding, aSTNode), nodeSourceEnd(fieldBinding, aSTNode));
    }

    public void forwardReference(Reference reference, int i10, FieldBinding fieldBinding) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.ReferenceToForwardField, strArr, strArr, nodeSourceStart(fieldBinding, reference, i10), nodeSourceEnd(fieldBinding, reference, i10));
    }

    public void forwardTypeVariableReference(ASTNode aSTNode, TypeVariableBinding typeVariableBinding) {
        handle(IProblem.ReferenceToForwardTypeVariable, new String[]{new String(typeVariableBinding.readableName())}, new String[]{new String(typeVariableBinding.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void genericInferenceError(String str, InvocationSite invocationSite) {
        genericInferenceProblem(str, invocationSite, 1);
    }

    public void genericInferenceProblem(String str, InvocationSite invocationSite, int i10) {
        int i11;
        int i12;
        String[] strArr = {str};
        if (invocationSite != null) {
            i11 = invocationSite.sourceStart();
            i12 = invocationSite.sourceEnd();
        } else {
            i11 = 0;
            i12 = 0;
        }
        handle(1100, strArr, strArr, i10 | 512, i11, i12);
    }

    public void genericTypeCannotExtendThrowable(TypeDeclaration typeDeclaration) {
        TypeReference typeReference = typeDeclaration.binding.isAnonymousType() ? typeDeclaration.allocation.type : typeDeclaration.superclass;
        handle(IProblem.GenericTypeCannotExtendThrowable, new String[]{new String(typeDeclaration.binding.readableName())}, new String[]{new String(typeDeclaration.binding.shortReadableName())}, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void handleUntagged(int i10, String[] strArr, String[] strArr2, int i11, int i12) {
        boolean z10 = this.suppressTagging;
        this.suppressTagging = true;
        try {
            handle(i10, strArr, strArr2, i11, i12);
        } finally {
            this.suppressTagging = z10;
        }
    }

    public void hiddenCatchBlock(ReferenceBinding referenceBinding, ASTNode aSTNode) {
        handle(IProblem.MaskedCatch, new String[]{new String(referenceBinding.readableName())}, new String[]{new String(referenceBinding.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void hierarchyCircularity(SourceTypeBinding sourceTypeBinding, ReferenceBinding referenceBinding, TypeReference typeReference) {
        int i10;
        int i11;
        if (typeReference == null) {
            i11 = sourceTypeBinding.sourceStart();
            i10 = sourceTypeBinding.sourceEnd();
        } else {
            int i12 = typeReference.sourceStart;
            i10 = typeReference.sourceEnd;
            i11 = i12;
        }
        if (TypeBinding.equalsEquals(sourceTypeBinding, referenceBinding)) {
            handle(IProblem.HierarchyCircularitySelfReference, new String[]{new String(sourceTypeBinding.readableName())}, new String[]{new String(sourceTypeBinding.shortReadableName())}, i11, i10);
        } else {
            handle(IProblem.HierarchyCircularity, new String[]{new String(sourceTypeBinding.readableName()), new String(referenceBinding.readableName())}, new String[]{new String(sourceTypeBinding.shortReadableName()), new String(referenceBinding.shortReadableName())}, i11, i10);
        }
    }

    public void hierarchyHasProblems(SourceTypeBinding sourceTypeBinding) {
        String[] strArr = {new String(sourceTypeBinding.sourceName())};
        handle(IProblem.HierarchyHasProblems, strArr, strArr, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void illFormedParameterizationOfFunctionalInterface(FunctionalExpression functionalExpression) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.illFormedParameterizationOfFunctionalInterface, strArr, strArr, functionalExpression.sourceStart, functionalExpression.diagnosticsSourceEnd());
    }

    public void illegalAbstractModifierCombinationForMethod(ReferenceBinding referenceBinding, AbstractMethodDeclaration abstractMethodDeclaration) {
        String[] strArr = {new String(referenceBinding.sourceName()), new String(abstractMethodDeclaration.selector)};
        handle(IProblem.IllegalAbstractModifierCombinationForMethod, strArr, strArr, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
    }

    public void illegalAccessFromTypeVariable(TypeVariableBinding typeVariableBinding, ASTNode aSTNode) {
        if ((aSTNode.bits & 32768) != 0) {
            javadocInvalidReference(aSTNode.sourceStart, aSTNode.sourceEnd);
        } else {
            String[] strArr = {new String(typeVariableBinding.sourceName)};
            handle(IProblem.IllegalAccessFromTypeVariable, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
        }
    }

    public void illegalAnnotationForBaseType(TypeReference typeReference, Annotation[] annotationArr, long j10) {
        char[][] cArr;
        int i10 = j10 == 36028797018963968L ? 64 : 32;
        if (j10 == 72057594037927936L) {
            cArr = this.options.nonNullAnnotationName;
        } else {
            cArr = this.options.nullableAnnotationName;
        }
        String[] strArr = {new String(cArr[cArr.length - 1]), new String(typeReference.resolvedType.leafComponentType().readableName())};
        Annotation findAnnotation = findAnnotation(annotationArr, i10);
        handle(IProblem.IllegalAnnotationForBaseType, strArr, strArr, findAnnotation != null ? findAnnotation.sourceStart : typeReference.sourceStart, findAnnotation != null ? findAnnotation.sourceEnd : typeReference.sourceEnd);
    }

    public void illegalArrayOfUnionType(char[] cArr, TypeReference typeReference) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.IllegalArrayOfUnionType, strArr, strArr, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void illegalArrayTypeInIntersectionCast(TypeReference typeReference) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.IllegalArrayTypeInIntersectionCast, strArr, strArr, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void illegalClassLiteralForTypeVariable(TypeVariableBinding typeVariableBinding, ASTNode aSTNode) {
        String[] strArr = {new String(typeVariableBinding.sourceName)};
        handle(IProblem.IllegalClassLiteralForTypeVariable, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void illegalExtendedDimensions(AnnotationMethodDeclaration annotationMethodDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.IllegalExtendedDimensions, strArr, strArr, annotationMethodDeclaration.sourceStart, annotationMethodDeclaration.sourceEnd);
    }

    public void illegalGenericArray(TypeBinding typeBinding, ASTNode aSTNode) {
        handle(IProblem.IllegalGenericArray, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void illegalInstanceOfGenericType(TypeBinding typeBinding, ASTNode aSTNode) {
        TypeBinding erasure = typeBinding.leafComponentType().erasure();
        StringBuffer stringBuffer = new StringBuffer(10);
        if (erasure instanceof ReferenceBinding) {
            stringBuffer.append(((ReferenceBinding) erasure).qualifiedSourceName());
        } else {
            stringBuffer.append(erasure.sourceName());
        }
        int length = erasure.typeVariables().length;
        if (length > 0) {
            stringBuffer.append('<');
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 > 0) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
                stringBuffer.append('?');
            }
            stringBuffer.append('>');
        }
        int dimensions = typeBinding.dimensions();
        for (int i11 = 0; i11 < dimensions; i11++) {
            stringBuffer.append(v.f99450n);
        }
        String stringBuffer2 = stringBuffer.toString();
        if (typeBinding.leafComponentType().isTypeVariable()) {
            handle(IProblem.IllegalInstanceofTypeParameter, new String[]{new String(typeBinding.readableName()), stringBuffer2}, new String[]{new String(typeBinding.shortReadableName()), stringBuffer2}, aSTNode.sourceStart, aSTNode.sourceEnd);
        } else {
            handle(IProblem.IllegalInstanceofParameterizedType, new String[]{new String(typeBinding.readableName()), stringBuffer2}, new String[]{new String(typeBinding.shortReadableName()), stringBuffer2}, aSTNode.sourceStart, aSTNode.sourceEnd);
        }
    }

    public void illegalLocalTypeDeclaration(TypeDeclaration typeDeclaration) {
        if (isRecoveredName(typeDeclaration.name)) {
            return;
        }
        int i10 = typeDeclaration.modifiers;
        int i11 = (i10 & 16384) != 0 ? IProblem.CannotDefineEnumInLocalType : (i10 & 8192) != 0 ? IProblem.CannotDefineAnnotationInLocalType : (i10 & 512) != 0 ? IProblem.CannotDefineInterfaceInLocalType : 0;
        if (i11 != 0) {
            String[] strArr = {new String(typeDeclaration.name)};
            handle(i11, strArr, strArr, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
        }
    }

    public void illegalModifierCombinationFinalAbstractForClass(SourceTypeBinding sourceTypeBinding) {
        String[] strArr = {new String(sourceTypeBinding.sourceName())};
        handle(IProblem.IllegalModifierCombinationFinalAbstractForClass, strArr, strArr, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void illegalModifierCombinationFinalVolatileForField(ReferenceBinding referenceBinding, FieldDeclaration fieldDeclaration) {
        String[] strArr = {new String(fieldDeclaration.name)};
        handle(IProblem.IllegalModifierCombinationFinalVolatileForField, strArr, strArr, fieldDeclaration.sourceStart, fieldDeclaration.sourceEnd);
    }

    public void illegalModifierCombinationForInterfaceMethod(AbstractMethodDeclaration abstractMethodDeclaration) {
        String[] strArr = {new String(abstractMethodDeclaration.selector)};
        handle(IProblem.IllegalModifierCombinationForInterfaceMethod, strArr, strArr, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
    }

    public void illegalModifierCombinationForPrivateInterfaceMethod(AbstractMethodDeclaration abstractMethodDeclaration) {
        String[] strArr = {new String(abstractMethodDeclaration.selector)};
        handle(IProblem.IllegalModifierCombinationForPrivateInterfaceMethod9, strArr, strArr, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
    }

    public void illegalModifierForAnnotationField(FieldDeclaration fieldDeclaration) {
        String str = new String(fieldDeclaration.name);
        handle(IProblem.IllegalModifierForAnnotationField, new String[]{new String(fieldDeclaration.binding.declaringClass.readableName()), str}, new String[]{new String(fieldDeclaration.binding.declaringClass.shortReadableName()), str}, fieldDeclaration.sourceStart, fieldDeclaration.sourceEnd);
    }

    public void illegalModifierForAnnotationMember(AbstractMethodDeclaration abstractMethodDeclaration) {
        handle(IProblem.IllegalModifierForAnnotationMethod, new String[]{new String(abstractMethodDeclaration.binding.declaringClass.readableName()), new String(abstractMethodDeclaration.selector)}, new String[]{new String(abstractMethodDeclaration.binding.declaringClass.shortReadableName()), new String(abstractMethodDeclaration.selector)}, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
    }

    public void illegalModifierForAnnotationMemberType(SourceTypeBinding sourceTypeBinding) {
        String[] strArr = {new String(sourceTypeBinding.sourceName())};
        handle(IProblem.IllegalModifierForAnnotationMemberType, strArr, strArr, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void illegalModifierForAnnotationType(SourceTypeBinding sourceTypeBinding) {
        String[] strArr = {new String(sourceTypeBinding.sourceName())};
        handle(IProblem.IllegalModifierForAnnotationType, strArr, strArr, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void illegalModifierForClass(SourceTypeBinding sourceTypeBinding) {
        String[] strArr = {new String(sourceTypeBinding.sourceName())};
        handle(IProblem.IllegalModifierForClass, strArr, strArr, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void illegalModifierForEnum(SourceTypeBinding sourceTypeBinding) {
        String[] strArr = {new String(sourceTypeBinding.sourceName())};
        handle(IProblem.IllegalModifierForEnum, strArr, strArr, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void illegalModifierForEnumConstant(ReferenceBinding referenceBinding, FieldDeclaration fieldDeclaration) {
        String[] strArr = {new String(fieldDeclaration.name)};
        handle(IProblem.IllegalModifierForEnumConstant, strArr, strArr, fieldDeclaration.sourceStart, fieldDeclaration.sourceEnd);
    }

    public void illegalModifierForEnumConstructor(AbstractMethodDeclaration abstractMethodDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.IllegalModifierForEnumConstructor, strArr, strArr, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
    }

    public void illegalModifierForField(ReferenceBinding referenceBinding, FieldDeclaration fieldDeclaration) {
        String[] strArr = {new String(fieldDeclaration.name)};
        handle(IProblem.IllegalModifierForField, strArr, strArr, fieldDeclaration.sourceStart, fieldDeclaration.sourceEnd);
    }

    public void illegalModifierForInterface(SourceTypeBinding sourceTypeBinding) {
        String[] strArr = {new String(sourceTypeBinding.sourceName())};
        handle(IProblem.IllegalModifierForInterface, strArr, strArr, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void illegalModifierForInterfaceField(FieldDeclaration fieldDeclaration) {
        String str = new String(fieldDeclaration.name);
        handle(IProblem.IllegalModifierForInterfaceField, new String[]{new String(fieldDeclaration.binding.declaringClass.readableName()), str}, new String[]{new String(fieldDeclaration.binding.declaringClass.shortReadableName()), str}, fieldDeclaration.sourceStart, fieldDeclaration.sourceEnd);
    }

    public void illegalModifierForInterfaceMethod(AbstractMethodDeclaration abstractMethodDeclaration, long j10) {
        handle(j10 < ClassFileConstants.JDK1_8 ? IProblem.IllegalModifierForInterfaceMethod : j10 < ClassFileConstants.JDK9 ? IProblem.IllegalModifierForInterfaceMethod18 : IProblem.IllegalModifierForInterfaceMethod9, new String[]{new String(abstractMethodDeclaration.selector)}, new String[]{new String(abstractMethodDeclaration.selector)}, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
    }

    public void illegalModifierForLocalClass(SourceTypeBinding sourceTypeBinding) {
        String[] strArr = {new String(sourceTypeBinding.sourceName())};
        handle(IProblem.IllegalModifierForLocalClass, strArr, strArr, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void illegalModifierForMemberClass(SourceTypeBinding sourceTypeBinding) {
        String[] strArr = {new String(sourceTypeBinding.sourceName())};
        handle(IProblem.IllegalModifierForMemberClass, strArr, strArr, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void illegalModifierForMemberEnum(SourceTypeBinding sourceTypeBinding) {
        String[] strArr = {new String(sourceTypeBinding.sourceName())};
        handle(IProblem.IllegalModifierForMemberEnum, strArr, strArr, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void illegalModifierForMemberInterface(SourceTypeBinding sourceTypeBinding) {
        String[] strArr = {new String(sourceTypeBinding.sourceName())};
        handle(IProblem.IllegalModifierForMemberInterface, strArr, strArr, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void illegalModifierForMethod(AbstractMethodDeclaration abstractMethodDeclaration) {
        handle(abstractMethodDeclaration.isConstructor() ? IProblem.IllegalModifierForConstructor : IProblem.IllegalModifierForMethod, new String[]{new String(abstractMethodDeclaration.selector)}, new String[]{new String(abstractMethodDeclaration.selector)}, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
    }

    public void illegalModifierForModule(ModuleDeclaration moduleDeclaration) {
        String[] strArr = {new String(moduleDeclaration.moduleName)};
        handle(IProblem.IllegalModifierForModule, strArr, strArr, moduleDeclaration.sourceStart(), moduleDeclaration.sourceEnd());
    }

    public void illegalModifierForVariable(LocalDeclaration localDeclaration, boolean z10) {
        String[] strArr = {new String(localDeclaration.name)};
        handle(z10 ? IProblem.IllegalModifierForArgument : IProblem.IllegalModifierForVariable, strArr, strArr, localDeclaration.sourceStart, localDeclaration.sourceEnd);
    }

    public void illegalModifiers(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.IllegalModifiers, strArr, strArr, i10, i11);
    }

    public void illegalModifiersForElidedType(Argument argument) {
        String[] strArr = {new String(argument.name)};
        handle(IProblem.IllegalModifiersForElidedType, strArr, strArr, argument.declarationSourceStart, argument.declarationSourceEnd);
    }

    public void illegalParameterRedefinition(Argument argument, ReferenceBinding referenceBinding, TypeBinding typeBinding) {
        int i10 = argument.type.sourceStart;
        if (argument.annotations != null) {
            int i11 = 0;
            while (true) {
                Annotation[] annotationArr = argument.annotations;
                if (i11 >= annotationArr.length) {
                    break;
                }
                Annotation annotation = annotationArr[i11];
                if (annotation.hasNullBit(96)) {
                    i10 = annotation.sourceStart;
                    break;
                }
                i11++;
            }
        }
        handle(IProblem.IllegalParameterNullityRedefinition, new String[]{new String(argument.name), new String(referenceBinding.readableName()), new String(typeBinding.nullAnnotatedReadableName(this.options, false))}, new String[]{new String(argument.name), new String(referenceBinding.shortReadableName()), new String(typeBinding.nullAnnotatedReadableName(this.options, true))}, i10, argument.type.sourceEnd);
    }

    public void illegalPrimitiveOrArrayTypeForEnclosingInstance(TypeBinding typeBinding, ASTNode aSTNode) {
        handle(IProblem.IllegalPrimitiveOrArrayTypeForEnclosingInstance, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void illegalQualifiedParameterizedTypeAllocation(TypeReference typeReference, TypeBinding typeBinding) {
        handle(IProblem.IllegalQualifiedParameterizedTypeAllocation, new String[]{new String(typeBinding.readableName()), new String(typeBinding.enclosingType().readableName())}, new String[]{new String(typeBinding.shortReadableName()), new String(typeBinding.enclosingType().shortReadableName())}, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void illegalQualifierForExplicitThis(Receiver receiver, TypeBinding typeBinding) {
        String[] strArr = {new String(typeBinding.sourceName())};
        NameReference nameReference = receiver.qualifyingName;
        handle(IProblem.IllegalQualifierForExplicitThis, strArr, strArr, nameReference == null ? receiver.sourceStart : nameReference.sourceStart, receiver.sourceEnd);
    }

    public void illegalQualifierForExplicitThis2(Receiver receiver) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.IllegalQualifierForExplicitThis2, strArr, strArr, receiver.qualifyingName.sourceStart, receiver.sourceEnd);
    }

    public void illegalRedefinitionToNonNullParameter(Argument argument, ReferenceBinding referenceBinding, char[][] cArr) {
        int i10 = argument.type.sourceStart;
        if (argument.annotations != null) {
            int i11 = 0;
            while (true) {
                Annotation[] annotationArr = argument.annotations;
                if (i11 >= annotationArr.length) {
                    break;
                }
                Annotation annotation = annotationArr[i11];
                if (annotation.hasNullBit(96)) {
                    i10 = annotation.sourceStart;
                    break;
                }
                i11++;
            }
        }
        int i12 = i10;
        if (cArr == null) {
            handle(IProblem.IllegalDefinitionToNonNullParameter, new String[]{new String(argument.name), new String(referenceBinding.readableName())}, new String[]{new String(argument.name), new String(referenceBinding.shortReadableName())}, i12, argument.type.sourceEnd);
        } else {
            handle(IProblem.IllegalRedefinitionToNonNullParameter, new String[]{new String(argument.name), new String(referenceBinding.readableName()), CharOperation.toString(cArr)}, new String[]{new String(argument.name), new String(referenceBinding.shortReadableName()), new String(cArr[cArr.length - 1])}, i12, argument.type.sourceEnd);
        }
    }

    public void illegalReturnRedefinition(AbstractMethodDeclaration abstractMethodDeclaration, MethodBinding methodBinding, char[][] cArr) {
        int i10;
        MethodDeclaration methodDeclaration = (MethodDeclaration) abstractMethodDeclaration;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(methodBinding.declaringClass.readableName());
        stringBuffer.append('.');
        stringBuffer.append(methodBinding.readableName());
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(methodBinding.declaringClass.shortReadableName());
        stringBuffer2.append('.');
        stringBuffer2.append(methodBinding.shortReadableName());
        int i11 = methodDeclaration.returnType.sourceStart;
        Annotation findAnnotation = findAnnotation(methodDeclaration.annotations, 64);
        if (findAnnotation != null) {
            i11 = findAnnotation.sourceStart;
        }
        int i12 = i11;
        TypeBinding typeBinding = methodBinding.returnType;
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        if (this.options.usesNullTypeAnnotations()) {
            if (typeBinding.isTypeVariable() && (typeBinding.tagBits & TagBits.AnnotationNullMASK) == 0) {
                sb2.append(typeBinding.readableName());
                sb3.append(typeBinding.shortReadableName());
                i10 = IProblem.IllegalReturnNullityRedefinitionFreeTypeVariable;
                handle(i10, new String[]{stringBuffer.toString(), sb2.toString()}, new String[]{stringBuffer2.toString(), sb3.toString()}, i12, methodDeclaration.returnType.sourceEnd);
            }
            sb2.append(typeBinding.nullAnnotatedReadableName(this.options, false));
            sb3.append(typeBinding.nullAnnotatedReadableName(this.options, true));
        } else {
            sb2.append('@');
            sb2.append(CharOperation.concatWith(cArr, '.'));
            sb2.append(C15883c.f126249O);
            sb2.append(typeBinding.readableName());
            sb3.append('@');
            sb3.append(cArr[cArr.length - 1]);
            sb3.append(C15883c.f126249O);
            sb3.append(typeBinding.shortReadableName());
        }
        i10 = IProblem.IllegalReturnNullityRedefinition;
        handle(i10, new String[]{stringBuffer.toString(), sb2.toString()}, new String[]{stringBuffer2.toString(), sb3.toString()}, i12, methodDeclaration.returnType.sourceEnd);
    }

    public void illegalSourceLevelForThis(Argument argument) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.ExplicitThisParameterNotBelow18, strArr, strArr, argument.sourceStart, argument.sourceEnd);
    }

    public void illegalStaticModifierForMemberType(SourceTypeBinding sourceTypeBinding) {
        String[] strArr = {new String(sourceTypeBinding.sourceName())};
        handle(IProblem.IllegalStaticModifierForMemberType, strArr, strArr, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void illegalSuperAccess(TypeBinding typeBinding, TypeBinding typeBinding2, ASTNode aSTNode) {
        if (typeBinding2.problemId() == 29) {
            interfaceSuperInvocationNotBelow18((QualifiedSuperReference) aSTNode);
            return;
        }
        if (typeBinding2.problemId() != 21) {
            needImplementation(aSTNode);
        }
        handle(IProblem.SuperAccessCannotBypassDirectSuper, new String[]{String.valueOf(typeBinding.readableName()), String.valueOf(typeBinding2.readableName())}, new String[]{String.valueOf(typeBinding.shortReadableName()), String.valueOf(typeBinding2.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void illegalSuperCallBypassingOverride(InvocationSite invocationSite, MethodBinding methodBinding, ReferenceBinding referenceBinding) {
        handle(IProblem.SuperCallCannotBypassOverride, new String[]{String.valueOf(methodBinding.readableName()), String.valueOf(methodBinding.declaringClass.readableName()), String.valueOf(referenceBinding.readableName())}, new String[]{String.valueOf(methodBinding.shortReadableName()), String.valueOf(methodBinding.declaringClass.shortReadableName()), String.valueOf(referenceBinding.shortReadableName())}, invocationSite.sourceStart(), invocationSite.sourceEnd());
    }

    public void illegalThis(Argument argument) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.ExplicitThisParameterNotInLambda, strArr, strArr, argument.sourceStart, argument.sourceEnd);
    }

    public void illegalThisDeclaration(Argument argument) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.IllegalDeclarationOfThisParameter, strArr, strArr, argument.sourceStart, argument.sourceEnd);
    }

    public void illegalTypeAnnotationsInStaticMemberAccess(Annotation annotation, Annotation annotation2) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.IllegalTypeAnnotationsInStaticMemberAccess, strArr, strArr, annotation.sourceStart, annotation2.sourceEnd);
    }

    public void illegalTypeForExplicitThis(Receiver receiver, TypeBinding typeBinding) {
        String[] strArr = {new String(typeBinding.readableName())};
        String[] strArr2 = {new String(typeBinding.shortReadableName())};
        TypeReference typeReference = receiver.type;
        handle(IProblem.IllegalTypeForExplicitThis, strArr, strArr2, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void illegalUsageOfQualifiedTypeReference(QualifiedTypeReference qualifiedTypeReference) {
        StringBuffer stringBuffer = new StringBuffer();
        char[][] cArr = qualifiedTypeReference.tokens;
        for (int i10 = 0; i10 < cArr.length; i10++) {
            if (i10 > 0) {
                stringBuffer.append('.');
            }
            stringBuffer.append(cArr[i10]);
        }
        String[] strArr = {String.valueOf(stringBuffer)};
        handle(IProblem.IllegalUsageOfQualifiedTypeReference, strArr, strArr, qualifiedTypeReference.sourceStart, qualifiedTypeReference.sourceEnd);
    }

    public void illegalUsageOfTypeAnnotations(Annotation annotation) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.IllegalUsageOfTypeAnnotations, strArr, strArr, annotation.sourceStart, annotation.sourceEnd);
    }

    public void illegalUsageOfWildcard(TypeReference typeReference) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidUsageOfWildcard, strArr, strArr, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void illegalUseOfUnderscoreAsAnIdentifier(int i10, int i11, boolean z10) {
        this.underScoreIsError = z10;
        try {
            String[] strArr = ProblemHandler.NoArgument;
            handle(IProblem.IllegalUseOfUnderscoreAsAnIdentifier, strArr, strArr, i10, i11);
        } finally {
            this.underScoreIsError = false;
        }
    }

    public void illegalVararg(Argument argument, AbstractMethodDeclaration abstractMethodDeclaration) {
        String[] strArr = {CharOperation.toString(argument.type.getTypeName()), new String(abstractMethodDeclaration.selector)};
        handle(IProblem.IllegalVararg, strArr, strArr, argument.sourceStart, argument.sourceEnd);
    }

    public void illegalVarargInLambda(Argument argument) {
        String[] strArr = {CharOperation.toString(argument.type.getTypeName())};
        handle(IProblem.IllegalVarargInLambda, strArr, strArr, argument.sourceStart, argument.sourceEnd);
    }

    public void illegalVisibilityModifierCombinationForField(ReferenceBinding referenceBinding, FieldDeclaration fieldDeclaration) {
        String[] strArr = {new String(fieldDeclaration.name)};
        handle(IProblem.IllegalVisibilityModifierCombinationForField, strArr, strArr, fieldDeclaration.sourceStart, fieldDeclaration.sourceEnd);
    }

    public void illegalVisibilityModifierCombinationForMemberType(SourceTypeBinding sourceTypeBinding) {
        String[] strArr = {new String(sourceTypeBinding.sourceName())};
        handle(IProblem.IllegalVisibilityModifierCombinationForMemberType, strArr, strArr, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void illegalVisibilityModifierCombinationForMethod(ReferenceBinding referenceBinding, AbstractMethodDeclaration abstractMethodDeclaration) {
        String[] strArr = {new String(referenceBinding.sourceName()), new String(abstractMethodDeclaration.selector)};
        handle(IProblem.IllegalVisibilityModifierCombinationForMethod, strArr, strArr, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
    }

    public void illegalVisibilityModifierForInterfaceMemberType(SourceTypeBinding sourceTypeBinding) {
        String[] strArr = {new String(sourceTypeBinding.sourceName())};
        handle(IProblem.IllegalVisibilityModifierForInterfaceMemberType, strArr, strArr, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void illegalVoidExpression(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidVoidExpression, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void implicitObjectBoundNoNullDefault(TypeReference typeReference) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(971, strArr, strArr, 0, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void importProblem(ImportReference importReference, Binding binding) {
        String[] strArr;
        int i10;
        String[] strArr2;
        String[] strArr3;
        String[] strArr4;
        int i11;
        if (!(binding instanceof FieldBinding)) {
            if ((binding instanceof PackageBinding) && binding.problemId() == 30) {
                char[][] cArr = ((PackageBinding) binding).compoundName;
                String[] strArr5 = {CharOperation.toString(cArr)};
                handleUntagged(IProblem.NotAccessiblePackage, strArr5, strArr5, importReference.sourceStart, (int) importReference.sourcePositions[cArr.length - 1]);
                return;
            } else if (binding.problemId() == 1) {
                char[][] cArr2 = binding instanceof ProblemReferenceBinding ? ((ProblemReferenceBinding) binding).compoundName : importReference.tokens;
                String[] strArr6 = {CharOperation.toString(cArr2)};
                handleUntagged(IProblem.ImportNotFound, strArr6, strArr6, importReference.sourceStart, (int) importReference.sourcePositions[cArr2.length - 1]);
                return;
            } else {
                if (binding.problemId() != 14) {
                    invalidType(importReference, (TypeBinding) binding);
                    return;
                }
                char[][] cArr3 = importReference.tokens;
                String[] strArr7 = {CharOperation.toString(cArr3)};
                handleUntagged(268435847, strArr7, strArr7, importReference.sourceStart, (int) importReference.sourcePositions[cArr3.length - 1]);
                return;
            }
        }
        FieldBinding fieldBinding = (FieldBinding) binding;
        int problemId = binding.problemId();
        if (problemId != 2) {
            if (problemId == 3) {
                strArr3 = new String[]{new String(fieldBinding.readableName())};
                strArr4 = new String[]{new String(fieldBinding.readableName())};
                i11 = IProblem.AmbiguousField;
            } else if (problemId == 8) {
                strArr3 = new String[]{new String(fieldBinding.declaringClass.leafComponentType().readableName())};
                strArr4 = new String[]{new String(fieldBinding.declaringClass.leafComponentType().shortReadableName())};
                i11 = IProblem.NotVisibleType;
            } else if (problemId != 30) {
                strArr = null;
                strArr2 = null;
                i10 = 33554502;
                handleUntagged(i10, strArr, strArr2, nodeSourceStart(fieldBinding, importReference), nodeSourceEnd(fieldBinding, importReference));
            }
            strArr = strArr3;
            strArr2 = strArr4;
            i10 = i11;
            handleUntagged(i10, strArr, strArr2, nodeSourceStart(fieldBinding, importReference), nodeSourceEnd(fieldBinding, importReference));
        }
        int i12 = binding.problemId() == 2 ? IProblem.NotVisibleField : IProblem.NotAccessibleField;
        strArr = new String[]{CharOperation.toString(importReference.tokens), new String(fieldBinding.declaringClass.readableName())};
        i10 = i12;
        strArr2 = new String[]{CharOperation.toString(importReference.tokens), new String(fieldBinding.declaringClass.shortReadableName())};
        handleUntagged(i10, strArr, strArr2, nodeSourceStart(fieldBinding, importReference), nodeSourceEnd(fieldBinding, importReference));
    }

    public void incompatibleExceptionInThrowsClause(SourceTypeBinding sourceTypeBinding, MethodBinding methodBinding, MethodBinding methodBinding2, ReferenceBinding referenceBinding) {
        if (TypeBinding.equalsEquals(sourceTypeBinding, methodBinding.declaringClass)) {
            handle((!methodBinding.declaringClass.isInterface() || methodBinding2.isPublic()) ? IProblem.IncompatibleExceptionInThrowsClause : IProblem.IncompatibleExceptionInThrowsClauseForNonInheritedInterfaceMethod, new String[]{new String(referenceBinding.sourceName()), new String(CharOperation.concat(methodBinding2.declaringClass.readableName(), methodBinding2.readableName(), '.'))}, new String[]{new String(referenceBinding.sourceName()), new String(CharOperation.concat(methodBinding2.declaringClass.shortReadableName(), methodBinding2.shortReadableName(), '.'))}, methodBinding.sourceStart(), methodBinding.sourceEnd());
        } else {
            handle(IProblem.IncompatibleExceptionInInheritedMethodThrowsClause, new String[]{new String(referenceBinding.sourceName()), new String(CharOperation.concat(methodBinding.declaringClass.sourceName(), methodBinding.readableName(), '.')), new String(CharOperation.concat(methodBinding2.declaringClass.readableName(), methodBinding2.readableName(), '.'))}, new String[]{new String(referenceBinding.sourceName()), new String(CharOperation.concat(methodBinding.declaringClass.sourceName(), methodBinding.shortReadableName(), '.')), new String(CharOperation.concat(methodBinding2.declaringClass.shortReadableName(), methodBinding2.shortReadableName(), '.'))}, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
        }
    }

    public void incompatibleReturnType(MethodBinding methodBinding, MethodBinding methodBinding2) {
        int i10;
        int i11;
        int i12;
        int i13;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(methodBinding2.declaringClass.readableName());
        stringBuffer.append('.');
        stringBuffer.append(methodBinding2.readableName());
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(methodBinding2.declaringClass.shortReadableName());
        stringBuffer2.append('.');
        stringBuffer2.append(methodBinding2.shortReadableName());
        ReferenceBinding referenceBinding = methodBinding.declaringClass;
        int i14 = (!referenceBinding.isInterface() || methodBinding2.isPublic()) ? IProblem.IncompatibleReturnType : IProblem.IncompatibleReturnTypeForNonInheritedInterfaceMethod;
        AbstractMethodDeclaration sourceMethod = methodBinding.sourceMethod();
        if (sourceMethod == null) {
            if (referenceBinding instanceof SourceTypeBinding) {
                SourceTypeBinding sourceTypeBinding = (SourceTypeBinding) referenceBinding;
                i13 = sourceTypeBinding.sourceStart();
                i12 = sourceTypeBinding.sourceEnd();
            } else {
                i13 = 0;
                i12 = 0;
            }
        } else {
            if (sourceMethod.isConstructor()) {
                i10 = sourceMethod.sourceStart;
                i11 = sourceMethod.sourceEnd;
            } else {
                TypeReference typeReference = ((MethodDeclaration) sourceMethod).returnType;
                i10 = typeReference.sourceStart;
                if (typeReference instanceof ParameterizedSingleTypeReference) {
                    ParameterizedSingleTypeReference parameterizedSingleTypeReference = (ParameterizedSingleTypeReference) typeReference;
                    int i15 = parameterizedSingleTypeReference.typeArguments[r3.length - 1].sourceEnd;
                    int i16 = parameterizedSingleTypeReference.sourceEnd;
                    if (i15 > i16) {
                        i11 = retrieveClosingAngleBracketPosition(i16);
                    } else {
                        i11 = typeReference.sourceEnd;
                    }
                } else if (typeReference instanceof ParameterizedQualifiedTypeReference) {
                    i11 = retrieveClosingAngleBracketPosition(((ParameterizedQualifiedTypeReference) typeReference).sourceEnd);
                } else {
                    i11 = typeReference.sourceEnd;
                }
            }
            i12 = i11;
            i13 = i10;
        }
        handle(i14, new String[]{stringBuffer.toString()}, new String[]{stringBuffer2.toString()}, i13, i12);
    }

    public void incorrectArityForParameterizedType(ASTNode aSTNode, TypeBinding typeBinding, TypeBinding[] typeBindingArr) {
        incorrectArityForParameterizedType(aSTNode, typeBinding, typeBindingArr, Integer.MAX_VALUE);
    }

    public void incorrectLocationForNonEmptyDimension(ArrayAllocationExpression arrayAllocationExpression, int i10) {
        String[] strArr = ProblemHandler.NoArgument;
        Expression expression = arrayAllocationExpression.dimensions[i10];
        handle(IProblem.IllegalDimension, strArr, strArr, expression.sourceStart, expression.sourceEnd);
    }

    public void incorrectSwitchType(Expression expression, TypeBinding typeBinding) {
        long j10 = this.options.sourceLevel;
        if (j10 >= ClassFileConstants.JDK1_7) {
            handle(IProblem.IncorrectSwitchType17, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, expression.sourceStart, expression.sourceEnd);
            return;
        }
        if (typeBinding.f102482id == 11) {
            handle(IProblem.SwitchOnStringsNotBelow17, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, expression.sourceStart, expression.sourceEnd);
        } else if (j10 >= ClassFileConstants.JDK1_5 || !typeBinding.isEnum()) {
            handle(IProblem.IncorrectSwitchType, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, expression.sourceStart, expression.sourceEnd);
        } else {
            handle(IProblem.SwitchOnEnumNotBelow15, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, expression.sourceStart, expression.sourceEnd);
        }
    }

    public void indirectAccessToStaticField(ASTNode aSTNode, FieldBinding fieldBinding) {
        int computeSeverity = computeSeverity(IProblem.IndirectAccessToStaticField);
        if (computeSeverity == 256) {
            return;
        }
        handle(IProblem.IndirectAccessToStaticField, new String[]{new String(fieldBinding.declaringClass.readableName()), new String(fieldBinding.name)}, new String[]{new String(fieldBinding.declaringClass.shortReadableName()), new String(fieldBinding.name)}, computeSeverity, nodeSourceStart(fieldBinding, aSTNode), nodeSourceEnd(fieldBinding, aSTNode));
    }

    public void indirectAccessToStaticMethod(ASTNode aSTNode, MethodBinding methodBinding) {
        int computeSeverity = computeSeverity(IProblem.IndirectAccessToStaticMethod);
        if (computeSeverity == 256) {
            return;
        }
        handle(IProblem.IndirectAccessToStaticMethod, new String[]{new String(methodBinding.declaringClass.readableName()), new String(methodBinding.selector), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding.declaringClass.shortReadableName()), new String(methodBinding.selector), typesAsString(methodBinding, true)}, computeSeverity, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void inheritedDefaultMethodConflictsWithOtherInherited(SourceTypeBinding sourceTypeBinding, MethodBinding methodBinding, MethodBinding methodBinding2) {
        TypeDeclaration typeDeclaration = sourceTypeBinding.scope.referenceContext;
        handle(IProblem.InheritedDefaultMethodConflictsWithOtherInherited, new String[]{String.valueOf(methodBinding.readableName()), String.valueOf(methodBinding.declaringClass.readableName()), String.valueOf(methodBinding2.declaringClass.readableName())}, new String[]{String.valueOf(methodBinding.shortReadableName()), String.valueOf(methodBinding.declaringClass.shortReadableName()), String.valueOf(methodBinding2.declaringClass.shortReadableName())}, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void inheritedMethodsHaveIncompatibleReturnTypes(ASTNode aSTNode, MethodBinding[] methodBindingArr, int i10) {
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        while (true) {
            i10--;
            if (i10 < 0) {
                handle(IProblem.InheritedIncompatibleReturnType, new String[]{stringBuffer.toString()}, new String[]{stringBuffer2.toString()}, aSTNode.sourceStart, aSTNode.sourceEnd);
                return;
            }
            stringBuffer.append(methodBindingArr[i10].declaringClass.readableName());
            stringBuffer.append('.');
            stringBuffer.append(methodBindingArr[i10].readableName());
            stringBuffer2.append(methodBindingArr[i10].declaringClass.shortReadableName());
            stringBuffer2.append('.');
            stringBuffer2.append(methodBindingArr[i10].shortReadableName());
            if (i10 != 0) {
                stringBuffer.append(", ");
                stringBuffer2.append(", ");
            }
        }
    }

    public void inheritedMethodsHaveNameClash(SourceTypeBinding sourceTypeBinding, MethodBinding methodBinding, MethodBinding methodBinding2) {
        handle(IProblem.MethodNameClash, new String[]{new String(methodBinding.selector), typesAsString(methodBinding.original(), false), new String(methodBinding.declaringClass.readableName()), typesAsString(methodBinding2.original(), false), new String(methodBinding2.declaringClass.readableName())}, new String[]{new String(methodBinding.selector), typesAsString(methodBinding.original(), true), new String(methodBinding.declaringClass.shortReadableName()), typesAsString(methodBinding2.original(), true), new String(methodBinding2.declaringClass.shortReadableName())}, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void initializerMustCompleteNormally(FieldDeclaration fieldDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InitializerMustCompleteNormally, strArr, strArr, fieldDeclaration.sourceStart, fieldDeclaration.sourceEnd);
    }

    public void innerTypesCannotDeclareStaticInitializers(ReferenceBinding referenceBinding, Initializer initializer) {
        String[] strArr = {new String(referenceBinding.readableName())};
        String[] strArr2 = {new String(referenceBinding.shortReadableName())};
        int i10 = initializer.sourceStart;
        handle(IProblem.CannotDefineStaticInitializerInLocalType, strArr, strArr2, i10, i10);
    }

    public void interfaceCannotHaveConstructors(ConstructorDeclaration constructorDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InterfaceCannotHaveConstructors, strArr, strArr, constructorDeclaration.sourceStart, constructorDeclaration.sourceEnd, constructorDeclaration, constructorDeclaration.compilationResult());
    }

    public void interfaceCannotHaveInitializers(char[] cArr, FieldDeclaration fieldDeclaration) {
        String[] strArr = {new String(cArr)};
        handle(IProblem.InterfaceCannotHaveInitializers, strArr, strArr, fieldDeclaration.sourceStart, fieldDeclaration.sourceEnd);
    }

    public void interfaceSuperInvocationNotBelow18(QualifiedSuperReference qualifiedSuperReference) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InterfaceSuperInvocationNotBelow18, strArr, strArr, qualifiedSuperReference.sourceStart, qualifiedSuperReference.sourceEnd);
    }

    public String internalAnnotatedTypeName(char[] cArr, char[] cArr2, int i10) {
        char[] cArr3;
        if (i10 > 0) {
            int length = cArr.length + cArr2.length + 2;
            cArr3 = new char[(i10 * 2) + length];
            System.arraycopy(cArr2, 0, cArr3, 0, cArr2.length);
            cArr3[cArr2.length] = C15883c.f126249O;
            cArr3[cArr2.length + 1] = '@';
            System.arraycopy(cArr, 0, cArr3, cArr2.length + 2, cArr.length);
            for (int i11 = 0; i11 < i10; i11++) {
                int i12 = length + i11;
                cArr3[i12] = '[';
                cArr3[i12 + 1] = JavaElement.JEM_TYPE_PARAMETER;
            }
        } else {
            cArr3 = new char[cArr.length + cArr2.length + 2];
            cArr3[0] = '@';
            System.arraycopy(cArr, 0, cArr3, 1, cArr.length);
            cArr3[cArr.length + 1] = C15883c.f126249O;
            System.arraycopy(cArr2, 0, cArr3, cArr.length + 2, cArr2.length);
        }
        return String.valueOf(cArr3);
    }

    public void intersectionCastNotBelow18(TypeReference[] typeReferenceArr) {
        int length = typeReferenceArr.length;
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.IntersectionCastNotBelow18, strArr, strArr, typeReferenceArr[0].sourceStart, typeReferenceArr[length - 1].sourceEnd);
    }

    public void invalidAnnotationMemberType(MethodDeclaration methodDeclaration) {
        String[] strArr = {new String(methodDeclaration.binding.returnType.readableName()), new String(methodDeclaration.selector), new String(methodDeclaration.binding.declaringClass.readableName())};
        String[] strArr2 = {new String(methodDeclaration.binding.returnType.shortReadableName()), new String(methodDeclaration.selector), new String(methodDeclaration.binding.declaringClass.shortReadableName())};
        TypeReference typeReference = methodDeclaration.returnType;
        handle(IProblem.InvalidAnnotationMemberType, strArr, strArr2, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void invalidArrayConstructorReference(ReferenceExpression referenceExpression, TypeBinding typeBinding, TypeBinding[] typeBindingArr) {
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        int length = typeBindingArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                stringBuffer.append(", ");
                stringBuffer2.append(", ");
            }
            stringBuffer.append(new String(typeBindingArr[i10].readableName()));
            stringBuffer2.append(new String(typeBindingArr[i10].shortReadableName()));
        }
        handle(IProblem.InvalidArrayConstructorReference, new String[]{new String(typeBinding.readableName()), stringBuffer.toString()}, new String[]{new String(typeBinding.shortReadableName()), stringBuffer2.toString()}, referenceExpression.sourceStart, referenceExpression.sourceEnd);
    }

    public void invalidBreak(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidBreak, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void invalidConstructor(Statement statement, MethodBinding methodBinding) {
        int i10;
        int i11;
        MethodBinding methodBinding2;
        FieldDeclaration fieldDeclaration;
        ReferenceContext referenceContext = this.referenceContext;
        boolean z10 = (referenceContext instanceof ConstructorDeclaration) && ((ConstructorDeclaration) referenceContext).isDefaultConstructor();
        boolean z11 = (statement instanceof ExplicitConstructorCall) && ((ExplicitConstructorCall) statement).accessMode == 1;
        int i12 = statement.sourceStart;
        int i13 = statement.sourceEnd;
        if ((statement instanceof AllocationExpression) && (fieldDeclaration = ((AllocationExpression) statement).enumConstant) != null) {
            i12 = fieldDeclaration.sourceStart;
            i13 = fieldDeclaration.sourceEnd;
        }
        int problemId = methodBinding.problemId();
        if (problemId != 1) {
            if (problemId == 2) {
                i10 = z10 ? IProblem.NotVisibleConstructorInDefaultConstructor : z11 ? IProblem.NotVisibleConstructorInImplicitConstructorCall : IProblem.NotVisibleConstructor;
                MethodBinding methodBinding3 = ((ProblemMethodBinding) methodBinding).closestMatch;
                if (methodBinding3 != null) {
                    MethodBinding original = methodBinding3.original();
                    i11 = i10;
                    methodBinding2 = original;
                }
                i11 = i10;
            } else {
                if (problemId != 3) {
                    if (problemId == 16) {
                        MethodBinding methodBinding4 = ((ProblemMethodBinding) methodBinding).closestMatch;
                        TypeBinding[] typeBindingArr = methodBinding4.parameters;
                        TypeBinding leafComponentType = typeBindingArr[typeBindingArr.length - 1].leafComponentType();
                        handle(IProblem.VarargsElementTypeNotVisibleForConstructor, new String[]{new String(methodBinding4.declaringClass.sourceName()), typesAsString(methodBinding4, false), new String(methodBinding4.declaringClass.readableName()), new String(leafComponentType.readableName())}, new String[]{new String(methodBinding4.declaringClass.sourceName()), typesAsString(methodBinding4, true), new String(methodBinding4.declaringClass.shortReadableName()), new String(leafComponentType.shortReadableName())}, i12, i13);
                        return;
                    }
                    if (problemId != 23) {
                        if (problemId == 25) {
                            contradictoryNullAnnotationsInferred(((ProblemMethodBinding) methodBinding).closestMatch, statement);
                            return;
                        }
                        if (problemId != 27) {
                            if (problemId != 30) {
                                switch (problemId) {
                                    case 10:
                                        ProblemMethodBinding problemMethodBinding = (ProblemMethodBinding) methodBinding;
                                        MethodBinding original2 = ((ParameterizedGenericMethodBinding) problemMethodBinding.closestMatch).original();
                                        TypeBinding[] typeBindingArr2 = problemMethodBinding.parameters;
                                        int length = typeBindingArr2.length;
                                        int i14 = length - 2;
                                        TypeBinding typeBinding = typeBindingArr2[i14];
                                        TypeVariableBinding typeVariableBinding = (TypeVariableBinding) typeBindingArr2[length - 1];
                                        TypeBinding[] typeBindingArr3 = new TypeBinding[i14];
                                        System.arraycopy(typeBindingArr2, 0, typeBindingArr3, 0, i14);
                                        handle(IProblem.GenericConstructorTypeArgumentMismatch, new String[]{new String(original2.declaringClass.sourceName()), typesAsString(original2, false), new String(original2.declaringClass.readableName()), typesAsString(typeBindingArr3, false), new String(typeBinding.readableName()), new String(typeVariableBinding.sourceName()), parameterBoundAsString(typeVariableBinding, false)}, new String[]{new String(original2.declaringClass.sourceName()), typesAsString(original2, true), new String(original2.declaringClass.shortReadableName()), typesAsString(typeBindingArr3, true), new String(typeBinding.shortReadableName()), new String(typeVariableBinding.sourceName()), parameterBoundAsString(typeVariableBinding, true)}, i12, i13);
                                        return;
                                    case 11:
                                        MethodBinding methodBinding5 = ((ProblemMethodBinding) methodBinding).closestMatch;
                                        if (methodBinding5.typeVariables == Binding.NO_TYPE_VARIABLES) {
                                            handle(IProblem.NonGenericConstructor, new String[]{new String(methodBinding5.declaringClass.sourceName()), typesAsString(methodBinding5, false), new String(methodBinding5.declaringClass.readableName()), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding5.declaringClass.sourceName()), typesAsString(methodBinding5, true), new String(methodBinding5.declaringClass.shortReadableName()), typesAsString(methodBinding, true)}, i12, i13);
                                            return;
                                        } else {
                                            handle(IProblem.IncorrectArityForParameterizedConstructor, new String[]{new String(methodBinding5.declaringClass.sourceName()), typesAsString(methodBinding5, false), new String(methodBinding5.declaringClass.readableName()), typesAsString((TypeBinding[]) methodBinding5.typeVariables, false), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding5.declaringClass.sourceName()), typesAsString(methodBinding5, true), new String(methodBinding5.declaringClass.shortReadableName()), typesAsString((TypeBinding[]) methodBinding5.typeVariables, true), typesAsString(methodBinding, true)}, i12, i13);
                                            return;
                                        }
                                    case 12:
                                        MethodBinding methodBinding6 = ((ProblemMethodBinding) methodBinding).closestMatch;
                                        ParameterizedGenericMethodBinding parameterizedGenericMethodBinding = (ParameterizedGenericMethodBinding) methodBinding6;
                                        handle(IProblem.ParameterizedConstructorArgumentTypeMismatch, new String[]{new String(methodBinding6.declaringClass.sourceName()), typesAsString(methodBinding6, false), new String(methodBinding6.declaringClass.readableName()), typesAsString(parameterizedGenericMethodBinding.typeArguments, false), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding6.declaringClass.sourceName()), typesAsString(methodBinding6, true), new String(methodBinding6.declaringClass.shortReadableName()), typesAsString(parameterizedGenericMethodBinding.typeArguments, true), typesAsString(methodBinding, true)}, i12, i13);
                                        return;
                                    case 13:
                                        MethodBinding methodBinding7 = ((ProblemMethodBinding) methodBinding).closestMatch;
                                        handle(IProblem.TypeArgumentsForRawGenericConstructor, new String[]{new String(methodBinding7.declaringClass.sourceName()), typesAsString(methodBinding7, false), new String(methodBinding7.declaringClass.readableName()), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding7.declaringClass.sourceName()), typesAsString(methodBinding7, true), new String(methodBinding7.declaringClass.shortReadableName()), typesAsString(methodBinding, true)}, i12, i13);
                                        return;
                                    default:
                                        needImplementation(statement);
                                        break;
                                }
                                methodBinding2 = methodBinding;
                                i11 = 134217858;
                            } else {
                                MethodBinding methodBinding8 = ((ProblemMethodBinding) methodBinding).closestMatch;
                                i11 = IProblem.NotAccessibleConstructor;
                                if (methodBinding8 != null) {
                                    methodBinding2 = methodBinding8.original();
                                }
                            }
                        }
                    }
                    ProblemMethodBinding problemMethodBinding2 = (ProblemMethodBinding) methodBinding;
                    MethodBinding methodBinding9 = problemMethodBinding2.closestMatch;
                    String valueOf = String.valueOf(methodBinding9.returnType.readableName());
                    TypeBinding typeBinding2 = problemMethodBinding2.returnType;
                    String str = MediaStore.UNKNOWN_STRING;
                    String[] strArr = {valueOf, typeBinding2 != null ? String.valueOf(typeBinding2.readableName()) : MediaStore.UNKNOWN_STRING};
                    String valueOf2 = String.valueOf(methodBinding9.returnType.shortReadableName());
                    TypeBinding typeBinding3 = problemMethodBinding2.returnType;
                    if (typeBinding3 != null) {
                        str = String.valueOf(typeBinding3.shortReadableName());
                    }
                    handle(IProblem.TypeMismatch, strArr, new String[]{valueOf2, str}, statement.sourceStart, statement.sourceEnd);
                    return;
                }
                i10 = z10 ? IProblem.AmbiguousConstructorInDefaultConstructor : z11 ? IProblem.AmbiguousConstructorInImplicitConstructorCall : IProblem.AmbiguousConstructor;
                i11 = i10;
            }
            methodBinding2 = methodBinding;
        } else {
            MethodBinding methodBinding10 = ((ProblemMethodBinding) methodBinding).closestMatch;
            if (methodBinding10 != null && (methodBinding10.tagBits & 128) != 0) {
                missingTypeInConstructor(statement, methodBinding10);
                return;
            }
            if (z10) {
                i10 = IProblem.UndefinedConstructorInDefaultConstructor;
            } else {
                if (z11) {
                    i10 = IProblem.UndefinedConstructorInImplicitConstructorCall;
                }
                methodBinding2 = methodBinding;
                i11 = 134217858;
            }
            i11 = i10;
            methodBinding2 = methodBinding;
        }
        handle(i11, new String[]{new String(methodBinding.declaringClass.readableName()), typesAsString(methodBinding2, false)}, new String[]{new String(methodBinding.declaringClass.shortReadableName()), typesAsString(methodBinding2, true)}, i12, i13);
    }

    public void invalidContinue(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidContinue, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void invalidEnclosingType(Expression expression, TypeBinding typeBinding, ReferenceBinding referenceBinding) {
        if (referenceBinding.isAnonymousType()) {
            referenceBinding = referenceBinding.superclass();
        }
        char[] cArr = referenceBinding.sourceName;
        if (cArr == null || cArr.length != 0) {
            int problemId = typeBinding.problemId();
            int i10 = IProblem.UndefinedType;
            if (problemId != 1) {
                if (problemId == 2) {
                    i10 = IProblem.NotVisibleType;
                } else if (problemId == 3) {
                    i10 = IProblem.AmbiguousType;
                } else if (problemId != 4) {
                    needImplementation(expression);
                } else {
                    i10 = IProblem.InternalTypeNameProvided;
                }
            }
            int i11 = i10;
            handle(i11, new String[]{new String(referenceBinding.readableName()) + "." + new String(typeBinding.readableName())}, new String[]{new String(referenceBinding.shortReadableName()) + "." + new String(typeBinding.shortReadableName())}, expression.sourceStart, expression.sourceEnd);
        }
    }

    public void invalidExplicitConstructorCall(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidExplicitConstructorCall, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void invalidExpressionAsStatement(Expression expression) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidExpressionAsStatement, strArr, strArr, expression.sourceStart, expression.sourceEnd);
    }

    public void invalidField(FieldReference fieldReference, TypeBinding typeBinding) {
        int i10;
        if (isRecoveredName(fieldReference.token)) {
            return;
        }
        FieldBinding fieldBinding = fieldReference.binding;
        int problemId = fieldBinding.problemId();
        if (problemId != 1) {
            if (problemId != 2) {
                if (problemId == 3) {
                    i10 = IProblem.AmbiguousField;
                } else if (problemId == 5) {
                    i10 = IProblem.InheritedFieldHidesEnclosingName;
                } else if (problemId == 6) {
                    i10 = IProblem.InstanceFieldDuringConstructorInvocation;
                } else if (problemId == 7) {
                    i10 = IProblem.NonStaticFieldFromStaticInvocation;
                } else {
                    if (problemId == 8) {
                        String[] strArr = {new String(typeBinding.leafComponentType().readableName())};
                        String[] strArr2 = {new String(typeBinding.leafComponentType().shortReadableName())};
                        Expression expression = fieldReference.receiver;
                        handle(IProblem.NotVisibleType, strArr, strArr2, expression.sourceStart, expression.sourceEnd);
                        return;
                    }
                    if (problemId == 28) {
                        noSuchEnclosingInstance(fieldReference.actualReceiverType, fieldReference.receiver, false);
                        return;
                    } else if (problemId != 30) {
                        needImplementation(fieldReference);
                    }
                }
                String[] strArr3 = {new String(fieldBinding.readableName())};
                handle(i10, strArr3, strArr3, nodeSourceStart(fieldBinding, fieldReference), nodeSourceEnd(fieldBinding, fieldReference));
            }
            handle(fieldBinding.problemId() == 2 ? IProblem.NotVisibleField : IProblem.NotAccessibleField, new String[]{new String(fieldReference.token), new String(fieldBinding.declaringClass.readableName())}, new String[]{new String(fieldReference.token), new String(fieldBinding.declaringClass.shortReadableName())}, nodeSourceStart(fieldBinding, fieldReference), nodeSourceEnd(fieldBinding, fieldReference));
            return;
        }
        if ((typeBinding.tagBits & 128) != 0) {
            String[] strArr4 = {new String(typeBinding.leafComponentType().readableName())};
            String[] strArr5 = {new String(typeBinding.leafComponentType().shortReadableName())};
            Expression expression2 = fieldReference.receiver;
            handle(IProblem.UndefinedType, strArr4, strArr5, expression2.sourceStart, expression2.sourceEnd);
            return;
        }
        i10 = 33554502;
        String[] strArr32 = {new String(fieldBinding.readableName())};
        handle(i10, strArr32, strArr32, nodeSourceStart(fieldBinding, fieldReference), nodeSourceEnd(fieldBinding, fieldReference));
    }

    public void invalidFileNameForPackageAnnotations(Annotation annotation) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidFileNameForPackageAnnotations, strArr, strArr, annotation.sourceStart, annotation.sourceEnd);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x001a. Please report as an issue. */
    public void invalidMethod(MessageSend messageSend, MethodBinding methodBinding, Scope scope) {
        int i10;
        MethodBinding original;
        MethodBinding methodBinding2 = methodBinding;
        if (isRecoveredName(messageSend.selector)) {
            return;
        }
        switch (methodBinding.problemId()) {
            case 1:
                ReferenceBinding referenceBinding = methodBinding2.declaringClass;
                if ((referenceBinding.tagBits & 128) != 0) {
                    String[] strArr = {new String(referenceBinding.readableName())};
                    String[] strArr2 = {new String(methodBinding2.declaringClass.shortReadableName())};
                    Expression expression = messageSend.receiver;
                    handle(IProblem.UndefinedType, strArr, strArr2, expression.sourceStart, expression.sourceEnd);
                    return;
                }
                ProblemMethodBinding problemMethodBinding = (ProblemMethodBinding) methodBinding2;
                MethodBinding methodBinding3 = problemMethodBinding.closestMatch;
                if (methodBinding3 != null) {
                    if ((methodBinding3.tagBits & 128) != 0) {
                        missingTypeInMethod(messageSend, methodBinding3);
                        return;
                    }
                    String typesAsString = typesAsString(methodBinding3, false);
                    String typesAsString2 = typesAsString(problemMethodBinding.parameters, false);
                    String typesAsString3 = typesAsString(methodBinding3, true);
                    String typesAsString4 = typesAsString(problemMethodBinding.parameters, true);
                    if (typesAsString.equals(typesAsString2)) {
                        typesAsString = typesAsString(methodBinding3, false, true);
                        typesAsString2 = typesAsString(problemMethodBinding.parameters, false, true);
                        typesAsString3 = typesAsString(methodBinding3, true, true);
                        typesAsString4 = typesAsString(problemMethodBinding.parameters, true, true);
                    }
                    if (typesAsString3.equals(typesAsString4)) {
                        typesAsString3 = typesAsString;
                        typesAsString4 = typesAsString2;
                    }
                    String[] strArr3 = {new String(methodBinding3.declaringClass.readableName()), new String(methodBinding3.selector), typesAsString, typesAsString2};
                    String[] strArr4 = {new String(methodBinding3.declaringClass.shortReadableName()), new String(methodBinding3.selector), typesAsString3, typesAsString4};
                    long j10 = messageSend.nameSourcePosition;
                    handle(IProblem.ParameterMismatch, strArr3, strArr4, (int) (j10 >>> 32), (int) j10);
                    return;
                }
                i10 = 67108964;
                original = methodBinding2;
                String[] strArr5 = {new String(methodBinding2.declaringClass.readableName()), new String(original.selector), typesAsString(original, false)};
                String[] strArr6 = {new String(methodBinding2.declaringClass.shortReadableName()), new String(original.selector), typesAsString(original, true)};
                long j11 = messageSend.nameSourcePosition;
                handle(i10, strArr5, strArr6, (int) (j11 >>> 32), (int) j11);
                return;
            case 2:
            case 30:
                i10 = methodBinding.problemId() == 2 ? IProblem.NotVisibleMethod : IProblem.NotAccessibleMethod;
                MethodBinding methodBinding4 = ((ProblemMethodBinding) methodBinding2).closestMatch;
                if (methodBinding4 != null) {
                    original = methodBinding4.original();
                    String[] strArr52 = {new String(methodBinding2.declaringClass.readableName()), new String(original.selector), typesAsString(original, false)};
                    String[] strArr62 = {new String(methodBinding2.declaringClass.shortReadableName()), new String(original.selector), typesAsString(original, true)};
                    long j112 = messageSend.nameSourcePosition;
                    handle(i10, strArr52, strArr62, (int) (j112 >>> 32), (int) j112);
                    return;
                }
                original = methodBinding2;
                String[] strArr522 = {new String(methodBinding2.declaringClass.readableName()), new String(original.selector), typesAsString(original, false)};
                String[] strArr622 = {new String(methodBinding2.declaringClass.shortReadableName()), new String(original.selector), typesAsString(original, true)};
                long j1122 = messageSend.nameSourcePosition;
                handle(i10, strArr522, strArr622, (int) (j1122 >>> 32), (int) j1122);
                return;
            case 3:
                i10 = IProblem.AmbiguousMethod;
                original = methodBinding2;
                String[] strArr5222 = {new String(methodBinding2.declaringClass.readableName()), new String(original.selector), typesAsString(original, false)};
                String[] strArr6222 = {new String(methodBinding2.declaringClass.shortReadableName()), new String(original.selector), typesAsString(original, true)};
                long j11222 = messageSend.nameSourcePosition;
                handle(i10, strArr5222, strArr6222, (int) (j11222 >>> 32), (int) j11222);
                return;
            case 4:
            case 9:
            case 14:
            case 15:
            case 17:
            case 18:
            case 19:
            case 21:
            case 22:
            case 28:
            default:
                needImplementation(messageSend);
                i10 = 67108964;
                original = methodBinding2;
                String[] strArr52222 = {new String(methodBinding2.declaringClass.readableName()), new String(original.selector), typesAsString(original, false)};
                String[] strArr62222 = {new String(methodBinding2.declaringClass.shortReadableName()), new String(original.selector), typesAsString(original, true)};
                long j112222 = messageSend.nameSourcePosition;
                handle(i10, strArr52222, strArr62222, (int) (j112222 >>> 32), (int) j112222);
                return;
            case 5:
                i10 = IProblem.InheritedMethodHidesEnclosingName;
                original = methodBinding2;
                String[] strArr522222 = {new String(methodBinding2.declaringClass.readableName()), new String(original.selector), typesAsString(original, false)};
                String[] strArr622222 = {new String(methodBinding2.declaringClass.shortReadableName()), new String(original.selector), typesAsString(original, true)};
                long j1122222 = messageSend.nameSourcePosition;
                handle(i10, strArr522222, strArr622222, (int) (j1122222 >>> 32), (int) j1122222);
                return;
            case 6:
                i10 = IProblem.InstanceMethodDuringConstructorInvocation;
                original = methodBinding2;
                String[] strArr5222222 = {new String(methodBinding2.declaringClass.readableName()), new String(original.selector), typesAsString(original, false)};
                String[] strArr6222222 = {new String(methodBinding2.declaringClass.shortReadableName()), new String(original.selector), typesAsString(original, true)};
                long j11222222 = messageSend.nameSourcePosition;
                handle(i10, strArr5222222, strArr6222222, (int) (j11222222 >>> 32), (int) j11222222);
                return;
            case 7:
                i10 = IProblem.StaticMethodRequested;
                original = methodBinding2;
                String[] strArr52222222 = {new String(methodBinding2.declaringClass.readableName()), new String(original.selector), typesAsString(original, false)};
                String[] strArr62222222 = {new String(methodBinding2.declaringClass.shortReadableName()), new String(original.selector), typesAsString(original, true)};
                long j112222222 = messageSend.nameSourcePosition;
                handle(i10, strArr52222222, strArr62222222, (int) (j112222222 >>> 32), (int) j112222222);
                return;
            case 8:
                String[] strArr7 = {new String(methodBinding2.declaringClass.readableName())};
                String[] strArr8 = {new String(methodBinding2.declaringClass.shortReadableName())};
                Expression expression2 = messageSend.receiver;
                handle(IProblem.NotVisibleType, strArr7, strArr8, expression2.sourceStart, expression2.sourceEnd);
                return;
            case 10:
                ProblemMethodBinding problemMethodBinding2 = (ProblemMethodBinding) methodBinding2;
                MethodBinding original2 = ((ParameterizedGenericMethodBinding) problemMethodBinding2.closestMatch).original();
                TypeBinding[] typeBindingArr = problemMethodBinding2.parameters;
                int length = typeBindingArr.length;
                int i11 = length - 2;
                TypeBinding typeBinding = typeBindingArr[i11];
                TypeVariableBinding typeVariableBinding = (TypeVariableBinding) typeBindingArr[length - 1];
                TypeBinding[] typeBindingArr2 = new TypeBinding[i11];
                System.arraycopy(typeBindingArr, 0, typeBindingArr2, 0, i11);
                String[] strArr9 = {new String(original2.selector), typesAsString(original2, false), new String(original2.declaringClass.readableName()), typesAsString(typeBindingArr2, false), new String(typeBinding.readableName()), new String(typeVariableBinding.sourceName()), parameterBoundAsString(typeVariableBinding, false)};
                String[] strArr10 = {new String(original2.selector), typesAsString(original2, true), new String(original2.declaringClass.shortReadableName()), typesAsString(typeBindingArr2, true), new String(typeBinding.shortReadableName()), new String(typeVariableBinding.sourceName()), parameterBoundAsString(typeVariableBinding, true)};
                long j12 = messageSend.nameSourcePosition;
                handle(IProblem.GenericMethodTypeArgumentMismatch, strArr9, strArr10, (int) (j12 >>> 32), (int) j12);
                return;
            case 11:
                MethodBinding methodBinding5 = ((ProblemMethodBinding) methodBinding2).closestMatch;
                if (methodBinding5.typeVariables == Binding.NO_TYPE_VARIABLES) {
                    String[] strArr11 = {new String(methodBinding5.selector), typesAsString(methodBinding5, false), new String(methodBinding5.declaringClass.readableName()), typesAsString(methodBinding2, false)};
                    String[] strArr12 = {new String(methodBinding5.selector), typesAsString(methodBinding5, true), new String(methodBinding5.declaringClass.shortReadableName()), typesAsString(methodBinding2, true)};
                    long j13 = messageSend.nameSourcePosition;
                    handle(IProblem.NonGenericMethod, strArr11, strArr12, (int) (j13 >>> 32), (int) j13);
                    return;
                }
                String[] strArr13 = {new String(methodBinding5.selector), typesAsString(methodBinding5, false), new String(methodBinding5.declaringClass.readableName()), typesAsString((TypeBinding[]) methodBinding5.typeVariables, false), typesAsString(methodBinding2, false)};
                String[] strArr14 = {new String(methodBinding5.selector), typesAsString(methodBinding5, true), new String(methodBinding5.declaringClass.shortReadableName()), typesAsString((TypeBinding[]) methodBinding5.typeVariables, true), typesAsString(methodBinding2, true)};
                long j14 = messageSend.nameSourcePosition;
                handle(IProblem.IncorrectArityForParameterizedMethod, strArr13, strArr14, (int) (j14 >>> 32), (int) j14);
                return;
            case 12:
                MethodBinding methodBinding6 = ((ProblemMethodBinding) methodBinding2).closestMatch;
                ParameterizedGenericMethodBinding parameterizedGenericMethodBinding = (ParameterizedGenericMethodBinding) methodBinding6;
                String[] strArr15 = {new String(methodBinding6.selector), typesAsString(methodBinding6, false), new String(methodBinding6.declaringClass.readableName()), typesAsString(parameterizedGenericMethodBinding.typeArguments, false), typesAsString(methodBinding2, false)};
                String[] strArr16 = {new String(methodBinding6.selector), typesAsString(methodBinding6, true), new String(methodBinding6.declaringClass.shortReadableName()), typesAsString(parameterizedGenericMethodBinding.typeArguments, true), typesAsString(methodBinding2, true)};
                long j15 = messageSend.nameSourcePosition;
                handle(IProblem.ParameterizedMethodArgumentTypeMismatch, strArr15, strArr16, (int) (j15 >>> 32), (int) j15);
                return;
            case 13:
                MethodBinding methodBinding7 = ((ProblemMethodBinding) methodBinding2).closestMatch;
                String[] strArr17 = {new String(methodBinding7.selector), typesAsString(methodBinding7, false), new String(methodBinding7.declaringClass.readableName()), typesAsString(methodBinding2, false)};
                String[] strArr18 = {new String(methodBinding7.selector), typesAsString(methodBinding7, true), new String(methodBinding7.declaringClass.shortReadableName()), typesAsString(methodBinding2, true)};
                long j16 = messageSend.nameSourcePosition;
                handle(IProblem.TypeArgumentsForRawGenericMethod, strArr17, strArr18, (int) (j16 >>> 32), (int) j16);
                return;
            case 16:
                MethodBinding methodBinding8 = ((ProblemMethodBinding) methodBinding2).closestMatch;
                if (methodBinding8 != null) {
                    methodBinding2 = methodBinding8.original();
                }
                TypeBinding[] typeBindingArr3 = methodBinding2.parameters;
                TypeBinding leafComponentType = typeBindingArr3[typeBindingArr3.length - 1].leafComponentType();
                String[] strArr19 = {new String(methodBinding2.selector), typesAsString(methodBinding2, false), new String(methodBinding2.declaringClass.readableName()), new String(leafComponentType.readableName())};
                String[] strArr20 = {new String(methodBinding2.selector), typesAsString(methodBinding2, true), new String(methodBinding2.declaringClass.shortReadableName()), new String(leafComponentType.shortReadableName())};
                long j17 = messageSend.nameSourcePosition;
                handle(IProblem.VarargsElementTypeNotVisible, strArr19, strArr20, (int) (j17 >>> 32), (int) j17);
                return;
            case 20:
                nonStaticOrAlienTypeReceiver(messageSend, methodBinding);
                return;
            case 23:
            case 27:
                ProblemMethodBinding problemMethodBinding3 = (ProblemMethodBinding) methodBinding2;
                MethodBinding methodBinding9 = problemMethodBinding3.closestMatch;
                TypeBinding typeBinding2 = problemMethodBinding3.returnType;
                TypeBinding typeBinding3 = methodBinding9.returnType;
                if (typeBinding2 == typeBinding3) {
                    if (messageSend.expressionContext == ExpressionContext.VANILLA_CONTEXT) {
                        String typesAsString5 = typesAsString((TypeBinding[]) methodBinding.shallowOriginal().typeVariables, false);
                        handle(IProblem.CannotInferInvocationType, new String[]{typesAsString5, String.valueOf(methodBinding9.original().readableName())}, new String[]{typesAsString5, String.valueOf(methodBinding9.original().shortReadableName())}, messageSend.sourceStart, messageSend.sourceEnd);
                        return;
                    }
                    handle(1100, new String[]{"Unknown error at invocation of " + String.valueOf(methodBinding9.readableName())}, new String[]{"Unknown error at invocation of " + String.valueOf(methodBinding9.shortReadableName())}, messageSend.sourceStart, messageSend.sourceEnd);
                    return;
                }
                TypeBinding capture = typeBinding3.capture(scope, messageSend.sourceStart, messageSend.sourceEnd);
                String valueOf = String.valueOf(capture.readableName());
                TypeBinding typeBinding4 = problemMethodBinding3.returnType;
                String str = MediaStore.UNKNOWN_STRING;
                String[] strArr21 = {valueOf, typeBinding4 != null ? String.valueOf(typeBinding4.readableName()) : MediaStore.UNKNOWN_STRING};
                String valueOf2 = String.valueOf(capture.shortReadableName());
                TypeBinding typeBinding5 = problemMethodBinding3.returnType;
                if (typeBinding5 != null) {
                    str = String.valueOf(typeBinding5.shortReadableName());
                }
                handle(IProblem.TypeMismatch, strArr21, new String[]{valueOf2, str}, messageSend.sourceStart, messageSend.sourceEnd);
                return;
            case 24:
                MethodBinding methodBinding10 = ((ProblemMethodBinding) methodBinding2).closestMatch;
                if (methodBinding10 != null) {
                    methodBinding2 = methodBinding10.original();
                }
                String[] strArr22 = {new String(methodBinding2.selector), typesAsString(methodBinding2, false), new String(methodBinding2.declaringClass.readableName())};
                String[] strArr23 = {new String(methodBinding2.selector), typesAsString(methodBinding2, true), new String(methodBinding2.declaringClass.shortReadableName())};
                long j18 = messageSend.nameSourcePosition;
                handle(IProblem.ApplicableMethodOverriddenByInapplicable, strArr22, strArr23, (int) (j18 >>> 32), (int) j18);
                return;
            case 25:
                contradictoryNullAnnotationsInferred(((ProblemMethodBinding) methodBinding2).closestMatch, messageSend);
                return;
            case 26:
                return;
            case 29:
                String[] strArr24 = {new String(methodBinding2.declaringClass.readableName()), new String(methodBinding2.selector)};
                String[] strArr25 = {new String(methodBinding2.declaringClass.shortReadableName()), new String(methodBinding2.selector)};
                long j19 = messageSend.nameSourcePosition;
                handle(IProblem.InterfaceStaticMethodInvocationNotBelow18, strArr24, strArr25, (int) (j19 >>> 32), (int) j19);
                return;
            case 31:
                return;
        }
    }

    public void invalidModule(ModuleReference moduleReference) {
        handle(IProblem.UndefinedModule, ProblemHandler.NoArgument, new String[]{CharOperation.charToString(moduleReference.moduleName)}, moduleReference.sourceStart, moduleReference.sourceEnd);
    }

    public void invalidNullToSynchronize(Expression expression) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidNullToSynchronized, strArr, strArr, expression.sourceStart, expression.sourceEnd);
    }

    public void invalidOpensStatement(OpensStatement opensStatement, ModuleDeclaration moduleDeclaration) {
        handle(IProblem.InvalidOpensStatement, ProblemHandler.NoArgument, new String[]{CharOperation.charToString(moduleDeclaration.moduleName)}, opensStatement.declarationSourceStart, opensStatement.declarationSourceEnd);
    }

    public void invalidOperator(BinaryExpression binaryExpression, TypeBinding typeBinding, TypeBinding typeBinding2) {
        String str = new String(typeBinding.readableName());
        String str2 = new String(typeBinding2.readableName());
        String str3 = new String(typeBinding.shortReadableName());
        String str4 = new String(typeBinding2.shortReadableName());
        if (str3.equals(str4)) {
            str3 = str;
            str4 = str2;
        }
        handle(IProblem.InvalidOperator, new String[]{binaryExpression.operatorToString(), str + ", " + str2}, new String[]{binaryExpression.operatorToString(), str3 + ", " + str4}, binaryExpression.sourceStart, binaryExpression.sourceEnd);
    }

    public void invalidPackageReference(int i10, PackageVisibilityStatement packageVisibilityStatement) {
        invalidPackageReference(i10, packageVisibilityStatement, 1);
    }

    public void invalidParameterizedExceptionType(TypeBinding typeBinding, ASTNode aSTNode) {
        handle(IProblem.InvalidParameterizedExceptionType, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void invalidParenthesizedExpression(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidParenthesizedExpression, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void invalidServiceRef(int i10, TypeReference typeReference) {
        handle(i10, ProblemHandler.NoArgument, new String[]{CharOperation.charToString(typeReference.resolvedType.readableName())}, typeReference.sourceStart, typeReference.sourceEnd);
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x016a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void invalidType(ASTNode aSTNode, TypeBinding typeBinding) {
        long j10;
        long j11;
        int i10;
        List<TypeBinding> collectMissingTypes;
        if (typeBinding instanceof ReferenceBinding) {
            if (isRecoveredName(((ReferenceBinding) typeBinding).compoundName)) {
                return;
            }
        } else if (typeBinding instanceof ArrayBinding) {
            TypeBinding typeBinding2 = ((ArrayBinding) typeBinding).leafComponentType;
            if ((typeBinding2 instanceof ReferenceBinding) && isRecoveredName(((ReferenceBinding) typeBinding2).compoundName)) {
                return;
            }
        }
        if (typeBinding.isParameterizedType() && (collectMissingTypes = typeBinding.collectMissingTypes(null)) != null) {
            ReferenceContext referenceContext = this.referenceContext;
            Iterator<TypeBinding> it = collectMissingTypes.iterator();
            while (it.hasNext()) {
                try {
                    invalidType(aSTNode, it.next());
                } finally {
                    this.referenceContext = referenceContext;
                }
            }
            return;
        }
        int problemId = typeBinding.problemId();
        int i11 = IProblem.UndefinedType;
        if (problemId != 1) {
            if (problemId == 2) {
                i11 = IProblem.NotVisibleType;
            } else if (problemId == 3) {
                i11 = IProblem.AmbiguousType;
            } else if (problemId == 4) {
                i11 = IProblem.InternalTypeNameProvided;
            } else if (problemId == 5) {
                i11 = IProblem.InheritedTypeHidesEnclosingName;
            } else if (problemId == 7) {
                i11 = IProblem.NonStaticTypeFromStaticInvocation;
            } else if (problemId == 9) {
                i11 = IProblem.IllegalTypeVariableSuperReference;
            } else if (problemId != 30) {
                needImplementation(aSTNode);
            } else {
                i11 = IProblem.NotAccessibleType;
            }
        }
        int i12 = i11;
        int i13 = aSTNode.sourceEnd;
        if (aSTNode instanceof QualifiedNameReference) {
            QualifiedNameReference qualifiedNameReference = (QualifiedNameReference) aSTNode;
            if (isRecoveredName(qualifiedNameReference.tokens)) {
                return;
            }
            int i14 = qualifiedNameReference.indexOfFirstFieldBinding;
            if (i14 >= 1) {
                j11 = qualifiedNameReference.sourcePositions[i14 - 1];
                i13 = (int) j11;
            }
            int i15 = i13;
            int i16 = aSTNode.sourceStart;
            if (!(aSTNode instanceof SingleTypeReference)) {
                SingleTypeReference singleTypeReference = (SingleTypeReference) aSTNode;
                if (singleTypeReference.annotations != null) {
                    i10 = (i15 - singleTypeReference.token.length) + 1;
                    handle(i12, new String[]{new String(typeBinding.leafComponentType().readableName())}, new String[]{new String(typeBinding.leafComponentType().shortReadableName())}, i10, i15);
                }
            } else if (aSTNode instanceof QualifiedTypeReference) {
                QualifiedTypeReference qualifiedTypeReference = (QualifiedTypeReference) aSTNode;
                if (qualifiedTypeReference.annotations != null) {
                    i16 = (((int) (qualifiedTypeReference.sourcePositions[0] & 4294967295L)) - qualifiedTypeReference.tokens[0].length) + 1;
                }
            }
            i10 = i16;
            handle(i12, new String[]{new String(typeBinding.leafComponentType().readableName())}, new String[]{new String(typeBinding.leafComponentType().shortReadableName())}, i10, i15);
        }
        if (aSTNode instanceof ParameterizedQualifiedTypeReference) {
            ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference = (ParameterizedQualifiedTypeReference) aSTNode;
            if (isRecoveredName(parameterizedQualifiedTypeReference.tokens)) {
                return;
            }
            if (typeBinding instanceof ReferenceBinding) {
                j10 = parameterizedQualifiedTypeReference.sourcePositions[((ReferenceBinding) typeBinding).compoundName.length - 1];
                i13 = (int) j10;
            }
        } else if (aSTNode instanceof ArrayQualifiedTypeReference) {
            ArrayQualifiedTypeReference arrayQualifiedTypeReference = (ArrayQualifiedTypeReference) aSTNode;
            if (isRecoveredName(arrayQualifiedTypeReference.tokens)) {
                return;
            }
            TypeBinding leafComponentType = typeBinding.leafComponentType();
            if (leafComponentType instanceof ReferenceBinding) {
                j11 = arrayQualifiedTypeReference.sourcePositions[((ReferenceBinding) leafComponentType).compoundName.length - 1];
            } else {
                long[] jArr = arrayQualifiedTypeReference.sourcePositions;
                j11 = jArr[jArr.length - 1];
            }
            i13 = (int) j11;
        } else if (aSTNode instanceof QualifiedTypeReference) {
            QualifiedTypeReference qualifiedTypeReference2 = (QualifiedTypeReference) aSTNode;
            if (isRecoveredName(qualifiedTypeReference2.tokens)) {
                return;
            }
            if (typeBinding instanceof ReferenceBinding) {
                char[][] cArr = ((ReferenceBinding) typeBinding).compoundName;
                int length = cArr.length;
                long[] jArr2 = qualifiedTypeReference2.sourcePositions;
                if (length <= jArr2.length) {
                    j10 = jArr2[cArr.length - 1];
                    i13 = (int) j10;
                }
            }
        } else if (aSTNode instanceof ImportReference) {
            ImportReference importReference = (ImportReference) aSTNode;
            if (isRecoveredName(importReference.tokens)) {
                return;
            }
            if (typeBinding instanceof ReferenceBinding) {
                j10 = importReference.sourcePositions[((ReferenceBinding) typeBinding).compoundName.length - 1];
                i13 = (int) j10;
            }
        } else if (aSTNode instanceof ArrayTypeReference) {
            ArrayTypeReference arrayTypeReference = (ArrayTypeReference) aSTNode;
            if (isRecoveredName(arrayTypeReference.token)) {
                return;
            } else {
                i13 = arrayTypeReference.originalSourceEnd;
            }
        }
        int i152 = i13;
        int i162 = aSTNode.sourceStart;
        if (!(aSTNode instanceof SingleTypeReference)) {
        }
        i10 = i162;
        handle(i12, new String[]{new String(typeBinding.leafComponentType().readableName())}, new String[]{new String(typeBinding.leafComponentType().shortReadableName())}, i10, i152);
    }

    public void invalidTypeArguments(TypeReference[] typeReferenceArr) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidTypeArguments, strArr, strArr, typeReferenceArr[0].sourceStart, typeReferenceArr[typeReferenceArr.length - 1].sourceEnd);
    }

    public void invalidTypeForCollection(Expression expression) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidTypeForCollection, strArr, strArr, expression.sourceStart, expression.sourceEnd);
    }

    public void invalidTypeForCollectionTarget14(Expression expression) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidTypeForCollectionTarget14, strArr, strArr, expression.sourceStart, expression.sourceEnd);
    }

    public void invalidTypeToSynchronize(Expression expression, TypeBinding typeBinding) {
        handle(IProblem.InvalidTypeToSynchronized, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, expression.sourceStart, expression.sourceEnd);
    }

    public void invalidTypeVariableAsException(TypeBinding typeBinding, ASTNode aSTNode) {
        handle(IProblem.InvalidTypeVariableExceptionType, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void invalidUnaryExpression(Expression expression) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidUnaryExpression, strArr, strArr, expression.sourceStart, expression.sourceEnd);
    }

    public void invalidUsageOfAnnotation(Annotation annotation) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidUsageOfAnnotations, strArr, strArr, annotation.sourceStart, annotation.sourceEnd);
    }

    public void invalidUsageOfAnnotationDeclarations(TypeDeclaration typeDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidUsageOfAnnotationDeclarations, strArr, strArr, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void invalidUsageOfEnumDeclarations(TypeDeclaration typeDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidUsageOfEnumDeclarations, strArr, strArr, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void invalidUsageOfForeachStatements(LocalDeclaration localDeclaration, Expression expression) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidUsageOfForeachStatements, strArr, strArr, localDeclaration.declarationSourceStart, expression.sourceEnd);
    }

    public void invalidUsageOfStaticImports(ImportReference importReference) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidUsageOfStaticImports, strArr, strArr, importReference.declarationSourceStart, importReference.declarationSourceEnd);
    }

    public void invalidUsageOfTypeAnnotations(Annotation annotation) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidUsageOfTypeAnnotations, strArr, strArr, annotation.sourceStart, annotation.sourceEnd);
    }

    public void invalidUsageOfTypeArguments(TypeReference typeReference, TypeReference typeReference2) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidUsageOfTypeArguments, strArr, strArr, typeReference.sourceStart, typeReference2.sourceEnd);
    }

    public void invalidUsageOfTypeParameters(TypeParameter typeParameter, TypeParameter typeParameter2) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidUsageOfTypeParameters, strArr, strArr, typeParameter.declarationSourceStart, typeParameter2.declarationSourceEnd);
    }

    public void invalidUsageOfTypeParametersForAnnotationDeclaration(TypeDeclaration typeDeclaration) {
        TypeParameter[] typeParameterArr = typeDeclaration.typeParameters;
        int length = typeParameterArr.length;
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidUsageOfTypeParametersForAnnotationDeclaration, strArr, strArr, typeParameterArr[0].declarationSourceStart, typeParameterArr[length - 1].declarationSourceEnd);
    }

    public void invalidUsageOfTypeParametersForEnumDeclaration(TypeDeclaration typeDeclaration) {
        TypeParameter[] typeParameterArr = typeDeclaration.typeParameters;
        int length = typeParameterArr.length;
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidUsageOfTypeParametersForEnumDeclaration, strArr, strArr, typeParameterArr[0].declarationSourceStart, typeParameterArr[length - 1].declarationSourceEnd);
    }

    public void invalidUsageOfVarargs(Argument argument) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.InvalidUsageOfVarargs, strArr, strArr, argument.type.sourceStart, argument.sourceEnd);
    }

    public void isClassPathCorrect(char[][] cArr, CompilationUnitDeclaration compilationUnitDeclaration, Object obj) {
        int i10;
        int i11;
        int sourceStart;
        int sourceEnd;
        ReferenceContext referenceContext = this.referenceContext;
        this.referenceContext = compilationUnitDeclaration;
        String[] strArr = {CharOperation.toString(cArr)};
        try {
            if (obj != null) {
                if (obj instanceof InvocationSite) {
                    InvocationSite invocationSite = (InvocationSite) obj;
                    sourceStart = invocationSite.sourceStart();
                    sourceEnd = invocationSite.sourceEnd();
                } else if (obj instanceof ASTNode) {
                    ASTNode aSTNode = (ASTNode) obj;
                    sourceStart = aSTNode.sourceStart();
                    sourceEnd = aSTNode.sourceEnd();
                }
                i10 = sourceStart;
                i11 = sourceEnd;
                handle(IProblem.IsClassPathCorrect, strArr, strArr, i10, i11);
                return;
            }
            handle(IProblem.IsClassPathCorrect, strArr, strArr, i10, i11);
            return;
        } finally {
            this.referenceContext = referenceContext;
        }
        i10 = 0;
        i11 = 0;
    }

    public void javadocAmbiguousMethodReference(int i10, int i11, Binding binding, int i12) {
        int computeSeverity = computeSeverity(IProblem.JavadocAmbiguousMethodReference);
        if (computeSeverity != 256 && javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, i12)) {
            String[] strArr = {new String(binding.readableName())};
            handle(IProblem.JavadocAmbiguousMethodReference, strArr, strArr, computeSeverity, i10, i11);
        }
    }

    public void javadocDeprecatedField(FieldBinding fieldBinding, ASTNode aSTNode, int i10) {
        int computeSeverity = computeSeverity(IProblem.JavadocUsingDeprecatedField);
        if (computeSeverity != 256 && javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, i10)) {
            handle(IProblem.JavadocUsingDeprecatedField, new String[]{new String(fieldBinding.declaringClass.readableName()), new String(fieldBinding.name)}, new String[]{new String(fieldBinding.declaringClass.shortReadableName()), new String(fieldBinding.name)}, computeSeverity, nodeSourceStart(fieldBinding, aSTNode), nodeSourceEnd(fieldBinding, aSTNode));
        }
    }

    public void javadocDeprecatedMethod(MethodBinding methodBinding, ASTNode aSTNode, int i10) {
        boolean isConstructor = methodBinding.isConstructor();
        int computeSeverity = computeSeverity(isConstructor ? IProblem.JavadocUsingDeprecatedConstructor : IProblem.JavadocUsingDeprecatedMethod);
        if (computeSeverity != 256 && javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, i10)) {
            if (isConstructor) {
                handle(IProblem.JavadocUsingDeprecatedConstructor, new String[]{new String(methodBinding.declaringClass.readableName()), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding.declaringClass.shortReadableName()), typesAsString(methodBinding, true)}, computeSeverity, aSTNode.sourceStart, aSTNode.sourceEnd);
            } else {
                handle(IProblem.JavadocUsingDeprecatedMethod, new String[]{new String(methodBinding.declaringClass.readableName()), new String(methodBinding.selector), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding.declaringClass.shortReadableName()), new String(methodBinding.selector), typesAsString(methodBinding, true)}, computeSeverity, aSTNode.sourceStart, aSTNode.sourceEnd);
            }
        }
    }

    public void javadocDeprecatedType(TypeBinding typeBinding, ASTNode aSTNode, int i10) {
        javadocDeprecatedType(typeBinding, aSTNode, i10, Integer.MAX_VALUE);
    }

    public void javadocDuplicatedParamTag(char[] cArr, int i10, int i11, int i12) {
        int computeSeverity = computeSeverity(IProblem.JavadocDuplicateParamName);
        if (computeSeverity != 256 && javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, i12)) {
            String[] strArr = {String.valueOf(cArr)};
            handle(IProblem.JavadocDuplicateParamName, strArr, strArr, computeSeverity, i10, i11);
        }
    }

    public void javadocDuplicatedReturnTag(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.JavadocDuplicateReturnTag, strArr, strArr, i10, i11);
    }

    public void javadocDuplicatedTag(char[] cArr, int i10, int i11) {
        String[] strArr = {new String(cArr)};
        handle(IProblem.JavadocDuplicateTag, strArr, strArr, i10, i11);
    }

    public void javadocDuplicatedThrowsClassName(TypeReference typeReference, int i10) {
        int computeSeverity = computeSeverity(IProblem.JavadocDuplicateThrowsClassName);
        if (computeSeverity != 256 && javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, i10)) {
            String[] strArr = {String.valueOf(typeReference.resolvedType.sourceName())};
            handle(IProblem.JavadocDuplicateThrowsClassName, strArr, strArr, computeSeverity, typeReference.sourceStart, typeReference.sourceEnd);
        }
    }

    public void javadocEmptyReturnTag(int i10, int i11, int i12) {
        if (computeSeverity(IProblem.JavadocEmptyReturnTag) != 256 && javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, i12)) {
            String[] strArr = {new String(JavadocTagConstants.TAG_RETURN)};
            handle(IProblem.JavadocEmptyReturnTag, strArr, strArr, i10, i11);
        }
    }

    public void javadocErrorNoMethodFor(MessageSend messageSend, TypeBinding typeBinding, TypeBinding[] typeBindingArr, int i10) {
        int i11 = typeBinding.isArrayType() ? IProblem.JavadocNoMessageSendOnArrayType : IProblem.JavadocNoMessageSendOnBaseType;
        int computeSeverity = computeSeverity(i11);
        if (computeSeverity == 256) {
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        int length = typeBindingArr.length;
        for (int i12 = 0; i12 < length; i12++) {
            if (i12 != 0) {
                stringBuffer.append(", ");
                stringBuffer2.append(", ");
            }
            stringBuffer.append(new String(typeBindingArr[i12].readableName()));
            stringBuffer2.append(new String(typeBindingArr[i12].shortReadableName()));
        }
        if (javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, i10)) {
            handle(i11, new String[]{new String(typeBinding.readableName()), new String(messageSend.selector), stringBuffer.toString()}, new String[]{new String(typeBinding.shortReadableName()), new String(messageSend.selector), stringBuffer2.toString()}, computeSeverity, messageSend.sourceStart, messageSend.sourceEnd);
        }
    }

    public void javadocHiddenReference(int i10, int i11, Scope scope, int i12) {
        while (scope.parent.kind != 4) {
            if (!javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, scope.getDeclarationModifiers())) {
                return;
            } else {
                scope = scope.parent;
            }
        }
        CompilerOptions compilerOptions = this.options;
        String[] strArr = {compilerOptions.getVisibilityString(compilerOptions.reportInvalidJavadocTagsVisibility), this.options.getVisibilityString(i12)};
        handle(IProblem.JavadocHiddenReference, strArr, strArr, i10, i11);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x028d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x028e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void javadocInvalidConstructor(Statement statement, MethodBinding methodBinding, int i10) {
        int i11;
        int computeSeverity;
        FieldDeclaration fieldDeclaration;
        if (!javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, i10)) {
            return;
        }
        int i12 = statement.sourceStart;
        int i13 = statement.sourceEnd;
        if ((statement instanceof AllocationExpression) && (fieldDeclaration = ((AllocationExpression) statement).enumConstant) != null) {
            i12 = fieldDeclaration.sourceStart;
            i13 = fieldDeclaration.sourceEnd;
        }
        int i14 = i12;
        int i15 = i13;
        int problemId = methodBinding.problemId();
        if (problemId != 1) {
            if (problemId == 2) {
                i11 = IProblem.JavadocNotVisibleConstructor;
            } else if (problemId != 3) {
                switch (problemId) {
                    case 10:
                        int computeSeverity2 = computeSeverity(IProblem.JavadocGenericConstructorTypeArgumentMismatch);
                        if (computeSeverity2 == 256) {
                            return;
                        }
                        ProblemMethodBinding problemMethodBinding = (ProblemMethodBinding) methodBinding;
                        MethodBinding original = ((ParameterizedGenericMethodBinding) problemMethodBinding.closestMatch).original();
                        TypeBinding[] typeBindingArr = problemMethodBinding.parameters;
                        int length = typeBindingArr.length;
                        int i16 = length - 2;
                        TypeBinding typeBinding = typeBindingArr[i16];
                        TypeVariableBinding typeVariableBinding = (TypeVariableBinding) typeBindingArr[length - 1];
                        TypeBinding[] typeBindingArr2 = new TypeBinding[i16];
                        System.arraycopy(typeBindingArr, 0, typeBindingArr2, 0, i16);
                        handle(IProblem.JavadocGenericConstructorTypeArgumentMismatch, new String[]{new String(original.declaringClass.sourceName()), typesAsString(original, false), new String(original.declaringClass.readableName()), typesAsString(typeBindingArr2, false), new String(typeBinding.readableName()), new String(typeVariableBinding.sourceName()), parameterBoundAsString(typeVariableBinding, false)}, new String[]{new String(original.declaringClass.sourceName()), typesAsString(original, true), new String(original.declaringClass.shortReadableName()), typesAsString(typeBindingArr2, true), new String(typeBinding.shortReadableName()), new String(typeVariableBinding.sourceName()), parameterBoundAsString(typeVariableBinding, true)}, computeSeverity2, i14, i15);
                        return;
                    case 11:
                        MethodBinding methodBinding2 = ((ProblemMethodBinding) methodBinding).closestMatch;
                        boolean z10 = methodBinding2.typeVariables == Binding.NO_TYPE_VARIABLES;
                        int computeSeverity3 = computeSeverity(z10 ? IProblem.JavadocNonGenericConstructor : IProblem.JavadocIncorrectArityForParameterizedConstructor);
                        if (computeSeverity3 == 256) {
                            return;
                        }
                        if (z10) {
                            handle(IProblem.JavadocNonGenericConstructor, new String[]{new String(methodBinding2.declaringClass.sourceName()), typesAsString(methodBinding2, false), new String(methodBinding2.declaringClass.readableName()), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding2.declaringClass.sourceName()), typesAsString(methodBinding2, true), new String(methodBinding2.declaringClass.shortReadableName()), typesAsString(methodBinding, true)}, computeSeverity3, i14, i15);
                            return;
                        } else {
                            handle(IProblem.JavadocIncorrectArityForParameterizedConstructor, new String[]{new String(methodBinding2.declaringClass.sourceName()), typesAsString(methodBinding2, false), new String(methodBinding2.declaringClass.readableName()), typesAsString((TypeBinding[]) methodBinding2.typeVariables, false), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding2.declaringClass.sourceName()), typesAsString(methodBinding2, true), new String(methodBinding2.declaringClass.shortReadableName()), typesAsString((TypeBinding[]) methodBinding2.typeVariables, true), typesAsString(methodBinding, true)}, computeSeverity3, i14, i15);
                            return;
                        }
                    case 12:
                        int computeSeverity4 = computeSeverity(IProblem.JavadocParameterizedConstructorArgumentTypeMismatch);
                        if (computeSeverity4 == 256) {
                            return;
                        }
                        MethodBinding methodBinding3 = ((ProblemMethodBinding) methodBinding).closestMatch;
                        ParameterizedGenericMethodBinding parameterizedGenericMethodBinding = (ParameterizedGenericMethodBinding) methodBinding3;
                        handle(IProblem.JavadocParameterizedConstructorArgumentTypeMismatch, new String[]{new String(methodBinding3.declaringClass.sourceName()), typesAsString(methodBinding3, false), new String(methodBinding3.declaringClass.readableName()), typesAsString(parameterizedGenericMethodBinding.typeArguments, false), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding3.declaringClass.sourceName()), typesAsString(methodBinding3, true), new String(methodBinding3.declaringClass.shortReadableName()), typesAsString(parameterizedGenericMethodBinding.typeArguments, true), typesAsString(methodBinding, true)}, computeSeverity4, i14, i15);
                        return;
                    case 13:
                        int computeSeverity5 = computeSeverity(IProblem.JavadocTypeArgumentsForRawGenericConstructor);
                        if (computeSeverity5 == 256) {
                            return;
                        }
                        MethodBinding methodBinding4 = ((ProblemMethodBinding) methodBinding).closestMatch;
                        handle(IProblem.JavadocTypeArgumentsForRawGenericConstructor, new String[]{new String(methodBinding4.declaringClass.sourceName()), typesAsString(methodBinding4, false), new String(methodBinding4.declaringClass.readableName()), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding4.declaringClass.sourceName()), typesAsString(methodBinding4, true), new String(methodBinding4.declaringClass.shortReadableName()), typesAsString(methodBinding, true)}, computeSeverity5, i14, i15);
                        return;
                    default:
                        needImplementation(statement);
                        break;
                }
            } else {
                i11 = IProblem.JavadocAmbiguousConstructor;
            }
            computeSeverity = computeSeverity(i11);
            if (computeSeverity != 256) {
                return;
            }
            handle(i11, new String[]{new String(methodBinding.declaringClass.readableName()), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding.declaringClass.shortReadableName()), typesAsString(methodBinding, true)}, computeSeverity, statement.sourceStart, statement.sourceEnd);
            return;
        }
        i11 = -1610612244;
        computeSeverity = computeSeverity(i11);
        if (computeSeverity != 256) {
        }
    }

    public void javadocInvalidField(FieldReference fieldReference, Binding binding, TypeBinding typeBinding, int i10) {
        int problemId = binding.problemId();
        int i11 = IProblem.JavadocUndefinedField;
        if (problemId != 1) {
            if (problemId == 2) {
                i11 = IProblem.JavadocNotVisibleField;
            } else if (problemId != 3) {
                needImplementation(fieldReference);
            } else {
                i11 = IProblem.JavadocAmbiguousField;
            }
        }
        int i12 = i11;
        int computeSeverity = computeSeverity(i12);
        if (computeSeverity != 256 && javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, i10)) {
            String[] strArr = {new String(binding.readableName())};
            handle(i12, strArr, strArr, computeSeverity, fieldReference.sourceStart, fieldReference.sourceEnd);
        }
    }

    public void javadocInvalidMemberTypeQualification(int i10, int i11, int i12) {
        if (javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, i12)) {
            String[] strArr = ProblemHandler.NoArgument;
            handle(IProblem.JavadocInvalidMemberTypeQualification, strArr, strArr, i10, i11);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x02f1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x02f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void javadocInvalidMethod(MessageSend messageSend, MethodBinding methodBinding, int i10) {
        int i11;
        int computeSeverity;
        if (!javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, i10)) {
            return;
        }
        int problemId = methodBinding.problemId();
        if (problemId != 1) {
            if (problemId == 2) {
                i11 = IProblem.JavadocNotVisibleMethod;
            } else if (problemId != 3) {
                switch (problemId) {
                    case 10:
                        int computeSeverity2 = computeSeverity(IProblem.JavadocGenericMethodTypeArgumentMismatch);
                        if (computeSeverity2 == 256) {
                            return;
                        }
                        ProblemMethodBinding problemMethodBinding = (ProblemMethodBinding) methodBinding;
                        MethodBinding original = ((ParameterizedGenericMethodBinding) problemMethodBinding.closestMatch).original();
                        TypeBinding[] typeBindingArr = problemMethodBinding.parameters;
                        int length = typeBindingArr.length;
                        int i12 = length - 2;
                        TypeBinding typeBinding = typeBindingArr[i12];
                        TypeVariableBinding typeVariableBinding = (TypeVariableBinding) typeBindingArr[length - 1];
                        TypeBinding[] typeBindingArr2 = new TypeBinding[i12];
                        System.arraycopy(typeBindingArr, 0, typeBindingArr2, 0, i12);
                        String[] strArr = {new String(original.selector), typesAsString(original, false), new String(original.declaringClass.readableName()), typesAsString(typeBindingArr2, false), new String(typeBinding.readableName()), new String(typeVariableBinding.sourceName()), parameterBoundAsString(typeVariableBinding, false)};
                        String[] strArr2 = {new String(original.selector), typesAsString(original, true), new String(original.declaringClass.shortReadableName()), typesAsString(typeBindingArr2, true), new String(typeBinding.shortReadableName()), new String(typeVariableBinding.sourceName()), parameterBoundAsString(typeVariableBinding, true)};
                        long j10 = messageSend.nameSourcePosition;
                        handle(IProblem.JavadocGenericMethodTypeArgumentMismatch, strArr, strArr2, computeSeverity2, (int) (j10 >>> 32), (int) j10);
                        return;
                    case 11:
                        MethodBinding methodBinding2 = ((ProblemMethodBinding) methodBinding).closestMatch;
                        boolean z10 = methodBinding2.typeVariables == Binding.NO_TYPE_VARIABLES;
                        int computeSeverity3 = computeSeverity(z10 ? IProblem.JavadocNonGenericMethod : IProblem.JavadocIncorrectArityForParameterizedMethod);
                        if (computeSeverity3 == 256) {
                            return;
                        }
                        if (z10) {
                            String[] strArr3 = {new String(methodBinding2.selector), typesAsString(methodBinding2, false), new String(methodBinding2.declaringClass.readableName()), typesAsString(methodBinding, false)};
                            String[] strArr4 = {new String(methodBinding2.selector), typesAsString(methodBinding2, true), new String(methodBinding2.declaringClass.shortReadableName()), typesAsString(methodBinding, true)};
                            long j11 = messageSend.nameSourcePosition;
                            handle(IProblem.JavadocNonGenericMethod, strArr3, strArr4, computeSeverity3, (int) (j11 >>> 32), (int) j11);
                            return;
                        }
                        String[] strArr5 = {new String(methodBinding2.selector), typesAsString(methodBinding2, false), new String(methodBinding2.declaringClass.readableName()), typesAsString((TypeBinding[]) methodBinding2.typeVariables, false), typesAsString(methodBinding, false)};
                        String[] strArr6 = {new String(methodBinding2.selector), typesAsString(methodBinding2, true), new String(methodBinding2.declaringClass.shortReadableName()), typesAsString((TypeBinding[]) methodBinding2.typeVariables, true), typesAsString(methodBinding, true)};
                        long j12 = messageSend.nameSourcePosition;
                        handle(IProblem.JavadocIncorrectArityForParameterizedMethod, strArr5, strArr6, computeSeverity3, (int) (j12 >>> 32), (int) j12);
                        return;
                    case 12:
                        int computeSeverity4 = computeSeverity(IProblem.JavadocParameterizedMethodArgumentTypeMismatch);
                        if (computeSeverity4 == 256) {
                            return;
                        }
                        MethodBinding methodBinding3 = ((ProblemMethodBinding) methodBinding).closestMatch;
                        ParameterizedGenericMethodBinding parameterizedGenericMethodBinding = (ParameterizedGenericMethodBinding) methodBinding3;
                        String[] strArr7 = {new String(methodBinding3.selector), typesAsString(methodBinding3, false), new String(methodBinding3.declaringClass.readableName()), typesAsString(parameterizedGenericMethodBinding.typeArguments, false), typesAsString(methodBinding, false)};
                        String[] strArr8 = {new String(methodBinding3.selector), typesAsString(methodBinding3, true), new String(methodBinding3.declaringClass.shortReadableName()), typesAsString(parameterizedGenericMethodBinding.typeArguments, true), typesAsString(methodBinding, true)};
                        long j13 = messageSend.nameSourcePosition;
                        handle(IProblem.JavadocParameterizedMethodArgumentTypeMismatch, strArr7, strArr8, computeSeverity4, (int) (j13 >>> 32), (int) j13);
                        return;
                    case 13:
                        int computeSeverity5 = computeSeverity(IProblem.JavadocTypeArgumentsForRawGenericMethod);
                        if (computeSeverity5 == 256) {
                            return;
                        }
                        MethodBinding methodBinding4 = ((ProblemMethodBinding) methodBinding).closestMatch;
                        String[] strArr9 = {new String(methodBinding4.selector), typesAsString(methodBinding4, false), new String(methodBinding4.declaringClass.readableName()), typesAsString(methodBinding, false)};
                        String[] strArr10 = {new String(methodBinding4.selector), typesAsString(methodBinding4, true), new String(methodBinding4.declaringClass.shortReadableName()), typesAsString(methodBinding, true)};
                        long j14 = messageSend.nameSourcePosition;
                        handle(IProblem.JavadocTypeArgumentsForRawGenericMethod, strArr9, strArr10, computeSeverity5, (int) (j14 >>> 32), (int) j14);
                        return;
                    default:
                        needImplementation(messageSend);
                        break;
                }
            } else {
                i11 = IProblem.JavadocAmbiguousMethod;
            }
            computeSeverity = computeSeverity(i11);
            if (computeSeverity != 256) {
                return;
            }
            String[] strArr11 = {new String(methodBinding.declaringClass.readableName()), new String(methodBinding.selector), typesAsString(methodBinding, false)};
            String[] strArr12 = {new String(methodBinding.declaringClass.shortReadableName()), new String(methodBinding.selector), typesAsString(methodBinding, true)};
            long j15 = messageSend.nameSourcePosition;
            handle(i11, strArr11, strArr12, computeSeverity, (int) (j15 >>> 32), (int) j15);
            return;
        }
        ProblemMethodBinding problemMethodBinding2 = (ProblemMethodBinding) methodBinding;
        if (problemMethodBinding2.closestMatch != null) {
            int computeSeverity6 = computeSeverity(IProblem.JavadocParameterMismatch);
            if (computeSeverity6 == 256) {
                return;
            }
            String typesAsString = typesAsString(problemMethodBinding2.closestMatch, false);
            String typesAsString2 = typesAsString(methodBinding, false);
            String typesAsString3 = typesAsString(problemMethodBinding2.closestMatch, true);
            String typesAsString4 = typesAsString(methodBinding, true);
            if (typesAsString3.equals(typesAsString4)) {
                typesAsString3 = typesAsString;
                typesAsString4 = typesAsString2;
            }
            String[] strArr13 = {new String(problemMethodBinding2.closestMatch.declaringClass.readableName()), new String(problemMethodBinding2.closestMatch.selector), typesAsString, typesAsString2};
            String[] strArr14 = {new String(problemMethodBinding2.closestMatch.declaringClass.shortReadableName()), new String(problemMethodBinding2.closestMatch.selector), typesAsString3, typesAsString4};
            long j16 = messageSend.nameSourcePosition;
            handle(IProblem.JavadocParameterMismatch, strArr13, strArr14, computeSeverity6, (int) (j16 >>> 32), (int) j16);
            return;
        }
        i11 = -1610612240;
        computeSeverity = computeSeverity(i11);
        if (computeSeverity != 256) {
        }
    }

    public void javadocInvalidParamTagName(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.JavadocInvalidParamTagName, strArr, strArr, i10, i11);
    }

    public void javadocInvalidParamTypeParameter(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.JavadocInvalidParamTagTypeParameter, strArr, strArr, i10, i11);
    }

    public void javadocInvalidReference(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.JavadocInvalidSeeReference, strArr, strArr, i10, i11);
    }

    public void javadocInvalidSeeHref(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.JavadocInvalidSeeHref, strArr, strArr, i10, i11);
    }

    public void javadocInvalidSeeReferenceArgs(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.JavadocInvalidSeeArgs, strArr, strArr, i10, i11);
    }

    public void javadocInvalidSeeUrlReference(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.JavadocInvalidSeeUrlReference, strArr, strArr, i10, i11);
    }

    public void javadocInvalidTag(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.JavadocInvalidTag, strArr, strArr, i10, i11);
    }

    public void javadocInvalidThrowsClass(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.JavadocInvalidThrowsClass, strArr, strArr, i10, i11);
    }

    public void javadocInvalidThrowsClassName(TypeReference typeReference, int i10) {
        int computeSeverity = computeSeverity(IProblem.JavadocInvalidThrowsClassName);
        if (computeSeverity != 256 && javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, i10)) {
            String[] strArr = {String.valueOf(typeReference.resolvedType.sourceName())};
            handle(IProblem.JavadocInvalidThrowsClassName, strArr, strArr, computeSeverity, typeReference.sourceStart, typeReference.sourceEnd);
        }
    }

    public void javadocInvalidType(ASTNode aSTNode, TypeBinding typeBinding, int i10) {
        if (javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, i10)) {
            int problemId = typeBinding.problemId();
            int i11 = IProblem.JavadocUndefinedType;
            if (problemId != 1) {
                if (problemId == 2) {
                    i11 = IProblem.JavadocNotVisibleType;
                } else if (problemId == 3) {
                    i11 = IProblem.JavadocAmbiguousType;
                } else if (problemId == 4) {
                    i11 = IProblem.JavadocInternalTypeNameProvided;
                } else if (problemId == 5) {
                    i11 = IProblem.JavadocInheritedNameHidesEnclosingTypeName;
                } else if (problemId != 7) {
                    needImplementation(aSTNode);
                } else {
                    i11 = IProblem.JavadocNonStaticTypeFromStaticInvocation;
                }
            }
            int i12 = i11;
            int computeSeverity = computeSeverity(i12);
            if (computeSeverity == 256) {
                return;
            }
            handle(i12, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, computeSeverity, aSTNode.sourceStart, aSTNode.sourceEnd);
        }
    }

    public void javadocInvalidValueReference(int i10, int i11, int i12) {
        if (javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, i12)) {
            String[] strArr = ProblemHandler.NoArgument;
            handle(IProblem.JavadocInvalidValueReference, strArr, strArr, i10, i11);
        }
    }

    public void javadocMalformedSeeReference(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.JavadocMalformedSeeReference, strArr, strArr, i10, i11);
    }

    public void javadocMissing(int i10, int i11, int i12) {
        javadocMissing(i10, i11, computeSeverity(IProblem.JavadocMissing), i12);
    }

    public void javadocMissingHashCharacter(int i10, int i11, String str) {
        int computeSeverity = computeSeverity(IProblem.JavadocMissingHashCharacter);
        if (computeSeverity == 256) {
            return;
        }
        String[] strArr = {str};
        handle(IProblem.JavadocMissingHashCharacter, strArr, strArr, computeSeverity, i10, i11);
    }

    public void javadocMissingIdentifier(int i10, int i11, int i12) {
        if (javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, i12)) {
            String[] strArr = ProblemHandler.NoArgument;
            handle(IProblem.JavadocMissingIdentifier, strArr, strArr, i10, i11);
        }
    }

    public void javadocMissingParamName(int i10, int i11, int i12) {
        if (javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, i12)) {
            String[] strArr = ProblemHandler.NoArgument;
            handle(IProblem.JavadocMissingParamName, strArr, strArr, i10, i11);
        }
    }

    public void javadocMissingParamTag(char[] cArr, int i10, int i11, int i12) {
        int computeSeverity = computeSeverity(IProblem.JavadocMissingParamTag);
        if (computeSeverity == 256) {
            return;
        }
        boolean z10 = (805306368 & i12) != 0;
        if (this.options.getSeverity(2097152) != 256) {
            if ((!z10 || this.options.reportMissingJavadocTagsOverriding) && javadocVisibility(this.options.reportMissingJavadocTagsVisibility, i12)) {
                String[] strArr = {String.valueOf(cArr)};
                handle(IProblem.JavadocMissingParamTag, strArr, strArr, computeSeverity, i10, i11);
            }
        }
    }

    public void javadocMissingReference(int i10, int i11, int i12) {
        if (javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, i12)) {
            String[] strArr = ProblemHandler.NoArgument;
            handle(IProblem.JavadocMissingSeeReference, strArr, strArr, i10, i11);
        }
    }

    public void javadocMissingReturnTag(int i10, int i11, int i12) {
        boolean z10 = (805306368 & i12) != 0;
        if (this.options.getSeverity(2097152) != 256) {
            if ((!z10 || this.options.reportMissingJavadocTagsOverriding) && javadocVisibility(this.options.reportMissingJavadocTagsVisibility, i12)) {
                String[] strArr = ProblemHandler.NoArgument;
                handle(IProblem.JavadocMissingReturnTag, strArr, strArr, i10, i11);
            }
        }
    }

    public void javadocMissingTagDescription(char[] cArr, int i10, int i11, int i12) {
        if (computeSeverity(IProblem.JavadocMissingTagDescription) != 256 && javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, i12)) {
            String[] strArr = {new String(cArr)};
            handle(IProblem.JavadocEmptyReturnTag, strArr, strArr, i10, i11);
        }
    }

    public void javadocMissingTagDescriptionAfterReference(int i10, int i11, int i12) {
        int computeSeverity = computeSeverity(IProblem.JavadocMissingTagDescription);
        if (computeSeverity != 256 && javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, i12)) {
            String[] strArr = ProblemHandler.NoArgument;
            handle(IProblem.JavadocMissingTagDescription, strArr, strArr, computeSeverity, i10, i11);
        }
    }

    public void javadocMissingThrowsClassName(int i10, int i11, int i12) {
        if (javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, i12)) {
            String[] strArr = ProblemHandler.NoArgument;
            handle(IProblem.JavadocMissingThrowsClassName, strArr, strArr, i10, i11);
        }
    }

    public void javadocMissingThrowsTag(TypeReference typeReference, int i10) {
        int computeSeverity = computeSeverity(IProblem.JavadocMissingThrowsTag);
        if (computeSeverity == 256) {
            return;
        }
        boolean z10 = (805306368 & i10) != 0;
        if (this.options.getSeverity(2097152) != 256) {
            if ((!z10 || this.options.reportMissingJavadocTagsOverriding) && javadocVisibility(this.options.reportMissingJavadocTagsVisibility, i10)) {
                String[] strArr = {String.valueOf(typeReference.resolvedType.sourceName())};
                handle(IProblem.JavadocMissingThrowsTag, strArr, strArr, computeSeverity, typeReference.sourceStart, typeReference.sourceEnd);
            }
        }
    }

    public void javadocUndeclaredParamTagName(char[] cArr, int i10, int i11, int i12) {
        int computeSeverity = computeSeverity(IProblem.JavadocInvalidParamName);
        if (computeSeverity != 256 && javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, i12)) {
            String[] strArr = {String.valueOf(cArr)};
            handle(IProblem.JavadocInvalidParamName, strArr, strArr, computeSeverity, i10, i11);
        }
    }

    public void javadocUnexpectedTag(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.JavadocUnexpectedTag, strArr, strArr, i10, i11);
    }

    public void javadocUnexpectedText(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.JavadocUnexpectedText, strArr, strArr, i10, i11);
    }

    public void javadocUnterminatedInlineTag(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.JavadocUnterminatedInlineTag, strArr, strArr, i10, i11);
    }

    public void lambdaExpressionCannotImplementGenericMethod(LambdaExpression lambdaExpression, MethodBinding methodBinding) {
        String str = new String(methodBinding.selector);
        handle(IProblem.NoGenericLambda, new String[]{str, new String(methodBinding.declaringClass.readableName())}, new String[]{str, new String(methodBinding.declaringClass.shortReadableName())}, lambdaExpression.sourceStart, lambdaExpression.diagnosticsSourceEnd());
    }

    public void lambdaExpressionsNotBelow18(LambdaExpression lambdaExpression) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.LambdaExpressionNotBelow18, strArr, strArr, lambdaExpression.sourceStart, lambdaExpression.diagnosticsSourceEnd());
    }

    public void lambdaParameterTypeMismatched(Argument argument, TypeReference typeReference, TypeBinding typeBinding) {
        String str = new String(argument.name);
        handle(typeBinding.isTypeVariable() ? IProblem.IncompatibleLambdaParameterType : IProblem.lambdaParameterTypeMismatched, new String[]{str, new String(typeBinding.readableName())}, new String[]{str, new String(typeBinding.shortReadableName())}, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void lambdaRedeclaresArgument(Argument argument) {
        String[] strArr = {new String(argument.name)};
        handle(IProblem.LambdaRedeclaresArgument, strArr, strArr, argument.sourceStart, argument.sourceEnd);
    }

    public void lambdaRedeclaresLocal(LocalDeclaration localDeclaration) {
        String[] strArr = {new String(localDeclaration.name)};
        handle(IProblem.LambdaRedeclaresLocal, strArr, strArr, localDeclaration.sourceStart, localDeclaration.sourceEnd);
    }

    public void lambdaSignatureMismatched(LambdaExpression lambdaExpression) {
        handle(IProblem.lambdaSignatureMismatched, new String[]{new String(lambdaExpression.descriptor.readableName())}, new String[]{new String(lambdaExpression.descriptor.shortReadableName())}, lambdaExpression.sourceStart, lambdaExpression.diagnosticsSourceEnd());
    }

    public void localVariableFreeTypeVariableReference(LocalVariableBinding localVariableBinding, ASTNode aSTNode) {
        int computeSeverity = computeSeverity(976);
        if (computeSeverity == 256) {
            return;
        }
        String[] strArr = {new String(localVariableBinding.type.readableName()), new String(this.options.nullableAnnotationName[r0.length - 1])};
        handle(976, strArr, strArr, computeSeverity, nodeSourceStart(localVariableBinding, aSTNode), nodeSourceEnd(localVariableBinding, aSTNode));
    }

    public void localVariableHiding(LocalDeclaration localDeclaration, Binding binding, boolean z10) {
        if (binding instanceof LocalVariableBinding) {
            int i10 = localDeclaration instanceof Argument ? IProblem.ArgumentHidingLocalVariable : IProblem.LocalVariableHidingLocalVariable;
            int computeSeverity = computeSeverity(i10);
            if (computeSeverity == 256) {
                return;
            }
            String[] strArr = {new String(localDeclaration.name)};
            handle(i10, strArr, strArr, computeSeverity, nodeSourceStart(binding, localDeclaration), nodeSourceEnd(binding, localDeclaration));
            return;
        }
        if (binding instanceof FieldBinding) {
            if (!z10 || this.options.reportSpecialParameterHidingField) {
                int i11 = localDeclaration instanceof Argument ? IProblem.ArgumentHidingField : IProblem.LocalVariableHidingField;
                int computeSeverity2 = computeSeverity(i11);
                if (computeSeverity2 == 256) {
                    return;
                }
                FieldBinding fieldBinding = (FieldBinding) binding;
                handle(i11, new String[]{new String(localDeclaration.name), new String(fieldBinding.declaringClass.readableName())}, new String[]{new String(localDeclaration.name), new String(fieldBinding.declaringClass.shortReadableName())}, computeSeverity2, localDeclaration.sourceStart, localDeclaration.sourceEnd);
            }
        }
    }

    public void localVariableNonNullComparedToNull(LocalVariableBinding localVariableBinding, ASTNode aSTNode) {
        String[] strArr;
        int i10 = IProblem.NonNullLocalVariableComparisonYieldsFalse;
        int computeSeverity = computeSeverity(IProblem.NonNullLocalVariableComparisonYieldsFalse);
        if (computeSeverity == 256) {
            return;
        }
        if (localVariableBinding.isNonNull()) {
            char[][] cArr = this.options.nonNullAnnotationName;
            strArr = new String[]{new String(localVariableBinding.name), new String(cArr[cArr.length - 1])};
            i10 = IProblem.SpecdNonNullLocalVariableComparisonYieldsFalse;
        } else {
            strArr = new String[]{new String(localVariableBinding.name)};
        }
        String[] strArr2 = strArr;
        handle(i10, strArr2, strArr2, computeSeverity, nodeSourceStart(localVariableBinding, aSTNode), nodeSourceEnd(localVariableBinding, aSTNode));
    }

    public void localVariableNullComparedToNonNull(LocalVariableBinding localVariableBinding, ASTNode aSTNode) {
        int computeSeverity = computeSeverity(IProblem.NullLocalVariableComparisonYieldsFalse);
        if (computeSeverity == 256) {
            return;
        }
        String[] strArr = {new String(localVariableBinding.name)};
        handle(IProblem.NullLocalVariableComparisonYieldsFalse, strArr, strArr, computeSeverity, nodeSourceStart(localVariableBinding, aSTNode), nodeSourceEnd(localVariableBinding, aSTNode));
    }

    public void localVariableNullInstanceof(LocalVariableBinding localVariableBinding, ASTNode aSTNode) {
        int computeSeverity = computeSeverity(IProblem.NullLocalVariableInstanceofYieldsFalse);
        if (computeSeverity == 256) {
            return;
        }
        String[] strArr = {new String(localVariableBinding.name)};
        handle(IProblem.NullLocalVariableInstanceofYieldsFalse, strArr, strArr, computeSeverity, nodeSourceStart(localVariableBinding, aSTNode), nodeSourceEnd(localVariableBinding, aSTNode));
    }

    public void localVariableNullReference(LocalVariableBinding localVariableBinding, ASTNode aSTNode) {
        if (aSTNode instanceof Expression) {
            Expression expression = (Expression) aSTNode;
            if (expression.isTrulyExpression() && (expression.implicitConversion & 1024) != 0) {
                nullUnboxing(aSTNode, localVariableBinding.type);
                return;
            }
        }
        int computeSeverity = computeSeverity(IProblem.NullLocalVariableReference);
        if (computeSeverity == 256) {
            return;
        }
        String[] strArr = {new String(localVariableBinding.name)};
        handle(IProblem.NullLocalVariableReference, strArr, strArr, computeSeverity, nodeSourceStart(localVariableBinding, aSTNode), nodeSourceEnd(localVariableBinding, aSTNode));
    }

    public void localVariablePotentialNullReference(LocalVariableBinding localVariableBinding, ASTNode aSTNode) {
        if (localVariableBinding.type.isFreeTypeVariable()) {
            localVariableFreeTypeVariableReference(localVariableBinding, aSTNode);
            return;
        }
        boolean z10 = aSTNode instanceof Expression;
        if (z10) {
            Expression expression = (Expression) aSTNode;
            if (expression.isTrulyExpression() && (expression.implicitConversion & 1024) != 0) {
                potentialNullUnboxing(aSTNode, localVariableBinding.type);
                return;
            }
        }
        if ((localVariableBinding.type.tagBits & 36028797018963968L) != 0 && z10) {
            Expression expression2 = (Expression) aSTNode;
            if (expression2.isTrulyExpression()) {
                dereferencingNullableExpression(expression2);
                return;
            }
        }
        int computeSeverity = computeSeverity(IProblem.PotentialNullLocalVariableReference);
        if (computeSeverity == 256) {
            return;
        }
        String[] strArr = {new String(localVariableBinding.name)};
        handle(IProblem.PotentialNullLocalVariableReference, strArr, strArr, computeSeverity, nodeSourceStart(localVariableBinding, aSTNode), nodeSourceEnd(localVariableBinding, aSTNode));
    }

    public void localVariableRedundantCheckOnNonNull(LocalVariableBinding localVariableBinding, ASTNode aSTNode) {
        String[] strArr;
        int i10 = IProblem.RedundantNullCheckOnNonNullLocalVariable;
        int computeSeverity = computeSeverity(IProblem.RedundantNullCheckOnNonNullLocalVariable);
        if (computeSeverity == 256) {
            return;
        }
        if (localVariableBinding.isNonNull()) {
            char[][] cArr = this.options.nonNullAnnotationName;
            strArr = new String[]{new String(localVariableBinding.name), new String(cArr[cArr.length - 1])};
            i10 = IProblem.RedundantNullCheckOnSpecdNonNullLocalVariable;
        } else {
            strArr = new String[]{new String(localVariableBinding.name)};
        }
        String[] strArr2 = strArr;
        handle(i10, strArr2, strArr2, computeSeverity, nodeSourceStart(localVariableBinding, aSTNode), nodeSourceEnd(localVariableBinding, aSTNode));
    }

    public void localVariableRedundantCheckOnNull(LocalVariableBinding localVariableBinding, ASTNode aSTNode) {
        int computeSeverity = computeSeverity(IProblem.RedundantNullCheckOnNullLocalVariable);
        if (computeSeverity == 256) {
            return;
        }
        String[] strArr = {new String(localVariableBinding.name)};
        handle(IProblem.RedundantNullCheckOnNullLocalVariable, strArr, strArr, computeSeverity, nodeSourceStart(localVariableBinding, aSTNode), nodeSourceEnd(localVariableBinding, aSTNode));
    }

    public void localVariableRedundantNullAssignment(LocalVariableBinding localVariableBinding, ASTNode aSTNode) {
        int computeSeverity;
        if ((aSTNode.bits & 8) == 0 && (computeSeverity = computeSeverity(IProblem.RedundantLocalVariableNullAssignment)) != 256) {
            String[] strArr = {new String(localVariableBinding.name)};
            handle(IProblem.RedundantLocalVariableNullAssignment, strArr, strArr, computeSeverity, nodeSourceStart(localVariableBinding, aSTNode), nodeSourceEnd(localVariableBinding, aSTNode));
        }
    }

    public void messageSendPotentialNullReference(MethodBinding methodBinding, ASTNode aSTNode) {
        String[] strArr = {new String(methodBinding.readableName())};
        handle(IProblem.PotentialNullMessageSendReference, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void messageSendRedundantCheckOnNonNull(MethodBinding methodBinding, ASTNode aSTNode) {
        String[] strArr = {new String(methodBinding.readableName())};
        handle(IProblem.RedundantNullCheckOnNonNullMessageSend, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void methodCanBeDeclaredStatic(MethodDeclaration methodDeclaration) {
        int computeSeverity = computeSeverity(IProblem.MethodCanBeStatic);
        if (computeSeverity == 256) {
            return;
        }
        MethodBinding methodBinding = methodDeclaration.binding;
        handle(IProblem.MethodCanBeStatic, new String[]{new String(methodBinding.declaringClass.readableName()), new String(methodBinding.selector), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding.declaringClass.shortReadableName()), new String(methodBinding.selector), typesAsString(methodBinding, true)}, computeSeverity, methodDeclaration.sourceStart, methodDeclaration.sourceEnd);
    }

    public void methodCanBePotentiallyDeclaredStatic(MethodDeclaration methodDeclaration) {
        int computeSeverity = computeSeverity(IProblem.MethodCanBePotentiallyStatic);
        if (computeSeverity == 256) {
            return;
        }
        MethodBinding methodBinding = methodDeclaration.binding;
        handle(IProblem.MethodCanBePotentiallyStatic, new String[]{new String(methodBinding.declaringClass.readableName()), new String(methodBinding.selector), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding.declaringClass.shortReadableName()), new String(methodBinding.selector), typesAsString(methodBinding, true)}, computeSeverity, methodDeclaration.sourceStart, methodDeclaration.sourceEnd);
    }

    public void methodMustBeAccessedStatically(ReferenceExpression referenceExpression, MethodBinding methodBinding) {
        ReferenceBinding referenceBinding = methodBinding.declaringClass;
        char[] cArr = methodBinding.selector;
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        int length = typeBindingArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                stringBuffer.append(", ");
                stringBuffer2.append(", ");
            }
            stringBuffer.append(new String(typeBindingArr[i10].readableName()));
            stringBuffer2.append(new String(typeBindingArr[i10].shortReadableName()));
        }
        handle(IProblem.StaticMethodShouldBeAccessedStatically, new String[]{new String(referenceBinding.readableName()), new String(cArr), stringBuffer.toString()}, new String[]{new String(referenceBinding.shortReadableName()), new String(cArr), stringBuffer2.toString()}, referenceExpression.sourceStart, referenceExpression.sourceEnd);
    }

    public void methodMustBeAccessedWithInstance(ReferenceExpression referenceExpression, MethodBinding methodBinding) {
        ReferenceBinding referenceBinding = methodBinding.declaringClass;
        char[] cArr = methodBinding.selector;
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        int length = typeBindingArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                stringBuffer.append(", ");
                stringBuffer2.append(", ");
            }
            stringBuffer.append(new String(typeBindingArr[i10].readableName()));
            stringBuffer2.append(new String(typeBindingArr[i10].shortReadableName()));
        }
        handle(IProblem.StaticMethodRequested, new String[]{new String(referenceBinding.readableName()), new String(cArr), stringBuffer.toString()}, new String[]{new String(referenceBinding.shortReadableName()), new String(cArr), stringBuffer2.toString()}, referenceExpression.sourceStart, referenceExpression.sourceEnd);
    }

    public void methodMustOverride(AbstractMethodDeclaration abstractMethodDeclaration, long j10) {
        MethodBinding methodBinding = abstractMethodDeclaration.binding;
        handle(j10 == ClassFileConstants.JDK1_5 ? IProblem.MethodMustOverride : IProblem.MethodMustOverrideOrImplement, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, false), new String(methodBinding.declaringClass.readableName())}, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, true), new String(methodBinding.declaringClass.shortReadableName())}, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
    }

    public void methodNameClash(MethodBinding methodBinding, MethodBinding methodBinding2, int i10) {
        handle(IProblem.MethodNameClash, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, false), new String(methodBinding.declaringClass.readableName()), typesAsString(methodBinding2, false), new String(methodBinding2.declaringClass.readableName())}, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, true), new String(methodBinding.declaringClass.shortReadableName()), typesAsString(methodBinding2, true), new String(methodBinding2.declaringClass.shortReadableName())}, i10, methodBinding.sourceStart(), methodBinding.sourceEnd());
    }

    public void methodNameClashHidden(MethodBinding methodBinding, MethodBinding methodBinding2) {
        handle(IProblem.MethodNameClashHidden, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, methodBinding.parameters, false), new String(methodBinding.declaringClass.readableName()), typesAsString(methodBinding2, methodBinding2.parameters, false), new String(methodBinding2.declaringClass.readableName())}, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, methodBinding.parameters, true), new String(methodBinding.declaringClass.shortReadableName()), typesAsString(methodBinding2, methodBinding2.parameters, true), new String(methodBinding2.declaringClass.shortReadableName())}, methodBinding.sourceStart(), methodBinding.sourceEnd());
    }

    public void methodNeedBody(AbstractMethodDeclaration abstractMethodDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.MethodRequiresBody, strArr, strArr, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
    }

    public void methodNeedingNoBody(MethodDeclaration methodDeclaration) {
        int i10 = (methodDeclaration.modifiers & 256) != 0 ? IProblem.BodyForNativeMethod : IProblem.BodyForAbstractMethod;
        String[] strArr = ProblemHandler.NoArgument;
        handle(i10, strArr, strArr, methodDeclaration.sourceStart, methodDeclaration.sourceEnd);
    }

    public void methodReferenceSwingsBothWays(ReferenceExpression referenceExpression, MethodBinding methodBinding, MethodBinding methodBinding2) {
        char[] cArr = methodBinding.selector;
        ReferenceBinding referenceBinding = methodBinding.declaringClass;
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        int length = typeBindingArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                stringBuffer.append(", ");
                stringBuffer2.append(", ");
            }
            stringBuffer.append(new String(typeBindingArr[i10].readableName()));
            stringBuffer2.append(new String(typeBindingArr[i10].shortReadableName()));
        }
        StringBuffer stringBuffer3 = new StringBuffer();
        StringBuffer stringBuffer4 = new StringBuffer();
        TypeBinding[] typeBindingArr2 = methodBinding2.parameters;
        int length2 = typeBindingArr2.length;
        for (int i11 = 0; i11 < length2; i11++) {
            if (i11 != 0) {
                stringBuffer3.append(", ");
                stringBuffer4.append(", ");
            }
            stringBuffer3.append(new String(typeBindingArr2[i11].readableName()));
            stringBuffer4.append(new String(typeBindingArr2[i11].shortReadableName()));
        }
        handle(IProblem.MethodReferenceSwingsBothWays, new String[]{new String(referenceBinding.readableName()), new String(cArr), stringBuffer.toString(), new String(cArr), stringBuffer3.toString()}, new String[]{new String(referenceBinding.shortReadableName()), new String(cArr), stringBuffer2.toString(), new String(cArr), stringBuffer4.toString()}, referenceExpression.sourceStart, referenceExpression.sourceEnd);
    }

    public void methodReturnTypeFreeTypeVariableReference(MethodBinding methodBinding, ASTNode aSTNode) {
        if (computeSeverity(976) == 256) {
            return;
        }
        String[] strArr = {new String(methodBinding.returnType.readableName()), new String(this.options.nullableAnnotationName[r0.length - 1])};
        handle(976, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void methodWithConstructorName(MethodDeclaration methodDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.MethodButWithConstructorName, strArr, strArr, methodDeclaration.sourceStart, methodDeclaration.sourceEnd);
    }

    public void misplacedTypeAnnotations(Annotation annotation, Annotation annotation2) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.MisplacedTypeAnnotations, strArr, strArr, annotation.sourceStart, annotation2.sourceEnd);
    }

    public void missingDefaultCase(SwitchStatement switchStatement, boolean z10, TypeBinding typeBinding) {
        if (z10) {
            String[] strArr = {new String(typeBinding.readableName())};
            String[] strArr2 = {new String(typeBinding.shortReadableName())};
            Expression expression = switchStatement.expression;
            handle(IProblem.MissingEnumDefaultCase, strArr, strArr2, expression.sourceStart, expression.sourceEnd);
            return;
        }
        int i10 = switchStatement instanceof SwitchExpression ? IProblem.SwitchExpressionMissingDefaultCase : IProblem.MissingDefaultCase;
        String[] strArr3 = ProblemHandler.NoArgument;
        Expression expression2 = switchStatement.expression;
        handle(i10, strArr3, strArr3, expression2.sourceStart, expression2.sourceEnd);
    }

    public void missingDeprecatedAnnotationForField(FieldDeclaration fieldDeclaration) {
        int computeSeverity = computeSeverity(IProblem.FieldMissingDeprecatedAnnotation);
        if (computeSeverity == 256) {
            return;
        }
        FieldBinding fieldBinding = fieldDeclaration.binding;
        handle(IProblem.FieldMissingDeprecatedAnnotation, new String[]{new String(fieldBinding.declaringClass.readableName()), new String(fieldBinding.name)}, new String[]{new String(fieldBinding.declaringClass.shortReadableName()), new String(fieldBinding.name)}, computeSeverity, nodeSourceStart(fieldBinding, fieldDeclaration), nodeSourceEnd(fieldBinding, fieldDeclaration));
    }

    public void missingDeprecatedAnnotationForMethod(AbstractMethodDeclaration abstractMethodDeclaration) {
        int computeSeverity = computeSeverity(IProblem.MethodMissingDeprecatedAnnotation);
        if (computeSeverity == 256) {
            return;
        }
        MethodBinding methodBinding = abstractMethodDeclaration.binding;
        handle(IProblem.MethodMissingDeprecatedAnnotation, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, false), new String(methodBinding.declaringClass.readableName())}, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, true), new String(methodBinding.declaringClass.shortReadableName())}, computeSeverity, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
    }

    public void missingDeprecatedAnnotationForType(TypeDeclaration typeDeclaration) {
        int computeSeverity = computeSeverity(IProblem.TypeMissingDeprecatedAnnotation);
        if (computeSeverity == 256) {
            return;
        }
        SourceTypeBinding sourceTypeBinding = typeDeclaration.binding;
        handle(IProblem.TypeMissingDeprecatedAnnotation, new String[]{new String(sourceTypeBinding.readableName())}, new String[]{new String(sourceTypeBinding.shortReadableName())}, computeSeverity, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void missingEnumConstantCase(SwitchStatement switchStatement, FieldBinding fieldBinding) {
        missingEnumConstantCase(switchStatement.defaultCase, fieldBinding, switchStatement.expression);
    }

    public void missingModuleAddReads(char[] cArr) {
        String[] strArr = {new String(cArr)};
        handle(IProblem.UndefinedModuleAddReads, strArr, strArr, 0, 0);
    }

    public void missingNonNullByDefaultAnnotation(TypeDeclaration typeDeclaration) {
        CompilationUnitDeclaration compilationUnitDeclaration = typeDeclaration.getCompilationUnitDeclaration();
        if (compilationUnitDeclaration.currentPackage == null) {
            int computeSeverity = computeSeverity(IProblem.MissingNonNullByDefaultAnnotationOnType);
            if (computeSeverity == 256) {
                return;
            }
            SourceTypeBinding sourceTypeBinding = typeDeclaration.binding;
            handle(IProblem.MissingNonNullByDefaultAnnotationOnType, new String[]{new String(sourceTypeBinding.readableName())}, new String[]{new String(sourceTypeBinding.shortReadableName())}, computeSeverity, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
            return;
        }
        int computeSeverity2 = computeSeverity(IProblem.MissingNonNullByDefaultAnnotationOnPackage);
        if (computeSeverity2 == 256) {
            return;
        }
        String[] strArr = {CharOperation.toString(compilationUnitDeclaration.currentPackage.tokens)};
        ImportReference importReference = compilationUnitDeclaration.currentPackage;
        handle(IProblem.MissingNonNullByDefaultAnnotationOnPackage, strArr, strArr, computeSeverity2, importReference.sourceStart, importReference.sourceEnd);
    }

    public void missingOverrideAnnotation(AbstractMethodDeclaration abstractMethodDeclaration) {
        int computeSeverity = computeSeverity(IProblem.MissingOverrideAnnotation);
        if (computeSeverity == 256) {
            return;
        }
        MethodBinding methodBinding = abstractMethodDeclaration.binding;
        handle(IProblem.MissingOverrideAnnotation, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, false), new String(methodBinding.declaringClass.readableName())}, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, true), new String(methodBinding.declaringClass.shortReadableName())}, computeSeverity, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
    }

    public void missingOverrideAnnotationForInterfaceMethodImplementation(AbstractMethodDeclaration abstractMethodDeclaration) {
        int computeSeverity = computeSeverity(IProblem.MissingOverrideAnnotationForInterfaceMethodImplementation);
        if (computeSeverity == 256) {
            return;
        }
        MethodBinding methodBinding = abstractMethodDeclaration.binding;
        handle(IProblem.MissingOverrideAnnotationForInterfaceMethodImplementation, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, false), new String(methodBinding.declaringClass.readableName())}, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, true), new String(methodBinding.declaringClass.shortReadableName())}, computeSeverity, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
    }

    public void missingRequiresTransitiveForTypeInAPI(ReferenceBinding referenceBinding, int i10, int i11) {
        String str = new String(referenceBinding.fPackage.enclosingModule.readableName());
        handle(IProblem.MissingRequiresTransitiveForTypeInAPI, new String[]{new String(referenceBinding.readableName()), str}, new String[]{new String(referenceBinding.shortReadableName()), str}, i10, i11);
    }

    public void missingReturnType(AbstractMethodDeclaration abstractMethodDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.MissingReturnType, strArr, strArr, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
    }

    public void missingSemiColon(Expression expression) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.MissingSemiColon, strArr, strArr, expression.sourceStart, expression.sourceEnd);
    }

    public void missingSerialVersion(TypeDeclaration typeDeclaration) {
        String[] strArr = {new String(typeDeclaration.name)};
        handle(IProblem.MissingSerialVersion, strArr, strArr, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void missingSynchronizedOnInheritedMethod(MethodBinding methodBinding, MethodBinding methodBinding2) {
        handle(IProblem.MissingSynchronizedModifierInInheritedMethod, new String[]{new String(methodBinding.declaringClass.readableName()), new String(methodBinding.selector), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding.declaringClass.shortReadableName()), new String(methodBinding.selector), typesAsString(methodBinding, true)}, methodBinding.sourceStart(), methodBinding.sourceEnd());
    }

    public void missingTypeInConstructor(ASTNode aSTNode, MethodBinding methodBinding) {
        TypeDeclaration typeDeclaration;
        List<TypeBinding> collectMissingTypes = methodBinding.collectMissingTypes(null);
        if (collectMissingTypes == null) {
            System.err.println("The constructor " + ((Object) methodBinding) + " is wrongly tagged as containing missing types");
            return;
        }
        TypeBinding typeBinding = collectMissingTypes.get(0);
        int i10 = aSTNode.sourceStart;
        int i11 = aSTNode.sourceEnd;
        if ((aSTNode instanceof QualifiedAllocationExpression) && (typeDeclaration = ((QualifiedAllocationExpression) aSTNode).anonymousType) != null) {
            i10 = typeDeclaration.sourceStart;
            i11 = typeDeclaration.sourceEnd;
        }
        handle(IProblem.MissingTypeInConstructor, new String[]{new String(methodBinding.declaringClass.readableName()), typesAsString(methodBinding, false), new String(typeBinding.readableName())}, new String[]{new String(methodBinding.declaringClass.shortReadableName()), typesAsString(methodBinding, true), new String(typeBinding.shortReadableName())}, i10, i11);
    }

    public void missingTypeInLambda(LambdaExpression lambdaExpression, MethodBinding methodBinding) {
        int sourceStart = lambdaExpression.sourceStart();
        int diagnosticsSourceEnd = lambdaExpression.diagnosticsSourceEnd();
        List<TypeBinding> collectMissingTypes = methodBinding.collectMissingTypes(null);
        if (collectMissingTypes != null) {
            TypeBinding typeBinding = collectMissingTypes.get(0);
            handle(IProblem.MissingTypeInLambda, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, sourceStart, diagnosticsSourceEnd);
            return;
        }
        System.err.println("The lambda expression " + ((Object) methodBinding) + " is wrongly tagged as containing missing types");
    }

    public void missingTypeInMethod(ASTNode aSTNode, MethodBinding methodBinding) {
        int i10;
        int i11;
        if (aSTNode instanceof MessageSend) {
            long j10 = (aSTNode instanceof MessageSend ? (MessageSend) aSTNode : null).nameSourcePosition;
            i11 = (int) (j10 >>> 32);
            i10 = (int) j10;
        } else {
            int i12 = aSTNode.sourceStart;
            i10 = aSTNode.sourceEnd;
            i11 = i12;
        }
        List<TypeBinding> collectMissingTypes = methodBinding.collectMissingTypes(null);
        if (collectMissingTypes != null) {
            TypeBinding typeBinding = collectMissingTypes.get(0);
            handle(IProblem.MissingTypeInMethod, new String[]{new String(methodBinding.declaringClass.readableName()), new String(methodBinding.selector), typesAsString(methodBinding, false), new String(typeBinding.readableName())}, new String[]{new String(methodBinding.declaringClass.shortReadableName()), new String(methodBinding.selector), typesAsString(methodBinding, true), new String(typeBinding.shortReadableName())}, i11, i10);
            return;
        }
        System.err.println("The method " + ((Object) methodBinding) + " is wrongly tagged as containing missing types");
    }

    public void missingValueForAnnotationMember(Annotation annotation, char[] cArr) {
        String str = new String(cArr);
        handle(IProblem.MissingValueForAnnotationMember, new String[]{new String(annotation.resolvedType.readableName()), str}, new String[]{new String(annotation.resolvedType.shortReadableName()), str}, annotation.sourceStart, annotation.sourceEnd);
    }

    public void missingValueFromLambda(LambdaExpression lambdaExpression, TypeBinding typeBinding) {
        handle(IProblem.MissingValueFromLambda, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, lambdaExpression.sourceStart, lambdaExpression.diagnosticsSourceEnd());
    }

    public void multiCatchNotBelow17(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.MultiCatchNotBelow17, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void mustDefineDimensionsOrInitializer(ArrayAllocationExpression arrayAllocationExpression) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.MustDefineEitherDimensionExpressionsOrInitializer, strArr, strArr, arrayAllocationExpression.sourceStart, arrayAllocationExpression.sourceEnd);
    }

    public void mustUseAStaticMethod(MessageSend messageSend, MethodBinding methodBinding) {
        handle(IProblem.StaticMethodRequested, new String[]{new String(methodBinding.declaringClass.readableName()), new String(methodBinding.selector), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding.declaringClass.shortReadableName()), new String(methodBinding.selector), typesAsString(methodBinding, true)}, messageSend.sourceStart, messageSend.sourceEnd);
    }

    public void nativeMethodsCannotBeStrictfp(ReferenceBinding referenceBinding, AbstractMethodDeclaration abstractMethodDeclaration) {
        String[] strArr = {new String(referenceBinding.sourceName()), new String(abstractMethodDeclaration.selector)};
        handle(IProblem.NativeMethodsCannotBeStrictfp, strArr, strArr, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
    }

    public void needImplementation(ASTNode aSTNode) {
        abortDueToInternalError(Messages.abort_missingCode, aSTNode);
    }

    public void needToEmulateFieldAccess(FieldBinding fieldBinding, ASTNode aSTNode, boolean z10) {
        int i10 = z10 ? IProblem.NeedToEmulateFieldReadAccess : IProblem.NeedToEmulateFieldWriteAccess;
        int computeSeverity = computeSeverity(i10);
        if (computeSeverity == 256) {
            return;
        }
        handle(i10, new String[]{new String(fieldBinding.declaringClass.readableName()), new String(fieldBinding.name)}, new String[]{new String(fieldBinding.declaringClass.shortReadableName()), new String(fieldBinding.name)}, computeSeverity, nodeSourceStart(fieldBinding, aSTNode), nodeSourceEnd(fieldBinding, aSTNode));
    }

    public void needToEmulateMethodAccess(MethodBinding methodBinding, ASTNode aSTNode) {
        if (!methodBinding.isConstructor()) {
            int computeSeverity = computeSeverity(IProblem.NeedToEmulateMethodAccess);
            if (computeSeverity == 256) {
                return;
            }
            handle(IProblem.NeedToEmulateMethodAccess, new String[]{new String(methodBinding.declaringClass.readableName()), new String(methodBinding.selector), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding.declaringClass.shortReadableName()), new String(methodBinding.selector), typesAsString(methodBinding, true)}, computeSeverity, aSTNode.sourceStart, aSTNode.sourceEnd);
            return;
        }
        int computeSeverity2 = computeSeverity(IProblem.NeedToEmulateConstructorAccess);
        if (computeSeverity2 == 256 || methodBinding.declaringClass.isEnum()) {
            return;
        }
        handle(IProblem.NeedToEmulateConstructorAccess, new String[]{new String(methodBinding.declaringClass.readableName()), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding.declaringClass.shortReadableName()), typesAsString(methodBinding, true)}, computeSeverity2, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void noAdditionalBoundAfterTypeVariable(TypeReference typeReference) {
        handle(IProblem.NoAdditionalBoundAfterTypeVariable, new String[]{new String(typeReference.resolvedType.readableName())}, new String[]{new String(typeReference.resolvedType.shortReadableName())}, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void noMoreAvailableSpaceForArgument(LocalVariableBinding localVariableBinding, ASTNode aSTNode) {
        String[] strArr = {new String(localVariableBinding.name)};
        handle(localVariableBinding instanceof SyntheticArgumentBinding ? IProblem.TooManySyntheticArgumentSlots : IProblem.TooManyArgumentSlots, strArr, strArr, 159, nodeSourceStart(localVariableBinding, aSTNode), nodeSourceEnd(localVariableBinding, aSTNode));
    }

    public void noMoreAvailableSpaceForConstant(TypeDeclaration typeDeclaration) {
        handle(IProblem.TooManyBytesForStringConstant, new String[]{new String(typeDeclaration.binding.readableName())}, new String[]{new String(typeDeclaration.binding.shortReadableName())}, 159, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void noMoreAvailableSpaceForLocal(LocalVariableBinding localVariableBinding, ASTNode aSTNode) {
        String[] strArr = {new String(localVariableBinding.name)};
        handle(IProblem.TooManyLocalVariableSlots, strArr, strArr, 159, nodeSourceStart(localVariableBinding, aSTNode), nodeSourceEnd(localVariableBinding, aSTNode));
    }

    public void noMoreAvailableSpaceInConstantPool(TypeDeclaration typeDeclaration) {
        handle(IProblem.TooManyConstantsInConstantPool, new String[]{new String(typeDeclaration.binding.readableName())}, new String[]{new String(typeDeclaration.binding.shortReadableName())}, 159, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void noSuchEnclosingInstance(TypeBinding typeBinding, ASTNode aSTNode, boolean z10) {
        int i10;
        if (z10) {
            i10 = IProblem.EnclosingInstanceInConstructorCall;
        } else if ((aSTNode instanceof ExplicitConstructorCall) && ((ExplicitConstructorCall) aSTNode).accessMode == 1) {
            i10 = IProblem.MissingEnclosingInstanceForConstructorCall;
        } else {
            if (aSTNode instanceof AllocationExpression) {
                AllocationExpression allocationExpression = (AllocationExpression) aSTNode;
                if (allocationExpression.binding.declaringClass.isMemberType() || (allocationExpression.binding.declaringClass.isAnonymousType() && allocationExpression.binding.declaringClass.superclass().isMemberType())) {
                    i10 = IProblem.MissingEnclosingInstance;
                }
            }
            i10 = IProblem.IncorrectEnclosingInstanceReference;
        }
        handle(i10, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, aSTNode.sourceStart, aSTNode instanceof LambdaExpression ? ((LambdaExpression) aSTNode).diagnosticsSourceEnd() : aSTNode.sourceEnd);
    }

    public void nonExternalizedStringLiteral(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.NonExternalizedStringLiteral, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void nonGenericTypeCannotBeParameterized(int i10, ASTNode aSTNode, TypeBinding typeBinding, TypeBinding[] typeBindingArr) {
        if (aSTNode == null) {
            handle(IProblem.NonGenericType, new String[]{new String(typeBinding.readableName()), typesAsString(typeBindingArr, false)}, new String[]{new String(typeBinding.shortReadableName()), typesAsString(typeBindingArr, true)}, 131, 0, 0);
        } else {
            handle(IProblem.NonGenericType, new String[]{new String(typeBinding.readableName()), typesAsString(typeBindingArr, false)}, new String[]{new String(typeBinding.shortReadableName()), typesAsString(typeBindingArr, true)}, nodeSourceStart(null, aSTNode), nodeSourceEnd(null, aSTNode, i10));
        }
    }

    public void nonNullTypeVariableInUnannotatedBinary(LookupEnvironment lookupEnvironment, MethodBinding methodBinding, Expression expression, int i10) {
        TypeBinding typeBinding = methodBinding.original().returnType;
        int computeSeverity = computeSeverity(IProblem.NonNullTypeVariableFromLegacyMethod);
        int i11 = (computeSeverity & 1281) == 0 ? i10 : computeSeverity;
        if (typeBinding instanceof TypeVariableBinding) {
            TypeVariableBinding typeVariableBinding = (TypeVariableBinding) typeBinding;
            ReferenceBinding referenceBinding = methodBinding.declaringClass;
            char[][] cArr = this.options.nonNullAnnotationName;
            String valueOf = String.valueOf(cArr[cArr.length - 1]);
            Binding binding = typeVariableBinding.declaringElement;
            if (binding instanceof ReferenceBinding) {
                handle(IProblem.NonNullTypeVariableFromLegacyMethod, new String[]{valueOf, String.valueOf(referenceBinding.nullAnnotatedReadableName(this.options, false)), String.valueOf(referenceBinding.original().readableName())}, new String[]{valueOf, String.valueOf(referenceBinding.nullAnnotatedReadableName(this.options, true)), String.valueOf(referenceBinding.original().shortReadableName())}, i11, expression.sourceStart, expression.sourceEnd);
            } else if ((binding instanceof MethodBinding) && (methodBinding instanceof ParameterizedGenericMethodBinding)) {
                TypeBinding typeBinding2 = ((ParameterizedGenericMethodBinding) methodBinding).typeArguments[typeVariableBinding.rank];
                handle(IProblem.NonNullMethodTypeVariableFromLegacyMethod, new String[]{valueOf, String.valueOf(typeVariableBinding.readableName()), String.valueOf(typeBinding2.nullAnnotatedReadableName(this.options, false)), String.valueOf(referenceBinding.original().readableName())}, new String[]{valueOf, String.valueOf(typeVariableBinding.shortReadableName()), String.valueOf(typeBinding2.nullAnnotatedReadableName(this.options, true)), String.valueOf(referenceBinding.original().shortReadableName())}, i11, expression.sourceStart, expression.sourceEnd);
            }
        }
    }

    public void nonPublicTypeInAPI(TypeBinding typeBinding, int i10, int i11) {
        handle(IProblem.NonPublicTypeInAPI, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, i10, i11);
    }

    public void nonStaticAccessToStaticField(ASTNode aSTNode, FieldBinding fieldBinding) {
        nonStaticAccessToStaticField(aSTNode, fieldBinding, -1);
    }

    public void nonStaticAccessToStaticMethod(ASTNode aSTNode, MethodBinding methodBinding) {
        handle(IProblem.NonStaticAccessToStaticMethod, new String[]{new String(methodBinding.declaringClass.readableName()), new String(methodBinding.selector), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding.declaringClass.shortReadableName()), new String(methodBinding.selector), typesAsString(methodBinding, true)}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void nonStaticContextForEnumMemberType(SourceTypeBinding sourceTypeBinding) {
        String[] strArr = {new String(sourceTypeBinding.sourceName())};
        handle(536870944, strArr, strArr, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void nonStaticOrAlienTypeReceiver(MessageSend messageSend, MethodBinding methodBinding) {
        String[] strArr = {new String(methodBinding.declaringClass.readableName()), new String(methodBinding.selector)};
        String[] strArr2 = {new String(methodBinding.declaringClass.shortReadableName()), new String(methodBinding.selector)};
        long j10 = messageSend.nameSourcePosition;
        handle(IProblem.NonStaticOrAlienTypeReceiver, strArr, strArr2, (int) (j10 >>> 32), (int) j10);
    }

    public void notAFunctionalInterface(TypeDeclaration typeDeclaration) {
        SourceTypeBinding sourceTypeBinding = typeDeclaration.binding;
        handle(IProblem.InterfaceNotFunctionalInterface, new String[]{new String(sourceTypeBinding.readableName())}, new String[]{new String(sourceTypeBinding.shortReadableName())}, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void notAnnotationType(TypeBinding typeBinding, ASTNode aSTNode) {
        handle(IProblem.NotAnnotationType, new String[]{new String(typeBinding.leafComponentType().readableName())}, new String[]{new String(typeBinding.leafComponentType().shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void notCompatibleTypesError(EqualExpression equalExpression, TypeBinding typeBinding, TypeBinding typeBinding2) {
        String str = new String(typeBinding.readableName());
        String str2 = new String(typeBinding2.readableName());
        String str3 = new String(typeBinding.shortReadableName());
        String str4 = new String(typeBinding2.shortReadableName());
        if (str3.equals(str4)) {
            str3 = str;
            str4 = str2;
        }
        handle(IProblem.IncompatibleTypesInEqualityOperator, new String[]{str, str2}, new String[]{str3, str4}, equalExpression.sourceStart, equalExpression.sourceEnd);
    }

    public void notCompatibleTypesErrorInForeach(Expression expression, TypeBinding typeBinding, TypeBinding typeBinding2) {
        String str = new String(typeBinding.readableName());
        String str2 = new String(typeBinding2.readableName());
        String str3 = new String(typeBinding.shortReadableName());
        String str4 = new String(typeBinding2.shortReadableName());
        if (str3.equals(str4)) {
            str3 = str;
            str4 = str2;
        }
        handle(IProblem.IncompatibleTypesInForeach, new String[]{str, str2}, new String[]{str3, str4}, expression.sourceStart, expression.sourceEnd);
    }

    public void notExportedTypeInAPI(TypeBinding typeBinding, int i10, int i11) {
        handle(IProblem.NotExportedTypeInAPI, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, i10, i11);
    }

    public void nullAnnotationAtQualifyingType(Annotation annotation) {
        handle(IProblem.NullAnnotationAtQualifyingType, new String[]{String.valueOf(annotation.resolvedType.readableName())}, new String[]{String.valueOf(annotation.resolvedType.shortReadableName())}, 129, annotation.sourceStart, annotation.sourceEnd);
    }

    public void nullAnnotationIsRedundant(AbstractMethodDeclaration abstractMethodDeclaration, int i10) {
        int i11;
        int i12;
        if (i10 == -1) {
            MethodDeclaration methodDeclaration = (MethodDeclaration) abstractMethodDeclaration;
            ASTNode findAnnotation = findAnnotation(methodDeclaration.annotations, 32);
            if (findAnnotation == null) {
                findAnnotation = methodDeclaration.returnType;
            }
            i11 = findAnnotation.sourceStart;
            i12 = methodDeclaration.returnType.sourceEnd;
        } else {
            Argument argument = abstractMethodDeclaration.arguments[i10];
            i11 = argument.declarationSourceStart;
            i12 = argument.sourceEnd;
        }
        int i13 = i12;
        int i14 = i11;
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.RedundantNullAnnotation, strArr, strArr, i14, i13);
    }

    public void nullAnnotationUnsupportedLocation(Annotation annotation) {
        String[] strArr = {String.valueOf(annotation.resolvedType.readableName())};
        String[] strArr2 = {String.valueOf(annotation.resolvedType.shortReadableName())};
        Binding binding = annotation.recipient;
        handle(IProblem.NullAnnotationUnsupportedLocation, strArr, strArr2, ((binding instanceof ReferenceBinding) && ((ReferenceBinding) binding).isAnnotationType()) ? 0 : 129, annotation.sourceStart, annotation.sourceEnd);
    }

    public void nullDefaultAnnotationIsRedundant(ASTNode aSTNode, Annotation[] annotationArr, Binding binding) {
        String[] strArr;
        String[] strArr2;
        if (binding == Scope.NOT_REDUNDANT) {
            return;
        }
        Annotation findAnnotation = findAnnotation(annotationArr, 128);
        int i10 = findAnnotation != null ? findAnnotation.sourceStart : aSTNode.sourceStart;
        int i11 = findAnnotation != null ? findAnnotation.sourceEnd : aSTNode.sourceStart;
        String[] strArr3 = ProblemHandler.NoArgument;
        if (binding != null) {
            String[] strArr4 = {new String(binding.readableName())};
            strArr2 = new String[]{new String(binding.shortReadableName())};
            strArr = strArr4;
        } else {
            strArr = strArr3;
            strArr2 = strArr;
        }
        handle(binding instanceof ModuleBinding ? IProblem.RedundantNullDefaultAnnotationModule : binding instanceof PackageBinding ? IProblem.RedundantNullDefaultAnnotationPackage : binding instanceof ReferenceBinding ? IProblem.RedundantNullDefaultAnnotationType : binding instanceof MethodBinding ? IProblem.RedundantNullDefaultAnnotationMethod : binding instanceof LocalVariableBinding ? IProblem.RedundantNullDefaultAnnotationLocal : binding instanceof FieldBinding ? IProblem.RedundantNullDefaultAnnotationField : IProblem.RedundantNullDefaultAnnotation, strArr, strArr2, i10, i11);
    }

    public void nullUnboxing(ASTNode aSTNode, TypeBinding typeBinding) {
        handle(IProblem.NullUnboxing, new String[]{String.valueOf(typeBinding.readableName())}, new String[]{String.valueOf(typeBinding.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void nullableFieldDereference(FieldBinding fieldBinding, long j10) {
        String[] strArr = {new String(fieldBinding.name), new String(this.options.nullableAnnotationName[r0.length - 1])};
        handle(IProblem.NullableFieldReference, strArr, strArr, (int) (j10 >>> 32), (int) j10);
    }

    public void nullityMismatch(Expression expression, TypeBinding typeBinding, TypeBinding typeBinding2, int i10, char[][] cArr) {
        if ((i10 & 2) != 0) {
            nullityMismatchIsNull(expression, typeBinding2);
            return;
        }
        if ((expression instanceof MessageSend) && (((MessageSend) expression).binding.tagBits & 36028797018963968L) != 0) {
            nullityMismatchSpecdNullable(expression, typeBinding2, this.options.nonNullAnnotationName);
            return;
        }
        if ((i10 & 16) == 0) {
            if (this.options.usesNullTypeAnnotations()) {
                nullityMismatchingTypeAnnotation(expression, typeBinding, typeBinding2, NullAnnotationMatching.NULL_ANNOTATIONS_UNCHECKED);
                return;
            } else {
                nullityMismatchIsUnknown(expression, typeBinding, typeBinding2, cArr);
                return;
            }
        }
        VariableBinding localVariableBinding = expression.localVariableBinding();
        if (localVariableBinding == null && (expression instanceof Reference)) {
            localVariableBinding = ((Reference) expression).lastFieldBinding();
        }
        if (localVariableBinding != null && localVariableBinding.type.isFreeTypeVariable()) {
            nullityMismatchVariableIsFreeTypeVariable(localVariableBinding, expression);
            return;
        }
        if (localVariableBinding != null && localVariableBinding.isNullable()) {
            nullityMismatchSpecdNullable(expression, typeBinding2, cArr);
        } else if ((expression instanceof ArrayReference) && expression.resolvedType.isFreeTypeVariable()) {
            nullityMismatchingTypeAnnotation(expression, typeBinding, typeBinding2, NullAnnotationMatching.NULL_ANNOTATIONS_MISMATCH);
        } else {
            nullityMismatchPotentiallyNull(expression, typeBinding2, cArr);
        }
    }

    public void nullityMismatchIsNull(Expression expression, TypeBinding typeBinding) {
        String[] strArr;
        String[] strArr2;
        WildcardBinding wildcardBinding;
        boolean usesNullTypeAnnotations = this.options.usesNullTypeAnnotations();
        int i10 = (usesNullTypeAnnotations && typeBinding.isTypeVariable() && !typeBinding.hasNullTypeAnnotations()) ? 969 : 16778126;
        if ((typeBinding instanceof CaptureBinding) && (wildcardBinding = ((CaptureBinding) typeBinding).wildcard) != null) {
            typeBinding = wildcardBinding;
        }
        if (!usesNullTypeAnnotations) {
            strArr = new String[]{annotatedTypeName(typeBinding, this.options.nonNullAnnotationName)};
            strArr2 = new String[]{shortAnnotatedTypeName(typeBinding, this.options.nonNullAnnotationName)};
        } else if (i10 == 969) {
            strArr = new String[]{new String(typeBinding.sourceName())};
            strArr2 = new String[]{new String(typeBinding.sourceName())};
        } else {
            strArr = new String[]{new String(typeBinding.nullAnnotatedReadableName(this.options, false))};
            strArr2 = new String[]{new String(typeBinding.nullAnnotatedReadableName(this.options, true))};
        }
        handle(i10, strArr, strArr2, expression.sourceStart, expression.sourceEnd);
    }

    public void nullityMismatchIsUnknown(Expression expression, TypeBinding typeBinding, TypeBinding typeBinding2, char[][] cArr) {
        handle(IProblem.RequiredNonNullButProvidedUnknown, new String[]{String.valueOf(typeBinding.readableName()), annotatedTypeName(typeBinding2, cArr)}, new String[]{String.valueOf(typeBinding.shortReadableName()), shortAnnotatedTypeName(typeBinding2, cArr)}, expression.sourceStart, expression.sourceEnd);
    }

    public void nullityMismatchPotentiallyNull(Expression expression, TypeBinding typeBinding, char[][] cArr) {
        char[][] cArr2 = this.options.nullableAnnotationName;
        handle(IProblem.RequiredNonNullButProvidedPotentialNull, new String[]{annotatedTypeName(typeBinding, cArr), String.valueOf(CharOperation.concatWith(cArr2, '.'))}, new String[]{shortAnnotatedTypeName(typeBinding, cArr), String.valueOf(cArr2[cArr2.length - 1])}, expression.sourceStart, expression.sourceEnd);
    }

    public void nullityMismatchSpecdNullable(Expression expression, TypeBinding typeBinding, char[][] cArr) {
        int i10;
        char[][] cArr2 = this.options.nullableAnnotationName;
        String[] strArr = {annotatedTypeName(typeBinding, cArr), String.valueOf(CharOperation.concatWith(cArr2, '.'))};
        String[] strArr2 = {shortAnnotatedTypeName(typeBinding, cArr), String.valueOf(cArr2[cArr2.length - 1])};
        TypeBinding typeBinding2 = expression.resolvedType;
        if (typeBinding2 == null || !typeBinding2.hasNullTypeAnnotations()) {
            i10 = IProblem.RequiredNonNullButProvidedSpecdNullable;
        } else {
            strArr[1] = String.valueOf(expression.resolvedType.nullAnnotatedReadableName(this.options, false));
            strArr2[1] = String.valueOf(expression.resolvedType.nullAnnotatedReadableName(this.options, true));
            i10 = IProblem.NullityMismatchingTypeAnnotation;
        }
        handle(i10, strArr, strArr2, expression.sourceStart, expression.sourceEnd);
    }

    public void nullityMismatchTypeArgument(TypeBinding typeBinding, TypeBinding typeBinding2, ASTNode aSTNode) {
        handle(IProblem.NullityMismatchTypeArgument, new String[]{String.valueOf(typeBinding.nullAnnotatedReadableName(this.options, false)), String.valueOf(typeBinding2.nullAnnotatedReadableName(this.options, false))}, new String[]{String.valueOf(typeBinding.nullAnnotatedReadableName(this.options, true)), String.valueOf(typeBinding2.nullAnnotatedReadableName(this.options, true))}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void nullityMismatchVariableIsFreeTypeVariable(VariableBinding variableBinding, ASTNode aSTNode) {
        if (computeSeverity(IProblem.RequiredNonNullButProvidedFreeTypeVariable) == 256) {
            return;
        }
        nullityMismatchIsFreeTypeVariable(variableBinding.type, nodeSourceStart(variableBinding, aSTNode), nodeSourceEnd(variableBinding, aSTNode));
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void nullityMismatchingTypeAnnotation(Expression expression, TypeBinding typeBinding, TypeBinding typeBinding2, NullAnnotationMatching nullAnnotationMatching) {
        int i10;
        int i11;
        String str;
        int i12;
        String str2;
        String str3;
        String str4;
        String[] strArr;
        String[] strArr2;
        if (typeBinding == typeBinding2) {
            return;
        }
        if (typeBinding.f102482id == 12 || nullAnnotationMatching.nullStatus == 2) {
            nullityMismatchIsNull(expression, typeBinding2);
            return;
        }
        if (nullAnnotationMatching.isPotentiallyNullMismatch() && (typeBinding2.tagBits & 72057594037927936L) != 0 && (typeBinding.tagBits & 36028797018963968L) == 0) {
            if (this.options.pessimisticNullAnalysisForFreeTypeVariablesEnabled && typeBinding.isTypeVariable() && !typeBinding.hasNullTypeAnnotations()) {
                nullityMismatchIsFreeTypeVariable(typeBinding, expression.sourceStart, expression.sourceEnd);
                return;
            } else {
                nullityMismatchPotentiallyNull(expression, typeBinding2, this.options.nonNullAnnotationName);
                return;
            }
        }
        if (nullAnnotationMatching.superTypeHint == null || !typeBinding2.isParameterizedType()) {
            if (nullAnnotationMatching.isUnchecked()) {
                i10 = IProblem.NullityUncheckedTypeAnnotationDetail;
            } else if (!typeBinding2.isTypeVariable() || typeBinding2.hasNullTypeAnnotations()) {
                i10 = IProblem.NullityMismatchingTypeAnnotation;
            } else {
                i11 = 970;
                if (i11 == 970) {
                    new String(typeBinding2.sourceName());
                    new String(typeBinding2.sourceName());
                }
                str = null;
                i12 = i11;
                str2 = null;
            }
            i11 = i10;
            if (i11 == 970) {
            }
            str = null;
            i12 = i11;
            str2 = null;
        } else {
            int i13 = nullAnnotationMatching.isUnchecked() ? IProblem.NullityUncheckedTypeAnnotationDetailSuperHint : IProblem.NullityMismatchingTypeAnnotationSuperHint;
            str = nullAnnotationMatching.superTypeHintName(this.options, false);
            str2 = nullAnnotationMatching.superTypeHintName(this.options, true);
            i12 = i13;
        }
        if (i12 == 970) {
            str3 = new String(typeBinding2.sourceName());
            str4 = new String(typeBinding2.sourceName());
        } else {
            str3 = new String(typeBinding2.nullAnnotatedReadableName(this.options, false));
            str4 = new String(typeBinding2.nullAnnotatedReadableName(this.options, true));
        }
        String valueOf = String.valueOf(typeBinding.nullAnnotatedReadableName(this.options, false));
        String valueOf2 = String.valueOf(typeBinding.nullAnnotatedReadableName(this.options, true));
        if (str != null) {
            strArr2 = new String[]{str3, valueOf, str};
            strArr = new String[]{str4, valueOf2, str2};
        } else {
            strArr = new String[]{str4, valueOf2};
            strArr2 = new String[]{str3, valueOf};
        }
        handle(i12, strArr2, strArr, expression.sourceStart, expression.sourceEnd);
    }

    public void objectCannotBeGeneric(TypeDeclaration typeDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        TypeParameter[] typeParameterArr = typeDeclaration.typeParameters;
        handle(IProblem.ObjectCannotBeGeneric, strArr, strArr, typeParameterArr[0].sourceStart, typeParameterArr[typeParameterArr.length - 1].sourceEnd);
    }

    public void objectCannotHaveSuperTypes(SourceTypeBinding sourceTypeBinding) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.ObjectCannotHaveSuperTypes, strArr, strArr, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void objectMustBeClass(SourceTypeBinding sourceTypeBinding) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.ObjectMustBeClass, strArr, strArr, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void onlyReferenceTypesInIntersectionCast(TypeReference typeReference) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.IllegalBasetypeInIntersectionCast, strArr, strArr, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void operatorOnlyValidOnNumericType(CompoundAssignment compoundAssignment, TypeBinding typeBinding, TypeBinding typeBinding2) {
        String str = new String(typeBinding.readableName());
        String str2 = new String(typeBinding2.readableName());
        String str3 = new String(typeBinding.shortReadableName());
        String str4 = new String(typeBinding2.shortReadableName());
        if (str3.equals(str4)) {
            str3 = str;
            str4 = str2;
        }
        handle(IProblem.TypeMismatch, new String[]{str, str2}, new String[]{str3, str4}, compoundAssignment.sourceStart, compoundAssignment.sourceEnd);
    }

    public void overridesDeprecatedMethod(MethodBinding methodBinding, final MethodBinding methodBinding2) {
        String str = new String(CharOperation.concat(methodBinding.declaringClass.readableName(), methodBinding.readableName(), '.'));
        String str2 = new String(CharOperation.concat(methodBinding.declaringClass.shortReadableName(), methodBinding.shortReadableName(), '.'));
        String deprecatedSinceValue = deprecatedSinceValue(new Supplier() {
            @Override
            public final Object get() {
                AnnotationBinding[] annotations;
                annotations = MethodBinding.this.getAnnotations();
                return annotations;
            }
        });
        if (deprecatedSinceValue != null) {
            handle((4611686018427387904L & methodBinding2.tagBits) != 0 ? IProblem.OverridingTerminallyDeprecatedSinceVersionMethod : IProblem.OverridingDeprecatedSinceVersionMethod, new String[]{str, new String(methodBinding2.declaringClass.readableName()), deprecatedSinceValue}, new String[]{str2, new String(methodBinding2.declaringClass.shortReadableName()), deprecatedSinceValue}, methodBinding.sourceStart(), methodBinding.sourceEnd());
        } else {
            handle((4611686018427387904L & methodBinding2.tagBits) != 0 ? IProblem.OverridingTerminallyDeprecatedMethod : IProblem.OverridingDeprecatedMethod, new String[]{str, new String(methodBinding2.declaringClass.readableName())}, new String[]{str2, new String(methodBinding2.declaringClass.shortReadableName())}, methodBinding.sourceStart(), methodBinding.sourceEnd());
        }
    }

    public void overridesMethodWithoutSuperInvocation(MethodBinding methodBinding) {
        handle(IProblem.OverridingMethodWithoutSuperInvocation, new String[]{new String(CharOperation.concat(methodBinding.declaringClass.readableName(), methodBinding.readableName(), '.'))}, new String[]{new String(CharOperation.concat(methodBinding.declaringClass.shortReadableName(), methodBinding.shortReadableName(), '.'))}, methodBinding.sourceStart(), methodBinding.sourceEnd());
    }

    public void overridesPackageDefaultMethod(MethodBinding methodBinding, MethodBinding methodBinding2) {
        handle(IProblem.OverridingNonVisibleMethod, new String[]{new String(CharOperation.concat(methodBinding.declaringClass.readableName(), methodBinding.readableName(), '.')), new String(methodBinding2.declaringClass.readableName())}, new String[]{new String(CharOperation.concat(methodBinding.declaringClass.shortReadableName(), methodBinding.shortReadableName(), '.')), new String(methodBinding2.declaringClass.shortReadableName())}, methodBinding.sourceStart(), methodBinding.sourceEnd());
    }

    public void packageCollidesWithType(CompilationUnitDeclaration compilationUnitDeclaration) {
        String[] strArr = {CharOperation.toString(compilationUnitDeclaration.currentPackage.tokens)};
        ImportReference importReference = compilationUnitDeclaration.currentPackage;
        handle(IProblem.PackageCollidesWithType, strArr, strArr, importReference.sourceStart, importReference.sourceEnd);
    }

    public void packageIsNotExpectedPackage(CompilationUnitDeclaration compilationUnitDeclaration) {
        boolean z10 = compilationUnitDeclaration.currentPackage == null;
        String[] strArr = {CharOperation.toString(compilationUnitDeclaration.compilationResult.compilationUnit.getPackageName()), z10 ? "" : CharOperation.toString(compilationUnitDeclaration.currentPackage.tokens)};
        handle(IProblem.PackageIsNotExpectedPackage, strArr, strArr, z10 ? 0 : compilationUnitDeclaration.currentPackage.sourceStart, compilationUnitDeclaration.sourceEnd <= 0 ? -1 : z10 ? 0 : compilationUnitDeclaration.currentPackage.sourceEnd);
    }

    public void parameterAssignment(LocalVariableBinding localVariableBinding, ASTNode aSTNode) {
        int computeSeverity = computeSeverity(IProblem.ParameterAssignment);
        if (computeSeverity == 256) {
            return;
        }
        String[] strArr = {new String(localVariableBinding.readableName())};
        handle(IProblem.ParameterAssignment, strArr, strArr, computeSeverity, nodeSourceStart(localVariableBinding, aSTNode), nodeSourceEnd(localVariableBinding, aSTNode));
    }

    public void parameterLackingNonnullAnnotation(Argument argument, ReferenceBinding referenceBinding, char[][] cArr) {
        int i10;
        int i11;
        int i12;
        int i13;
        if (argument != null) {
            TypeReference typeReference = argument.type;
            i12 = typeReference.sourceStart;
            i13 = typeReference.sourceEnd;
        } else {
            ReferenceContext referenceContext = this.referenceContext;
            if (!(referenceContext instanceof TypeDeclaration)) {
                i10 = 0;
                i11 = 0;
                handle(IProblem.ParameterLackingNonNullAnnotation, new String[]{new String(referenceBinding.readableName()), CharOperation.toString(cArr)}, new String[]{new String(referenceBinding.shortReadableName()), new String(cArr[cArr.length - 1])}, i10, i11);
            }
            i12 = ((TypeDeclaration) referenceContext).sourceStart;
            i13 = ((TypeDeclaration) referenceContext).sourceEnd;
        }
        i11 = i13;
        i10 = i12;
        handle(IProblem.ParameterLackingNonNullAnnotation, new String[]{new String(referenceBinding.readableName()), CharOperation.toString(cArr)}, new String[]{new String(referenceBinding.shortReadableName()), new String(cArr[cArr.length - 1])}, i10, i11);
    }

    public void parameterLackingNullableAnnotation(Argument argument, ReferenceBinding referenceBinding, char[][] cArr) {
        String[] strArr = {new String(referenceBinding.readableName()), CharOperation.toString(cArr)};
        String[] strArr2 = {new String(referenceBinding.shortReadableName()), new String(cArr[cArr.length - 1])};
        TypeReference typeReference = argument.type;
        handle(IProblem.ParameterLackingNullableAnnotation, strArr, strArr2, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void parameterizedMemberTypeMissingArguments(ASTNode aSTNode, TypeBinding typeBinding, int i10) {
        if (aSTNode == null) {
            handle(IProblem.MissingArgumentsForParameterizedMemberType, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, 131, 0, 0);
        } else {
            handle(IProblem.MissingArgumentsForParameterizedMemberType, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, aSTNode.sourceStart, nodeSourceEnd(null, aSTNode, i10));
        }
    }

    public void parseError(int i10, int i11, int i12, char[] cArr, String str, String[] strArr) {
        if (strArr.length == 0) {
            if (isKeyword(i12)) {
                String[] strArr2 = {new String(cArr)};
                handle(IProblem.ParsingErrorOnKeywordNoSuggestion, strArr2, strArr2, i10, i11);
                return;
            } else {
                String[] strArr3 = {str};
                handle(IProblem.ParsingErrorNoSuggestion, strArr3, strArr3, i10, i11);
                return;
            }
        }
        StringBuffer stringBuffer = new StringBuffer(20);
        int length = strArr.length;
        for (int i13 = 0; i13 < length; i13++) {
            if (i13 > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append('\"');
            stringBuffer.append(strArr[i13]);
            stringBuffer.append('\"');
        }
        if (isKeyword(i12)) {
            String[] strArr4 = {new String(cArr), stringBuffer.toString()};
            handle(IProblem.ParsingErrorOnKeyword, strArr4, strArr4, i10, i11);
        } else {
            String[] strArr5 = {(isLiteral(i12) || isIdentifier(i12)) ? new String(cArr) : str, stringBuffer.toString()};
            handle(IProblem.ParsingError, strArr5, strArr5, i10, i11);
        }
    }

    public void parseErrorDeleteToken(int i10, int i11, int i12, char[] cArr, String str) {
        syntaxError(IProblem.ParsingErrorDeleteToken, i10, i11, i12, cArr, str, null);
    }

    public void parseErrorDeleteTokens(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.ParsingErrorDeleteTokens, strArr, strArr, i10, i11);
    }

    public void parseErrorInsertAfterToken(int i10, int i11, int i12, char[] cArr, String str, String str2) {
        syntaxError(IProblem.ParsingErrorInsertTokenAfter, i10, i11, i12, cArr, str, str2);
    }

    public void parseErrorInsertBeforeToken(int i10, int i11, int i12, char[] cArr, String str, String str2) {
        syntaxError(IProblem.ParsingErrorInsertTokenBefore, i10, i11, i12, cArr, str, str2);
    }

    public void parseErrorInsertToComplete(int i10, int i11, String str, String str2) {
        String[] strArr = {str, str2};
        handle(IProblem.ParsingErrorInsertToComplete, strArr, strArr, i10, i11);
    }

    public void parseErrorInsertToCompletePhrase(int i10, int i11, String str) {
        String[] strArr = {str};
        handle(IProblem.ParsingErrorInsertToCompletePhrase, strArr, strArr, i10, i11);
    }

    public void parseErrorInsertToCompleteScope(int i10, int i11, String str) {
        String[] strArr = {str};
        handle(IProblem.ParsingErrorInsertToCompleteScope, strArr, strArr, i10, i11);
    }

    public void parseErrorInvalidToken(int i10, int i11, int i12, char[] cArr, String str, String str2) {
        syntaxError(IProblem.ParsingErrorInvalidToken, i10, i11, i12, cArr, str, str2);
    }

    public void parseErrorMergeTokens(int i10, int i11, String str) {
        String[] strArr = {str};
        handle(IProblem.ParsingErrorMergeTokens, strArr, strArr, i10, i11);
    }

    public void parseErrorMisplacedConstruct(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.ParsingErrorMisplacedConstruct, strArr, strArr, i10, i11);
    }

    public void parseErrorNoSuggestion(int i10, int i11, int i12, char[] cArr, String str) {
        syntaxError(IProblem.ParsingErrorNoSuggestion, i10, i11, i12, cArr, str, null);
    }

    public void parseErrorNoSuggestionForTokens(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.ParsingErrorNoSuggestionForTokens, strArr, strArr, i10, i11);
    }

    public void parseErrorReplaceToken(int i10, int i11, int i12, char[] cArr, String str, String str2) {
        syntaxError(IProblem.ParsingError, i10, i11, i12, cArr, str, str2);
    }

    public void parseErrorReplaceTokens(int i10, int i11, String str) {
        String[] strArr = {str};
        handle(IProblem.ParsingErrorReplaceTokens, strArr, strArr, i10, i11);
    }

    public void parseErrorUnexpectedEnd(int i10, int i11) {
        ReferenceContext referenceContext = this.referenceContext;
        String[] strArr = referenceContext instanceof ConstructorDeclaration ? new String[]{Messages.parser_endOfConstructor} : referenceContext instanceof MethodDeclaration ? new String[]{Messages.parser_endOfMethod} : referenceContext instanceof TypeDeclaration ? new String[]{Messages.parser_endOfInitializer} : new String[]{Messages.parser_endOfFile};
        handle(IProblem.ParsingErrorUnexpectedEOF, strArr, strArr, i10, i11);
    }

    public void polymorphicMethodNotBelow17(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.PolymorphicMethodNotBelow17, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void possibleAccidentalBooleanAssignment(Assignment assignment) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.PossibleAccidentalBooleanAssignment, strArr, strArr, assignment.sourceStart, assignment.sourceEnd);
    }

    public void possibleFallThroughCase(CaseStatement caseStatement) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.FallthroughCase, strArr, strArr, caseStatement.sourceStart, caseStatement.sourceEnd);
    }

    public void possibleHeapPollutionFromVararg(AbstractVariableDeclaration abstractVariableDeclaration) {
        String[] strArr = {new String(abstractVariableDeclaration.name)};
        handle(IProblem.PotentialHeapPollutionFromVararg, strArr, strArr, abstractVariableDeclaration.sourceStart, abstractVariableDeclaration.sourceEnd);
    }

    public void potentialNullUnboxing(ASTNode aSTNode, TypeBinding typeBinding) {
        handle(IProblem.PotentialNullUnboxing, new String[]{String.valueOf(typeBinding.readableName())}, new String[]{String.valueOf(typeBinding.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void potentiallyUnclosedCloseable(FakedTrackingVariable fakedTrackingVariable, ASTNode aSTNode) {
        String[] strArr = {fakedTrackingVariable.nameForReporting(aSTNode, this.referenceContext)};
        if (aSTNode == null) {
            handle(IProblem.PotentiallyUnclosedCloseable, strArr, strArr, fakedTrackingVariable.sourceStart, fakedTrackingVariable.sourceEnd);
        } else {
            handle(IProblem.PotentiallyUnclosedCloseableAtExit, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
        }
    }

    public void previewFeatureNotEnabled(int i10, int i11, String str) {
        String[] strArr = {str};
        handle(IProblem.PreviewFeatureDisabled, strArr, strArr, i10, i11);
    }

    public void previewFeatureNotSupported(int i10, int i11, String str, String str2) {
        String[] strArr = {str, str2};
        handle(IProblem.PreviewFeatureNotSupported, strArr, strArr, i10, i11);
    }

    public void previewFeatureUsed(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.PreviewFeatureUsed, strArr, strArr, i10, i11);
    }

    public void problemNotAnalysed(Expression expression, String str) {
        handle(IProblem.ProblemNotAnalysed, str != null ? new String[]{str} : new String[0], new String[]{expression.constant.stringValue()}, expression.sourceStart, expression.sourceEnd);
    }

    public void publicClassMustMatchFileName(CompilationUnitDeclaration compilationUnitDeclaration, TypeDeclaration typeDeclaration) {
        this.referenceContext = typeDeclaration;
        String[] strArr = {new String(compilationUnitDeclaration.getFileName()), new String(typeDeclaration.name)};
        handle(IProblem.PublicClassMustMatchFileName, strArr, strArr, typeDeclaration.sourceStart, typeDeclaration.sourceEnd, compilationUnitDeclaration.compilationResult);
    }

    public void rawConstructorReferenceNotWithExplicitTypeArguments(TypeReference[] typeReferenceArr) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.IllegalTypeArgumentsInRawConstructorReference, strArr, strArr, typeReferenceArr[0].sourceStart, typeReferenceArr[typeReferenceArr.length - 1].sourceEnd);
    }

    public void rawMemberTypeCannotBeParameterized(ASTNode aSTNode, ReferenceBinding referenceBinding, TypeBinding[] typeBindingArr) {
        if (aSTNode == null) {
            handle(IProblem.RawMemberTypeCannotBeParameterized, new String[]{new String(referenceBinding.readableName()), typesAsString(typeBindingArr, false), new String(referenceBinding.enclosingType().readableName())}, new String[]{new String(referenceBinding.shortReadableName()), typesAsString(typeBindingArr, true), new String(referenceBinding.enclosingType().shortReadableName())}, 131, 0, 0);
        } else {
            handle(IProblem.RawMemberTypeCannotBeParameterized, new String[]{new String(referenceBinding.readableName()), typesAsString(typeBindingArr, false), new String(referenceBinding.enclosingType().readableName())}, new String[]{new String(referenceBinding.shortReadableName()), typesAsString(typeBindingArr, true), new String(referenceBinding.enclosingType().shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
        }
    }

    public void rawTypeReference(ASTNode aSTNode, TypeBinding typeBinding) {
        if (this.options.sourceLevel < ClassFileConstants.JDK1_5) {
            return;
        }
        TypeBinding leafComponentType = typeBinding.leafComponentType();
        handle(IProblem.RawTypeReference, new String[]{new String(leafComponentType.readableName()), new String(leafComponentType.erasure().readableName())}, new String[]{new String(leafComponentType.shortReadableName()), new String(leafComponentType.erasure().shortReadableName())}, aSTNode.sourceStart, nodeSourceEnd(null, aSTNode, Integer.MAX_VALUE));
    }

    public void recursiveConstructorInvocation(ExplicitConstructorCall explicitConstructorCall) {
        handle(IProblem.RecursiveConstructorInvocation, new String[]{new String(explicitConstructorCall.binding.declaringClass.readableName()), typesAsString(explicitConstructorCall.binding, false)}, new String[]{new String(explicitConstructorCall.binding.declaringClass.shortReadableName()), typesAsString(explicitConstructorCall.binding, true)}, explicitConstructorCall.sourceStart, explicitConstructorCall.sourceEnd);
    }

    public void redefineArgument(Argument argument) {
        String[] strArr = {new String(argument.name)};
        handle(IProblem.RedefinedArgument, strArr, strArr, argument.sourceStart, argument.sourceEnd);
    }

    public void redefineLocal(LocalDeclaration localDeclaration) {
        String[] strArr = {new String(localDeclaration.name)};
        handle(IProblem.RedefinedLocal, strArr, strArr, localDeclaration.sourceStart, localDeclaration.sourceEnd);
    }

    public void redundantSpecificationOfTypeArguments(ASTNode aSTNode, TypeBinding[] typeBindingArr) {
        int i10;
        int computeSeverity = computeSeverity(IProblem.RedundantSpecificationOfTypeArguments);
        if (computeSeverity != 256) {
            if (aSTNode instanceof QualifiedTypeReference) {
                long[] jArr = ((QualifiedTypeReference) aSTNode).sourcePositions;
                i10 = (int) (jArr[jArr.length - 1] >> 32);
            } else {
                i10 = aSTNode.sourceStart;
            }
            handle(IProblem.RedundantSpecificationOfTypeArguments, new String[]{typesAsString(typeBindingArr, false)}, new String[]{typesAsString(typeBindingArr, true)}, computeSeverity, i10, aSTNode.sourceEnd);
        }
    }

    public void redundantSuperInterface(SourceTypeBinding sourceTypeBinding, TypeReference typeReference, ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2) {
        int computeSeverity = computeSeverity(16777547);
        if (computeSeverity != 256) {
            handle(16777547, new String[]{new String(referenceBinding.readableName()), new String(sourceTypeBinding.readableName()), new String(referenceBinding2.readableName())}, new String[]{new String(referenceBinding.shortReadableName()), new String(sourceTypeBinding.shortReadableName()), new String(referenceBinding2.shortReadableName())}, computeSeverity, typeReference.sourceStart, typeReference.sourceEnd);
        }
    }

    public void referenceExpressionArgumentNullityMismatch(ReferenceExpression referenceExpression, TypeBinding typeBinding, TypeBinding typeBinding2, MethodBinding methodBinding, int i10, NullAnnotationMatching nullAnnotationMatching) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(methodBinding.declaringClass.readableName());
        stringBuffer.append('.');
        stringBuffer.append(methodBinding.readableName());
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(methodBinding.declaringClass.shortReadableName());
        stringBuffer2.append('.');
        stringBuffer2.append(methodBinding.shortReadableName());
        handle(nullAnnotationMatching.isUnchecked() ? IProblem.ReferenceExpressionParameterNullityUnchecked : IProblem.ReferenceExpressionParameterNullityMismatch, new String[]{i10 == -1 ? "'this'" : String.valueOf(i10 + 1), String.valueOf(typeBinding.nullAnnotatedReadableName(this.options, false)), String.valueOf(typeBinding2.nullAnnotatedReadableName(this.options, false)), stringBuffer.toString()}, new String[]{i10 != -1 ? String.valueOf(i10 + 1) : "'this'", String.valueOf(typeBinding.nullAnnotatedReadableName(this.options, true)), String.valueOf(typeBinding2.nullAnnotatedReadableName(this.options, true)), stringBuffer2.toString()}, referenceExpression.sourceStart, referenceExpression.sourceEnd);
    }

    public void referenceExpressionsNotBelow18(ReferenceExpression referenceExpression) {
        int i10 = referenceExpression.isMethodReference() ? IProblem.MethodReferenceNotBelow18 : IProblem.ConstructorReferenceNotBelow18;
        String[] strArr = ProblemHandler.NoArgument;
        handle(i10, strArr, strArr, referenceExpression.sourceStart, referenceExpression.sourceEnd);
    }

    public void referenceMustBeArrayTypeAt(TypeBinding typeBinding, ArrayReference arrayReference) {
        handle(IProblem.ArrayReferenceRequired, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, arrayReference.sourceStart, arrayReference.sourceEnd);
    }

    public void repeatableAnnotationTypeIsDocumented(ASTNode aSTNode, ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2) {
        handle(IProblem.RepeatableAnnotationTypeIsDocumented, new String[]{new String(referenceBinding.readableName()), new String(referenceBinding2.readableName())}, new String[]{new String(referenceBinding.shortReadableName()), new String(referenceBinding2.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void repeatableAnnotationTypeIsInherited(ASTNode aSTNode, ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2) {
        handle(IProblem.RepeatableAnnotationTypeIsInherited, new String[]{new String(referenceBinding.readableName()), new String(referenceBinding2.readableName())}, new String[]{new String(referenceBinding.shortReadableName()), new String(referenceBinding2.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void repeatableAnnotationTypeTargetMismatch(ASTNode aSTNode, ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2, String str) {
        handle(IProblem.RepeatableAnnotationTypeTargetMismatch, new String[]{new String(referenceBinding.readableName()), new String(referenceBinding2.readableName()), str}, new String[]{new String(referenceBinding.shortReadableName()), new String(referenceBinding2.shortReadableName()), str}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void repeatableAnnotationWithRepeatingContainer(Annotation annotation, ReferenceBinding referenceBinding) {
        handle(IProblem.RepeatableAnnotationWithRepeatingContainerAnnotation, new String[]{new String(annotation.resolvedType.readableName()), new String(referenceBinding.readableName())}, new String[]{new String(annotation.resolvedType.shortReadableName()), new String(referenceBinding.shortReadableName())}, annotation.sourceStart, annotation.sourceEnd);
    }

    public void repeatedAnnotationWithContainer(Annotation annotation, Annotation annotation2) {
        handle(IProblem.RepeatedAnnotationWithContainerAnnotation, new String[]{new String(annotation.resolvedType.readableName()), new String(annotation2.resolvedType.readableName())}, new String[]{new String(annotation.resolvedType.shortReadableName()), new String(annotation2.resolvedType.shortReadableName())}, annotation.sourceStart, annotation.sourceEnd);
    }

    public void reset() {
        this.positionScanner = null;
    }

    public void resourceHasToImplementAutoCloseable(TypeBinding typeBinding, ASTNode aSTNode) {
        if (this.options.sourceLevel < ClassFileConstants.JDK1_7) {
            return;
        }
        handle(IProblem.ResourceHasToImplementAutoCloseable, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void safeVarargsOnFixedArityMethod(MethodBinding methodBinding) {
        String[] strArr = {new String(methodBinding.isConstructor() ? methodBinding.declaringClass.shortReadableName() : methodBinding.selector)};
        handle(IProblem.SafeVarargsOnFixedArityMethod, strArr, strArr, methodBinding.sourceStart(), methodBinding.sourceEnd());
    }

    public void safeVarargsOnNonFinalInstanceMethod(MethodBinding methodBinding) {
        String[] strArr = {new String(methodBinding.isConstructor() ? methodBinding.declaringClass.shortReadableName() : methodBinding.selector)};
        handle(IProblem.SafeVarargsOnNonFinalInstanceMethod, strArr, strArr, methodBinding.sourceStart(), methodBinding.sourceEnd());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x011d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void scannerError(Parser parser, String str) {
        int i10;
        int i11;
        int i12;
        int i13;
        Scanner scanner = parser.scanner;
        int i14 = scanner.startPosition;
        int i15 = scanner.currentPosition - 1;
        if (str.equals("End_Of_Source")) {
            i13 = IProblem.EndOfSource;
        } else if (str.equals("Invalid_Hexa_Literal")) {
            i13 = IProblem.InvalidHexa;
        } else if (str.equals("Illegal_Hexa_Literal")) {
            i13 = IProblem.IllegalHexaLiteral;
        } else if (str.equals("Invalid_Octal_Literal")) {
            i13 = IProblem.InvalidOctal;
        } else if (str.equals("Invalid_Character_Constant")) {
            i13 = IProblem.InvalidCharacterConstant;
        } else if (str.equals("Invalid_Escape")) {
            i13 = IProblem.InvalidEscape;
        } else {
            if (str.equals("Invalid_Unicode_Escape")) {
                char[] cArr = scanner.source;
                int i16 = scanner.currentPosition - 1;
                if (i16 >= cArr.length) {
                    i16 = cArr.length - 1;
                }
                while (i16 >= i14 && cArr[i16] != '\\') {
                    i16--;
                }
                i10 = i16;
                i12 = 1610612992;
                i11 = i15;
                String[] strArr = i12 != 1610612941 ? new String[]{str} : ProblemHandler.NoArgument;
                handle(i12, strArr, strArr, i10, i11, parser.compilationUnit.compilationResult);
            }
            if (str.equals("Invalid_Low_Surrogate")) {
                i13 = IProblem.InvalidLowSurrogate;
            } else if (str.equals("Invalid_High_Surrogate")) {
                char[] cArr2 = scanner.source;
                int i17 = scanner.startPosition + 1;
                while (i17 <= i15 && cArr2[i17] != '\\') {
                    i17++;
                }
                i15 = i17 - 1;
                i13 = IProblem.InvalidHighSurrogate;
            } else {
                if (!str.equals("Invalid_Float_Literal")) {
                    if (!str.equals("Unterminated_String")) {
                        if (str.equals("Unterminated_Comment")) {
                            i13 = IProblem.UnterminatedComment;
                        } else if (!str.equals("Invalid_Char_In_String")) {
                            if (str.equals("Invalid_Digit")) {
                                i13 = IProblem.InvalidDigit;
                            } else if (str.equals("Invalid_Binary_Literal")) {
                                i13 = IProblem.InvalidBinary;
                            } else if (str.equals("Binary_Literal_Not_Below_17")) {
                                i13 = IProblem.BinaryLiteralNotBelow17;
                            } else if (str.equals("Invalid_Underscore")) {
                                i13 = IProblem.IllegalUnderscorePosition;
                            } else {
                                if (!str.equals("Underscores_In_Literals_Not_Below_17")) {
                                    i10 = i14;
                                    i11 = i15;
                                    i12 = 1610612941;
                                    if (i12 != 1610612941) {
                                    }
                                    handle(i12, strArr, strArr, i10, i11, parser.compilationUnit.compilationResult);
                                }
                                i13 = IProblem.UnderscoresInLiteralsNotBelow17;
                            }
                        }
                    }
                    i10 = i14;
                    i11 = i15;
                    i12 = 1610612995;
                    if (i12 != 1610612941) {
                    }
                    handle(i12, strArr, strArr, i10, i11, parser.compilationUnit.compilationResult);
                }
                i13 = IProblem.InvalidFloat;
            }
        }
        i12 = i13;
        i10 = i14;
        i11 = i15;
        if (i12 != 1610612941) {
        }
        handle(i12, strArr, strArr, i10, i11, parser.compilationUnit.compilationResult);
    }

    public void shouldImplementHashcode(SourceTypeBinding sourceTypeBinding) {
        handle(16777548, new String[]{new String(sourceTypeBinding.readableName())}, new String[]{new String(sourceTypeBinding.shortReadableName())}, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void shouldReturn(TypeBinding typeBinding, ASTNode aSTNode) {
        int i10 = aSTNode.sourceStart;
        int i11 = aSTNode.sourceEnd;
        if (aSTNode instanceof LambdaExpression) {
            LambdaExpression lambdaExpression = (LambdaExpression) aSTNode;
            i10 = lambdaExpression.sourceStart;
            i11 = lambdaExpression.diagnosticsSourceEnd();
        }
        handle(methodHasMissingSwitchDefault() ? IProblem.ShouldReturnValueHintMissingDefault : IProblem.ShouldReturnValue, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, i10, i11);
    }

    public void signalNoImplicitStringConversionForCharArrayExpression(Expression expression) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.NoImplicitStringConversionForCharArrayExpression, strArr, strArr, expression.sourceStart, expression.sourceEnd);
    }

    public void staticAndInstanceConflict(MethodBinding methodBinding, MethodBinding methodBinding2) {
        if (methodBinding.isStatic()) {
            handle(IProblem.CannotHideAnInstanceMethodWithAStaticMethod, new String[]{new String(methodBinding2.declaringClass.readableName())}, new String[]{new String(methodBinding2.declaringClass.shortReadableName())}, methodBinding.sourceStart(), methodBinding.sourceEnd());
        } else {
            handle(IProblem.CannotOverrideAStaticMethodWithAnInstanceMethod, new String[]{new String(methodBinding2.declaringClass.readableName())}, new String[]{new String(methodBinding2.declaringClass.shortReadableName())}, methodBinding.sourceStart(), methodBinding.sourceEnd());
        }
    }

    public void staticFieldAccessToNonStaticVariable(ASTNode aSTNode, FieldBinding fieldBinding) {
        String[] strArr = {new String(fieldBinding.readableName())};
        handle(IProblem.NonStaticFieldFromStaticInvocation, strArr, strArr, nodeSourceStart(fieldBinding, aSTNode), nodeSourceEnd(fieldBinding, aSTNode));
    }

    public void staticInheritedMethodConflicts(SourceTypeBinding sourceTypeBinding, MethodBinding methodBinding, MethodBinding[] methodBindingArr) {
        handle(IProblem.StaticInheritedMethodConflicts, new String[]{new String(methodBinding.readableName()), new String(methodBindingArr[0].declaringClass.readableName())}, new String[]{new String(methodBinding.readableName()), new String(methodBindingArr[0].declaringClass.shortReadableName())}, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void staticInterfaceMethodsNotBelow18(MethodDeclaration methodDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.StaticInterfaceMethodNotBelow18, strArr, strArr, methodDeclaration.sourceStart, methodDeclaration.sourceEnd);
    }

    public void staticMemberOfParameterizedType(ASTNode aSTNode, ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2, int i10) {
        if (aSTNode == null) {
            handle(IProblem.StaticMemberOfParameterizedType, new String[]{new String(referenceBinding.readableName()), new String(referenceBinding.enclosingType().readableName())}, new String[]{new String(referenceBinding.shortReadableName()), new String(referenceBinding.enclosingType().shortReadableName())}, 131, 0, 0);
        } else {
            handle(IProblem.StaticMemberOfParameterizedType, new String[]{new String(referenceBinding.readableName()), new String(referenceBinding2.readableName())}, new String[]{new String(referenceBinding.shortReadableName()), new String(referenceBinding2.shortReadableName())}, aSTNode.sourceStart, nodeSourceEnd(null, aSTNode, i10));
        }
    }

    public void stringConstantIsExceedingUtf8Limit(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.StringConstantIsExceedingUtf8Limit, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void superTypeCannotUseWildcard(SourceTypeBinding sourceTypeBinding, TypeReference typeReference, TypeBinding typeBinding) {
        String str = new String(sourceTypeBinding.sourceName());
        String str2 = new String(typeBinding.readableName());
        String str3 = new String(typeBinding.shortReadableName());
        if (str3.equals(str)) {
            str3 = str2;
        }
        handle(IProblem.SuperTypeUsingWildcard, new String[]{str2, str}, new String[]{str3, str}, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void superclassMustBeAClass(SourceTypeBinding sourceTypeBinding, TypeReference typeReference, ReferenceBinding referenceBinding) {
        handle(IProblem.SuperclassMustBeAClass, new String[]{new String(referenceBinding.readableName()), new String(sourceTypeBinding.sourceName())}, new String[]{new String(referenceBinding.shortReadableName()), new String(sourceTypeBinding.sourceName())}, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void superfluousSemicolon(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.SuperfluousSemicolon, strArr, strArr, i10, i11);
    }

    public void superinterfaceMustBeAnInterface(SourceTypeBinding sourceTypeBinding, TypeReference typeReference, ReferenceBinding referenceBinding) {
        handle(IProblem.SuperInterfaceMustBeAnInterface, new String[]{new String(referenceBinding.readableName()), new String(sourceTypeBinding.sourceName())}, new String[]{new String(referenceBinding.shortReadableName()), new String(sourceTypeBinding.sourceName())}, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void superinterfacesCollide(TypeBinding typeBinding, ASTNode aSTNode, TypeBinding typeBinding2, TypeBinding typeBinding3) {
        handle(IProblem.SuperInterfacesCollide, new String[]{new String(typeBinding2.readableName()), new String(typeBinding3.readableName()), new String(typeBinding.sourceName())}, new String[]{new String(typeBinding2.shortReadableName()), new String(typeBinding3.shortReadableName()), new String(typeBinding.sourceName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void switchExpressionBreakMissingValue(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.SwitchExpressionBreakMissingValue, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void switchExpressionEmptySwitchBlock(SwitchExpression switchExpression) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.SwitchExpressionsEmptySwitchBlock, strArr, strArr, switchExpression.sourceStart, switchExpression.sourceEnd);
    }

    public void switchExpressionIllegalLastStatement(Statement statement) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.SwitchExpressionIllegalLastStatement, strArr, strArr, statement.sourceStart, statement.sourceEnd);
    }

    public void switchExpressionIncompatibleResultExpressions(SwitchExpression switchExpression) {
        TypeBinding typeBinding = switchExpression.resultExpressions.get(0).resolvedType;
        handle(IProblem.SwitchExpressionsIncompatibleResultExpressionTypes, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, switchExpression.sourceStart, switchExpression.sourceEnd);
    }

    public void switchExpressionLastStatementCompletesNormally(Statement statement) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.SwitchExpressionSwitchLabeledBlockCompletesNormally, strArr, strArr, statement.sourceStart, statement.sourceEnd);
    }

    public void switchExpressionMixedCase(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.switchMixedCase, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void switchExpressionNoResultExpressions(SwitchExpression switchExpression) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.SwitchExpressionsNoResultExpression, strArr, strArr, switchExpression.sourceStart, switchExpression.sourceEnd);
    }

    public void switchExpressionSwitchLabeledBlockCompletesNormally(Block block) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.SwitchExpressionSwitchLabeledBlockCompletesNormally, strArr, strArr, block.sourceStart, block.sourceEnd);
    }

    public void switchExpressionTrailingSwitchLabels(Statement statement) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.SwitchExpressionTrailingSwitchLabels, strArr, strArr, statement.sourceStart, statement.sourceEnd);
    }

    public void targetTypeIsNotAFunctionalInterface(FunctionalExpression functionalExpression) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.TargetTypeNotAFunctionalInterface, strArr, strArr, functionalExpression.sourceStart, functionalExpression.diagnosticsSourceEnd());
    }

    public void task(String str, String str2, String str3, int i10, int i11) {
        handle(IProblem.Task, new String[]{str, str2, str3}, new String[]{str, str2, str3}, i10, i11);
    }

    public void tooManyDimensions(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.TooManyArrayDimensions, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void tooManyFields(TypeDeclaration typeDeclaration) {
        handle(IProblem.TooManyFields, new String[]{new String(typeDeclaration.binding.readableName())}, new String[]{new String(typeDeclaration.binding.shortReadableName())}, 159, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void tooManyMethods(TypeDeclaration typeDeclaration) {
        handle(IProblem.TooManyMethods, new String[]{new String(typeDeclaration.binding.readableName())}, new String[]{new String(typeDeclaration.binding.shortReadableName())}, 159, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void tooManyParametersForSyntheticMethod(AbstractMethodDeclaration abstractMethodDeclaration) {
        MethodBinding methodBinding = abstractMethodDeclaration.binding;
        String str = methodBinding.isConstructor() ? new String(methodBinding.declaringClass.sourceName()) : new String(abstractMethodDeclaration.selector);
        handle(IProblem.TooManyParametersForSyntheticMethod, new String[]{str, typesAsString(methodBinding, false), new String(methodBinding.declaringClass.readableName())}, new String[]{str, typesAsString(methodBinding, true), new String(methodBinding.declaringClass.shortReadableName())}, 145, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
    }

    public void typeAnnotationAtQualifiedName(Annotation annotation) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.TypeAnnotationAtQualifiedName, strArr, strArr, annotation.sourceStart, annotation.sourceEnd);
    }

    public void typeCastError(CastExpression castExpression, TypeBinding typeBinding, TypeBinding typeBinding2) {
        String str = new String(typeBinding.readableName());
        String str2 = new String(typeBinding2.readableName());
        String str3 = new String(typeBinding.shortReadableName());
        String str4 = new String(typeBinding2.shortReadableName());
        if (str3.equals(str4)) {
            str3 = str;
            str4 = str2;
        }
        handle(IProblem.IllegalCast, new String[]{str2, str}, new String[]{str4, str3}, castExpression.sourceStart, castExpression.sourceEnd);
    }

    public void typeCollidesWithEnclosingType(TypeDeclaration typeDeclaration) {
        String[] strArr = {new String(typeDeclaration.name)};
        handle(IProblem.HidingEnclosingType, strArr, strArr, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void typeCollidesWithPackage(CompilationUnitDeclaration compilationUnitDeclaration, TypeDeclaration typeDeclaration) {
        this.referenceContext = typeDeclaration;
        String[] strArr = {new String(compilationUnitDeclaration.getFileName()), new String(typeDeclaration.name)};
        handle(IProblem.TypeCollidesWithPackage, strArr, strArr, typeDeclaration.sourceStart, typeDeclaration.sourceEnd, compilationUnitDeclaration.compilationResult);
    }

    public void typeHiding(TypeDeclaration typeDeclaration, TypeBinding typeBinding) {
        int computeSeverity = computeSeverity(IProblem.TypeHidingType);
        if (computeSeverity == 256) {
            return;
        }
        handle(IProblem.TypeHidingType, new String[]{new String(typeDeclaration.name), new String(typeBinding.shortReadableName())}, new String[]{new String(typeDeclaration.name), new String(typeBinding.readableName())}, computeSeverity, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void typeMismatchError(TypeBinding typeBinding, TypeBinding typeBinding2, ASTNode aSTNode, ASTNode aSTNode2) {
        if (this.options.sourceLevel < ClassFileConstants.JDK1_5) {
            if (typeBinding instanceof TypeVariableBinding) {
                typeBinding = typeBinding.erasure();
            }
            if (typeBinding2 instanceof TypeVariableBinding) {
                typeBinding2 = typeBinding2.erasure();
            }
        }
        if (typeBinding != null && (typeBinding.tagBits & 128) != 0) {
            if (aSTNode instanceof Annotation) {
                return;
            }
            handle(IProblem.UndefinedType, new String[]{new String(typeBinding.leafComponentType().readableName())}, new String[]{new String(typeBinding.leafComponentType().shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
            return;
        }
        if (aSTNode2 != null && (128 & typeBinding2.tagBits) != 0) {
            handle(IProblem.UndefinedType, new String[]{new String(typeBinding2.leafComponentType().readableName())}, new String[]{new String(typeBinding2.leafComponentType().shortReadableName())}, aSTNode2.sourceStart, aSTNode2.sourceEnd);
            return;
        }
        char[] shortReadableName = typeBinding.shortReadableName();
        char[] shortReadableName2 = typeBinding2.shortReadableName();
        char[] readableName = typeBinding.readableName();
        char[] readableName2 = typeBinding2.readableName();
        if (CharOperation.equals(shortReadableName, shortReadableName2)) {
            if (CharOperation.equals(readableName, readableName2)) {
                readableName = typeBinding.nullAnnotatedReadableName(this.options, false);
                readableName2 = typeBinding2.nullAnnotatedReadableName(this.options, false);
                shortReadableName = typeBinding.nullAnnotatedReadableName(this.options, true);
                shortReadableName2 = typeBinding2.nullAnnotatedReadableName(this.options, true);
            } else {
                shortReadableName = readableName;
                shortReadableName2 = readableName2;
            }
        }
        handle(aSTNode2 instanceof ReturnStatement ? IProblem.ReturnTypeMismatch : IProblem.TypeMismatch, new String[]{new String(readableName), new String(readableName2)}, new String[]{new String(shortReadableName), new String(shortReadableName2)}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void unclosedCloseable(FakedTrackingVariable fakedTrackingVariable, ASTNode aSTNode) {
        String[] strArr = {String.valueOf(fakedTrackingVariable.name)};
        if (aSTNode == null) {
            handle(IProblem.UnclosedCloseable, strArr, strArr, fakedTrackingVariable.sourceStart, fakedTrackingVariable.sourceEnd);
        } else {
            handle(IProblem.UnclosedCloseableAtExit, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
        }
    }

    public void undefinedAnnotationValue(TypeBinding typeBinding, MemberValuePair memberValuePair) {
        if (isRecoveredName(memberValuePair.name)) {
            return;
        }
        String str = new String(memberValuePair.name);
        handle(IProblem.UndefinedAnnotationMember, new String[]{str, new String(typeBinding.readableName())}, new String[]{str, new String(typeBinding.shortReadableName())}, memberValuePair.sourceStart, memberValuePair.sourceEnd);
    }

    public void undefinedLabel(BranchStatement branchStatement) {
        if (isRecoveredName(branchStatement.label)) {
            return;
        }
        String[] strArr = {new String(branchStatement.label)};
        handle(IProblem.UndefinedLabel, strArr, strArr, branchStatement.sourceStart, branchStatement.sourceEnd);
    }

    public void undefinedTypeVariableSignature(char[] cArr, ReferenceBinding referenceBinding) {
        handle(IProblem.UndefinedTypeVariable, new String[]{new String(cArr), new String(referenceBinding.readableName())}, new String[]{new String(cArr), new String(referenceBinding.shortReadableName())}, 131, 0, 0);
    }

    public void undocumentedEmptyBlock(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.UndocumentedEmptyBlock, strArr, strArr, i10, i11);
    }

    public void unexpectedStaticModifierForField(SourceTypeBinding sourceTypeBinding, FieldDeclaration fieldDeclaration) {
        String[] strArr = {new String(fieldDeclaration.name)};
        handle(IProblem.UnexpectedStaticModifierForField, strArr, strArr, fieldDeclaration.sourceStart, fieldDeclaration.sourceEnd);
    }

    public void unexpectedStaticModifierForMethod(ReferenceBinding referenceBinding, AbstractMethodDeclaration abstractMethodDeclaration) {
        String[] strArr = {new String(referenceBinding.sourceName()), new String(abstractMethodDeclaration.selector)};
        handle(IProblem.UnexpectedStaticModifierForMethod, strArr, strArr, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
    }

    public void unhandledException(TypeBinding typeBinding, ASTNode aSTNode) {
        ReferenceContext referenceContext = this.referenceContext;
        boolean z10 = false;
        boolean z11 = (referenceContext instanceof ConstructorDeclaration) && ((ConstructorDeclaration) referenceContext).isDefaultConstructor();
        if ((aSTNode instanceof ExplicitConstructorCall) && ((ExplicitConstructorCall) aSTNode).accessMode == 1) {
            z10 = true;
        }
        int i10 = aSTNode.sourceEnd;
        if (aSTNode instanceof LocalDeclaration) {
            i10 = ((LocalDeclaration) aSTNode).declarationEnd;
        }
        handle(z11 ? IProblem.UnhandledExceptionInDefaultConstructor : z10 ? IProblem.UndefinedConstructorInImplicitConstructorCall : IProblem.UnhandledException, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, aSTNode.sourceStart, i10);
    }

    public void unhandledExceptionFromAutoClose(TypeBinding typeBinding, ASTNode aSTNode) {
        Binding binding = aSTNode instanceof LocalDeclaration ? ((LocalDeclaration) aSTNode).binding : aSTNode instanceof NameReference ? ((NameReference) aSTNode).binding : aSTNode instanceof FieldReference ? ((FieldReference) aSTNode).binding : null;
        if (binding != null) {
            handle(IProblem.UnhandledExceptionOnAutoClose, new String[]{new String(typeBinding.readableName()), new String(binding.readableName())}, new String[]{new String(typeBinding.shortReadableName()), new String(binding.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
        }
    }

    public void unhandledWarningToken(Expression expression) {
        String[] strArr = {expression.constant.stringValue()};
        handle(IProblem.UnhandledWarningToken, strArr, strArr, expression.sourceStart, expression.sourceEnd);
    }

    public void uninitializedBlankFinalField(FieldBinding fieldBinding, ASTNode aSTNode) {
        String[] strArr = {new String(fieldBinding.readableName())};
        handle(methodHasMissingSwitchDefault() ? IProblem.UninitializedBlankFinalFieldHintMissingDefault : IProblem.UninitializedBlankFinalField, strArr, strArr, nodeSourceStart(fieldBinding, aSTNode), nodeSourceEnd(fieldBinding, aSTNode));
    }

    public void uninitializedLocalVariable(LocalVariableBinding localVariableBinding, ASTNode aSTNode, Scope scope) {
        localVariableBinding.markAsUninitializedIn(scope);
        String[] strArr = {new String(localVariableBinding.readableName())};
        handle(methodHasMissingSwitchDefault() ? IProblem.UninitializedLocalVariableHintMissingDefault : IProblem.UninitializedLocalVariable, strArr, strArr, nodeSourceStart(localVariableBinding, aSTNode), nodeSourceEnd(localVariableBinding, aSTNode));
    }

    public void uninitializedNonNullField(FieldBinding fieldBinding, ASTNode aSTNode) {
        char[][] cArr = this.options.nonNullAnnotationName;
        if (fieldBinding.isNonNull()) {
            String[] strArr = {new String(cArr[cArr.length - 1]), new String(fieldBinding.readableName())};
            handle(methodHasMissingSwitchDefault() ? IProblem.UninitializedNonNullFieldHintMissingDefault : IProblem.UninitializedNonNullField, strArr, strArr, nodeSourceStart(fieldBinding, aSTNode), nodeSourceEnd(fieldBinding, aSTNode));
        } else {
            String[] strArr2 = {new String(fieldBinding.readableName()), new String(fieldBinding.type.readableName()), new String(cArr[cArr.length - 1])};
            handle(methodHasMissingSwitchDefault() ? 978 : 977, strArr2, strArr2, nodeSourceStart(fieldBinding, aSTNode), nodeSourceEnd(fieldBinding, aSTNode));
        }
    }

    public void uninternedIdentityComparison(EqualExpression equalExpression, TypeBinding typeBinding, TypeBinding typeBinding2, CompilationUnitDeclaration compilationUnitDeclaration) {
        char[] sourceName = typeBinding.sourceName();
        char[] sourceName2 = typeBinding2.sourceName();
        if (CharOperation.equals(sourceName, "VoidTypeBinding".toCharArray()) || CharOperation.equals(sourceName, "NullTypeBinding".toCharArray()) || CharOperation.equals(sourceName, "ProblemReferenceBinding".toCharArray()) || CharOperation.equals(sourceName2, "VoidTypeBinding".toCharArray()) || CharOperation.equals(sourceName2, "NullTypeBinding".toCharArray()) || CharOperation.equals(sourceName2, "ProblemReferenceBinding".toCharArray())) {
            return;
        }
        boolean[] zArr = compilationUnitDeclaration.validIdentityComparisonLines;
        if (zArr != null) {
            int i10 = equalExpression.left.sourceStart;
            int i11 = 0;
            if (i10 >= 0) {
                i11 = Util.getLineNumber(i10, compilationUnitDeclaration.compilationResult().getLineSeparatorPositions(), 0, r12.length - 1);
            }
            if (i11 <= zArr.length && zArr[i11 - 1]) {
                return;
            }
        }
        handle(IProblem.UninternedIdentityComparison, new String[]{new String(typeBinding.readableName()), new String(typeBinding2.readableName())}, new String[]{new String(typeBinding.shortReadableName()), new String(typeBinding2.shortReadableName())}, equalExpression.sourceStart, equalExpression.sourceEnd);
    }

    public void unlikelyArgumentType(Expression expression, MethodBinding methodBinding, TypeBinding typeBinding, TypeBinding typeBinding2, TypeConstants.DangerousMethod dangerousMethod) {
        handle(dangerousMethod == TypeConstants.DangerousMethod.Equals ? IProblem.UnlikelyEqualsArgumentType : IProblem.UnlikelyCollectionMethodArgumentType, new String[]{new String(typeBinding.readableName()), new String(methodBinding.readableName()), new String(typeBinding2.readableName())}, new String[]{new String(typeBinding.shortReadableName()), new String(methodBinding.shortReadableName()), new String(typeBinding2.shortReadableName())}, expression.sourceStart, expression.sourceEnd);
    }

    public void unmatchedBracket(int i10, ReferenceContext referenceContext, CompilationResult compilationResult) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.UnmatchedBracket, strArr, strArr, i10, i10, referenceContext, compilationResult);
    }

    public void unnamedPackageInNamedModule(ModuleBinding moduleBinding) {
        String[] strArr = {new String(moduleBinding.readableName())};
        handle(IProblem.UnnamedPackageInNamedModule, strArr, strArr, 0, 0);
    }

    public void unnecessaryCast(CastExpression castExpression) {
        int computeSeverity;
        if ((castExpression.expression instanceof FunctionalExpression) || (computeSeverity = computeSeverity(IProblem.UnnecessaryCast)) == 256) {
            return;
        }
        TypeBinding typeBinding = castExpression.expression.resolvedType;
        handle(IProblem.UnnecessaryCast, new String[]{new String(typeBinding.readableName()), new String(castExpression.type.resolvedType.readableName())}, new String[]{new String(typeBinding.shortReadableName()), new String(castExpression.type.resolvedType.shortReadableName())}, computeSeverity, castExpression.sourceStart, castExpression.sourceEnd);
    }

    public void unnecessaryElse(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.UnnecessaryElse, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void unnecessaryEnclosingInstanceSpecification(Expression expression, ReferenceBinding referenceBinding) {
        handle(IProblem.IllegalEnclosingInstanceSpecification, new String[]{new String(referenceBinding.readableName())}, new String[]{new String(referenceBinding.shortReadableName())}, expression.sourceStart, expression.sourceEnd);
    }

    public void unnecessaryInstanceof(InstanceOfExpression instanceOfExpression, TypeBinding typeBinding) {
        int computeSeverity = computeSeverity(IProblem.UnnecessaryInstanceof);
        if (computeSeverity == 256) {
            return;
        }
        TypeBinding typeBinding2 = instanceOfExpression.expression.resolvedType;
        handle(IProblem.UnnecessaryInstanceof, new String[]{new String(typeBinding2.readableName()), new String(typeBinding.readableName())}, new String[]{new String(typeBinding2.shortReadableName()), new String(typeBinding.shortReadableName())}, computeSeverity, instanceOfExpression.sourceStart, instanceOfExpression.sourceEnd);
    }

    public void unnecessaryNLSTags(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.UnnecessaryNLSTag, strArr, strArr, i10, i11);
    }

    public void unnecessaryTypeArgumentsForMethodInvocation(MethodBinding methodBinding, TypeBinding[] typeBindingArr, TypeReference[] typeReferenceArr) {
        String str = methodBinding.isConstructor() ? new String(methodBinding.declaringClass.shortReadableName()) : new String(methodBinding.selector);
        handle(methodBinding.isConstructor() ? IProblem.UnusedTypeArgumentsForConstructorInvocation : IProblem.UnusedTypeArgumentsForMethodInvocation, new String[]{str, typesAsString(methodBinding, false), new String(methodBinding.declaringClass.readableName()), typesAsString(typeBindingArr, false)}, new String[]{str, typesAsString(methodBinding, true), new String(methodBinding.declaringClass.shortReadableName()), typesAsString(typeBindingArr, true)}, typeReferenceArr[0].sourceStart, typeReferenceArr[typeReferenceArr.length - 1].sourceEnd);
    }

    public void unqualifiedFieldAccess(NameReference nameReference, FieldBinding fieldBinding) {
        int nodeSourceStart;
        int nodeSourceEnd;
        int i10;
        int i11;
        int i12 = nameReference.sourceStart;
        int i13 = nameReference.sourceEnd;
        if (nameReference instanceof SingleNameReference) {
            int i14 = (nameReference.bits & ASTNode.ParenthesizedMASK) >> 21;
            if (i14 != 0) {
                int retrieveStartingPositionAfterOpeningParenthesis = retrieveStartingPositionAfterOpeningParenthesis(i12, i13, i14);
                i11 = retrieveStartingPositionAfterOpeningParenthesis;
                i10 = retrieveEndingPositionAfterOpeningParenthesis(retrieveStartingPositionAfterOpeningParenthesis, i13, i14);
                handle(IProblem.UnqualifiedFieldAccess, new String[]{new String(fieldBinding.declaringClass.readableName()), new String(fieldBinding.name)}, new String[]{new String(fieldBinding.declaringClass.shortReadableName()), new String(fieldBinding.name)}, i11, i10);
            }
            nodeSourceStart = nodeSourceStart(fieldBinding, nameReference);
            nodeSourceEnd = nodeSourceEnd(fieldBinding, nameReference);
        } else {
            nodeSourceStart = nodeSourceStart(fieldBinding, nameReference);
            nodeSourceEnd = nodeSourceEnd(fieldBinding, nameReference);
        }
        i10 = nodeSourceEnd;
        i11 = nodeSourceStart;
        handle(IProblem.UnqualifiedFieldAccess, new String[]{new String(fieldBinding.declaringClass.readableName()), new String(fieldBinding.name)}, new String[]{new String(fieldBinding.declaringClass.shortReadableName()), new String(fieldBinding.name)}, i11, i10);
    }

    public void unreachableCatchBlock(ReferenceBinding referenceBinding, ASTNode aSTNode) {
        handle(IProblem.UnreachableCatch, new String[]{new String(referenceBinding.readableName())}, new String[]{new String(referenceBinding.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void unreachableCode(Statement statement) {
        int i10;
        int i11;
        int i12;
        int i13 = statement.sourceStart;
        int i14 = statement.sourceEnd;
        if (statement instanceof LocalDeclaration) {
            LocalDeclaration localDeclaration = (LocalDeclaration) statement;
            i13 = localDeclaration.declarationSourceStart;
            i14 = localDeclaration.declarationSourceEnd;
        } else if (statement instanceof Expression) {
            Expression expression = (Expression) statement;
            if (expression.isTrulyExpression() && (i10 = expression.statementEnd) != -1) {
                i11 = i10;
                i12 = i13;
                String[] strArr = ProblemHandler.NoArgument;
                handle(IProblem.CodeCannotBeReached, strArr, strArr, i12, i11);
            }
        }
        i12 = i13;
        i11 = i14;
        String[] strArr2 = ProblemHandler.NoArgument;
        handle(IProblem.CodeCannotBeReached, strArr2, strArr2, i12, i11);
    }

    public void unresolvableReference(NameReference nameReference, Binding binding) {
        String[] strArr = {new String(binding.readableName())};
        int i10 = nameReference.sourceEnd;
        int i11 = nameReference.sourceStart;
        if (nameReference instanceof QualifiedNameReference) {
            QualifiedNameReference qualifiedNameReference = (QualifiedNameReference) nameReference;
            if (isRecoveredName(qualifiedNameReference.tokens)) {
                return;
            }
            int i12 = qualifiedNameReference.indexOfFirstFieldBinding;
            if (i12 >= 1) {
                i10 = (int) qualifiedNameReference.sourcePositions[i12 - 1];
            }
        } else {
            SingleNameReference singleNameReference = (SingleNameReference) nameReference;
            if (isRecoveredName(singleNameReference.token)) {
                return;
            }
            int i13 = (singleNameReference.bits & ASTNode.ParenthesizedMASK) >> 21;
            if (i13 != 0) {
                i11 = retrieveStartingPositionAfterOpeningParenthesis(i11, i10, i13);
                i10 = retrieveEndingPositionAfterOpeningParenthesis(i11, i10, i13);
            }
        }
        int i14 = i10;
        int i15 = i11;
        int i16 = nameReference.bits;
        handle(((i16 & 3) == 0 || (i16 & 4) != 0) ? IProblem.UndefinedName : IProblem.UnresolvedVariable, strArr, strArr, i15, i14);
    }

    public void unsafeCast(CastExpression castExpression, Scope scope) {
        int computeSeverity;
        if (this.options.sourceLevel >= ClassFileConstants.JDK1_5 && (computeSeverity = computeSeverity(IProblem.UnsafeGenericCast)) != 256) {
            TypeBinding typeBinding = castExpression.expression.resolvedType;
            TypeBinding typeBinding2 = castExpression.resolvedType;
            handle(IProblem.UnsafeGenericCast, new String[]{new String(typeBinding.readableName()), new String(typeBinding2.readableName())}, new String[]{new String(typeBinding.shortReadableName()), new String(typeBinding2.shortReadableName())}, computeSeverity, castExpression.sourceStart, castExpression.sourceEnd);
        }
    }

    public void unsafeElementTypeConversion(Expression expression, TypeBinding typeBinding, TypeBinding typeBinding2) {
        int computeSeverity;
        if (this.options.sourceLevel >= ClassFileConstants.JDK1_5 && (computeSeverity = computeSeverity(IProblem.UnsafeElementTypeConversion)) != 256) {
            if (this.options.reportUnavoidableGenericTypeProblems || !expression.forcedToBeRaw(this.referenceContext)) {
                handle(IProblem.UnsafeElementTypeConversion, new String[]{new String(typeBinding.readableName()), new String(typeBinding2.readableName()), new String(typeBinding2.erasure().readableName())}, new String[]{new String(typeBinding.shortReadableName()), new String(typeBinding2.shortReadableName()), new String(typeBinding2.erasure().shortReadableName())}, computeSeverity, expression.sourceStart, expression.sourceEnd);
            }
        }
    }

    public void unsafeGenericArrayForVarargs(TypeBinding typeBinding, ASTNode aSTNode) {
        int computeSeverity = computeSeverity(IProblem.UnsafeGenericArrayForVarargs);
        if (computeSeverity == 256) {
            return;
        }
        handle(IProblem.UnsafeGenericArrayForVarargs, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, computeSeverity, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void unsafeNullnessCast(CastExpression castExpression, Scope scope) {
        TypeBinding typeBinding = castExpression.expression.resolvedType;
        TypeBinding typeBinding2 = castExpression.resolvedType;
        handle(IProblem.UnsafeNullnessCast, new String[]{new String(typeBinding.nullAnnotatedReadableName(this.options, false)), new String(typeBinding2.nullAnnotatedReadableName(this.options, false))}, new String[]{new String(typeBinding.nullAnnotatedReadableName(this.options, true)), new String(typeBinding2.nullAnnotatedReadableName(this.options, true))}, castExpression.sourceStart, castExpression.sourceEnd);
    }

    public void unsafeRawFieldAssignment(FieldBinding fieldBinding, TypeBinding typeBinding, ASTNode aSTNode) {
        int computeSeverity;
        if (this.options.sourceLevel >= ClassFileConstants.JDK1_5 && (computeSeverity = computeSeverity(IProblem.UnsafeRawFieldAssignment)) != 256) {
            handle(IProblem.UnsafeRawFieldAssignment, new String[]{new String(typeBinding.readableName()), new String(fieldBinding.name), new String(fieldBinding.declaringClass.readableName()), new String(fieldBinding.declaringClass.erasure().readableName())}, new String[]{new String(typeBinding.shortReadableName()), new String(fieldBinding.name), new String(fieldBinding.declaringClass.shortReadableName()), new String(fieldBinding.declaringClass.erasure().shortReadableName())}, computeSeverity, nodeSourceStart(fieldBinding, aSTNode), nodeSourceEnd(fieldBinding, aSTNode));
        }
    }

    public void unsafeRawGenericMethodInvocation(ASTNode aSTNode, MethodBinding methodBinding, TypeBinding[] typeBindingArr) {
        if (this.options.sourceLevel < ClassFileConstants.JDK1_5) {
            return;
        }
        boolean isConstructor = methodBinding.isConstructor();
        int computeSeverity = computeSeverity(isConstructor ? IProblem.UnsafeRawGenericConstructorInvocation : IProblem.UnsafeRawGenericMethodInvocation);
        if (computeSeverity == 256) {
            return;
        }
        if (isConstructor) {
            handle(IProblem.UnsafeRawGenericConstructorInvocation, new String[]{new String(methodBinding.declaringClass.sourceName()), typesAsString(methodBinding.original(), false), new String(methodBinding.declaringClass.readableName()), typesAsString(typeBindingArr, false)}, new String[]{new String(methodBinding.declaringClass.sourceName()), typesAsString(methodBinding.original(), true), new String(methodBinding.declaringClass.shortReadableName()), typesAsString(typeBindingArr, true)}, computeSeverity, aSTNode.sourceStart, aSTNode.sourceEnd);
        } else {
            handle(IProblem.UnsafeRawGenericMethodInvocation, new String[]{new String(methodBinding.selector), typesAsString(methodBinding.original(), false), new String(methodBinding.declaringClass.readableName()), typesAsString(typeBindingArr, false)}, new String[]{new String(methodBinding.selector), typesAsString(methodBinding.original(), true), new String(methodBinding.declaringClass.shortReadableName()), typesAsString(typeBindingArr, true)}, computeSeverity, aSTNode.sourceStart, aSTNode.sourceEnd);
        }
    }

    public void unsafeRawInvocation(ASTNode aSTNode, MethodBinding methodBinding) {
        if (this.options.sourceLevel < ClassFileConstants.JDK1_5) {
            return;
        }
        boolean isConstructor = methodBinding.isConstructor();
        int computeSeverity = computeSeverity(isConstructor ? IProblem.UnsafeRawConstructorInvocation : IProblem.UnsafeRawMethodInvocation);
        if (computeSeverity == 256) {
            return;
        }
        if (isConstructor) {
            handle(IProblem.UnsafeRawConstructorInvocation, new String[]{new String(methodBinding.declaringClass.readableName()), typesAsString(methodBinding.original(), methodBinding.parameters, false), new String(methodBinding.declaringClass.erasure().readableName())}, new String[]{new String(methodBinding.declaringClass.shortReadableName()), typesAsString(methodBinding.original(), methodBinding.parameters, true), new String(methodBinding.declaringClass.erasure().shortReadableName())}, computeSeverity, aSTNode.sourceStart, aSTNode.sourceEnd);
        } else {
            handle(IProblem.UnsafeRawMethodInvocation, new String[]{new String(methodBinding.selector), typesAsString(methodBinding.original(), methodBinding.parameters, false), new String(methodBinding.declaringClass.readableName()), new String(methodBinding.declaringClass.erasure().readableName())}, new String[]{new String(methodBinding.selector), typesAsString(methodBinding.original(), methodBinding.parameters, true), new String(methodBinding.declaringClass.shortReadableName()), new String(methodBinding.declaringClass.erasure().shortReadableName())}, computeSeverity, aSTNode.sourceStart, aSTNode.sourceEnd);
        }
    }

    public void unsafeReturnTypeOverride(MethodBinding methodBinding, MethodBinding methodBinding2, SourceTypeBinding sourceTypeBinding) {
        int computeSeverity;
        int i10;
        int i11;
        if (this.options.sourceLevel >= ClassFileConstants.JDK1_5 && (computeSeverity = computeSeverity(IProblem.UnsafeReturnTypeOverride)) != 256) {
            int sourceStart = sourceTypeBinding.sourceStart();
            int sourceEnd = sourceTypeBinding.sourceEnd();
            if (TypeBinding.equalsEquals(methodBinding.declaringClass, sourceTypeBinding)) {
                TypeReference typeReference = ((MethodDeclaration) methodBinding.sourceMethod()).returnType;
                int sourceStart2 = typeReference.sourceStart();
                i11 = typeReference.sourceEnd();
                i10 = sourceStart2;
            } else {
                i10 = sourceStart;
                i11 = sourceEnd;
            }
            handle(IProblem.UnsafeReturnTypeOverride, new String[]{new String(methodBinding.returnType.readableName()), new String(methodBinding.selector), typesAsString(methodBinding.original(), false), new String(methodBinding.declaringClass.readableName()), new String(methodBinding2.returnType.readableName()), new String(methodBinding2.declaringClass.readableName())}, new String[]{new String(methodBinding.returnType.shortReadableName()), new String(methodBinding.selector), typesAsString(methodBinding.original(), true), new String(methodBinding.declaringClass.shortReadableName()), new String(methodBinding2.returnType.shortReadableName()), new String(methodBinding2.declaringClass.shortReadableName())}, computeSeverity, i10, i11);
        }
    }

    public void unsafeTypeConversion(Expression expression, TypeBinding typeBinding, TypeBinding typeBinding2) {
        int computeSeverity;
        if (this.options.sourceLevel >= ClassFileConstants.JDK1_5 && (computeSeverity = computeSeverity(IProblem.UnsafeTypeConversion)) != 256) {
            if (this.options.reportUnavoidableGenericTypeProblems || !expression.forcedToBeRaw(this.referenceContext)) {
                handle(IProblem.UnsafeTypeConversion, new String[]{new String(typeBinding.readableName()), new String(typeBinding2.readableName()), new String(typeBinding2.erasure().readableName())}, new String[]{new String(typeBinding.shortReadableName()), new String(typeBinding2.shortReadableName()), new String(typeBinding2.erasure().shortReadableName())}, computeSeverity, expression.sourceStart, expression.sourceEnd);
            }
        }
    }

    public void unusedArgument(LocalDeclaration localDeclaration) {
        int computeSeverity = computeSeverity(IProblem.ArgumentIsNeverUsed);
        if (computeSeverity == 256) {
            return;
        }
        String[] strArr = {new String(localDeclaration.name)};
        handle(IProblem.ArgumentIsNeverUsed, strArr, strArr, computeSeverity, localDeclaration.sourceStart, localDeclaration.sourceEnd);
    }

    public void unusedDeclaredThrownException(ReferenceBinding referenceBinding, AbstractMethodDeclaration abstractMethodDeclaration, ASTNode aSTNode) {
        boolean isConstructor = abstractMethodDeclaration.isConstructor();
        int computeSeverity = computeSeverity(isConstructor ? IProblem.UnusedConstructorDeclaredThrownException : IProblem.UnusedMethodDeclaredThrownException);
        if (computeSeverity == 256) {
            return;
        }
        if (isConstructor) {
            handle(IProblem.UnusedConstructorDeclaredThrownException, new String[]{new String(abstractMethodDeclaration.binding.declaringClass.readableName()), typesAsString(abstractMethodDeclaration.binding, false), new String(referenceBinding.readableName())}, new String[]{new String(abstractMethodDeclaration.binding.declaringClass.shortReadableName()), typesAsString(abstractMethodDeclaration.binding, true), new String(referenceBinding.shortReadableName())}, computeSeverity, aSTNode.sourceStart, aSTNode.sourceEnd);
        } else {
            handle(IProblem.UnusedMethodDeclaredThrownException, new String[]{new String(abstractMethodDeclaration.binding.declaringClass.readableName()), new String(abstractMethodDeclaration.selector), typesAsString(abstractMethodDeclaration.binding, false), new String(referenceBinding.readableName())}, new String[]{new String(abstractMethodDeclaration.binding.declaringClass.shortReadableName()), new String(abstractMethodDeclaration.selector), typesAsString(abstractMethodDeclaration.binding, true), new String(referenceBinding.shortReadableName())}, computeSeverity, aSTNode.sourceStart, aSTNode.sourceEnd);
        }
    }

    public void unusedExceptionParameter(LocalDeclaration localDeclaration) {
        int computeSeverity = computeSeverity(IProblem.ExceptionParameterIsNeverUsed);
        if (computeSeverity == 256) {
            return;
        }
        String[] strArr = {new String(localDeclaration.name)};
        handle(IProblem.ExceptionParameterIsNeverUsed, strArr, strArr, computeSeverity, localDeclaration.sourceStart, localDeclaration.sourceEnd);
    }

    public void unusedImport(ImportReference importReference) {
        int computeSeverity = computeSeverity(IProblem.UnusedImport);
        if (computeSeverity == 256) {
            return;
        }
        String[] strArr = {CharOperation.toString(importReference.tokens)};
        handle(IProblem.UnusedImport, strArr, strArr, computeSeverity, importReference.sourceStart, importReference.sourceEnd);
    }

    public void unusedLabel(LabeledStatement labeledStatement) {
        int computeSeverity = computeSeverity(IProblem.UnusedLabel);
        if (computeSeverity == 256) {
            return;
        }
        String[] strArr = {new String(labeledStatement.label)};
        handle(IProblem.UnusedLabel, strArr, strArr, computeSeverity, labeledStatement.sourceStart, labeledStatement.labelEnd);
    }

    public void unusedLocalVariable(LocalDeclaration localDeclaration) {
        int computeSeverity = computeSeverity(IProblem.LocalVariableIsNeverUsed);
        if (computeSeverity == 256) {
            return;
        }
        String[] strArr = {new String(localDeclaration.name)};
        handle(IProblem.LocalVariableIsNeverUsed, strArr, strArr, computeSeverity, localDeclaration.sourceStart, localDeclaration.sourceEnd);
    }

    public void unusedObjectAllocation(AllocationExpression allocationExpression) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.UnusedObjectAllocation, strArr, strArr, allocationExpression.sourceStart, allocationExpression.sourceEnd);
    }

    public void unusedPrivateConstructor(ConstructorDeclaration constructorDeclaration) {
        int computeSeverity = computeSeverity(IProblem.UnusedPrivateConstructor);
        if (computeSeverity == 256 || excludeDueToAnnotation(constructorDeclaration.annotations, IProblem.UnusedPrivateConstructor)) {
            return;
        }
        MethodBinding methodBinding = constructorDeclaration.binding;
        handle(IProblem.UnusedPrivateConstructor, new String[]{new String(methodBinding.declaringClass.readableName()), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding.declaringClass.shortReadableName()), typesAsString(methodBinding, true)}, computeSeverity, constructorDeclaration.sourceStart, constructorDeclaration.sourceEnd);
    }

    public void unusedPrivateField(FieldDeclaration fieldDeclaration) {
        ReferenceBinding referenceBinding;
        ReferenceBinding referenceBinding2;
        int computeSeverity = computeSeverity(IProblem.UnusedPrivateField);
        if (computeSeverity == 256) {
            return;
        }
        FieldBinding fieldBinding = fieldDeclaration.binding;
        if (CharOperation.equals(TypeConstants.SERIALVERSIONUID, fieldBinding.name) && fieldBinding.isStatic() && fieldBinding.isFinal() && TypeBinding.equalsEquals(TypeBinding.LONG, fieldBinding.type) && (referenceBinding2 = fieldBinding.declaringClass) != null && referenceBinding2.findSuperTypeOriginatingFrom(37, false) != null) {
            return;
        }
        if ((CharOperation.equals(TypeConstants.SERIALPERSISTENTFIELDS, fieldBinding.name) && fieldBinding.isStatic() && fieldBinding.isFinal() && fieldBinding.type.dimensions() == 1 && CharOperation.equals(TypeConstants.CharArray_JAVA_IO_OBJECTSTREAMFIELD, fieldBinding.type.leafComponentType().readableName()) && (referenceBinding = fieldBinding.declaringClass) != null && referenceBinding.findSuperTypeOriginatingFrom(37, false) != null) || excludeDueToAnnotation(fieldDeclaration.annotations, IProblem.UnusedPrivateField)) {
            return;
        }
        handle(IProblem.UnusedPrivateField, new String[]{new String(fieldBinding.declaringClass.readableName()), new String(fieldBinding.name)}, new String[]{new String(fieldBinding.declaringClass.shortReadableName()), new String(fieldBinding.name)}, computeSeverity, nodeSourceStart(fieldBinding, fieldDeclaration), nodeSourceEnd(fieldBinding, fieldDeclaration));
    }

    public void unusedPrivateMethod(AbstractMethodDeclaration abstractMethodDeclaration) {
        int computeSeverity = computeSeverity(IProblem.UnusedPrivateMethod);
        if (computeSeverity == 256) {
            return;
        }
        MethodBinding methodBinding = abstractMethodDeclaration.binding;
        if (!methodBinding.isStatic() && TypeBinding.VOID == methodBinding.returnType) {
            TypeBinding[] typeBindingArr = methodBinding.parameters;
            if (typeBindingArr.length == 1 && typeBindingArr[0].dimensions() == 0 && CharOperation.equals(methodBinding.selector, TypeConstants.READOBJECT) && CharOperation.equals(TypeConstants.CharArray_JAVA_IO_OBJECTINPUTSTREAM, methodBinding.parameters[0].readableName())) {
                return;
            }
        }
        if (!methodBinding.isStatic() && TypeBinding.VOID == methodBinding.returnType) {
            TypeBinding[] typeBindingArr2 = methodBinding.parameters;
            if (typeBindingArr2.length == 1 && typeBindingArr2[0].dimensions() == 0 && CharOperation.equals(methodBinding.selector, TypeConstants.WRITEOBJECT) && CharOperation.equals(TypeConstants.CharArray_JAVA_IO_OBJECTOUTPUTSTREAM, methodBinding.parameters[0].readableName())) {
                return;
            }
        }
        if (!methodBinding.isStatic() && 1 == methodBinding.returnType.f102482id && methodBinding.parameters.length == 0 && CharOperation.equals(methodBinding.selector, TypeConstants.READRESOLVE)) {
            return;
        }
        if ((!methodBinding.isStatic() && 1 == methodBinding.returnType.f102482id && methodBinding.parameters.length == 0 && CharOperation.equals(methodBinding.selector, TypeConstants.WRITEREPLACE)) || excludeDueToAnnotation(abstractMethodDeclaration.annotations, IProblem.UnusedPrivateMethod)) {
            return;
        }
        handle(IProblem.UnusedPrivateMethod, new String[]{new String(methodBinding.declaringClass.readableName()), new String(methodBinding.selector), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding.declaringClass.shortReadableName()), new String(methodBinding.selector), typesAsString(methodBinding, true)}, computeSeverity, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
    }

    public void unusedPrivateType(TypeDeclaration typeDeclaration) {
        int computeSeverity = computeSeverity(IProblem.UnusedPrivateType);
        if (computeSeverity == 256 || excludeDueToAnnotation(typeDeclaration.annotations, IProblem.UnusedPrivateType)) {
            return;
        }
        SourceTypeBinding sourceTypeBinding = typeDeclaration.binding;
        handle(IProblem.UnusedPrivateType, new String[]{new String(sourceTypeBinding.readableName())}, new String[]{new String(sourceTypeBinding.shortReadableName())}, computeSeverity, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void unusedTypeParameter(TypeParameter typeParameter) {
        if (computeSeverity(IProblem.UnusedTypeParameter) == 256) {
            return;
        }
        String[] strArr = {new String(typeParameter.name)};
        handle(IProblem.UnusedTypeParameter, strArr, strArr, typeParameter.sourceStart, typeParameter.sourceEnd);
    }

    public void unusedWarningToken(Expression expression) {
        String[] strArr = {expression.constant.stringValue()};
        handle(IProblem.UnusedWarningToken, strArr, strArr, expression.sourceStart, expression.sourceEnd);
    }

    public void useAssertAsAnIdentifier(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.UseAssertAsAnIdentifier, strArr, strArr, i10, i11);
    }

    public void useEnumAsAnIdentifier(int i10, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.UseEnumAsAnIdentifier, strArr, strArr, i10, i11);
    }

    public void varCannotBeMixedWithNonVarParams(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.VarCannotBeMixedWithNonVarParams, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void varIsNotAllowedHere(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.VarIsNotAllowedHere, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void varIsReservedTypeName(TypeDeclaration typeDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.VarIsReserved, strArr, strArr, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void varIsReservedTypeNameInFuture(ASTNode aSTNode) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.VarIsReservedInFuture, strArr, strArr, 0, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void varLocalCannotBeArray(AbstractVariableDeclaration abstractVariableDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.VarLocalCannotBeArray, strArr, strArr, abstractVariableDeclaration.sourceStart, abstractVariableDeclaration.sourceEnd);
    }

    public void varLocalCannotBeArrayInitalizers(AbstractVariableDeclaration abstractVariableDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.VarLocalCannotBeArrayInitalizers, strArr, strArr, abstractVariableDeclaration.sourceStart, abstractVariableDeclaration.sourceEnd);
    }

    public void varLocalCannotBeLambda(AbstractVariableDeclaration abstractVariableDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.VarLocalCannotBeLambda, strArr, strArr, abstractVariableDeclaration.sourceStart, abstractVariableDeclaration.sourceEnd);
    }

    public void varLocalCannotBeMethodReference(AbstractVariableDeclaration abstractVariableDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.VarLocalCannotBeMethodReference, strArr, strArr, abstractVariableDeclaration.sourceStart, abstractVariableDeclaration.sourceEnd);
    }

    public void varLocalInitializedToNull(AbstractVariableDeclaration abstractVariableDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.VarLocalInitializedToNull, strArr, strArr, abstractVariableDeclaration.sourceStart, abstractVariableDeclaration.sourceEnd);
    }

    public void varLocalInitializedToVoid(AbstractVariableDeclaration abstractVariableDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.VarLocalInitializedToVoid, strArr, strArr, abstractVariableDeclaration.sourceStart, abstractVariableDeclaration.sourceEnd);
    }

    public void varLocalMultipleDeclarators(AbstractVariableDeclaration abstractVariableDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.VarLocalMultipleDeclarators, strArr, strArr, abstractVariableDeclaration.sourceStart, abstractVariableDeclaration.sourceEnd);
    }

    public void varLocalReferencesItself(AbstractVariableDeclaration abstractVariableDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.VarLocalReferencesItself, strArr, strArr, abstractVariableDeclaration.sourceStart, abstractVariableDeclaration.sourceEnd);
    }

    public void varLocalWithoutInitizalier(AbstractVariableDeclaration abstractVariableDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.VarLocalWithoutInitizalier, strArr, strArr, abstractVariableDeclaration.sourceStart, abstractVariableDeclaration.sourceEnd);
    }

    public void varargsArgumentNeedCast(MethodBinding methodBinding, TypeBinding typeBinding, InvocationSite invocationSite) {
        int severity = this.options.getSeverity(536870976);
        if (severity == 256) {
            return;
        }
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        ArrayBinding arrayBinding = (ArrayBinding) typeBindingArr[typeBindingArr.length - 1];
        if (methodBinding.isConstructor()) {
            handle(IProblem.ConstructorVarargsArgumentNeedCast, new String[]{new String(typeBinding.readableName()), new String(arrayBinding.readableName()), new String(methodBinding.declaringClass.readableName()), typesAsString(methodBinding, false), new String(arrayBinding.elementsType().readableName())}, new String[]{new String(typeBinding.shortReadableName()), new String(arrayBinding.shortReadableName()), new String(methodBinding.declaringClass.shortReadableName()), typesAsString(methodBinding, true), new String(arrayBinding.elementsType().shortReadableName())}, severity, invocationSite.sourceStart(), invocationSite.sourceEnd());
        } else {
            handle(IProblem.MethodVarargsArgumentNeedCast, new String[]{new String(typeBinding.readableName()), new String(arrayBinding.readableName()), new String(methodBinding.selector), typesAsString(methodBinding, false), new String(methodBinding.declaringClass.readableName()), new String(arrayBinding.elementsType().readableName())}, new String[]{new String(typeBinding.shortReadableName()), new String(arrayBinding.shortReadableName()), new String(methodBinding.selector), typesAsString(methodBinding, true), new String(methodBinding.declaringClass.shortReadableName()), new String(arrayBinding.elementsType().shortReadableName())}, severity, invocationSite.sourceStart(), invocationSite.sourceEnd());
        }
    }

    public void varargsConflict(MethodBinding methodBinding, MethodBinding methodBinding2, SourceTypeBinding sourceTypeBinding) {
        handle(IProblem.VarargsConflict, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, false), new String(methodBinding.declaringClass.readableName()), typesAsString(methodBinding2, false), new String(methodBinding2.declaringClass.readableName())}, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, true), new String(methodBinding.declaringClass.shortReadableName()), typesAsString(methodBinding2, true), new String(methodBinding2.declaringClass.shortReadableName())}, TypeBinding.equalsEquals(methodBinding.declaringClass, sourceTypeBinding) ? methodBinding.sourceStart() : sourceTypeBinding.sourceStart(), TypeBinding.equalsEquals(methodBinding.declaringClass, sourceTypeBinding) ? methodBinding.sourceEnd() : sourceTypeBinding.sourceEnd());
    }

    public void variableTypeCannotBeVoid(AbstractVariableDeclaration abstractVariableDeclaration) {
        String[] strArr = {new String(abstractVariableDeclaration.name)};
        handle(IProblem.VariableTypeCannotBeVoid, strArr, strArr, abstractVariableDeclaration.sourceStart, abstractVariableDeclaration.sourceEnd);
    }

    public void variableTypeCannotBeVoidArray(AbstractVariableDeclaration abstractVariableDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        TypeReference typeReference = abstractVariableDeclaration.type;
        handle(IProblem.CannotAllocateVoidArray, strArr, strArr, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void visibilityConflict(MethodBinding methodBinding, MethodBinding methodBinding2) {
        handle(IProblem.MethodReducesVisibility, new String[]{new String(methodBinding2.declaringClass.readableName())}, new String[]{new String(methodBinding2.declaringClass.shortReadableName())}, methodBinding.sourceStart(), methodBinding.sourceEnd());
    }

    public void wildcardAssignment(TypeBinding typeBinding, TypeBinding typeBinding2, ASTNode aSTNode) {
        handle(IProblem.WildcardFieldAssignment, new String[]{new String(typeBinding2.readableName()), new String(typeBinding.readableName())}, new String[]{new String(typeBinding2.shortReadableName()), new String(typeBinding.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void wildcardInvocation(ASTNode aSTNode, TypeBinding typeBinding, MethodBinding methodBinding, TypeBinding[] typeBindingArr) {
        TypeBinding typeBinding2;
        TypeBinding typeBinding3;
        int length = methodBinding.parameters.length;
        int i10 = 0;
        while (true) {
            if (i10 < length) {
                typeBinding3 = methodBinding.parameters[i10];
                if (typeBinding3.isWildcard() && ((WildcardBinding) typeBinding3).boundKind != 2) {
                    typeBinding2 = typeBindingArr[i10];
                    break;
                }
                i10++;
            } else {
                typeBinding2 = null;
                typeBinding3 = null;
                break;
            }
        }
        if (methodBinding.isConstructor()) {
            handle(IProblem.WildcardConstructorInvocation, new String[]{new String(typeBinding.sourceName()), typesAsString(methodBinding, false), new String(typeBinding.readableName()), typesAsString(typeBindingArr, false), new String(typeBinding2.readableName()), new String(typeBinding3.readableName())}, new String[]{new String(typeBinding.sourceName()), typesAsString(methodBinding, true), new String(typeBinding.shortReadableName()), typesAsString(typeBindingArr, true), new String(typeBinding2.shortReadableName()), new String(typeBinding3.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
        } else {
            handle(IProblem.WildcardMethodInvocation, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, false), new String(typeBinding.readableName()), typesAsString(typeBindingArr, false), new String(typeBinding2.readableName()), new String(typeBinding3.readableName())}, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, true), new String(typeBinding.shortReadableName()), typesAsString(typeBindingArr, true), new String(typeBinding2.shortReadableName()), new String(typeBinding3.shortReadableName())}, aSTNode.sourceStart, aSTNode.sourceEnd);
        }
    }

    public void wrongSequenceOfExceptionTypes(TypeReference typeReference, TypeBinding typeBinding, TypeBinding typeBinding2) {
        handle(IProblem.InvalidUnionTypeReferenceSequence, new String[]{new String(typeBinding.readableName()), new String(typeBinding2.readableName())}, new String[]{new String(typeBinding.shortReadableName()), new String(typeBinding2.shortReadableName())}, typeReference.sourceStart, typeReference.sourceEnd);
    }

    public void wrongSequenceOfExceptionTypesError(TypeReference typeReference, TypeBinding typeBinding, TypeBinding typeBinding2) {
        handle(IProblem.InvalidCatchBlockSequence, new String[]{new String(typeBinding.readableName()), new String(typeBinding2.readableName())}, new String[]{new String(typeBinding.shortReadableName()), new String(typeBinding2.shortReadableName())}, typeReference.sourceStart, typeReference.sourceEnd);
    }

    private boolean isRecoveredName(char[][] cArr) {
        if (cArr == null) {
            return false;
        }
        for (char[] cArr2 : cArr) {
            if (cArr2 == RecoveryScanner.FAKE_IDENTIFIER) {
                return true;
            }
        }
        return false;
    }

    private String typesAsString(MethodBinding methodBinding, TypeBinding[] typeBindingArr, boolean z10) {
        return typesAsString(methodBinding, typeBindingArr, z10, false);
    }

    public void abortDueToInternalError(String str, ASTNode aSTNode) {
        String[] strArr = {str};
        handle(0, strArr, strArr, 159, aSTNode == null ? 0 : aSTNode.sourceStart, aSTNode != null ? aSTNode.sourceEnd : 0);
    }

    public void contradictoryNullAnnotations(Annotation[] annotationArr) {
        contradictoryNullAnnotations(annotationArr[0].sourceStart, annotationArr[annotationArr.length - 1].sourceEnd);
    }

    public void contradictoryNullAnnotationsInferred(MethodBinding methodBinding, int i10, int i11, boolean z10) {
        CompilerOptions compilerOptions = this.options;
        char[][] cArr = compilerOptions.nonNullAnnotationName;
        char[][] cArr2 = compilerOptions.nullableAnnotationName;
        handle(z10 ? IProblem.ContradictoryNullAnnotationsInferredFunctionType : IProblem.ContradictoryNullAnnotationsInferred, new String[]{new String(CharOperation.concatWith(cArr, '.')), new String(CharOperation.concatWith(cArr2, '.')), new String(methodBinding.returnType.nullAnnotatedReadableName(this.options, false)), new String(methodBinding.selector), typesAsString(methodBinding, false, true)}, new String[]{new String(cArr[cArr.length - 1]), new String(cArr2[cArr2.length - 1]), new String(methodBinding.returnType.nullAnnotatedReadableName(this.options, true)), new String(methodBinding.selector), typesAsString(methodBinding, true, true)}, i10, i11);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void deprecatedType(TypeBinding typeBinding, ASTNode aSTNode, int i10) {
        int i11;
        String deprecatedSinceValue;
        if (aSTNode == null) {
            return;
        }
        final TypeBinding leafComponentType = typeBinding.leafComponentType();
        if (aSTNode instanceof QualifiedTypeReference) {
            QualifiedTypeReference qualifiedTypeReference = (QualifiedTypeReference) aSTNode;
            if (i10 < Integer.MAX_VALUE) {
                i11 = (int) (qualifiedTypeReference.sourcePositions[i10] >> 32);
                deprecatedSinceValue = deprecatedSinceValue(new Supplier() {
                    @Override
                    public final Object get() {
                        AnnotationBinding[] annotations;
                        annotations = TypeBinding.this.getAnnotations();
                        return annotations;
                    }
                });
                if (deprecatedSinceValue == null) {
                    int i12 = (4611686018427387904L & leafComponentType.tagBits) == 0 ? IProblem.UsingDeprecatedSinceVersionType : IProblem.UsingTerminallyDeprecatedSinceVersionType;
                    String[] strArr = {new String(leafComponentType.readableName()), deprecatedSinceValue};
                    String[] strArr2 = {new String(leafComponentType.shortReadableName()), deprecatedSinceValue};
                    if (i11 == -1) {
                        i11 = aSTNode.sourceStart;
                    }
                    handle(i12, strArr, strArr2, i11, nodeSourceEnd(null, aSTNode, i10));
                    return;
                }
                int i13 = (4611686018427387904L & leafComponentType.tagBits) == 0 ? IProblem.UsingDeprecatedType : IProblem.UsingTerminallyDeprecatedType;
                String[] strArr3 = {new String(leafComponentType.readableName())};
                String[] strArr4 = {new String(leafComponentType.shortReadableName())};
                if (i11 == -1) {
                    i11 = aSTNode.sourceStart;
                }
                handle(i13, strArr3, strArr4, i11, nodeSourceEnd(null, aSTNode, i10));
                return;
            }
        }
        i11 = -1;
        deprecatedSinceValue = deprecatedSinceValue(new Supplier() {
            @Override
            public final Object get() {
                AnnotationBinding[] annotations;
                annotations = TypeBinding.this.getAnnotations();
                return annotations;
            }
        });
        if (deprecatedSinceValue == null) {
        }
    }

    public void diamondNotBelow17(ASTNode aSTNode, int i10) {
        if (aSTNode == null) {
            String[] strArr = ProblemHandler.NoArgument;
            handle(IProblem.DiamondNotBelow17, strArr, strArr, 131, 0, 0);
        } else {
            String[] strArr2 = ProblemHandler.NoArgument;
            handle(IProblem.DiamondNotBelow17, strArr2, strArr2, aSTNode.sourceStart, nodeSourceEnd(null, aSTNode, i10));
        }
    }

    public void incorrectArityForParameterizedType(ASTNode aSTNode, TypeBinding typeBinding, TypeBinding[] typeBindingArr, int i10) {
        if (aSTNode == null) {
            handle(IProblem.IncorrectArityForParameterizedType, new String[]{new String(typeBinding.readableName()), typesAsString(typeBindingArr, false)}, new String[]{new String(typeBinding.shortReadableName()), typesAsString(typeBindingArr, true)}, 131, 0, 0);
        } else {
            handle(IProblem.IncorrectArityForParameterizedType, new String[]{new String(typeBinding.readableName()), typesAsString(typeBindingArr, false)}, new String[]{new String(typeBinding.shortReadableName()), typesAsString(typeBindingArr, true)}, aSTNode.sourceStart, nodeSourceEnd(null, aSTNode, i10));
        }
    }

    public void invalidPackageReference(int i10, PackageVisibilityStatement packageVisibilityStatement, int i11) {
        String[] strArr = ProblemHandler.NoArgument;
        String[] strArr2 = {CharOperation.charToString(packageVisibilityStatement.pkgName)};
        ImportReference importReference = packageVisibilityStatement.pkgRef;
        int i12 = importReference.sourceStart;
        int i13 = importReference.sourceEnd;
        ReferenceContext referenceContext = this.referenceContext;
        handle(i10, strArr, 0, strArr2, i11, i12, i13, referenceContext, referenceContext == null ? null : referenceContext.compilationResult());
    }

    public void javadocDeprecatedType(TypeBinding typeBinding, ASTNode aSTNode, int i10, int i11) {
        int computeSeverity;
        if (aSTNode == null || (computeSeverity = computeSeverity(IProblem.JavadocUsingDeprecatedType)) == 256 || !javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, i10)) {
            return;
        }
        if (typeBinding.isMemberType() && (typeBinding instanceof ReferenceBinding) && !javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, ((ReferenceBinding) typeBinding).modifiers)) {
            String[] strArr = ProblemHandler.NoArgument;
            handle(IProblem.JavadocHiddenReference, strArr, strArr, aSTNode.sourceStart, aSTNode.sourceEnd);
        } else {
            handle(IProblem.JavadocUsingDeprecatedType, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, computeSeverity, aSTNode.sourceStart, nodeSourceEnd(null, aSTNode, i11));
        }
    }

    public void missingEnumConstantCase(SwitchExpression switchExpression, FieldBinding fieldBinding) {
        missingSwitchExpressionEnumConstantCase(switchExpression.defaultCase, fieldBinding, switchExpression.expression);
    }

    public void nonStaticAccessToStaticField(ASTNode aSTNode, FieldBinding fieldBinding, int i10) {
        int computeSeverity = computeSeverity(IProblem.NonStaticAccessToStaticField);
        if (computeSeverity == 256) {
            return;
        }
        handle(IProblem.NonStaticAccessToStaticField, new String[]{new String(fieldBinding.declaringClass.readableName()), new String(fieldBinding.name)}, new String[]{new String(fieldBinding.declaringClass.shortReadableName()), new String(fieldBinding.name)}, computeSeverity, nodeSourceStart(fieldBinding, aSTNode, i10), nodeSourceEnd(fieldBinding, aSTNode, i10));
    }

    private void missingEnumConstantCase(CaseStatement caseStatement, FieldBinding fieldBinding, ASTNode aSTNode) {
        handle(caseStatement == null ? IProblem.MissingEnumConstantCase : IProblem.MissingEnumConstantCaseDespiteDefault, new String[]{new String(fieldBinding.declaringClass.readableName()), new String(fieldBinding.name)}, new String[]{new String(fieldBinding.declaringClass.shortReadableName()), new String(fieldBinding.name)}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    private String typesAsString(MethodBinding methodBinding, boolean z10, boolean z11) {
        return typesAsString(methodBinding, methodBinding.parameters, z10, z11);
    }

    public void contradictoryNullAnnotations(int i10, int i11) {
        CompilerOptions compilerOptions = this.options;
        char[][] cArr = compilerOptions.nonNullAnnotationName;
        char[][] cArr2 = compilerOptions.nullableAnnotationName;
        handle(IProblem.ContradictoryNullAnnotations, new String[]{new String(CharOperation.concatWith(cArr, '.')), new String(CharOperation.concatWith(cArr2, '.'))}, new String[]{new String(cArr[cArr.length - 1]), new String(cArr2[cArr2.length - 1])}, i10, i11);
    }

    public void javadocMissing(int i10, int i11, int i12, int i13) {
        String javadocVisibilityArgument;
        if (i12 == 256) {
            return;
        }
        boolean z10 = (805306368 & i13) != 0;
        if (this.options.getSeverity(1048576) != 256) {
            if ((!z10 || this.options.reportMissingJavadocCommentsOverriding) && (javadocVisibilityArgument = javadocVisibilityArgument(this.options.reportMissingJavadocCommentsVisibility, i13)) != null) {
                String[] strArr = {javadocVisibilityArgument};
                handle(IProblem.JavadocMissing, strArr, strArr, i12, i10, i11);
            }
        }
    }

    private String typesAsString(MethodBinding methodBinding, TypeBinding[] typeBindingArr, boolean z10, boolean z11) {
        if (methodBinding.isPolymorphic()) {
            TypeBinding[] typeBindingArr2 = methodBinding.original().parameters;
            StringBuffer stringBuffer = new StringBuffer(10);
            int length = typeBindingArr2.length;
            int i10 = 0;
            while (i10 < length) {
                if (i10 != 0) {
                    stringBuffer.append(", ");
                }
                TypeBinding typeBinding = typeBindingArr2[i10];
                boolean z12 = i10 == length + (-1);
                if (z12) {
                    typeBinding = ((ArrayBinding) typeBinding).elementsType();
                }
                if (z11) {
                    stringBuffer.append(new String(typeBinding.nullAnnotatedReadableName(this.options, z10)));
                } else {
                    stringBuffer.append(new String(z10 ? typeBinding.shortReadableName() : typeBinding.readableName()));
                }
                if (z12) {
                    stringBuffer.append("...");
                }
                i10++;
            }
            return stringBuffer.toString();
        }
        StringBuffer stringBuffer2 = new StringBuffer(10);
        int length2 = typeBindingArr.length;
        int i11 = 0;
        while (i11 < length2) {
            if (i11 != 0) {
                stringBuffer2.append(", ");
            }
            TypeBinding typeBinding2 = typeBindingArr[i11];
            boolean z13 = methodBinding.isVarargs() && i11 == length2 + (-1);
            if (z13) {
                typeBinding2 = ((ArrayBinding) typeBinding2).elementsType();
            }
            if (z11) {
                stringBuffer2.append(new String(typeBinding2.nullAnnotatedReadableName(this.options, z10)));
            } else {
                stringBuffer2.append(new String(z10 ? typeBinding2.shortReadableName() : typeBinding2.readableName()));
            }
            if (z13) {
                stringBuffer2.append("...");
            }
            i11++;
        }
        return stringBuffer2.toString();
    }

    public void duplicateTypeReference(int i10, TypeReference typeReference, TypeReference typeReference2) {
        handle(i10, ProblemHandler.NoArgument, new String[]{typeReference.toString(), typeReference2.toString()}, typeReference.sourceStart, typeReference2.sourceEnd);
    }

    private void handle(int i10, String[] strArr, String[] strArr2, int i11, int i12) {
        ReferenceContext referenceContext = this.referenceContext;
        handle(i10, strArr, strArr2, i11, i12, referenceContext, referenceContext == null ? null : referenceContext.compilationResult());
        this.referenceContext = null;
    }

    private int nodeSourceEnd(Binding binding, ASTNode aSTNode) {
        return nodeSourceEnd(binding, aSTNode, 0);
    }

    private int nodeSourceStart(Binding binding, ASTNode aSTNode) {
        return nodeSourceStart(binding, aSTNode, 0);
    }

    public void illegalAbstractModifierCombinationForMethod(AbstractMethodDeclaration abstractMethodDeclaration) {
        String[] strArr = {new String(abstractMethodDeclaration.selector)};
        handle(IProblem.IllegalStrictfpForAbstractInterfaceMethod, strArr, strArr, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
    }

    public void illegalExtendedDimensions(Argument argument) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.IllegalExtendedDimensionsForVarArgs, strArr, strArr, argument.sourceStart, argument.sourceEnd);
    }

    private int nodeSourceEnd(Binding binding, ASTNode aSTNode, int i10) {
        int i11;
        if (aSTNode instanceof ArrayTypeReference) {
            return ((ArrayTypeReference) aSTNode).originalSourceEnd;
        }
        if (aSTNode instanceof QualifiedNameReference) {
            QualifiedNameReference qualifiedNameReference = (QualifiedNameReference) aSTNode;
            int i12 = 0;
            if (qualifiedNameReference.binding == binding) {
                if (i10 == 0) {
                    return (int) qualifiedNameReference.sourcePositions[qualifiedNameReference.indexOfFirstFieldBinding - 1];
                }
                long[] jArr = qualifiedNameReference.sourcePositions;
                if (i10 < jArr.length) {
                    return (int) jArr[i10];
                }
                return (int) jArr[0];
            }
            FieldBinding[] fieldBindingArr = qualifiedNameReference.otherBindings;
            if (fieldBindingArr != null) {
                int i13 = qualifiedNameReference.indexOfFirstFieldBinding;
                if (i10 != 0) {
                    int length = fieldBindingArr.length;
                    while (i12 < length) {
                        if (fieldBindingArr[i12] == binding && (i11 = i12 + i13) == i10) {
                            return (int) qualifiedNameReference.sourcePositions[i11];
                        }
                        i12++;
                    }
                } else {
                    int length2 = fieldBindingArr.length;
                    while (i12 < length2) {
                        if (fieldBindingArr[i12] == binding) {
                            return (int) qualifiedNameReference.sourcePositions[i12 + i13];
                        }
                        i12++;
                    }
                }
            }
        } else if (aSTNode instanceof ParameterizedQualifiedTypeReference) {
            long[] jArr2 = ((ParameterizedQualifiedTypeReference) aSTNode).sourcePositions;
            if (i10 < jArr2.length) {
                return (int) jArr2[i10];
            }
        } else {
            if (aSTNode instanceof ArrayQualifiedTypeReference) {
                long[] jArr3 = ((ArrayQualifiedTypeReference) aSTNode).sourcePositions;
                int length3 = jArr3.length;
                if (i10 < length3) {
                    return (int) jArr3[i10];
                }
                return (int) jArr3[length3 - 1];
            }
            if (aSTNode instanceof QualifiedTypeReference) {
                long[] jArr4 = ((QualifiedTypeReference) aSTNode).sourcePositions;
                if (i10 < jArr4.length) {
                    return (int) jArr4[i10];
                }
            }
        }
        return aSTNode.sourceEnd;
    }

    private int nodeSourceStart(Binding binding, ASTNode aSTNode, int i10) {
        long j10;
        long j11;
        int i11;
        if (aSTNode instanceof FieldReference) {
            j10 = ((FieldReference) aSTNode).nameSourcePosition >> 32;
        } else {
            int i12 = 0;
            if (aSTNode instanceof QualifiedNameReference) {
                QualifiedNameReference qualifiedNameReference = (QualifiedNameReference) aSTNode;
                if (qualifiedNameReference.binding != binding) {
                    FieldBinding[] fieldBindingArr = qualifiedNameReference.otherBindings;
                    if (fieldBindingArr != null) {
                        int i13 = qualifiedNameReference.indexOfFirstFieldBinding;
                        if (i10 != 0) {
                            int length = fieldBindingArr.length;
                            while (i12 < length) {
                                if (fieldBindingArr[i12] == binding && (i11 = i12 + i13) == i10) {
                                    j11 = qualifiedNameReference.sourcePositions[i11];
                                } else {
                                    i12++;
                                }
                            }
                        } else {
                            int length2 = fieldBindingArr.length;
                            while (i12 < length2) {
                                if (fieldBindingArr[i12] == binding) {
                                    j11 = qualifiedNameReference.sourcePositions[i12 + i13];
                                } else {
                                    i12++;
                                }
                            }
                        }
                    }
                    return aSTNode.sourceStart;
                }
                if (i10 == 0) {
                    j11 = qualifiedNameReference.sourcePositions[qualifiedNameReference.indexOfFirstFieldBinding - 1];
                } else {
                    j11 = qualifiedNameReference.sourcePositions[i10];
                }
                j10 = j11 >> 32;
            } else {
                if (aSTNode instanceof ParameterizedQualifiedTypeReference) {
                    j10 = ((ParameterizedQualifiedTypeReference) aSTNode).sourcePositions[0] >>> 32;
                }
                return aSTNode.sourceStart;
            }
        }
        return (int) j10;
    }

    public void bytecodeExceeds64KLimit(MethodBinding methodBinding, int i10, int i11) {
        handle(IProblem.BytecodeExceeds64KLimit, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, false)}, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, true)}, 159, i10, i11);
    }

    public void nullAnnotationUnsupportedLocation(TypeReference typeReference) {
        int i10 = typeReference.sourceEnd;
        if (typeReference instanceof ParameterizedSingleTypeReference) {
            ParameterizedSingleTypeReference parameterizedSingleTypeReference = (ParameterizedSingleTypeReference) typeReference;
            int i11 = parameterizedSingleTypeReference.typeArguments[r2.length - 1].sourceEnd;
            int i12 = parameterizedSingleTypeReference.sourceEnd;
            if (i11 > i12) {
                i10 = retrieveClosingAngleBracketPosition(i12);
            }
        } else if (typeReference instanceof ParameterizedQualifiedTypeReference) {
            i10 = retrieveClosingAngleBracketPosition(((ParameterizedQualifiedTypeReference) typeReference).sourceEnd);
        }
        int i13 = i10;
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.NullAnnotationUnsupportedLocationAtType, strArr, strArr, typeReference.sourceStart, i13);
    }

    public void typeHiding(TypeDeclaration typeDeclaration, TypeVariableBinding typeVariableBinding) {
        int computeSeverity = computeSeverity(IProblem.TypeHidingTypeParameterFromType);
        if (computeSeverity == 256) {
            return;
        }
        Binding binding = typeVariableBinding.declaringElement;
        if (binding instanceof TypeBinding) {
            TypeBinding typeBinding = (TypeBinding) binding;
            handle(IProblem.TypeHidingTypeParameterFromType, new String[]{new String(typeDeclaration.name), new String(typeVariableBinding.readableName()), new String(typeBinding.readableName())}, new String[]{new String(typeDeclaration.name), new String(typeVariableBinding.shortReadableName()), new String(typeBinding.shortReadableName())}, computeSeverity, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
        } else {
            MethodBinding methodBinding = (MethodBinding) binding;
            handle(IProblem.TypeHidingTypeParameterFromMethod, new String[]{new String(typeDeclaration.name), new String(typeVariableBinding.readableName()), new String(methodBinding.selector), typesAsString(methodBinding, false), new String(methodBinding.declaringClass.readableName())}, new String[]{new String(typeDeclaration.name), new String(typeVariableBinding.shortReadableName()), new String(methodBinding.selector), typesAsString(methodBinding, true), new String(methodBinding.declaringClass.shortReadableName())}, computeSeverity, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
        }
    }

    public void assignmentHasNoEffect(Assignment assignment, char[] cArr) {
        int computeSeverity = computeSeverity(IProblem.AssignmentHasNoEffect);
        if (computeSeverity == 256) {
            return;
        }
        String[] strArr = {new String(cArr)};
        handle(IProblem.AssignmentHasNoEffect, strArr, strArr, computeSeverity, assignment.sourceStart, assignment.sourceEnd);
    }

    private void handle(int i10, String[] strArr, String[] strArr2, int i11, int i12, CompilationResult compilationResult) {
        handle(i10, strArr, strArr2, i11, i12, this.referenceContext, compilationResult);
        this.referenceContext = null;
    }

    public void conflictingPackagesFromModules(PackageBinding packageBinding, Set<ModuleBinding> set, int i10, int i11) {
        String[] strArr = {CharOperation.toString(packageBinding.compoundName), (String) set.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$7;
                lambda$7 = ProblemReporter.lambda$7((ModuleBinding) obj);
                return lambda$7;
            }
        }).sorted().collect(Collectors.joining(", "))};
        handle(IProblem.ConflictingPackageFromModules, strArr, strArr, i10, i11);
    }

    public void forbiddenReference(MethodBinding methodBinding, InvocationSite invocationSite, byte b10, String str, int i10) {
        int computeSeverity = computeSeverity(i10);
        if (computeSeverity == 256) {
            return;
        }
        if (methodBinding.isConstructor()) {
            handle(i10, new String[]{new String(methodBinding.readableName())}, getElaborationId(IProblem.ForbiddenReference, (byte) (b10 | 8)), new String[]{str, new String(methodBinding.shortReadableName())}, computeSeverity, invocationSite.nameSourceStart(), invocationSite.nameSourceEnd());
        } else {
            handle(i10, new String[]{new String(methodBinding.readableName())}, getElaborationId(IProblem.ForbiddenReference, (byte) (b10 | 12)), new String[]{str, new String(methodBinding.shortReadableName()), new String(methodBinding.declaringClass.shortReadableName())}, computeSeverity, invocationSite.nameSourceStart(), invocationSite.nameSourceEnd());
        }
    }

    public void illegalAnnotationForBaseType(Annotation annotation, TypeBinding typeBinding) {
        String[] strArr = {new String(annotation.resolvedType.shortReadableName()), new String(typeBinding.readableName())};
        handle(IProblem.IllegalAnnotationForBaseType, strArr, strArr, annotation.sourceStart, annotation.sourceEnd);
    }

    public void nullAnnotationIsRedundant(FieldDeclaration fieldDeclaration) {
        ASTNode findAnnotation = findAnnotation(fieldDeclaration.annotations, 32);
        if (findAnnotation == null) {
            findAnnotation = fieldDeclaration.type;
        }
        int i10 = findAnnotation.sourceStart;
        int i11 = fieldDeclaration.type.sourceEnd;
        String[] strArr = ProblemHandler.NoArgument;
        handle(IProblem.RedundantNullAnnotation, strArr, strArr, i10, i11);
    }

    public void bytecodeExceeds64KLimit(AbstractMethodDeclaration abstractMethodDeclaration) {
        MethodBinding methodBinding = abstractMethodDeclaration.binding;
        if (abstractMethodDeclaration.isConstructor()) {
            handle(IProblem.BytecodeExceeds64KLimitForConstructor, new String[]{new String(abstractMethodDeclaration.selector), typesAsString(methodBinding, false)}, new String[]{new String(abstractMethodDeclaration.selector), typesAsString(methodBinding, true)}, 159, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
        } else {
            bytecodeExceeds64KLimit(methodBinding, abstractMethodDeclaration.sourceStart, abstractMethodDeclaration.sourceEnd);
        }
    }

    public void dereferencingNullableExpression(long j10, LookupEnvironment lookupEnvironment) {
        String[] strArr = {String.valueOf(lookupEnvironment.getNullableAnnotationName()[r9.length - 1])};
        handle(IProblem.DereferencingNullableExpression, strArr, strArr, (int) (j10 >>> 32), (int) (j10 & Sg.b.f23266s));
    }

    public void notCompatibleTypesError(InstanceOfExpression instanceOfExpression, TypeBinding typeBinding, TypeBinding typeBinding2) {
        String str = new String(typeBinding.readableName());
        String str2 = new String(typeBinding2.readableName());
        String str3 = new String(typeBinding.shortReadableName());
        String str4 = new String(typeBinding2.shortReadableName());
        if (str3.equals(str4)) {
            str3 = str;
            str4 = str2;
        }
        handle(16777232, new String[]{str, str2}, new String[]{str3, str4}, instanceOfExpression.sourceStart, instanceOfExpression.sourceEnd);
    }

    private void handle(int i10, String[] strArr, String[] strArr2, int i11, int i12, int i13) {
        handle(i10, strArr, 0, strArr2, i11, i12, i13);
    }

    public void hierarchyCircularity(TypeVariableBinding typeVariableBinding, ReferenceBinding referenceBinding, TypeReference typeReference) {
        int i10 = typeReference.sourceStart;
        int i11 = typeReference.sourceEnd;
        if (TypeBinding.equalsEquals(typeVariableBinding, referenceBinding)) {
            handle(IProblem.HierarchyCircularitySelfReference, new String[]{new String(typeVariableBinding.readableName())}, new String[]{new String(typeVariableBinding.shortReadableName())}, i10, i11);
        } else {
            handle(IProblem.HierarchyCircularity, new String[]{new String(typeVariableBinding.readableName()), new String(referenceBinding.readableName())}, new String[]{new String(typeVariableBinding.shortReadableName()), new String(referenceBinding.shortReadableName())}, i10, i11);
        }
    }

    public void unhandledException(TypeBinding typeBinding, ReferenceExpression referenceExpression) {
        handle(IProblem.UnhandledException, new String[]{new String(typeBinding.readableName())}, new String[]{new String(typeBinding.shortReadableName())}, referenceExpression.sourceStart, referenceExpression.sourceEnd);
    }

    public void invalidOperator(CompoundAssignment compoundAssignment, TypeBinding typeBinding, TypeBinding typeBinding2) {
        String str = new String(typeBinding.readableName());
        String str2 = new String(typeBinding2.readableName());
        String str3 = new String(typeBinding.shortReadableName());
        String str4 = new String(typeBinding2.shortReadableName());
        if (str3.equals(str4)) {
            str3 = str;
            str4 = str2;
        }
        handle(IProblem.InvalidOperator, new String[]{compoundAssignment.operatorToString(), str + ", " + str2}, new String[]{compoundAssignment.operatorToString(), str3 + ", " + str4}, compoundAssignment.sourceStart, compoundAssignment.sourceEnd);
    }

    public void errorNoMethodFor(Expression expression, TypeBinding typeBinding, char[] cArr, TypeBinding[] typeBindingArr) {
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        int length = typeBindingArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                stringBuffer.append(", ");
                stringBuffer2.append(", ");
            }
            stringBuffer.append(new String(typeBindingArr[i10].readableName()));
            stringBuffer2.append(new String(typeBindingArr[i10].shortReadableName()));
        }
        handle(typeBinding.isArrayType() ? IProblem.NoMessageSendOnArrayType : IProblem.NoMessageSendOnBaseType, new String[]{new String(typeBinding.readableName()), new String(cArr), stringBuffer.toString()}, new String[]{new String(typeBinding.shortReadableName()), new String(cArr), stringBuffer2.toString()}, expression.sourceStart, expression.sourceEnd);
    }

    public void inheritedMethodReducesVisibility(SourceTypeBinding sourceTypeBinding, MethodBinding methodBinding, MethodBinding[] methodBindingArr) {
        inheritedMethodReducesVisibility(sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd(), methodBinding, methodBindingArr);
    }

    public void inheritedMethodReducesVisibility(TypeParameter typeParameter, MethodBinding methodBinding, MethodBinding[] methodBindingArr) {
        inheritedMethodReducesVisibility(typeParameter.sourceStart(), typeParameter.sourceEnd(), methodBinding, methodBindingArr);
    }

    public void inheritedMethodsHaveIncompatibleReturnTypes(SourceTypeBinding sourceTypeBinding, MethodBinding[] methodBindingArr, int i10, boolean[] zArr) {
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        while (true) {
            i10--;
            if (i10 < 0) {
                handle(IProblem.InheritedIncompatibleReturnType, new String[]{stringBuffer.toString()}, new String[]{stringBuffer2.toString()}, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
                return;
            }
            if (!zArr[i10]) {
                stringBuffer.append(methodBindingArr[i10].declaringClass.readableName());
                stringBuffer.append('.');
                stringBuffer.append(methodBindingArr[i10].readableName());
                stringBuffer2.append(methodBindingArr[i10].declaringClass.shortReadableName());
                stringBuffer2.append('.');
                stringBuffer2.append(methodBindingArr[i10].shortReadableName());
                if (i10 != 0) {
                    stringBuffer.append(", ");
                    stringBuffer2.append(", ");
                }
            }
        }
    }

    public void bytecodeExceeds64KLimit(LambdaExpression lambdaExpression) {
        bytecodeExceeds64KLimit(lambdaExpression.binding, lambdaExpression.sourceStart, lambdaExpression.diagnosticsSourceEnd());
    }

    public void bytecodeExceeds64KLimit(TypeDeclaration typeDeclaration) {
        String[] strArr = ProblemHandler.NoArgument;
        handle(536870976, strArr, strArr, 159, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void abstractMethodMustBeImplemented(SourceTypeBinding sourceTypeBinding, MethodBinding methodBinding, MethodBinding methodBinding2) {
        handle(IProblem.AbstractMethodMustBeImplementedOverConcreteMethod, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, false), new String(methodBinding.declaringClass.readableName()), new String(sourceTypeBinding.readableName()), new String(methodBinding2.selector), typesAsString(methodBinding2, false), new String(methodBinding2.declaringClass.readableName())}, new String[]{new String(methodBinding.selector), typesAsString(methodBinding, true), new String(methodBinding.declaringClass.shortReadableName()), new String(sourceTypeBinding.shortReadableName()), new String(methodBinding2.selector), typesAsString(methodBinding2, true), new String(methodBinding2.declaringClass.shortReadableName())}, sourceTypeBinding.sourceStart(), sourceTypeBinding.sourceEnd());
    }

    public void forbiddenReference(TypeBinding typeBinding, ASTNode aSTNode, byte b10, String str, int i10) {
        int computeSeverity;
        if (aSTNode == null || (computeSeverity = computeSeverity(i10)) == 256) {
            return;
        }
        handle(i10, new String[]{new String(typeBinding.readableName())}, getElaborationId(IProblem.ForbiddenReference, b10), new String[]{str, new String(typeBinding.shortReadableName())}, computeSeverity, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    private String typesAsString(TypeBinding[] typeBindingArr, boolean z10) {
        return typesAsString(typeBindingArr, z10, false);
    }

    public void invalidOperator(UnaryExpression unaryExpression, TypeBinding typeBinding) {
        handle(IProblem.InvalidOperator, new String[]{unaryExpression.operatorToString(), new String(typeBinding.readableName())}, new String[]{unaryExpression.operatorToString(), new String(typeBinding.shortReadableName())}, unaryExpression.sourceStart, unaryExpression.sourceEnd);
    }

    private String typesAsString(TypeBinding[] typeBindingArr, boolean z10, boolean z11) {
        StringBuffer stringBuffer = new StringBuffer(10);
        int length = typeBindingArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                stringBuffer.append(", ");
            }
            TypeBinding typeBinding = typeBindingArr[i10];
            if (z11) {
                stringBuffer.append(new String(typeBinding.nullAnnotatedReadableName(this.options, z10)));
            } else {
                stringBuffer.append(new String(z10 ? typeBinding.shortReadableName() : typeBinding.readableName()));
            }
        }
        return stringBuffer.toString();
    }

    public void invalidField(NameReference nameReference, FieldBinding fieldBinding) {
        if (nameReference instanceof QualifiedNameReference) {
            if (isRecoveredName(((QualifiedNameReference) nameReference).tokens)) {
                return;
            }
        } else if (isRecoveredName(((SingleNameReference) nameReference).token)) {
            return;
        }
        int problemId = fieldBinding.problemId();
        int i10 = IProblem.UndefinedField;
        if (problemId != 1) {
            if (problemId != 2) {
                if (problemId == 3) {
                    i10 = IProblem.AmbiguousField;
                } else if (problemId == 5) {
                    i10 = IProblem.InheritedFieldHidesEnclosingName;
                } else if (problemId == 6) {
                    i10 = IProblem.InstanceFieldDuringConstructorInvocation;
                } else if (problemId == 7) {
                    i10 = IProblem.NonStaticFieldFromStaticInvocation;
                } else if (problemId == 8) {
                    handle(IProblem.NotVisibleType, new String[]{new String(fieldBinding.declaringClass.readableName())}, new String[]{new String(fieldBinding.declaringClass.shortReadableName())}, nameReference.sourceStart, nameReference.sourceEnd);
                    return;
                } else if (problemId != 30) {
                    needImplementation(nameReference);
                }
                int i11 = i10;
                String[] strArr = {new String(fieldBinding.readableName())};
                handle(i11, strArr, strArr, nameReference.sourceStart, nameReference.sourceEnd);
                return;
            }
            char[] lastSegment = CharOperation.lastSegment(fieldBinding.readableName(), '.');
            handle(fieldBinding.problemId() == 2 ? IProblem.NotVisibleField : IProblem.NotAccessibleField, new String[]{new String(lastSegment), new String(fieldBinding.declaringClass.readableName())}, new String[]{new String(lastSegment), new String(fieldBinding.declaringClass.shortReadableName())}, nodeSourceStart(fieldBinding, nameReference), nodeSourceEnd(fieldBinding, nameReference));
            return;
        }
        ReferenceBinding referenceBinding = fieldBinding.declaringClass;
        if (referenceBinding != null && (referenceBinding.tagBits & 128) != 0) {
            handle(IProblem.UndefinedType, new String[]{new String(referenceBinding.readableName())}, new String[]{new String(fieldBinding.declaringClass.shortReadableName())}, nameReference.sourceStart, nameReference.sourceEnd);
        } else {
            String[] strArr2 = {new String(fieldBinding.readableName())};
            handle(IProblem.UndefinedField, strArr2, strArr2, nodeSourceStart(fieldBinding, nameReference), nodeSourceEnd(fieldBinding, nameReference));
        }
    }

    public void typeHiding(TypeParameter typeParameter, Binding binding) {
        int computeSeverity = computeSeverity(IProblem.TypeParameterHidingType);
        if (computeSeverity == 256) {
            return;
        }
        TypeBinding typeBinding = (TypeBinding) binding;
        handle(IProblem.TypeParameterHidingType, new String[]{new String(typeParameter.name), new String(typeBinding.readableName())}, new String[]{new String(typeParameter.name), new String(typeBinding.shortReadableName())}, computeSeverity, typeParameter.sourceStart, typeParameter.sourceEnd);
    }

    public void illegalReturnRedefinition(ASTNode aSTNode, MethodBinding methodBinding, boolean z10, TypeBinding typeBinding) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(methodBinding.declaringClass.readableName());
        stringBuffer.append('.');
        stringBuffer.append(methodBinding.readableName());
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(methodBinding.declaringClass.shortReadableName());
        stringBuffer2.append('.');
        stringBuffer2.append(methodBinding.shortReadableName());
        handle(z10 ? IProblem.ReferenceExpressionReturnNullRedefUnchecked : IProblem.ReferenceExpressionReturnNullRedef, new String[]{stringBuffer.toString(), String.valueOf(methodBinding.returnType.nullAnnotatedReadableName(this.options, false)), String.valueOf(typeBinding.nullAnnotatedReadableName(this.options, false))}, new String[]{stringBuffer2.toString(), String.valueOf(methodBinding.returnType.nullAnnotatedReadableName(this.options, true)), String.valueOf(typeBinding.nullAnnotatedReadableName(this.options, true))}, aSTNode.sourceStart, aSTNode.sourceEnd);
    }

    public void incompatibleReturnType(ReferenceExpression referenceExpression, MethodBinding methodBinding, TypeBinding typeBinding) {
        if (methodBinding.isConstructor()) {
            handle(IProblem.ConstructionTypeMismatch, new String[]{new String(methodBinding.declaringClass.readableName()), new String(typeBinding.readableName())}, new String[]{new String(methodBinding.declaringClass.shortReadableName()), new String(typeBinding.shortReadableName())}, referenceExpression.sourceStart, referenceExpression.sourceEnd);
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        int length = typeBindingArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                stringBuffer.append(", ");
                stringBuffer2.append(", ");
            }
            stringBuffer.append(new String(typeBindingArr[i10].readableName()));
            stringBuffer2.append(new String(typeBindingArr[i10].shortReadableName()));
        }
        String str = new String(methodBinding.selector);
        handle(IProblem.IncompatibleMethodReference, new String[]{str, stringBuffer.toString(), new String(methodBinding.declaringClass.readableName()), new String(methodBinding.returnType.readableName()), new String(typeBinding.readableName())}, new String[]{str, stringBuffer2.toString(), new String(methodBinding.declaringClass.shortReadableName()), new String(methodBinding.returnType.shortReadableName()), new String(typeBinding.shortReadableName())}, referenceExpression.sourceStart, referenceExpression.sourceEnd);
    }

    public void typeMismatchError(TypeBinding typeBinding, TypeVariableBinding typeVariableBinding, ReferenceBinding referenceBinding, ASTNode aSTNode) {
        if (aSTNode == null) {
            handle(IProblem.TypeArgumentMismatch, new String[]{new String(typeBinding.readableName()), new String(referenceBinding.readableName()), new String(typeVariableBinding.sourceName()), parameterBoundAsString(typeVariableBinding, false)}, new String[]{new String(typeBinding.shortReadableName()), new String(referenceBinding.shortReadableName()), new String(typeVariableBinding.sourceName()), parameterBoundAsString(typeVariableBinding, true)}, 131, 0, 0);
        } else {
            handle(IProblem.TypeArgumentMismatch, new String[]{new String(typeBinding.readableName()), new String(referenceBinding.readableName()), new String(typeVariableBinding.sourceName()), parameterBoundAsString(typeVariableBinding, false)}, new String[]{new String(typeBinding.shortReadableName()), new String(referenceBinding.shortReadableName()), new String(typeVariableBinding.sourceName()), parameterBoundAsString(typeVariableBinding, true)}, aSTNode.sourceStart, aSTNode.sourceEnd);
        }
    }

    public void invalidField(QualifiedNameReference qualifiedNameReference, FieldBinding fieldBinding, int i10, TypeBinding typeBinding) {
        if (isRecoveredName(qualifiedNameReference.tokens)) {
            return;
        }
        if (typeBinding.isBaseType()) {
            handle(IProblem.NoFieldOnBaseType, new String[]{new String(typeBinding.readableName()), CharOperation.toString(CharOperation.subarray(qualifiedNameReference.tokens, 0, i10)), new String(qualifiedNameReference.tokens[i10])}, new String[]{new String(typeBinding.sourceName()), CharOperation.toString(CharOperation.subarray(qualifiedNameReference.tokens, 0, i10)), new String(qualifiedNameReference.tokens[i10])}, qualifiedNameReference.sourceStart, (int) qualifiedNameReference.sourcePositions[i10]);
            return;
        }
        int problemId = fieldBinding.problemId();
        int i11 = IProblem.UndefinedField;
        if (problemId == 1) {
            if ((typeBinding.tagBits & 128) != 0) {
                handle(IProblem.UndefinedType, new String[]{new String(typeBinding.leafComponentType().readableName())}, new String[]{new String(typeBinding.leafComponentType().shortReadableName())}, qualifiedNameReference.sourceStart, (int) qualifiedNameReference.sourcePositions[i10 - 1]);
                return;
            } else {
                String[] strArr = {new String(qualifiedNameReference.tokens[i10])};
                handle(IProblem.UndefinedField, strArr, strArr, nodeSourceStart(fieldBinding, qualifiedNameReference), nodeSourceEnd(fieldBinding, qualifiedNameReference));
                return;
            }
        }
        if (problemId != 2) {
            if (problemId == 3) {
                i11 = IProblem.AmbiguousField;
            } else if (problemId == 5) {
                i11 = IProblem.InheritedFieldHidesEnclosingName;
            } else if (problemId == 6) {
                i11 = IProblem.InstanceFieldDuringConstructorInvocation;
            } else if (problemId == 7) {
                i11 = IProblem.NonStaticFieldFromStaticInvocation;
            } else if (problemId == 8) {
                handle(IProblem.NotVisibleType, new String[]{new String(typeBinding.leafComponentType().readableName())}, new String[]{new String(typeBinding.leafComponentType().shortReadableName())}, qualifiedNameReference.sourceStart, (int) qualifiedNameReference.sourcePositions[i10 - 1]);
                return;
            } else if (problemId != 30) {
                needImplementation(qualifiedNameReference);
            }
            int i12 = i11;
            String[] strArr2 = {CharOperation.toString(CharOperation.subarray(qualifiedNameReference.tokens, 0, i10 + 1))};
            handle(i12, strArr2, strArr2, qualifiedNameReference.sourceStart, (int) qualifiedNameReference.sourcePositions[i10]);
            return;
        }
        String str = new String(qualifiedNameReference.tokens[i10]);
        handle(fieldBinding.problemId() == 2 ? IProblem.NotVisibleField : IProblem.NotAccessibleField, new String[]{str, new String(fieldBinding.declaringClass.readableName())}, new String[]{str, new String(fieldBinding.declaringClass.shortReadableName())}, nodeSourceStart(fieldBinding, qualifiedNameReference), nodeSourceEnd(fieldBinding, qualifiedNameReference));
    }
}
