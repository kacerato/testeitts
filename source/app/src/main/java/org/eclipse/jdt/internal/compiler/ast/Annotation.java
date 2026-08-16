package org.eclipse.jdt.internal.compiler.ast;

import java.util.Stack;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.EnumConstantSignature;
import org.eclipse.jdt.internal.compiler.impl.BooleanConstant;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.IrritantSet;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.ElementValuePair;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public abstract class Annotation extends Expression {
    public int declarationSourceEnd;
    public Binding recipient;
    public TypeReference type;
    static final MemberValuePair[] NoValuePairs = new MemberValuePair[0];
    static final int[] TYPE_PATH_ELEMENT_ARRAY = new int[2];
    static final int[] TYPE_PATH_INNER_TYPE = {1};
    static final int[] TYPE_PATH_ANNOTATION_ON_WILDCARD_BOUND = {2};
    Annotation persistibleAnnotation = this;
    protected AnnotationBinding compilerAnnotation = null;

    public enum AnnotationTargetAllowed {
        YES,
        TYPE_ANNOTATION_ON_QUALIFIED_NAME,
        NO;

        public static AnnotationTargetAllowed[] valuesCustom() {
            AnnotationTargetAllowed[] valuesCustom = values();
            int length = valuesCustom.length;
            AnnotationTargetAllowed[] annotationTargetAllowedArr = new AnnotationTargetAllowed[length];
            System.arraycopy(valuesCustom, 0, annotationTargetAllowedArr, 0, length);
            return annotationTargetAllowedArr;
        }
    }

    public static void checkAnnotationTarget(Annotation annotation, BlockScope blockScope, ReferenceBinding referenceBinding, int i10, Binding binding, long j10) {
        AnnotationTargetAllowed isAnnotationTargetAllowed;
        if (referenceBinding.isValidBinding() && (isAnnotationTargetAllowed = isAnnotationTargetAllowed(annotation, blockScope, referenceBinding, i10)) != AnnotationTargetAllowed.YES) {
            if (isAnnotationTargetAllowed == AnnotationTargetAllowed.TYPE_ANNOTATION_ON_QUALIFIED_NAME) {
                blockScope.problemReporter().typeAnnotationAtQualifiedName(annotation);
            } else {
                blockScope.problemReporter().disallowedTargetForAnnotation(annotation);
            }
            if (binding instanceof TypeBinding) {
                ((TypeBinding) binding).tagBits &= ~j10;
            }
        }
    }

    public static void checkContainerAnnotationType(ASTNode aSTNode, BlockScope blockScope, ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2, boolean z10) {
        boolean z11 = false;
        for (MethodBinding methodBinding : referenceBinding.methods()) {
            if (CharOperation.equals(methodBinding.selector, TypeConstants.VALUE)) {
                if (!methodBinding.returnType.isArrayType() || methodBinding.returnType.dimensions() != 1 || !TypeBinding.equalsEquals(((ArrayBinding) methodBinding.returnType).elementsType(), referenceBinding2)) {
                    referenceBinding2.tagAsHavingDefectiveContainerType();
                    blockScope.problemReporter().containerAnnotationTypeHasWrongValueType(aSTNode, referenceBinding, referenceBinding2, methodBinding.returnType);
                }
                z11 = true;
            } else if ((methodBinding.modifiers & 131072) == 0) {
                referenceBinding2.tagAsHavingDefectiveContainerType();
                blockScope.problemReporter().containerAnnotationTypeHasNonDefaultMembers(aSTNode, referenceBinding, methodBinding.selector);
            }
        }
        if (!z11) {
            referenceBinding2.tagAsHavingDefectiveContainerType();
            blockScope.problemReporter().containerAnnotationTypeMustHaveValue(aSTNode, referenceBinding);
        }
        if (z10) {
            checkContainingAnnotationTargetAtUse((Annotation) aSTNode, blockScope, referenceBinding, referenceBinding2);
        } else {
            checkContainerAnnotationTypeTarget(aSTNode, blockScope, referenceBinding, referenceBinding2);
        }
        long annotationRetention = getAnnotationRetention(referenceBinding2);
        long annotationRetention2 = getAnnotationRetention(referenceBinding);
        if (annotationRetention2 < annotationRetention) {
            referenceBinding2.tagAsHavingDefectiveContainerType();
            blockScope.problemReporter().containerAnnotationTypeHasShorterRetention(aSTNode, referenceBinding2, getRetentionName(annotationRetention), referenceBinding, getRetentionName(annotationRetention2));
        }
        if ((referenceBinding2.getAnnotationTagBits() & 140737488355328L) != 0 && (referenceBinding.getAnnotationTagBits() & 140737488355328L) == 0) {
            referenceBinding2.tagAsHavingDefectiveContainerType();
            blockScope.problemReporter().repeatableAnnotationTypeIsDocumented(aSTNode, referenceBinding2, referenceBinding);
        }
        if ((referenceBinding2.getAnnotationTagBits() & 281474976710656L) == 0 || (referenceBinding.getAnnotationTagBits() & 281474976710656L) != 0) {
            return;
        }
        referenceBinding2.tagAsHavingDefectiveContainerType();
        blockScope.problemReporter().repeatableAnnotationTypeIsInherited(aSTNode, referenceBinding2, referenceBinding);
    }

    /* JADX WARN: Type inference failed for: r4v6, types: [org.eclipse.jdt.internal.compiler.ast.Annotation$1MissingTargetBuilder] */
    private static void checkContainerAnnotationTypeTarget(ASTNode aSTNode, Scope scope, ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2) {
        long annotationTagBits = referenceBinding2.getAnnotationTagBits();
        long j10 = annotationTagBits & TagBits.AnnotationTargetMASK;
        long j11 = TagBits.SE7AnnotationTargetMASK;
        if (j10 == 0) {
            annotationTagBits = 17523466567680L;
        }
        long annotationTagBits2 = referenceBinding.getAnnotationTagBits();
        if ((annotationTagBits2 & TagBits.AnnotationTargetMASK) != 0) {
            j11 = annotationTagBits2;
        }
        final long j12 = annotationTagBits & TagBits.AnnotationTargetMASK;
        final long j13 = TagBits.AnnotationTargetMASK & j11;
        if (((~j12) & j13) != 0) {
            ?? r42 = new Object() {
                StringBuffer targetBuffer = new StringBuffer();

                private void add(char[] cArr) {
                    if (this.targetBuffer.length() != 0) {
                        this.targetBuffer.append(", ");
                    }
                    this.targetBuffer.append(cArr);
                }

                public void check(long j14, char[] cArr) {
                    long j15 = j13 & j14;
                    long j16 = j12;
                    if ((j15 & (~j16)) != 0) {
                        if (j14 != 68719476736L || (9007199254740992L & j16) == 0) {
                            add(cArr);
                        }
                    }
                }

                public void checkAnnotationType(char[] cArr) {
                    if ((j13 & 4398046511104L) == 0 || (j12 & 4466765987840L) != 0) {
                        return;
                    }
                    add(cArr);
                }

                public boolean hasError() {
                    return this.targetBuffer.length() != 0;
                }

                public String toString() {
                    return this.targetBuffer.toString();
                }
            };
            r42.check(68719476736L, TypeConstants.TYPE);
            r42.check(137438953472L, TypeConstants.UPPER_FIELD);
            r42.check(274877906944L, TypeConstants.UPPER_METHOD);
            r42.check(549755813888L, TypeConstants.UPPER_PARAMETER);
            r42.check(1099511627776L, TypeConstants.UPPER_CONSTRUCTOR);
            r42.check(2199023255552L, TypeConstants.UPPER_LOCAL_VARIABLE);
            r42.checkAnnotationType(TypeConstants.UPPER_ANNOTATION_TYPE);
            r42.check(8796093022208L, TypeConstants.UPPER_PACKAGE);
            r42.check(18014398509481984L, TypeConstants.TYPE_PARAMETER_TARGET);
            r42.check(9007199254740992L, TypeConstants.TYPE_USE_TARGET);
            r42.check(2305843009213693952L, TypeConstants.UPPER_MODULE);
            if (r42.hasError()) {
                referenceBinding2.tagAsHavingDefectiveContainerType();
                scope.problemReporter().repeatableAnnotationTypeTargetMismatch(aSTNode, referenceBinding2, referenceBinding, r42.toString());
            }
        }
    }

    public static void checkContainingAnnotationTargetAtUse(Annotation annotation, BlockScope blockScope, TypeBinding typeBinding, TypeBinding typeBinding2) {
        if (typeBinding2.isValidBinding() && isAnnotationTargetAllowed(annotation, blockScope, typeBinding, annotation.recipient.kind()) != AnnotationTargetAllowed.YES) {
            blockScope.problemReporter().disallowedTargetForContainerAnnotation(annotation, typeBinding);
        }
    }

    public static void checkForInstancesOfRepeatableWithRepeatingContainerAnnotation(BlockScope blockScope, ReferenceBinding referenceBinding, Annotation[] annotationArr) {
        MethodBinding[] methods = referenceBinding.getMethods(TypeConstants.VALUE);
        if (methods.length != 1) {
            return;
        }
        TypeBinding typeBinding = methods[0].returnType;
        if (typeBinding.isArrayType() && typeBinding.dimensions() == 1) {
            TypeBinding elementsType = ((ArrayBinding) typeBinding).elementsType();
            if (elementsType.isRepeatableAnnotationType()) {
                for (Annotation annotation : annotationArr) {
                    if (TypeBinding.equalsEquals(elementsType, annotation.resolvedType)) {
                        blockScope.problemReporter().repeatableAnnotationWithRepeatingContainer(annotation, referenceBinding);
                        return;
                    }
                }
            }
        }
    }

    private long detectStandardAnnotation(Scope scope, ReferenceBinding referenceBinding, MemberValuePair memberValuePair) {
        long j10;
        long j11;
        FieldBinding fieldBinding;
        FieldBinding fieldBinding2;
        FieldBinding fieldBinding3;
        int i10 = referenceBinding.f102482id;
        if (i10 == 60) {
            j10 = 2251799813685248L;
        } else if (i10 == 61) {
            j10 = 4503599627370496L;
        } else if (i10 == 77) {
            j10 = 576460752303423488L;
        } else if (i10 != 90) {
            int i11 = 0;
            j10 = 0;
            switch (i10) {
                case 44:
                    if (scope.compilerOptions().complianceLevel >= ClassFileConstants.JDK9) {
                        MemberValuePair[] memberValuePairs = memberValuePairs();
                        int length = memberValuePairs.length;
                        while (true) {
                            if (i11 < length) {
                                MemberValuePair memberValuePair2 = memberValuePairs[i11];
                                if (!CharOperation.equals(memberValuePair2.name, TypeConstants.FOR_REMOVAL)) {
                                    i11++;
                                } else if (memberValuePair2.value instanceof TrueLiteral) {
                                    j10 = 4611756387171565568L;
                                    break;
                                }
                            }
                        }
                    }
                    j10 = 70368744177664L;
                    break;
                case 45:
                    j10 = 140737488355328L;
                    break;
                case 46:
                    j10 = 281474976710656L;
                    break;
                case 47:
                    j10 = 562949953421312L;
                    break;
                case 48:
                    if (memberValuePair != null) {
                        Expression expression = memberValuePair.value;
                        if ((expression.bits & 3) == 1 && (expression instanceof Reference) && (fieldBinding = ((Reference) expression).fieldBinding()) != null && fieldBinding.declaringClass.f102482id == 51) {
                            j10 = getRetentionPolicy(fieldBinding.name);
                            break;
                        }
                    }
                    break;
                case 49:
                    j10 = 1125899906842624L;
                    break;
                case 50:
                    long j12 = 34359738368L;
                    if (memberValuePair != null) {
                        Expression expression2 = memberValuePair.value;
                        if (!(expression2 instanceof ArrayInitializer)) {
                            if ((expression2.bits & 3) == 1 && (fieldBinding2 = ((Reference) expression2).fieldBinding()) != null && fieldBinding2.declaringClass.f102482id == 52) {
                                j10 = 34359738368L | getTargetElementType(fieldBinding2.name);
                                break;
                            }
                        } else {
                            Expression[] expressionArr = ((ArrayInitializer) expression2).expressions;
                            if (expressionArr != null) {
                                int length2 = expressionArr.length;
                                while (i11 < length2) {
                                    Expression expression3 = expressionArr[i11];
                                    if ((expression3.bits & 3) == 1 && (fieldBinding3 = ((Reference) expression3).fieldBinding()) != null && fieldBinding3.declaringClass.f102482id == 52) {
                                        long targetElementType = getTargetElementType(fieldBinding3.name);
                                        if ((j12 & targetElementType) != 0) {
                                            scope.problemReporter().duplicateTargetInTargetAnnotation(referenceBinding, (NameReference) expression3);
                                        } else {
                                            j12 |= targetElementType;
                                        }
                                    }
                                    i11++;
                                }
                            }
                        }
                    }
                    j10 = j12;
                    break;
            }
        } else {
            j10 = 1152921504606846976L;
        }
        if (referenceBinding.hasNullBit(64)) {
            j11 = 36028797018963968L;
        } else {
            if (!referenceBinding.hasNullBit(32)) {
                if (referenceBinding.hasNullBit(128)) {
                    return j10 | determineNonNullByDefaultTagBits(referenceBinding, memberValuePair);
                }
                return j10;
            }
            j11 = 72057594037927936L;
        }
        j10 |= j11;
        return j10;
    }

    private long determineNonNullByDefaultTagBits(ReferenceBinding referenceBinding, MemberValuePair memberValuePair) {
        int nullLocationBitsFromAnnotationValue;
        long j10 = 0;
        Object obj = null;
        if (memberValuePair != null) {
            ElementValuePair elementValuePair = memberValuePair.compilerElementPair;
            if (elementValuePair != null) {
                obj = elementValuePair.value;
            }
        } else {
            MethodBinding[] methods = referenceBinding.methods();
            if (methods == null || methods.length != 1) {
                j10 = 56;
            } else {
                obj = methods[0].getDefaultValue();
            }
        }
        if (obj instanceof BooleanConstant) {
            nullLocationBitsFromAnnotationValue = ((BooleanConstant) obj).booleanValue() ? 56 : 2;
        } else {
            if (obj == null) {
                int evaluateTypeQualifierDefault = BinaryTypeBinding.evaluateTypeQualifierDefault(referenceBinding);
                return evaluateTypeQualifierDefault != 0 ? evaluateTypeQualifierDefault : j10;
            }
            nullLocationBitsFromAnnotationValue = nullLocationBitsFromAnnotationValue(obj);
        }
        return j10 | nullLocationBitsFromAnnotationValue;
    }

    private static int evaluateDefaultNullnessLocation(Object obj) {
        char[] cArr;
        if (obj instanceof FieldBinding) {
            cArr = ((FieldBinding) obj).name;
        } else if (obj instanceof EnumConstantSignature) {
            cArr = ((EnumConstantSignature) obj).getEnumConstantName();
        } else if (obj instanceof ElementValuePair.UnresolvedEnumConstant) {
            cArr = ((ElementValuePair.UnresolvedEnumConstant) obj).getEnumConstantName();
        } else {
            if (obj instanceof BooleanConstant) {
                return ((BooleanConstant) obj).booleanValue() ? 56 : 2;
            }
            cArr = null;
        }
        if (cArr == null) {
            return 0;
        }
        int length = cArr.length;
        if (length == 5) {
            return CharOperation.equals(cArr, TypeConstants.DEFAULT_LOCATION__FIELD) ? 32 : 0;
        }
        if (length == 13) {
            return CharOperation.equals(cArr, TypeConstants.DEFAULT_LOCATION__TYPE_ARGUMENT) ? 64 : 0;
        }
        if (length == 14) {
            if (CharOperation.equals(cArr, TypeConstants.DEFAULT_LOCATION__TYPE_PARAMETER)) {
                return 128;
            }
            return CharOperation.equals(cArr, TypeConstants.DEFAULT_LOCATION__ARRAY_CONTENTS) ? 512 : 0;
        }
        switch (length) {
            case 9:
                return CharOperation.equals(cArr, TypeConstants.DEFAULT_LOCATION__PARAMETER) ? 8 : 0;
            case 10:
                return CharOperation.equals(cArr, TypeConstants.DEFAULT_LOCATION__TYPE_BOUND) ? 256 : 0;
            case 11:
                return CharOperation.equals(cArr, TypeConstants.DEFAULT_LOCATION__RETURN_TYPE) ? 16 : 0;
            default:
                return 0;
        }
    }

    private static int evaluateElementTypeNullnessLocation(Object obj) {
        char[] enumConstantName = obj instanceof FieldBinding ? ((FieldBinding) obj).name : obj instanceof EnumConstantSignature ? ((EnumConstantSignature) obj).getEnumConstantName() : obj instanceof ElementValuePair.UnresolvedEnumConstant ? ((ElementValuePair.UnresolvedEnumConstant) obj).getEnumConstantName() : null;
        if (enumConstantName == null) {
            return 0;
        }
        int length = enumConstantName.length;
        return length != 5 ? length != 6 ? (length == 9 && CharOperation.equals(enumConstantName, TypeConstants.UPPER_PARAMETER)) ? 8 : 0 : CharOperation.equals(enumConstantName, TypeConstants.UPPER_METHOD) ? 16 : 0 : CharOperation.equals(enumConstantName, TypeConstants.UPPER_FIELD) ? 32 : 0;
    }

    private static long getAnnotationRetention(ReferenceBinding referenceBinding) {
        long annotationTagBits = referenceBinding.getAnnotationTagBits() & 52776558133248L;
        if (annotationTagBits != 0) {
            return annotationTagBits;
        }
        return 35184372088832L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int[] getLocations(Expression expression, Annotation annotation) {
        if (expression == null) {
            return null;
        }
        C1LocationCollector c1LocationCollector = new C1LocationCollector(annotation);
        expression.traverse(c1LocationCollector, (BlockScope) null);
        if (c1LocationCollector.typePathEntries.isEmpty()) {
            return null;
        }
        int size = c1LocationCollector.typePathEntries.size();
        int[] iArr = new int[size * 2];
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            int[] iArr2 = (int[]) c1LocationCollector.typePathEntries.get(i11);
            int i12 = i10 + 1;
            iArr[i10] = iArr2[0];
            i10 += 2;
            iArr[i12] = iArr2[1];
        }
        return iArr;
    }

    public static String getRetentionName(long j10) {
        return (j10 & 52776558133248L) == 52776558133248L ? new String(TypeConstants.UPPER_RUNTIME) : (j10 & 17592186044416L) != 0 ? new String(TypeConstants.UPPER_SOURCE) : new String(TypeConstants.UPPER_CLASS);
    }

    public static long getRetentionPolicy(char[] cArr) {
        if (cArr == null || cArr.length == 0) {
            return 0L;
        }
        char c10 = cArr[0];
        return c10 != 'C' ? c10 != 'R' ? (c10 == 'S' && CharOperation.equals(cArr, TypeConstants.UPPER_SOURCE)) ? 17592186044416L : 0L : CharOperation.equals(cArr, TypeConstants.UPPER_RUNTIME) ? 52776558133248L : 0L : CharOperation.equals(cArr, TypeConstants.UPPER_CLASS) ? 35184372088832L : 0L;
    }

    public static long getTargetElementType(char[] cArr) {
        if (cArr == null || cArr.length == 0) {
            return 0L;
        }
        char c10 = cArr[0];
        if (c10 == 'A') {
            return CharOperation.equals(cArr, TypeConstants.UPPER_ANNOTATION_TYPE) ? 4398046511104L : 0L;
        }
        if (c10 == 'C') {
            return CharOperation.equals(cArr, TypeConstants.UPPER_CONSTRUCTOR) ? 1099511627776L : 0L;
        }
        if (c10 == 'F') {
            return CharOperation.equals(cArr, TypeConstants.UPPER_FIELD) ? 137438953472L : 0L;
        }
        if (c10 == 'P') {
            if (CharOperation.equals(cArr, TypeConstants.UPPER_PARAMETER)) {
                return 549755813888L;
            }
            return CharOperation.equals(cArr, TypeConstants.UPPER_PACKAGE) ? 8796093022208L : 0L;
        }
        if (c10 == 'T') {
            if (CharOperation.equals(cArr, TypeConstants.TYPE)) {
                return 68719476736L;
            }
            if (CharOperation.equals(cArr, TypeConstants.TYPE_USE_TARGET)) {
                return 9007199254740992L;
            }
            return CharOperation.equals(cArr, TypeConstants.TYPE_PARAMETER_TARGET) ? 18014398509481984L : 0L;
        }
        if (c10 == 'L') {
            return CharOperation.equals(cArr, TypeConstants.UPPER_LOCAL_VARIABLE) ? 2199023255552L : 0L;
        }
        if (c10 != 'M') {
            return 0L;
        }
        if (CharOperation.equals(cArr, TypeConstants.UPPER_METHOD)) {
            return 274877906944L;
        }
        return CharOperation.equals(cArr, TypeConstants.UPPER_MODULE) ? 2305843009213693952L : 0L;
    }

    private static AnnotationTargetAllowed isAnnotationTargetAllowed(Binding binding, BlockScope blockScope, TypeBinding typeBinding, int i10, long j10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 4) {
                    if (i10 == 8) {
                        MethodBinding methodBinding = (MethodBinding) binding;
                        if (methodBinding.isConstructor()) {
                            if ((9008298766368768L & j10) != 0) {
                                return AnnotationTargetAllowed.YES;
                            }
                        } else {
                            if ((274877906944L & j10) != 0) {
                                return AnnotationTargetAllowed.YES;
                            }
                            if ((j10 & 9007199254740992L) != 0) {
                                if (isTypeUseCompatible(((MethodDeclaration) ((SourceTypeBinding) methodBinding.declaringClass).scope.referenceContext.declarationOf(methodBinding)).returnType, blockScope)) {
                                    return AnnotationTargetAllowed.YES;
                                }
                                return AnnotationTargetAllowed.TYPE_ANNOTATION_ON_QUALIFIED_NAME;
                            }
                        }
                    } else if (i10 != 16) {
                        if (i10 != 64) {
                            if (i10 != 2052) {
                                if (i10 != 4100) {
                                    if (i10 == 16388) {
                                        if ((j10 & 9007199254740992L) != 0) {
                                            return AnnotationTargetAllowed.YES;
                                        }
                                        if (blockScope.compilerOptions().sourceLevel < ClassFileConstants.JDK1_8) {
                                            return AnnotationTargetAllowed.YES;
                                        }
                                    }
                                } else if ((27021597764222976L & j10) != 0) {
                                    return AnnotationTargetAllowed.YES;
                                }
                            }
                        } else if ((2305843009213693952L & j10) != 0) {
                            return AnnotationTargetAllowed.YES;
                        }
                    } else {
                        if ((j10 & 8796093022208L) != 0) {
                            return AnnotationTargetAllowed.YES;
                        }
                        if (blockScope.compilerOptions().sourceLevel <= ClassFileConstants.JDK1_6 && CharOperation.equals(((SourceTypeBinding) binding).sourceName, TypeConstants.PACKAGE_INFO_NAME)) {
                            return AnnotationTargetAllowed.YES;
                        }
                    }
                }
                ReferenceBinding referenceBinding = (ReferenceBinding) binding;
                if (referenceBinding.isAnnotationType()) {
                    if ((9011666020728832L & j10) != 0) {
                        return AnnotationTargetAllowed.YES;
                    }
                } else {
                    if ((9007267974217728L & j10) != 0) {
                        return AnnotationTargetAllowed.YES;
                    }
                    if ((j10 & 8796093022208L) != 0 && CharOperation.equals(referenceBinding.sourceName, TypeConstants.PACKAGE_INFO_NAME)) {
                        return AnnotationTargetAllowed.YES;
                    }
                }
            } else {
                LocalVariableBinding localVariableBinding = (LocalVariableBinding) binding;
                if ((localVariableBinding.tagBits & 1024) != 0) {
                    if ((549755813888L & j10) != 0) {
                        return AnnotationTargetAllowed.YES;
                    }
                    if ((j10 & 9007199254740992L) != 0) {
                        if (isTypeUseCompatible(localVariableBinding.declaration.type, blockScope)) {
                            return AnnotationTargetAllowed.YES;
                        }
                        return AnnotationTargetAllowed.TYPE_ANNOTATION_ON_QUALIFIED_NAME;
                    }
                } else {
                    if ((typeBinding.tagBits & 2199023255552L) != 0) {
                        return AnnotationTargetAllowed.YES;
                    }
                    if ((j10 & 9007199254740992L) != 0) {
                        if (localVariableBinding.declaration.isTypeNameVar(blockScope)) {
                            return AnnotationTargetAllowed.NO;
                        }
                        if (isTypeUseCompatible(localVariableBinding.declaration.type, blockScope)) {
                            return AnnotationTargetAllowed.YES;
                        }
                        return AnnotationTargetAllowed.TYPE_ANNOTATION_ON_QUALIFIED_NAME;
                    }
                }
            }
        } else {
            if ((137438953472L & j10) != 0) {
                return AnnotationTargetAllowed.YES;
            }
            if ((j10 & 9007199254740992L) != 0) {
                FieldBinding fieldBinding = (FieldBinding) binding;
                if (isTypeUseCompatible(((SourceTypeBinding) fieldBinding.declaringClass).scope.referenceContext.declarationOf(fieldBinding).type, blockScope)) {
                    return AnnotationTargetAllowed.YES;
                }
                return AnnotationTargetAllowed.TYPE_ANNOTATION_ON_QUALIFIED_NAME;
            }
        }
        return AnnotationTargetAllowed.NO;
    }

    public static boolean isTypeUseCompatible(TypeReference typeReference, Scope scope) {
        return typeReference == null || (typeReference instanceof SingleTypeReference) || !(scope.getPackage(typeReference.getTypeName()) instanceof PackageBinding);
    }

    public static int nullLocationBitsFromAnnotationValue(Object obj) {
        if (!(obj instanceof Object[])) {
            return evaluateDefaultNullnessLocation(obj);
        }
        Object[] objArr = (Object[]) obj;
        if (objArr.length == 0) {
            return 2;
        }
        int i10 = 0;
        for (Object obj2 : objArr) {
            i10 |= evaluateDefaultNullnessLocation(obj2);
        }
        return i10;
    }

    public static int nullLocationBitsFromElementTypeAnnotationValue(Object obj) {
        if (!(obj instanceof Object[])) {
            return evaluateElementTypeNullnessLocation(obj);
        }
        Object[] objArr = (Object[]) obj;
        if (objArr.length == 0) {
            return 2;
        }
        int i10 = 0;
        for (Object obj2 : objArr) {
            i10 |= evaluateElementTypeNullnessLocation(obj2);
        }
        return i10;
    }

    public void checkRepeatableMetaAnnotation(BlockScope blockScope) {
        ReferenceBinding referenceBinding = (ReferenceBinding) this.recipient;
        MemberValuePair[] memberValuePairs = memberValuePairs();
        if (memberValuePairs == null || memberValuePairs.length != 1) {
            return;
        }
        Object obj = memberValuePairs[0].compilerElementPair.value;
        if (obj instanceof ReferenceBinding) {
            ReferenceBinding referenceBinding2 = (ReferenceBinding) obj;
            if (referenceBinding2.isAnnotationType()) {
                referenceBinding.setContainerAnnotationType(referenceBinding2);
                checkContainerAnnotationType(memberValuePairs[0], blockScope, referenceBinding2, referenceBinding, false);
            }
        }
    }

    public ElementValuePair[] computeElementValuePairs() {
        return Binding.NO_ELEMENT_VALUE_PAIRS;
    }

    public AnnotationBinding getCompilerAnnotation() {
        return this.compilerAnnotation;
    }

    public Annotation getPersistibleAnnotation() {
        return this.persistibleAnnotation;
    }

    public long handleNonNullByDefault(BlockScope blockScope) {
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding == null) {
            typeBinding = this.type.resolveType(blockScope);
            if (typeBinding == null) {
                return 0L;
            }
            this.resolvedType = typeBinding;
        }
        if (!typeBinding.isAnnotationType()) {
            return 0L;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding;
        if (!referenceBinding.hasNullBit(128)) {
            return 0L;
        }
        MethodBinding[] methods = referenceBinding.methods();
        MemberValuePair[] memberValuePairs = memberValuePairs();
        MemberValuePair memberValuePair = null;
        for (MethodBinding methodBinding : methods) {
            char[] cArr = methodBinding.selector;
            for (MemberValuePair memberValuePair2 : memberValuePairs) {
                if (memberValuePair2 != null) {
                    char[] cArr2 = memberValuePair2.name;
                    if (CharOperation.equals(cArr2, cArr) && memberValuePair == null && CharOperation.equals(cArr2, TypeConstants.VALUE)) {
                        memberValuePair2.binding = methodBinding;
                        memberValuePair2.resolveTypeExpecting(blockScope, methodBinding.returnType);
                        memberValuePair = memberValuePair2;
                    }
                }
            }
        }
        return (int) (determineNonNullByDefaultTagBits(referenceBinding, memberValuePair) & 1018);
    }

    public boolean hasNullBit(int i10) {
        TypeBinding typeBinding = this.resolvedType;
        return (typeBinding instanceof ReferenceBinding) && ((ReferenceBinding) typeBinding).hasNullBit(i10);
    }

    public boolean isRuntimeInvisible() {
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding == null) {
            return false;
        }
        long annotationTagBits = typeBinding.getAnnotationTagBits();
        if ((27021597764222976L & annotationTagBits) != 0 && (TagBits.SE7AnnotationTargetMASK & annotationTagBits) == 0) {
            return false;
        }
        long j10 = annotationTagBits & 52776558133248L;
        return j10 == 0 || j10 == 35184372088832L;
    }

    public boolean isRuntimeTypeInvisible() {
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding == null) {
            return false;
        }
        long annotationTagBits = typeBinding.getAnnotationTagBits();
        if ((TagBits.AnnotationTargetMASK & annotationTagBits) == 0 || (27021597764222976L & annotationTagBits) == 0) {
            return false;
        }
        long j10 = annotationTagBits & 52776558133248L;
        return j10 == 0 || j10 == 35184372088832L;
    }

    public boolean isRuntimeTypeVisible() {
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding == null) {
            return false;
        }
        long annotationTagBits = typeBinding.getAnnotationTagBits();
        if ((TagBits.AnnotationTargetMASK & annotationTagBits) == 0 || (27021597764222976L & annotationTagBits) == 0) {
            return false;
        }
        long j10 = annotationTagBits & 52776558133248L;
        return j10 != 0 && j10 == 52776558133248L;
    }

    public boolean isRuntimeVisible() {
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding == null) {
            return false;
        }
        long annotationTagBits = typeBinding.getAnnotationTagBits();
        if ((27021597764222976L & annotationTagBits) != 0 && (TagBits.SE7AnnotationTargetMASK & annotationTagBits) == 0) {
            return false;
        }
        long j10 = annotationTagBits & 52776558133248L;
        return j10 != 0 && j10 == 52776558133248L;
    }

    public abstract MemberValuePair[] memberValuePairs();

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append('@');
        this.type.printExpression(0, stringBuffer);
        return stringBuffer;
    }

    public void recordSuppressWarnings(Scope scope, int i10, int i11, boolean z10) {
        IrritantSet irritantSet;
        MemberValuePair[] memberValuePairs = memberValuePairs();
        int length = memberValuePairs.length;
        int i12 = 0;
        while (true) {
            irritantSet = null;
            if (i12 >= length) {
                break;
            }
            MemberValuePair memberValuePair = memberValuePairs[i12];
            if (CharOperation.equals(memberValuePair.name, TypeConstants.VALUE)) {
                Expression expression = memberValuePair.value;
                if (expression instanceof ArrayInitializer) {
                    Expression[] expressionArr = ((ArrayInitializer) expression).expressions;
                    if (expressionArr != null) {
                        int length2 = expressionArr.length;
                        for (int i13 = 0; i13 < length2; i13++) {
                            Constant constant = expressionArr[i13].constant;
                            if (constant != Constant.NotAConstant && constant.typeID() == 11) {
                                IrritantSet warningTokenToIrritants = CompilerOptions.warningTokenToIrritants(constant.stringValue());
                                if (warningTokenToIrritants == null) {
                                    scope.problemReporter().unhandledWarningToken(expressionArr[i13]);
                                } else if (irritantSet == null) {
                                    irritantSet = new IrritantSet(warningTokenToIrritants);
                                } else if (irritantSet.set(warningTokenToIrritants) == null) {
                                    scope.problemReporter().unusedWarningToken(expressionArr[i13]);
                                }
                            }
                        }
                    }
                } else {
                    Constant constant2 = expression.constant;
                    if (constant2 != Constant.NotAConstant && constant2.typeID() == 11) {
                        IrritantSet warningTokenToIrritants2 = CompilerOptions.warningTokenToIrritants(constant2.stringValue());
                        if (warningTokenToIrritants2 != null) {
                            irritantSet = new IrritantSet(warningTokenToIrritants2);
                        } else {
                            scope.problemReporter().unhandledWarningToken(expression);
                        }
                    }
                }
            } else {
                i12++;
            }
        }
        IrritantSet irritantSet2 = irritantSet;
        if (!z10 || irritantSet2 == null) {
            return;
        }
        scope.referenceCompilationUnit().recordSuppressWarnings(irritantSet2, this, i10, i11, scope.referenceContext());
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x00ef, code lost:
    
        if (r11 != 2052) goto L39;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TypeBinding resolveType(BlockScope blockScope) {
        int i10;
        MethodBinding[] methodBindingArr;
        TypeBinding typeBinding;
        MethodBinding[] methodBindingArr2;
        TypeBinding typeBinding2;
        if (this.compilerAnnotation != null) {
            return this.resolvedType;
        }
        this.constant = Constant.NotAConstant;
        TypeBinding typeBinding3 = this.resolvedType;
        TypeBinding typeBinding4 = null;
        boolean z10 = true;
        if (typeBinding3 == null) {
            typeBinding3 = this.type.resolveType(blockScope);
            if (typeBinding3 == null) {
                this.resolvedType = new ProblemReferenceBinding(this.type.getTypeName(), null, 1);
                return null;
            }
            this.resolvedType = typeBinding3;
        }
        if (!typeBinding3.isAnnotationType() && typeBinding3.isValidBinding()) {
            blockScope.problemReporter().notAnnotationType(typeBinding3, this.type);
            return null;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) this.resolvedType;
        MethodBinding[] methods = referenceBinding.methods();
        MemberValuePair[] memberValuePairs = memberValuePairs();
        int length = memberValuePairs.length;
        int i11 = 0;
        if (length > 0) {
            MemberValuePair[] memberValuePairArr = new MemberValuePair[length];
            System.arraycopy(memberValuePairs, 0, memberValuePairArr, 0, length);
            memberValuePairs = memberValuePairArr;
        }
        int length2 = methods.length;
        MemberValuePair memberValuePair = null;
        int i12 = 0;
        while (i12 < length2) {
            int i13 = i11;
            MethodBinding methodBinding = methods[i12];
            char[] cArr = methodBinding.selector;
            MemberValuePair memberValuePair2 = memberValuePair;
            int i14 = i13;
            int i15 = i14;
            while (true) {
                if (i14 < length) {
                    MemberValuePair memberValuePair3 = memberValuePairs[i14];
                    if (memberValuePair3 != null) {
                        char[] cArr2 = memberValuePair3.name;
                        if (CharOperation.equals(cArr2, cArr)) {
                            MemberValuePair memberValuePair4 = (memberValuePair2 == null && CharOperation.equals(cArr2, TypeConstants.VALUE)) ? memberValuePair3 : memberValuePair2;
                            memberValuePair3.binding = methodBinding;
                            memberValuePair3.resolveTypeExpecting(blockScope, methodBinding.returnType);
                            memberValuePairs[i14] = typeBinding4;
                            int i16 = i14 + 1;
                            boolean z11 = false;
                            while (i16 < length) {
                                MemberValuePair memberValuePair5 = memberValuePairs[i16];
                                if (memberValuePair5 == null) {
                                    methodBindingArr2 = methods;
                                } else {
                                    methodBindingArr2 = methods;
                                    if (CharOperation.equals(memberValuePair5.name, cArr)) {
                                        blockScope.problemReporter().duplicateAnnotationValue(referenceBinding, memberValuePair5);
                                        memberValuePair5.binding = methodBinding;
                                        memberValuePair5.resolveTypeExpecting(blockScope, methodBinding.returnType);
                                        typeBinding2 = null;
                                        memberValuePairs[i16] = null;
                                        z11 = true;
                                        i16++;
                                        typeBinding4 = typeBinding2;
                                        methods = methodBindingArr2;
                                    }
                                }
                                typeBinding2 = null;
                                i16++;
                                typeBinding4 = typeBinding2;
                                methods = methodBindingArr2;
                            }
                            if (z11) {
                                blockScope.problemReporter().duplicateAnnotationValue(referenceBinding, memberValuePair3);
                                memberValuePair = memberValuePair4;
                                break;
                            }
                            methodBindingArr = methods;
                            typeBinding = typeBinding4;
                            memberValuePair2 = memberValuePair4;
                            i15 = 1;
                            i14++;
                            typeBinding4 = typeBinding;
                            methods = methodBindingArr;
                        }
                    }
                    methodBindingArr = methods;
                    typeBinding = typeBinding4;
                    i14++;
                    typeBinding4 = typeBinding;
                    methods = methodBindingArr;
                } else {
                    if (i15 == 0 && (methodBinding.modifiers & 131072) == 0 && (this.bits & 32) == 0 && referenceBinding.isValidBinding()) {
                        blockScope.problemReporter().missingValueForAnnotationMember(this, cArr);
                    }
                    memberValuePair = memberValuePair2;
                }
            }
            i12++;
            z10 = true;
            i11 = 0;
        }
        int i17 = i11;
        while (i17 < length) {
            int i18 = i11;
            if (memberValuePairs[i17] != null) {
                if (referenceBinding.isValidBinding()) {
                    blockScope.problemReporter().undefinedAnnotationValue(referenceBinding, memberValuePairs[i17]);
                }
                memberValuePairs[i17].resolveTypeExpecting(blockScope, typeBinding4);
            }
            i17++;
            i11 = i18;
        }
        this.compilerAnnotation = blockScope.environment().createAnnotation((ReferenceBinding) this.resolvedType, computeElementValuePairs());
        long detectStandardAnnotation = detectStandardAnnotation(blockScope, referenceBinding, memberValuePair);
        int i19 = (int) (1018 & detectStandardAnnotation);
        long j10 = (-1019) & detectStandardAnnotation;
        CompilerOptions compilerOptions = blockScope.compilerOptions();
        if ((70368744177664L & detectStandardAnnotation) != 0 && compilerOptions.complianceLevel >= ClassFileConstants.JDK9 && !compilerOptions.storeAnnotations) {
            this.recipient.setAnnotations(new AnnotationBinding[]{this.compilerAnnotation}, z10);
        }
        blockScope.referenceCompilationUnit().recordSuppressWarnings(IrritantSet.NLS, null, this.sourceStart, this.declarationSourceEnd, blockScope.referenceContext());
        Binding binding = this.recipient;
        if (binding != null) {
            int kind = binding.kind();
            if (j10 != 0 || i19 != 0) {
                if (kind != z10) {
                    if (kind != 2) {
                        if (kind != 4) {
                            if (kind == 8) {
                                MethodBinding methodBinding2 = (MethodBinding) this.recipient;
                                methodBinding2.tagBits = j10 | methodBinding2.tagBits;
                                if ((detectStandardAnnotation & 1125899906842624L) != 0) {
                                    AbstractMethodDeclaration declarationOf = ((SourceTypeBinding) methodBinding2.declaringClass).scope.referenceContext.declarationOf(methodBinding2);
                                    recordSuppressWarnings(blockScope, declarationOf.declarationSourceStart, declarationOf.declarationSourceEnd, compilerOptions.suppressWarnings);
                                }
                                long j11 = methodBinding2.tagBits & TagBits.AnnotationNullMASK;
                                if (j11 == TagBits.AnnotationNullMASK) {
                                    blockScope.problemReporter().contradictoryNullAnnotations(this);
                                    methodBinding2.tagBits &= -108086391056891905L;
                                }
                                if (j11 != 0 && methodBinding2.isConstructor()) {
                                    if (compilerOptions.sourceLevel >= ClassFileConstants.JDK1_8) {
                                        blockScope.problemReporter().nullAnnotationUnsupportedLocation(this);
                                    }
                                    methodBinding2.tagBits &= -108086391056891905L;
                                }
                                methodBinding2.defaultNullness |= i19;
                            } else if (kind == 16) {
                                PackageBinding packageBinding = (PackageBinding) this.recipient;
                                packageBinding.tagBits = j10 | packageBinding.tagBits;
                            } else if (kind == 64) {
                                SourceModuleBinding sourceModuleBinding = (SourceModuleBinding) this.recipient;
                                sourceModuleBinding.tagBits = j10 | sourceModuleBinding.tagBits;
                                if ((detectStandardAnnotation & 1125899906842624L) != 0) {
                                    recordSuppressWarnings(blockScope, 0, sourceModuleBinding.scope.referenceContext.moduleDeclaration.declarationSourceEnd, compilerOptions.suppressWarnings);
                                }
                                sourceModuleBinding.defaultNullness |= i19;
                            }
                        }
                        SourceTypeBinding sourceTypeBinding = (SourceTypeBinding) this.recipient;
                        if ((1152921504606846976L & detectStandardAnnotation) == 0 || sourceTypeBinding.isAnnotationType()) {
                            sourceTypeBinding.tagBits = j10 | sourceTypeBinding.tagBits;
                        }
                        if ((detectStandardAnnotation & 1125899906842624L) != 0) {
                            TypeDeclaration typeDeclaration = sourceTypeBinding.scope.referenceContext;
                            recordSuppressWarnings(blockScope, blockScope.referenceCompilationUnit().types[0] == typeDeclaration ? 0 : typeDeclaration.declarationSourceStart, typeDeclaration.declarationSourceEnd, compilerOptions.suppressWarnings);
                        }
                        sourceTypeBinding.defaultNullness |= i19;
                    } else {
                        LocalVariableBinding localVariableBinding = (LocalVariableBinding) this.recipient;
                        long j12 = j10 | localVariableBinding.tagBits;
                        localVariableBinding.tagBits = j12;
                        if ((j12 & TagBits.AnnotationNullMASK) == TagBits.AnnotationNullMASK) {
                            blockScope.problemReporter().contradictoryNullAnnotations(this);
                            localVariableBinding.tagBits &= -108086391056891905L;
                        }
                        if ((detectStandardAnnotation & 1125899906842624L) != 0) {
                            LocalDeclaration localDeclaration = localVariableBinding.declaration;
                            recordSuppressWarnings(blockScope, localDeclaration.declarationSourceStart, localDeclaration.declarationSourceEnd, compilerOptions.suppressWarnings);
                        }
                    }
                    i10 = 4;
                } else {
                    FieldBinding fieldBinding = (FieldBinding) this.recipient;
                    fieldBinding.tagBits = j10 | fieldBinding.tagBits;
                    if ((detectStandardAnnotation & 1125899906842624L) != 0) {
                        FieldDeclaration declarationOf2 = ((SourceTypeBinding) fieldBinding.declaringClass).scope.referenceContext.declarationOf(fieldBinding);
                        recordSuppressWarnings(blockScope, declarationOf2.declarationSourceStart, declarationOf2.declarationSourceEnd, compilerOptions.suppressWarnings);
                    }
                    if (i19 != 0) {
                        FieldDeclaration declarationOf3 = ((SourceTypeBinding) fieldBinding.declaringClass).scope.referenceContext.declarationOf(fieldBinding);
                        Binding checkRedundantDefaultNullness = blockScope.parent.checkRedundantDefaultNullness(blockScope.localNonNullByDefaultValue(declarationOf3.sourceStart) | i19, declarationOf3.sourceStart);
                        i10 = 4;
                        blockScope.recordNonNullByDefault(declarationOf3.binding, i19, this, declarationOf3.declarationSourceStart, declarationOf3.declarationSourceEnd);
                        if (checkRedundantDefaultNullness != null) {
                            blockScope.problemReporter().nullDefaultAnnotationIsRedundant(declarationOf3, new Annotation[]{this}, checkRedundantDefaultNullness);
                        }
                    } else {
                        i10 = 4;
                    }
                    if ((fieldBinding.tagBits & TagBits.AnnotationNullMASK) == TagBits.AnnotationNullMASK) {
                        blockScope.problemReporter().contradictoryNullAnnotations(this);
                        fieldBinding.tagBits &= -108086391056891905L;
                    }
                }
                checkAnnotationTarget(this, blockScope, referenceBinding, (kind == i10 || !CharOperation.equals(((SourceTypeBinding) this.recipient).sourceName, TypeConstants.PACKAGE_INFO_NAME)) ? kind : 16, this.recipient, detectStandardAnnotation & TagBits.AnnotationNullMASK);
            }
            i10 = 4;
            checkAnnotationTarget(this, blockScope, referenceBinding, (kind == i10 || !CharOperation.equals(((SourceTypeBinding) this.recipient).sourceName, TypeConstants.PACKAGE_INFO_NAME)) ? kind : 16, this.recipient, detectStandardAnnotation & TagBits.AnnotationNullMASK);
        }
        return this.resolvedType;
    }

    public void setPersistibleAnnotation(ContainerAnnotation containerAnnotation) {
        this.persistibleAnnotation = containerAnnotation;
    }

    @Override
    public abstract void traverse(ASTVisitor aSTVisitor, BlockScope blockScope);

    @Override
    public abstract void traverse(ASTVisitor aSTVisitor, ClassScope classScope);

    public static void isTypeUseCompatible(TypeReference typeReference, Scope scope, Annotation[] annotationArr) {
        if (annotationArr == null || typeReference == null || typeReference.getAnnotatableLevels() == 1 || scope.environment().globalOptions.sourceLevel < ClassFileConstants.JDK1_8) {
            return;
        }
        TypeBinding typeBinding = typeReference.resolvedType;
        TypeBinding leafComponentType = typeBinding == null ? null : typeBinding.leafComponentType();
        if (leafComponentType == null || !leafComponentType.isNestedType()) {
            return;
        }
        for (Annotation annotation : annotationArr) {
            long annotationTagBits = annotation.resolvedType.getAnnotationTagBits();
            if ((9007199254740992L & annotationTagBits) != 0 && (annotationTagBits & TagBits.SE7AnnotationTargetMASK) == 0) {
                ReferenceBinding referenceBinding = (ReferenceBinding) leafComponentType;
                while (true) {
                    if (referenceBinding.isNestedType()) {
                        if (referenceBinding.isStatic()) {
                            QualifiedTypeReference.rejectAnnotationsOnStaticMemberQualififer(scope, referenceBinding, new Annotation[]{annotation});
                            break;
                        } else {
                            if (annotation.hasNullBit(96)) {
                                scope.problemReporter().nullAnnotationAtQualifyingType(annotation);
                                break;
                            }
                            referenceBinding = referenceBinding.enclosingType();
                        }
                    }
                }
            }
        }
    }

    public class C1LocationCollector extends ASTVisitor {
        Annotation searchedAnnotation;
        boolean continueSearch = true;
        Stack typePathEntries = new Stack();

        public C1LocationCollector(Annotation annotation) {
            this.searchedAnnotation = annotation;
        }

        private int[] computeNestingDepth(TypeReference typeReference) {
            TypeBinding typeBinding = typeReference.resolvedType;
            TypeBinding leafComponentType = typeBinding == null ? null : typeBinding.leafComponentType();
            int annotatableLevels = typeReference.getAnnotatableLevels();
            int[] iArr = new int[annotatableLevels];
            if (leafComponentType != null && leafComponentType.isNestedType()) {
                int i10 = 0;
                for (TypeBinding typeBinding2 = leafComponentType; typeBinding2 != null; typeBinding2 = typeBinding2.enclosingType()) {
                    i10 += !typeBinding2.isStatic() ? 1 : 0;
                }
                for (int i11 = annotatableLevels - 1; leafComponentType != null && i11 >= 0; i11--) {
                    iArr[i11] = i10;
                    i10 -= !leafComponentType.isStatic() ? 1 : 0;
                    leafComponentType = leafComponentType.enclosingType();
                }
            }
            return iArr;
        }

        private void inspectAnnotations(Annotation[] annotationArr) {
            int length = annotationArr == null ? 0 : annotationArr.length;
            for (int i10 = 0; this.continueSearch && i10 < length; i10++) {
                if (annotationArr[i10] == this.searchedAnnotation) {
                    this.continueSearch = false;
                }
            }
        }

        private void inspectArrayDimensions(Annotation[][] annotationArr, int i10) {
            for (int i11 = 0; this.continueSearch && i11 < i10; i11++) {
                inspectAnnotations(annotationArr == null ? null : annotationArr[i11]);
                if (!this.continueSearch) {
                    return;
                }
                this.typePathEntries.push(Annotation.TYPE_PATH_ELEMENT_ARRAY);
            }
        }

        private void inspectTypeArguments(TypeReference[] typeReferenceArr) {
            int length = typeReferenceArr == null ? 0 : typeReferenceArr.length;
            for (int i10 = 0; this.continueSearch && i10 < length; i10++) {
                int size = this.typePathEntries.size();
                this.typePathEntries.add(new int[]{3, i10});
                typeReferenceArr[i10].traverse(this, (BlockScope) null);
                if (!this.continueSearch) {
                    return;
                }
                this.typePathEntries.setSize(size);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("search location for ");
            stringBuffer.append((Object) this.searchedAnnotation);
            stringBuffer.append("\ncurrent type_path entries : ");
            int size = this.typePathEntries.size();
            for (int i10 = 0; i10 < size; i10++) {
                int[] iArr = (int[]) this.typePathEntries.get(i10);
                stringBuffer.append('(');
                stringBuffer.append(iArr[0]);
                stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                stringBuffer.append(iArr[1]);
                stringBuffer.append(')');
            }
            return String.valueOf(stringBuffer);
        }

        public boolean visit(TypeReference typeReference, BlockScope blockScope) {
            if (this.continueSearch) {
                inspectArrayDimensions(typeReference.getAnnotationsOnDimensions(), typeReference.dimensions());
                if (this.continueSearch) {
                    int[] computeNestingDepth = computeNestingDepth(typeReference);
                    Annotation[][] annotationArr = typeReference.annotations;
                    TypeReference[][] typeArguments = typeReference.getTypeArguments();
                    int annotatableLevels = typeReference.getAnnotatableLevels();
                    int size = this.typePathEntries.size();
                    while (true) {
                        annotatableLevels--;
                        if (!this.continueSearch || annotatableLevels < 0) {
                            break;
                        }
                        this.typePathEntries.setSize(size);
                        int i10 = computeNestingDepth[annotatableLevels];
                        for (int i11 = 0; i11 < i10; i11++) {
                            this.typePathEntries.add(Annotation.TYPE_PATH_INNER_TYPE);
                        }
                        if (annotationArr != null) {
                            inspectAnnotations(annotationArr[annotatableLevels]);
                        }
                        if (this.continueSearch && typeArguments != null) {
                            inspectTypeArguments(typeArguments[annotatableLevels]);
                        }
                    }
                }
            }
            return false;
        }

        @Override
        public boolean visit(SingleTypeReference singleTypeReference, BlockScope blockScope) {
            return visit((TypeReference) singleTypeReference, blockScope);
        }

        @Override
        public boolean visit(ArrayTypeReference arrayTypeReference, BlockScope blockScope) {
            return visit((TypeReference) arrayTypeReference, blockScope);
        }

        @Override
        public boolean visit(ParameterizedSingleTypeReference parameterizedSingleTypeReference, BlockScope blockScope) {
            return visit((TypeReference) parameterizedSingleTypeReference, blockScope);
        }

        @Override
        public boolean visit(QualifiedTypeReference qualifiedTypeReference, BlockScope blockScope) {
            return visit((TypeReference) qualifiedTypeReference, blockScope);
        }

        @Override
        public boolean visit(ArrayQualifiedTypeReference arrayQualifiedTypeReference, BlockScope blockScope) {
            return visit((TypeReference) arrayQualifiedTypeReference, blockScope);
        }

        @Override
        public boolean visit(ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference, BlockScope blockScope) {
            return visit((TypeReference) parameterizedQualifiedTypeReference, blockScope);
        }

        @Override
        public boolean visit(Wildcard wildcard, BlockScope blockScope) {
            TypeReference typeReference;
            visit((TypeReference) wildcard, blockScope);
            if (!this.continueSearch || (typeReference = wildcard.bound) == null) {
                return false;
            }
            int size = this.typePathEntries.size();
            this.typePathEntries.push(Annotation.TYPE_PATH_ANNOTATION_ON_WILDCARD_BOUND);
            typeReference.traverse(this, blockScope);
            if (!this.continueSearch) {
                return false;
            }
            this.typePathEntries.setSize(size);
            return false;
        }

        @Override
        public boolean visit(ArrayAllocationExpression arrayAllocationExpression, BlockScope blockScope) {
            if (!this.continueSearch) {
                return false;
            }
            inspectArrayDimensions(arrayAllocationExpression.getAnnotationsOnDimensions(), arrayAllocationExpression.dimensions.length);
            if (this.continueSearch) {
                arrayAllocationExpression.type.traverse(this, blockScope);
            }
            if (this.continueSearch) {
                throw new IllegalStateException();
            }
            return false;
        }
    }

    public static boolean isAnnotationTargetAllowed(BlockScope blockScope, TypeBinding typeBinding, Binding binding) {
        long annotationTagBits = typeBinding.getAnnotationTagBits();
        return (TagBits.AnnotationTargetMASK & annotationTagBits) == 0 || isAnnotationTargetAllowed(binding, blockScope, typeBinding, binding.kind(), annotationTagBits) == AnnotationTargetAllowed.YES;
    }

    public static AnnotationTargetAllowed isAnnotationTargetAllowed(Annotation annotation, BlockScope blockScope, TypeBinding typeBinding, int i10) {
        long annotationTagBits = typeBinding.getAnnotationTagBits();
        if ((TagBits.AnnotationTargetMASK & annotationTagBits) == 0) {
            if (i10 == 4100 || i10 == 16388) {
                blockScope.problemReporter().explitAnnotationTargetRequired(annotation);
            }
            return AnnotationTargetAllowed.YES;
        }
        if ((TagBits.SE7AnnotationTargetMASK & annotationTagBits) == 0 && (27021597764222976L & annotationTagBits) != 0 && blockScope.compilerOptions().sourceLevel < ClassFileConstants.JDK1_8 && (i10 == 1 || i10 == 2 || i10 == 4 || i10 == 8 || i10 == 16 || i10 == 2052)) {
            blockScope.problemReporter().invalidUsageOfTypeAnnotations(annotation);
        }
        return isAnnotationTargetAllowed(annotation.recipient, blockScope, typeBinding, i10, annotationTagBits);
    }
}
