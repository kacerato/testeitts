package org.eclipse.jdt.internal.compiler.ast;

import com.bumptech.glide.load.engine.GlideException;
import java.util.Arrays;
import java.util.HashMap;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext18;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeIds;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;

public abstract class ASTNode implements TypeConstants, TypeIds {
    public static final int Bit1 = 1;
    public static final int Bit10 = 512;
    public static final int Bit11 = 1024;
    public static final int Bit12 = 2048;
    public static final int Bit13 = 4096;
    public static final int Bit14 = 8192;
    public static final int Bit15 = 16384;
    public static final int Bit16 = 32768;
    public static final int Bit17 = 65536;
    public static final int Bit18 = 131072;
    public static final int Bit19 = 262144;
    public static final int Bit2 = 2;
    public static final int Bit20 = 524288;
    public static final int Bit21 = 1048576;
    public static final int Bit22 = 2097152;
    public static final int Bit23 = 4194304;
    public static final int Bit24 = 8388608;
    public static final int Bit25 = 16777216;
    public static final int Bit26 = 33554432;
    public static final int Bit27 = 67108864;
    public static final int Bit28 = 134217728;
    public static final int Bit29 = 268435456;
    public static final int Bit3 = 4;
    public static final int Bit30 = 536870912;
    public static final int Bit31 = 1073741824;
    public static final int Bit32 = Integer.MIN_VALUE;
    public static final long Bit32L = 2147483648L;
    public static final long Bit33L = 4294967296L;
    public static final long Bit34L = 8589934592L;
    public static final long Bit35L = 17179869184L;
    public static final long Bit36L = 34359738368L;
    public static final long Bit37L = 68719476736L;
    public static final long Bit38L = 137438953472L;
    public static final long Bit39L = 274877906944L;
    public static final int Bit4 = 8;
    public static final long Bit40L = 549755813888L;
    public static final long Bit41L = 1099511627776L;
    public static final long Bit42L = 2199023255552L;
    public static final long Bit43L = 4398046511104L;
    public static final long Bit44L = 8796093022208L;
    public static final long Bit45L = 17592186044416L;
    public static final long Bit46L = 35184372088832L;
    public static final long Bit47L = 70368744177664L;
    public static final long Bit48L = 140737488355328L;
    public static final long Bit49L = 281474976710656L;
    public static final int Bit5 = 16;
    public static final long Bit50L = 562949953421312L;
    public static final long Bit51L = 1125899906842624L;
    public static final long Bit52L = 2251799813685248L;
    public static final long Bit53L = 4503599627370496L;
    public static final long Bit54L = 9007199254740992L;
    public static final long Bit55L = 18014398509481984L;
    public static final long Bit56L = 36028797018963968L;
    public static final long Bit57L = 72057594037927936L;
    public static final long Bit58L = 144115188075855872L;
    public static final long Bit59L = 288230376151711744L;
    public static final int Bit6 = 32;
    public static final long Bit60L = 576460752303423488L;
    public static final long Bit61L = 1152921504606846976L;
    public static final long Bit62L = 2305843009213693952L;
    public static final long Bit63L = 4611686018427387904L;
    public static final long Bit64L = Long.MIN_VALUE;
    public static final int Bit7 = 64;
    public static final int Bit8 = 128;
    public static final int Bit9 = 256;
    public static final int BlockExit = 536870912;
    public static final int CanBeStatic = 256;
    public static final int ContainsAssertion = 1;
    public static final int DepthMASK = 8160;
    public static final int DepthSHIFT = 5;
    public static final int DidResolve = 262144;
    public static final int DisableUnnecessaryCastCheck = 32;
    public static final int DiscardEnclosingInstance = 8192;
    public static final int DocumentedCasesOmitted = 1073741824;
    public static final int DocumentedFallthrough = 536870912;
    public static final int Empty = 262144;
    public static final int ErrorInSignature = 32;
    public static final int FirstAssignmentToLocal = 8;
    public static final int GenerateCheckcast = 64;
    public static final int HasAbstractMethods = 2048;
    public static final int HasAllMethodBodies = 16;
    public static final int HasBeenGenerated = 8192;
    public static final int HasBeenResolved = 16;
    public static final int HasFunctionalInterfaceTypes = 2097152;
    public static final int HasLocalType = 2;
    public static final int HasSyntaxErrors = 524288;
    public static final int HasTypeAnnotations = 1048576;
    public static final int INVOCATION_ARGUMENT_OK = 0;
    public static final int INVOCATION_ARGUMENT_UNCHECKED = 1;
    public static final int INVOCATION_ARGUMENT_WILDCARD = 2;
    public static final int IgnoreNoEffectAssignCheck = 536870912;
    public static final int IgnoreRawTypeCheck = 1073741824;
    public static final int InsideExpressionStatement = 1048576;
    public static final int InsideJavadoc = 32768;
    public static final int IsAdditionalDeclarator = 4194304;
    public static final int IsAnnotationDefaultValue = 1;
    public static final int IsAnonymousType = 512;
    public static final int IsAnySubRoutineEscaping = 536870912;
    public static final int IsArgument = 4;
    public static final int IsCapturedOuterLocal = 524288;
    public static final int IsCompoundAssigned = 65536;
    public static final int IsDefaultConstructor = 128;
    public static final int IsDiamond = 524288;
    public static final int IsElseIfStatement = 536870912;
    public static final int IsElseStatementUnreachable = 128;
    public static final int IsForeachElementVariable = 16;
    public static final int IsImplicitThis = 4;
    public static final int IsImplicitUnit = 1;
    public static final int IsLocalDeclarationReachable = 1073741824;
    public static final int IsLocalType = 256;
    public static final int IsMemberType = 1024;
    public static final int IsNonNull = 131072;
    public static final int IsReachable = Integer.MIN_VALUE;
    public static final int IsRecovered = 32;
    public static final int IsReturnedValue = 16;
    public static final int IsSecondaryType = 4096;
    public static final int IsStrictlyAssigned = 8192;
    public static final int IsSubRoutineEscaping = 16384;
    public static final int IsSuperType = 16;
    public static final int IsSynchronized = 1073741824;
    public static final int IsSynthetic = 64;
    public static final int IsThenStatementUnreachable = 256;
    public static final int IsTryBlockExiting = 536870912;
    public static final int IsTypeElided = 2;
    public static final int IsUnionType = 536870912;
    public static final int IsUsefulEmptyStatement = 1;
    public static final int IsVarArgs = 16384;
    public static final int LabelUsed = 64;
    public static final Argument[] NO_ARGUMENTS = new Argument[0];
    public static final int NeedFreeReturn = 64;
    public static final int NeedReceiverGenericCast = 262144;
    public static final int NeededScope = 536870912;
    public static final int OnDemand = 131072;
    public static final int OperatorMASK = 4032;
    public static final int OperatorSHIFT = 6;
    public static final int OverridingMethodWithSupercall = 16;
    public static final int ParenthesizedMASK = 534773760;
    public static final int ParenthesizedSHIFT = 21;
    public static final int ResolveJavadoc = 65536;
    public static final int RestrictiveFlagMASK = 7;
    public static final int ReturnTypeIDMASK = 15;
    public static final int ShadowsOuterLocal = 2097152;
    public static final int SuperAccess = 16384;
    public static final int ThenExit = 1073741824;
    public static final int Unchecked = 65536;
    public static final int UndocumentedEmptyBlock = 8;
    public static final int UnnecessaryCast = 16384;
    public static final int UnsafeCast = 128;
    public static final int Used = 2;
    public static final int inModule = 262144;
    public int bits = Integer.MIN_VALUE;
    public int sourceEnd;
    public int sourceStart;

    private static int checkInvocationArgument(BlockScope blockScope, Expression expression, TypeBinding typeBinding, TypeBinding typeBinding2, TypeBinding typeBinding3) {
        expression.computeConversion(blockScope, typeBinding, typeBinding2);
        if (typeBinding2 != TypeBinding.NULL && typeBinding.kind() == 516 && ((WildcardBinding) typeBinding).boundKind != 2) {
            return 2;
        }
        if (!TypeBinding.notEquals(typeBinding2, typeBinding) || !typeBinding2.needsUncheckedConversion(typeBinding)) {
            return 0;
        }
        blockScope.problemReporter().unsafeTypeConversion(expression, typeBinding2, typeBinding);
        return 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x00f6 A[LOOP:1: B:92:0x00f3->B:93:0x00f6, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean checkInvocationArguments(BlockScope blockScope, Expression expression, TypeBinding typeBinding, MethodBinding methodBinding, Expression[] expressionArr, TypeBinding[] typeBindingArr, boolean z10, InvocationSite invocationSite) {
        long j10;
        int i10;
        MethodBinding methodBinding2;
        TypeBinding elementsType;
        TypeBinding elementsType2;
        int i11;
        boolean z11;
        long j11 = blockScope.compilerOptions().sourceLevel;
        boolean z12 = j11 >= ClassFileConstants.JDK1_7;
        TypeBinding[] typeBindingArr2 = methodBinding.parameters;
        int length = typeBindingArr2.length;
        boolean z13 = !methodBinding.isStatic() && !typeBinding.isUnboundWildcard() && methodBinding.declaringClass.isRawType() && methodBinding.hasSubstitutedParameters();
        boolean z14 = (methodBinding.tagBits & 256) != 0;
        MethodBinding original = (!z13 && (methodBinding instanceof ParameterizedGenericMethodBinding) && ((ParameterizedGenericMethodBinding) methodBinding).isRaw && methodBinding.hasSubstitutedParameters()) ? methodBinding.original() : null;
        if (expressionArr == null) {
            if (methodBinding.isVarargs()) {
                TypeBinding elementsType3 = ((ArrayBinding) typeBindingArr2[length - 1]).elementsType();
                if (!elementsType3.isReifiable() && (!z12 || (methodBinding.tagBits & 2251799813685248L) == 0)) {
                    blockScope.problemReporter().unsafeGenericArrayForVarargs(elementsType3, (ASTNode) invocationSite);
                }
            }
            j10 = j11;
            i10 = 0;
        } else {
            if (methodBinding.isVarargs()) {
                int i12 = length - 1;
                int i13 = 0;
                i10 = 0;
                while (i13 < i12) {
                    long j12 = j11;
                    i10 |= checkInvocationArgument(blockScope, expressionArr[i13], typeBindingArr2[i13], typeBindingArr[i13], original == null ? null : original.parameters[i13]);
                    i13++;
                    j11 = j12;
                }
                int length2 = expressionArr.length;
                if (i12 <= length2) {
                    TypeBinding typeBinding2 = typeBindingArr2[i12];
                    if (length == length2 && typeBinding2.dimensions() == typeBindingArr[i12].dimensions()) {
                        j10 = j11;
                        elementsType = typeBinding2;
                    } else {
                        elementsType = ((ArrayBinding) typeBinding2).elementsType();
                        j10 = j11;
                        if (!elementsType.isReifiable() && (!z12 || (methodBinding.tagBits & 2251799813685248L) == 0)) {
                            blockScope.problemReporter().unsafeGenericArrayForVarargs(elementsType, (ASTNode) invocationSite);
                        }
                        if (original != null) {
                            elementsType2 = ((ArrayBinding) original.parameters[i12]).elementsType();
                            for (i11 = i12; i11 < length2; i11++) {
                                i10 |= checkInvocationArgument(blockScope, expressionArr[i11], elementsType, typeBindingArr[i11], elementsType2);
                            }
                        }
                    }
                    elementsType2 = null;
                    while (i11 < length2) {
                    }
                } else {
                    j10 = j11;
                }
                if (length == length2) {
                    ArrayBinding arrayBinding = (ArrayBinding) typeBindingArr2[i12];
                    TypeBinding typeBinding3 = typeBindingArr[i12];
                    if (typeBinding3 != TypeBinding.NULL) {
                        int i14 = arrayBinding.dimensions;
                        int dimensions = typeBinding3.dimensions();
                        if (i14 <= dimensions) {
                            if (typeBinding3.leafComponentType().isBaseType()) {
                                dimensions--;
                            }
                            int i15 = arrayBinding.dimensions;
                            if (i15 < dimensions) {
                                blockScope.problemReporter().varargsArgumentNeedCast(methodBinding, typeBinding3, invocationSite);
                            } else if (i15 == dimensions && TypeBinding.notEquals(typeBinding3, arrayBinding) && TypeBinding.notEquals(typeBinding3.leafComponentType().erasure(), arrayBinding.leafComponentType.erasure()) && typeBinding3.isCompatibleWith(arrayBinding.elementsType()) && typeBinding3.isCompatibleWith(arrayBinding)) {
                                blockScope.problemReporter().varargsArgumentNeedCast(methodBinding, typeBinding3, invocationSite);
                            }
                        }
                    } else if (!arrayBinding.leafComponentType().isBaseType() || arrayBinding.dimensions() != 1) {
                        blockScope.problemReporter().varargsArgumentNeedCast(methodBinding, typeBinding3, invocationSite);
                    }
                }
            } else {
                j10 = j11;
                int i16 = 0;
                i10 = 0;
                while (i16 < length) {
                    MethodBinding methodBinding3 = original;
                    i10 |= checkInvocationArgument(blockScope, expressionArr[i16], typeBindingArr2[i16], typeBindingArr[i16], methodBinding3 == null ? null : methodBinding3.parameters[i16]);
                    i16++;
                    original = methodBinding3;
                }
            }
            if (z10) {
                methodBinding2 = original;
                CastExpression.checkNeedForArgumentCasts(blockScope, expression, typeBinding, methodBinding, expressionArr, typeBindingArr, invocationSite);
                if ((i10 & 2) == 0) {
                    blockScope.problemReporter().wildcardInvocation((ASTNode) invocationSite, typeBinding, methodBinding, typeBindingArr);
                    return false;
                }
                if (!methodBinding.isStatic() && !typeBinding.isUnboundWildcard() && methodBinding.declaringClass.isRawType() && methodBinding.hasSubstitutedParameters()) {
                    if (!blockScope.compilerOptions().reportUnavoidableGenericTypeProblems && expression != null && expression.forcedToBeRaw(blockScope.referenceContext())) {
                        return false;
                    }
                    blockScope.problemReporter().unsafeRawInvocation((ASTNode) invocationSite, methodBinding);
                    return false;
                }
                if (methodBinding2 != null || z14) {
                    z11 = true;
                } else {
                    z11 = true;
                    if ((i10 & 1) == 0) {
                        return false;
                    }
                }
                if (methodBinding instanceof ParameterizedGenericMethodBinding) {
                    blockScope.problemReporter().unsafeRawGenericMethodInvocation((ASTNode) invocationSite, methodBinding, typeBindingArr);
                    return z11;
                }
                if (j10 >= ClassFileConstants.JDK1_8) {
                    return z11;
                }
                return false;
            }
        }
        methodBinding2 = original;
        if ((i10 & 2) == 0) {
        }
    }

    public static void copySE8AnnotationsToType(BlockScope blockScope, Binding binding, Annotation[] annotationArr, boolean z10) {
        long j10;
        int i10;
        int i11;
        long j11;
        if (annotationArr == null || annotationArr.length == 0 || binding == null) {
            return;
        }
        int kind = binding.kind();
        int i12 = 8;
        int i13 = 2;
        int i14 = 1;
        if (kind == 1) {
            j10 = 137438953472L;
        } else if (kind == 2) {
            j10 = binding.isParameter() ? 549755813888L : 2199023255552L;
        } else if (kind != 8) {
            return;
        } else {
            j10 = ((MethodBinding) binding).isConstructor() ? 1099511627776L : 274877906944L;
        }
        long j12 = j10;
        int length = annotationArr.length;
        int i15 = -1;
        AnnotationBinding[] annotationBindingArr = null;
        int i16 = -1;
        Annotation annotation = null;
        int i17 = 0;
        int i18 = 0;
        long j13 = 0;
        while (i17 < length) {
            long j14 = j13;
            AnnotationBinding compilerAnnotation = annotationArr[i17].getCompilerAnnotation();
            if (compilerAnnotation == null) {
                i10 = i16;
                i11 = i18;
            } else {
                ReferenceBinding annotationType = compilerAnnotation.getAnnotationType();
                long annotationTagBits = annotationType.getAnnotationTagBits();
                if ((annotationTagBits & 9007199254740992L) != 0) {
                    if (!z10) {
                        int i19 = i16;
                        i16 = i19 == i15 ? i17 : i19;
                        if (annotationBindingArr == null) {
                            AnnotationBinding[] annotationBindingArr2 = new AnnotationBinding[i14];
                            annotationBindingArr2[0] = compilerAnnotation;
                            annotationBindingArr = annotationBindingArr2;
                        } else {
                            int i20 = i18;
                            i14 = i20 + 1;
                            AnnotationBinding[] annotationBindingArr3 = new AnnotationBinding[i14];
                            System.arraycopy(annotationBindingArr, 0, annotationBindingArr3, 0, i20);
                            annotationBindingArr3[i20] = compilerAnnotation;
                            annotationBindingArr = annotationBindingArr3;
                        }
                        if (annotationType.hasNullBit(32)) {
                            j11 = 72057594037927936L | j14;
                            annotation = annotationArr[i17];
                        } else {
                            if (annotationType.hasNullBit(64)) {
                                j11 = 36028797018963968L | j14;
                                annotation = annotationArr[i17];
                            }
                            j11 = j14;
                        }
                        i17++;
                        j13 = j11;
                        i18 = i14;
                        i12 = 8;
                        i13 = 2;
                        i14 = 1;
                        i15 = -1;
                    } else if ((annotationTagBits & j12) == 0) {
                        ProblemReporter problemReporter = blockScope.problemReporter();
                        Annotation annotation2 = annotationArr[i17];
                        problemReporter.misplacedTypeAnnotations(annotation2, annotation2);
                    }
                }
                i10 = i16;
                i11 = i18;
            }
            i14 = i11;
            i16 = i10;
            j11 = j14;
            i17++;
            j13 = j11;
            i18 = i14;
            i12 = 8;
            i13 = 2;
            i14 = 1;
            i15 = -1;
        }
        if (annotationBindingArr != null) {
            int kind2 = binding.kind();
            if (kind2 == i14) {
                long j15 = j13;
                FieldBinding fieldBinding = (FieldBinding) binding;
                FieldDeclaration declarationOf = ((SourceTypeBinding) fieldBinding.declaringClass).scope.referenceContext.declarationOf(fieldBinding);
                if (Annotation.isTypeUseCompatible(declarationOf.type, blockScope)) {
                    declarationOf.bits |= 1048576;
                    TypeReference typeReference = declarationOf.type;
                    typeReference.bits |= 1048576;
                    fieldBinding.type = mergeAnnotationsIntoType(blockScope, annotationBindingArr, j15, annotation, typeReference, fieldBinding.type);
                    if (blockScope.environment().usesNullTypeAnnotations()) {
                        fieldBinding.tagBits &= ~j15;
                    }
                }
            } else if (kind2 == i13) {
                long j16 = j13;
                LocalVariableBinding localVariableBinding = (LocalVariableBinding) binding;
                TypeReference typeReference2 = localVariableBinding.declaration.type;
                if (Annotation.isTypeUseCompatible(typeReference2, blockScope)) {
                    localVariableBinding.declaration.bits |= 1048576;
                    typeReference2.bits |= 1048576;
                    localVariableBinding.type = mergeAnnotationsIntoType(blockScope, annotationBindingArr, j16, annotation, typeReference2, localVariableBinding.type);
                    if (blockScope.environment().usesNullTypeAnnotations()) {
                        localVariableBinding.tagBits &= ~j16;
                    }
                }
            } else if (kind2 == i12) {
                MethodBinding methodBinding = (MethodBinding) binding;
                if (methodBinding.isConstructor()) {
                    methodBinding.setTypeAnnotations(annotationBindingArr);
                } else {
                    MethodDeclaration methodDeclaration = (MethodDeclaration) ((SourceTypeBinding) methodBinding.declaringClass).scope.referenceContext.declarationOf(methodBinding);
                    if (Annotation.isTypeUseCompatible(methodDeclaration.returnType, blockScope)) {
                        methodDeclaration.bits |= 1048576;
                        TypeReference typeReference3 = methodDeclaration.returnType;
                        typeReference3.bits |= 1048576;
                        methodBinding.returnType = mergeAnnotationsIntoType(blockScope, annotationBindingArr, j13, annotation, typeReference3, methodBinding.returnType);
                        if (blockScope.environment().usesNullTypeAnnotations()) {
                            methodBinding.tagBits &= ~j13;
                        }
                    }
                }
            }
            AnnotationBinding[] annotations = binding.getAnnotations();
            int length2 = annotations == null ? 0 : annotations.length;
            int i21 = 0;
            for (int i22 = 0; i22 < length2; i22++) {
                AnnotationBinding annotationBinding = annotations[i22];
                if (annotationBinding != null) {
                    long annotationTagBits2 = annotationBinding.getAnnotationType().getAnnotationTagBits() & TagBits.AnnotationTargetMASK;
                    if (annotationTagBits2 == 0 || (annotationTagBits2 & j12) != 0) {
                        annotations[i21] = annotationBinding;
                        i21++;
                    }
                }
            }
            if (i21 != length2) {
                AnnotationBinding[] annotationBindingArr4 = new AnnotationBinding[i21];
                System.arraycopy(annotations, 0, annotationBindingArr4, 0, i21);
                binding.setAnnotations(annotationBindingArr4, blockScope, false);
            }
        }
    }

    public static void handleNonNullByDefault(BlockScope blockScope, Annotation[] annotationArr, LocalDeclaration localDeclaration) {
        if (annotationArr == null || annotationArr.length == 0) {
            return;
        }
        Annotation annotation = null;
        int i10 = 0;
        for (Annotation annotation2 : annotationArr) {
            long handleNonNullByDefault = annotation2.handleNonNullByDefault(blockScope);
            if (handleNonNullByDefault != 0) {
                i10 = (int) (i10 | handleNonNullByDefault);
                annotation = annotation2;
            }
        }
        if (i10 != 0) {
            LocalVariableBinding localVariableBinding = new LocalVariableBinding(localDeclaration, (TypeBinding) null, 0, false);
            Binding checkRedundantDefaultNullness = blockScope.checkRedundantDefaultNullness(i10, localDeclaration.sourceStart);
            if (!blockScope.recordNonNullByDefault(localVariableBinding, i10, annotation, annotation.sourceStart, localDeclaration.declarationSourceEnd) || checkRedundantDefaultNullness == null) {
                return;
            }
            blockScope.problemReporter().nullDefaultAnnotationIsRedundant(localDeclaration, new Annotation[]{annotation}, checkRedundantDefaultNullness);
        }
    }

    private static TypeBinding mergeAnnotationsIntoType(BlockScope blockScope, AnnotationBinding[] annotationBindingArr, long j10, Annotation annotation, TypeReference typeReference, TypeBinding typeBinding) {
        TypeBinding typeBinding2;
        if (typeBinding == null || !typeBinding.isValidBinding()) {
            return typeBinding;
        }
        TypeReference typeReference2 = typeReference.isUnionType() ? ((UnionTypeReference) typeReference).typeReferences[0] : null;
        TypeBinding leafComponentType = typeReference2 == null ? typeBinding.leafComponentType() : typeReference2.resolvedType;
        if (j10 != 0 && (typeReference instanceof ArrayTypeReference) && (typeBinding2 = ((ArrayTypeReference) typeReference).leafComponentTypeWithoutDefaultNullness) != null) {
            leafComponentType = typeBinding2;
        }
        if (j10 != 0 && leafComponentType.isBaseType()) {
            blockScope.problemReporter().illegalAnnotationForBaseType(typeReference, new Annotation[]{annotation}, j10);
            return typeBinding;
        }
        long j11 = leafComponentType.tagBits & TagBits.AnnotationNullMASK;
        if ((j11 | j10) == TagBits.AnnotationNullMASK) {
            if (!(leafComponentType instanceof TypeVariableBinding)) {
                if (j11 != TagBits.AnnotationNullMASK && j10 != TagBits.AnnotationNullMASK) {
                    blockScope.problemReporter().contradictoryNullAnnotations(annotation);
                }
                annotationBindingArr = Binding.NO_ANNOTATIONS;
            }
            leafComponentType = leafComponentType.withoutToplevelNullAnnotation();
        }
        AnnotationBinding[][] annotationBindingArr2 = new AnnotationBinding[typeReference.getAnnotatableLevels()];
        annotationBindingArr2[0] = annotationBindingArr;
        TypeBinding createAnnotatedType = blockScope.environment().createAnnotatedType(leafComponentType, annotationBindingArr2);
        if (typeReference2 == null) {
            if (typeBinding.isArrayType()) {
                createAnnotatedType = blockScope.environment().createArrayType(createAnnotatedType, typeBinding.dimensions(), typeBinding.getTypeAnnotations());
            }
            typeReference.resolvedType = createAnnotatedType;
        } else {
            typeReference2.resolvedType = createAnnotatedType;
            typeReference2.bits |= 1048576;
        }
        return typeReference.resolvedType;
    }

    public static StringBuffer printAnnotations(Annotation[] annotationArr, StringBuffer stringBuffer) {
        int length = annotationArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 > 0) {
                stringBuffer.append(" ");
            }
            Annotation annotation = annotationArr[i10];
            if (annotation != null) {
                annotation.print(0, stringBuffer);
            } else {
                stringBuffer.append('?');
            }
        }
        return stringBuffer;
    }

    public static StringBuffer printIndent(int i10, StringBuffer stringBuffer) {
        while (i10 > 0) {
            stringBuffer.append(GlideException.a.f59088e);
            i10--;
        }
        return stringBuffer;
    }

    public static StringBuffer printModifiers(int i10, StringBuffer stringBuffer) {
        if ((i10 & 1) != 0) {
            stringBuffer.append("public ");
        }
        if ((i10 & 2) != 0) {
            stringBuffer.append("private ");
        }
        if ((i10 & 4) != 0) {
            stringBuffer.append("protected ");
        }
        if ((i10 & 8) != 0) {
            stringBuffer.append("static ");
        }
        if ((i10 & 16) != 0) {
            stringBuffer.append("final ");
        }
        if ((i10 & 32) != 0) {
            stringBuffer.append("synchronized ");
        }
        if ((i10 & 64) != 0) {
            stringBuffer.append("volatile ");
        }
        if ((i10 & 128) != 0) {
            stringBuffer.append("transient ");
        }
        if ((i10 & 256) != 0) {
            stringBuffer.append("native ");
        }
        if ((i10 & 1024) != 0) {
            stringBuffer.append("abstract ");
        }
        if ((i10 & 65536) != 0) {
            stringBuffer.append("default ");
        }
        return stringBuffer;
    }

    public static void resolveAnnotations(BlockScope blockScope, Annotation[] annotationArr, Binding binding) {
        resolveAnnotations(blockScope, annotationArr, binding, false);
        if (binding instanceof SourceTypeBinding) {
            ((SourceTypeBinding) binding).evaluateNullAnnotations();
        }
    }

    public static void resolveDeprecatedAnnotations(BlockScope blockScope, Annotation[] annotationArr, Binding binding) {
        int length;
        TypeBinding resolveType;
        long j10;
        if (binding != null) {
            int kind = binding.kind();
            if (annotationArr != null && (length = annotationArr.length) >= 0) {
                if (kind != 1) {
                    if (kind != 2) {
                        if (kind != 4) {
                            if (kind != 8) {
                                if (kind != 16) {
                                    if (kind != 2052) {
                                        return;
                                    }
                                } else if ((((PackageBinding) binding).tagBits & 17179869184L) != 0) {
                                    return;
                                }
                            } else if ((((MethodBinding) binding).tagBits & 17179869184L) != 0) {
                                return;
                            }
                        }
                        if ((((ReferenceBinding) binding).tagBits & 17179869184L) != 0) {
                            return;
                        }
                    } else if ((((LocalVariableBinding) binding).tagBits & 17179869184L) != 0) {
                        return;
                    }
                } else if ((((FieldBinding) binding).tagBits & 17179869184L) != 0) {
                    return;
                }
                for (int i10 = 0; i10 < length; i10++) {
                    if (CharOperation.equals(TypeConstants.JAVA_LANG_DEPRECATED[2], annotationArr[i10].type.getLastToken()) && (resolveType = annotationArr[i10].type.resolveType(blockScope)) != null && resolveType.isValidBinding() && resolveType.f102482id == 44) {
                        if (blockScope.compilerOptions().complianceLevel >= ClassFileConstants.JDK9) {
                            MemberValuePair[] memberValuePairs = annotationArr[i10].memberValuePairs();
                            int length2 = memberValuePairs.length;
                            int i11 = 0;
                            while (true) {
                                if (i11 >= length2) {
                                    break;
                                }
                                MemberValuePair memberValuePair = memberValuePairs[i11];
                                if (!CharOperation.equals(memberValuePair.name, TypeConstants.FOR_REMOVAL)) {
                                    i11++;
                                } else if (memberValuePair.value instanceof TrueLiteral) {
                                    j10 = 4611756404351434752L;
                                }
                            }
                        }
                        j10 = 70385924046848L;
                        if (kind == 1) {
                            ((FieldBinding) binding).tagBits |= j10;
                            return;
                        }
                        if (kind == 2) {
                            ((LocalVariableBinding) binding).tagBits |= j10;
                            return;
                        }
                        if (kind != 4) {
                            if (kind == 8) {
                                ((MethodBinding) binding).tagBits |= j10;
                                return;
                            } else if (kind == 16) {
                                ((PackageBinding) binding).tagBits |= j10;
                                return;
                            } else if (kind != 2052 && kind != 4100) {
                                return;
                            }
                        }
                        ((ReferenceBinding) binding).tagBits |= j10;
                        return;
                    }
                }
            }
            if (kind == 1) {
                ((FieldBinding) binding).tagBits |= 17179869184L;
                return;
            }
            if (kind == 2) {
                ((LocalVariableBinding) binding).tagBits |= 17179869184L;
                return;
            }
            if (kind != 4) {
                if (kind == 8) {
                    ((MethodBinding) binding).tagBits |= 17179869184L;
                    return;
                } else if (kind == 16) {
                    ((PackageBinding) binding).tagBits |= 17179869184L;
                    return;
                } else if (kind != 2052 && kind != 4100) {
                    return;
                }
            }
            ((ReferenceBinding) binding).tagBits |= 17179869184L;
        }
    }

    public static MethodBinding resolvePolyExpressionArguments(Invocation invocation, MethodBinding methodBinding, TypeBinding[] typeBindingArr, BlockScope blockScope) {
        InferenceContext18 inferenceContext;
        TypeBinding typeBinding;
        TypeBinding resolveType;
        ProblemMethodBinding problemMethodBinding = null;
        MethodBinding methodBinding2 = methodBinding.isValidBinding() ? methodBinding : methodBinding instanceof ProblemMethodBinding ? ((ProblemMethodBinding) methodBinding).closestMatch : null;
        if (methodBinding2 == null) {
            return methodBinding;
        }
        boolean isVarargs = methodBinding2.isVarargs();
        TypeBinding[] typeBindingArr2 = methodBinding2.parameters;
        Expression[] arguments = invocation.arguments();
        if (isVarargs && arguments != null && typeBindingArr2.length == arguments.length && arguments[arguments.length - 1].isCompatibleWith(typeBindingArr2[typeBindingArr2.length - 1], blockScope)) {
            isVarargs = false;
        }
        int length = arguments == null ? 0 : arguments.length;
        for (int i10 = 0; i10 < length; i10++) {
            Expression expression = arguments[i10];
            TypeBinding parameter = InferenceContext18.getParameter(typeBindingArr2, i10, isVarargs);
            if (parameter != null && (typeBinding = typeBindingArr[i10]) != null && typeBinding.isPolyType()) {
                expression.setExpectedType(parameter);
                if (expression instanceof LambdaExpression) {
                    LambdaExpression lambdaExpression = (LambdaExpression) expression;
                    resolveType = lambdaExpression.resolveType(blockScope, methodBinding.problemId() == 3);
                    if (!lambdaExpression.hasErrors() && !lambdaExpression.hasDescripterProblem) {
                        if (lambdaExpression.isCompatibleWith(parameter, blockScope)) {
                            lambdaExpression.updateLocalTypesInMethod(methodBinding2);
                        } else if (methodBinding.isValidBinding() && problemMethodBinding == null) {
                            TypeBinding[] typeBindingArr3 = (TypeBinding[]) Arrays.copyOf(typeBindingArr, typeBindingArr.length);
                            problemMethodBinding = lambdaExpression.reportShapeError(parameter, blockScope) ? new ProblemMethodBinding(methodBinding2, methodBinding.selector, typeBindingArr3, 31) : new ProblemMethodBinding(methodBinding2, methodBinding.selector, typeBindingArr3, 1);
                        }
                    }
                } else {
                    resolveType = expression.resolveType(blockScope);
                }
                if (resolveType != null && resolveType.kind() != 65540) {
                    typeBindingArr[i10] = resolveType;
                    if (methodBinding2.isPolymorphic()) {
                        methodBinding2.parameters[i10] = resolveType;
                    }
                }
            }
        }
        if ((methodBinding instanceof ParameterizedGenericMethodBinding) && (inferenceContext = invocation.getInferenceContext((ParameterizedMethodBinding) methodBinding)) != null) {
            inferenceContext.flushBoundOutbox();
        }
        return problemMethodBinding != null ? problemMethodBinding : methodBinding;
    }

    public void acceptPotentiallyCompatibleMethods(MethodBinding[] methodBindingArr) {
    }

    public boolean checkingPotentialCompatibility() {
        return false;
    }

    public ASTNode concreteStatement() {
        return this;
    }

    public final boolean isFieldUseDeprecated(FieldBinding fieldBinding, Scope scope, int i10) {
        if ((this.bits & 32768) == 0 && (i10 & 8192) == 0 && fieldBinding.isOrEnclosedByPrivateType() && !scope.isDefinedInField(fieldBinding)) {
            if ((i10 & 65536) != 0) {
                fieldBinding.original().compoundUseFlag++;
            } else {
                fieldBinding.original().modifiers |= 134217728;
            }
        }
        if ((fieldBinding.modifiers & 262144) != 0) {
            ModuleBinding module = fieldBinding.declaringClass.module();
            AccessRestriction accessRestriction = (module == null ? scope.environment() : module.environment).getAccessRestriction(fieldBinding.declaringClass.erasure());
            if (accessRestriction != null) {
                scope.problemReporter().forbiddenReference(fieldBinding, this, accessRestriction.classpathEntryType, accessRestriction.classpathEntryName, accessRestriction.getProblemId());
            }
        }
        if (fieldBinding.isViewedAsDeprecated() && !scope.isDefinedInSameUnit(fieldBinding.declaringClass)) {
            return scope.compilerOptions().reportDeprecationInsideDeprecatedCode || !scope.isInsideDeprecatedCode();
        }
        return false;
    }

    public boolean isImplicitThis() {
        return false;
    }

    public final boolean isMethodUseDeprecated(MethodBinding methodBinding, Scope scope, boolean z10, InvocationSite invocationSite) {
        if ((this.bits & 32768) == 0 && methodBinding.isOrEnclosedByPrivateType() && !scope.isDefinedInMethod(methodBinding)) {
            methodBinding.original().modifiers |= 134217728;
        }
        if (z10 && (methodBinding.modifiers & 262144) != 0) {
            ModuleBinding module = methodBinding.declaringClass.module();
            AccessRestriction accessRestriction = (module == null ? scope.environment() : module.environment).getAccessRestriction(methodBinding.declaringClass.erasure());
            if (accessRestriction != null) {
                scope.problemReporter().forbiddenReference(methodBinding, invocationSite, accessRestriction.classpathEntryType, accessRestriction.classpathEntryName, accessRestriction.getProblemId());
            }
        }
        if (!methodBinding.isViewedAsDeprecated() || scope.isDefinedInSameUnit(methodBinding.declaringClass)) {
            return false;
        }
        if (z10 || (methodBinding.modifiers & 1048576) != 0) {
            return scope.compilerOptions().reportDeprecationInsideDeprecatedCode || !scope.isInsideDeprecatedCode();
        }
        return false;
    }

    public boolean isQualifiedSuper() {
        return false;
    }

    public boolean isSuper() {
        return false;
    }

    public boolean isThis() {
        return false;
    }

    public final boolean isTypeUseDeprecated(TypeBinding typeBinding, Scope scope) {
        if (typeBinding.isArrayType()) {
            typeBinding = ((ArrayBinding) typeBinding).leafComponentType;
        }
        TypeBinding typeBinding2 = typeBinding;
        if (typeBinding2.isBaseType()) {
            return false;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding2;
        int i10 = this.bits;
        if ((i10 & 32768) == 0 && (referenceBinding instanceof TypeVariableBinding)) {
            referenceBinding.modifiers |= 134217728;
        }
        if ((i10 & 32768) == 0 && referenceBinding.isOrEnclosedByPrivateType() && !scope.isDefinedInType(referenceBinding)) {
            ((ReferenceBinding) referenceBinding.erasure()).modifiers |= 134217728;
        }
        if (referenceBinding.hasRestrictedAccess()) {
            ModuleBinding module = referenceBinding.module();
            AccessRestriction accessRestriction = (module == null ? scope.environment() : module.environment).getAccessRestriction(typeBinding2.erasure());
            if (accessRestriction != null) {
                scope.problemReporter().forbiddenReference(typeBinding2, this, accessRestriction.classpathEntryType, accessRestriction.classpathEntryName, accessRestriction.getProblemId());
            }
        }
        referenceBinding.initializeDeprecatedAnnotationTagBits();
        if (referenceBinding.isViewedAsDeprecated() && !scope.isDefinedInSameUnit(referenceBinding)) {
            return scope.compilerOptions().reportDeprecationInsideDeprecatedCode || !scope.isInsideDeprecatedCode();
        }
        return false;
    }

    public boolean isUnqualifiedSuper() {
        return false;
    }

    public abstract StringBuffer print(int i10, StringBuffer stringBuffer);

    public boolean receiverIsImplicitThis() {
        return false;
    }

    public int sourceEnd() {
        return this.sourceEnd;
    }

    public int sourceStart() {
        return this.sourceStart;
    }

    public String toString() {
        return print(0, new StringBuffer(30)).toString();
    }

    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d8  */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [org.eclipse.jdt.internal.compiler.ast.ContainerAnnotation] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v22 */
    /* JADX WARN: Type inference failed for: r14v25 */
    /* JADX WARN: Type inference failed for: r14v26 */
    /* JADX WARN: Type inference failed for: r14v27 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r15v0, types: [org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v22 */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v24 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r8v0, types: [org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding] */
    /* JADX WARN: Type inference failed for: r8v4, types: [org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static AnnotationBinding[] resolveAnnotations(BlockScope blockScope, Annotation[] annotationArr, Binding binding, boolean z10) {
        int i10;
        AnnotationBinding[] annotationBindingArr;
        int i11;
        ReferenceBinding annotationType;
        int length = annotationArr == null ? 0 : annotationArr.length;
        ReferenceBinding referenceBinding = null;
        if (binding != null) {
            int kind = binding.kind();
            if (kind == 1) {
                i10 = length;
                FieldBinding fieldBinding = (FieldBinding) binding;
                long j10 = fieldBinding.tagBits;
                if ((8589934592L & j10) != 0) {
                    return null;
                }
                fieldBinding.tagBits = j10 | 25769803776L;
                if (i10 > 0) {
                    annotationBindingArr = new AnnotationBinding[i10];
                    fieldBinding.setAnnotations(annotationBindingArr, false);
                }
            } else if (kind != 2) {
                if (kind != 4) {
                    if (kind == 8) {
                        i10 = length;
                        MethodBinding methodBinding = (MethodBinding) binding;
                        long j11 = methodBinding.tagBits;
                        if ((8589934592L & j11) != 0) {
                            return null;
                        }
                        methodBinding.tagBits = j11 | 25769803776L;
                        if (i10 > 0) {
                            annotationBindingArr = new AnnotationBinding[i10];
                            methodBinding.setAnnotations(annotationBindingArr, false);
                        }
                    } else if (kind == 16) {
                        i10 = length;
                        PackageBinding packageBinding = (PackageBinding) binding;
                        long j12 = packageBinding.tagBits;
                        if ((8589934592L & j12) != 0) {
                            return null;
                        }
                        packageBinding.tagBits = j12 | 25769803776L;
                    } else if (kind == 64) {
                        ModuleBinding moduleBinding = (ModuleBinding) binding;
                        int i12 = length;
                        long j13 = moduleBinding.tagBits;
                        if ((8589934592L & j13) != 0) {
                            return null;
                        }
                        moduleBinding.tagBits = j13 | 25769803776L;
                        i10 = i12;
                        if (i12 > 0) {
                            AnnotationBinding[] annotationBindingArr2 = new AnnotationBinding[i10];
                            moduleBinding.setAnnotations(annotationBindingArr2, blockScope, false);
                            annotationBindingArr = annotationBindingArr2;
                        }
                    } else if (kind != 2052) {
                        if (kind != 4100 && kind != 16388) {
                            return null;
                        }
                        annotationBindingArr = new AnnotationBinding[length];
                        i10 = length;
                    }
                }
                i10 = length;
                ReferenceBinding referenceBinding2 = (ReferenceBinding) binding;
                long j14 = referenceBinding2.tagBits;
                if ((8589934592L & j14) != 0) {
                    return null;
                }
                referenceBinding2.tagBits = j14 | 25769803776L;
                if (i10 > 0) {
                    annotationBindingArr = new AnnotationBinding[i10];
                    referenceBinding2.setAnnotations(annotationBindingArr, false);
                }
            } else {
                i10 = length;
                LocalVariableBinding localVariableBinding = (LocalVariableBinding) binding;
                long j15 = localVariableBinding.tagBits;
                if ((8589934592L & j15) != 0) {
                    return null;
                }
                localVariableBinding.tagBits = j15 | 25769803776L;
                if (i10 > 0) {
                    annotationBindingArr = new AnnotationBinding[i10];
                    localVariableBinding.setAnnotations(annotationBindingArr, blockScope, false);
                }
            }
            if (annotationArr != null) {
                return annotationBindingArr;
            }
            int i13 = 0;
            while (i13 < i10) {
                int i14 = 0;
                Annotation annotation = annotationArr[i13];
                Binding binding2 = annotation.recipient;
                if (binding2 != null && binding != null) {
                    int kind2 = binding.kind();
                    if (kind2 == 1) {
                        ((FieldBinding) binding).tagBits = ((FieldBinding) binding2).tagBits;
                        if (annotationBindingArr != null) {
                            while (i14 < i10) {
                                annotationBindingArr[i14] = annotationArr[i14].getCompilerAnnotation();
                                i14++;
                            }
                        }
                    } else if (kind2 == 2) {
                        LocalVariableBinding localVariableBinding2 = (LocalVariableBinding) binding;
                        long j16 = ((LocalVariableBinding) binding2).tagBits;
                        localVariableBinding2.tagBits = j16;
                        if ((j16 & 1125899906842624L) == 0) {
                            if (annotationBindingArr != null) {
                                while (i14 < i10) {
                                    annotationBindingArr[i14] = annotationArr[i14].getCompilerAnnotation();
                                    i14++;
                                }
                            }
                        } else if (annotationBindingArr != null) {
                            LocalDeclaration localDeclaration = localVariableBinding2.declaration;
                            int i15 = localDeclaration.declarationSourceEnd;
                            int i16 = localDeclaration.declarationSourceStart;
                            while (i14 < i10) {
                                Annotation annotation2 = annotationArr[i14];
                                AnnotationBinding compilerAnnotation = annotation2.getCompilerAnnotation();
                                annotationBindingArr[i14] = compilerAnnotation;
                                if (compilerAnnotation != null && (annotationType = compilerAnnotation.getAnnotationType()) != null && annotationType.f102482id == 49) {
                                    annotation2.recordSuppressWarnings(blockScope, i16, i15, blockScope.compilerOptions().suppressWarnings);
                                }
                                i14++;
                            }
                        }
                    } else if (kind2 == 16388 && annotationBindingArr != null) {
                        while (i14 < i10) {
                            annotationBindingArr[i14] = annotationArr[i14].getCompilerAnnotation();
                            i14++;
                        }
                    }
                    return annotationBindingArr;
                }
                annotation.recipient = binding;
                annotation.resolveType(blockScope);
                if (annotationBindingArr != null) {
                    annotationBindingArr[i13] = annotation.getCompilerAnnotation();
                }
                i13++;
                referenceBinding = null;
            }
            if (binding != null && binding.isTaggedRepeatable()) {
                for (int i17 = 0; i17 < i10; i17++) {
                    Annotation annotation3 = annotationArr[i17];
                    AnnotationBinding annotationBinding = annotationBindingArr[i17];
                    ReferenceBinding annotationType2 = annotationBinding != null ? annotationBinding.getAnnotationType() : referenceBinding;
                    if (annotationType2 != null && annotationType2.f102482id == 90) {
                        annotation3.checkRepeatableMetaAnnotation(blockScope);
                    }
                }
            }
            if (annotationBindingArr != null && i10 > 1) {
                Object obj = annotationBindingArr;
                ?? r72 = referenceBinding;
                int i18 = 0;
                while (i18 < i10) {
                    ?? r82 = obj[i18];
                    if (r82 != null) {
                        ReferenceBinding annotationType3 = r82.getAnnotationType();
                        ?? r14 = referenceBinding;
                        int i19 = i18 + 1;
                        boolean z11 = false;
                        r72 = r72;
                        while (i19 < i10) {
                            ?? r15 = obj[i19];
                            r72 = r72;
                            r14 = r14;
                            if (r15 != null) {
                                r72 = r72;
                                r14 = r14;
                                if (TypeBinding.equalsEquals(r15.getAnnotationType(), annotationType3)) {
                                    if (obj == annotationBindingArr) {
                                        AnnotationBinding[] annotationBindingArr3 = new AnnotationBinding[i10];
                                        System.arraycopy(obj, 0, annotationBindingArr3, 0, i10);
                                        obj = annotationBindingArr3;
                                    }
                                    obj[i19] = referenceBinding;
                                    if (annotationType3.isRepeatableAnnotationType()) {
                                        Annotation persistibleAnnotation = annotationArr[i18].getPersistibleAnnotation();
                                        ContainerAnnotation containerAnnotation = r14;
                                        if (persistibleAnnotation instanceof ContainerAnnotation) {
                                            containerAnnotation = (ContainerAnnotation) persistibleAnnotation;
                                        }
                                        if (containerAnnotation == null) {
                                            ReferenceBinding containerAnnotationType = annotationType3.containerAnnotationType();
                                            containerAnnotation = new ContainerAnnotation(annotationArr[i18], containerAnnotationType, blockScope);
                                            r72 = r72;
                                            if (r72 == 0) {
                                                r72 = new HashMap(3);
                                            }
                                            r72.put(containerAnnotationType, annotationArr[i18]);
                                            Annotation.checkForInstancesOfRepeatableWithRepeatingContainerAnnotation(blockScope, annotationType3, annotationArr);
                                        }
                                        containerAnnotation.addContainee(annotationArr[i19]);
                                        r72 = r72;
                                        r14 = containerAnnotation;
                                    } else {
                                        i11 = i18;
                                        blockScope.problemReporter().duplicateAnnotation(annotationArr[i19], blockScope.compilerOptions().sourceLevel);
                                        z11 = true;
                                        obj = obj;
                                        i19++;
                                        i18 = i11;
                                        referenceBinding = null;
                                        r72 = r72;
                                        r14 = r14;
                                    }
                                }
                            }
                            i11 = i18;
                            i19++;
                            i18 = i11;
                            referenceBinding = null;
                            r72 = r72;
                            r14 = r14;
                        }
                        if (r14 != 0) {
                            r14.resolveType(blockScope);
                        }
                        if (z11) {
                            blockScope.problemReporter().duplicateAnnotation(annotationArr[i18], blockScope.compilerOptions().sourceLevel);
                        }
                    }
                    i18++;
                    r72 = r72;
                }
                if (r72 != 0) {
                    for (int i20 = 0; i20 < i10; i20++) {
                        ?? r83 = obj[i20];
                        if (r83 != null) {
                            Annotation annotation4 = annotationArr[i20];
                            ReferenceBinding annotationType4 = r83.getAnnotationType();
                            if (r72.containsKey(annotationType4)) {
                                blockScope.problemReporter().repeatedAnnotationWithContainer((Annotation) r72.get(annotationType4), annotation4);
                            }
                        }
                    }
                }
            }
            if (z10) {
                copySE8AnnotationsToType(blockScope, binding, annotationArr, false);
            }
            return annotationBindingArr;
        }
        i10 = length;
        annotationBindingArr = null;
        if (annotationArr != null) {
        }
    }

    public static TypeBinding resolveAnnotations(BlockScope blockScope, Annotation[][] annotationArr, TypeBinding typeBinding) {
        int length = annotationArr == null ? 0 : annotationArr.length;
        if (typeBinding == null || length == 0) {
            return typeBinding;
        }
        AnnotationBinding[][] annotationBindingArr = new AnnotationBinding[length];
        for (int i10 = 0; i10 < length; i10++) {
            Annotation[] annotationArr2 = annotationArr[i10];
            if (annotationArr2 != null && annotationArr2.length > 0) {
                annotationBindingArr[i10] = resolveAnnotations(blockScope, annotationArr2, TypeBinding.TYPE_USE_BINDING, false);
            }
        }
        return blockScope.environment().createAnnotatedType(typeBinding, annotationBindingArr);
    }
}
