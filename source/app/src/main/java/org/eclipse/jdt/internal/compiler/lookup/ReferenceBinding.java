package org.eclipse.jdt.internal.compiler.lookup;

import android.bluetooth.BluetoothClass;
import android.content.IntentFilter;
import java.util.Arrays;
import java.util.Comparator;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.NullAnnotationMatching;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import w2.C15883c;

public abstract class ReferenceBinding extends TypeBinding {
    private SimpleLookupTable compatibleCache;
    public char[][] compoundName;
    char[] constantPoolName;
    public PackageBinding fPackage;
    char[] fileName;
    public int modifiers;
    char[] signature;
    protected MethodBinding[] singleAbstractMethod;
    public char[] sourceName;
    int typeBits;
    public static final ReferenceBinding LUB_GENERIC = new ReferenceBinding() {
        {
            this.f102482id = 0;
        }

        @Override
        public boolean hasTypeBit(int i10) {
            return false;
        }
    };
    private static final Comparator<FieldBinding> FIELD_COMPARATOR = new Comparator<FieldBinding>() {
        @Override
        public int compare(FieldBinding fieldBinding, FieldBinding fieldBinding2) {
            char[] cArr = fieldBinding.name;
            char[] cArr2 = fieldBinding2.name;
            return ReferenceBinding.compare(cArr, cArr2, cArr.length, cArr2.length);
        }
    };
    private static final Comparator<MethodBinding> METHOD_COMPARATOR = new Comparator<MethodBinding>() {
        @Override
        public int compare(MethodBinding methodBinding, MethodBinding methodBinding2) {
            char[] cArr = methodBinding.selector;
            char[] cArr2 = methodBinding2.selector;
            int compare = ReferenceBinding.compare(cArr, cArr2, cArr.length, cArr2.length);
            return compare == 0 ? methodBinding.parameters.length - methodBinding2.parameters.length : compare;
        }
    };
    protected static ProblemMethodBinding samProblemBinding = new ProblemMethodBinding(TypeConstants.ANONYMOUS_METHOD, null, 17);

    public ReferenceBinding(ReferenceBinding referenceBinding) {
        super(referenceBinding);
        this.compoundName = referenceBinding.compoundName;
        this.sourceName = referenceBinding.sourceName;
        this.modifiers = referenceBinding.modifiers;
        this.fPackage = referenceBinding.fPackage;
        this.fileName = referenceBinding.fileName;
        this.constantPoolName = referenceBinding.constantPoolName;
        this.signature = referenceBinding.signature;
        this.compatibleCache = referenceBinding.compatibleCache;
        this.typeBits = referenceBinding.typeBits;
        this.singleAbstractMethod = referenceBinding.singleAbstractMethod;
    }

    public static FieldBinding binarySearch(char[] cArr, FieldBinding[] fieldBindingArr) {
        int length;
        if (fieldBindingArr == null || (length = fieldBindingArr.length) == 0) {
            return null;
        }
        int i10 = length - 1;
        int length2 = cArr.length;
        int i11 = 0;
        while (i11 <= i10) {
            int i12 = ((i10 - i11) / 2) + i11;
            char[] cArr2 = fieldBindingArr[i12].name;
            int compare = compare(cArr, cArr2, length2, cArr2.length);
            if (compare < 0) {
                i10 = i12 - 1;
            } else {
                if (compare <= 0) {
                    return fieldBindingArr[i12];
                }
                i11 = i12 + 1;
            }
        }
        return null;
    }

    public static int compare(char[] cArr, char[] cArr2, int i10, int i11) {
        int min = Math.min(i10, i11);
        int i12 = 0;
        while (true) {
            int i13 = min - 1;
            if (min == 0) {
                return i10 - i11;
            }
            char c10 = cArr[i12];
            int i14 = i12 + 1;
            char c11 = cArr2[i12];
            if (c10 != c11) {
                return c10 - c11;
            }
            min = i13;
            i12 = i14;
        }
    }

    private static SourceTypeBinding getSourceTypeBinding(ReferenceBinding referenceBinding) {
        if (referenceBinding instanceof SourceTypeBinding) {
            return (SourceTypeBinding) referenceBinding;
        }
        if (!(referenceBinding instanceof ParameterizedTypeBinding)) {
            return null;
        }
        ReferenceBinding referenceBinding2 = ((ParameterizedTypeBinding) referenceBinding).type;
        if (referenceBinding2 instanceof SourceTypeBinding) {
            return (SourceTypeBinding) referenceBinding2;
        }
        return null;
    }

    private boolean isCompatibleWith0(TypeBinding typeBinding, Scope scope) {
        MethodScope methodScope;
        TypeBinding typeBinding2;
        if (TypeBinding.equalsEquals(typeBinding, this) || typeBinding.f102482id == 1 || isEquivalentTo(typeBinding)) {
            return true;
        }
        int kind = typeBinding.kind();
        if (kind != 4 && kind != 260 && kind != 1028 && kind != 2052) {
            if (kind == 4100) {
                if (typeBinding.isCapture() && (typeBinding2 = ((CaptureBinding) typeBinding).lowerBound) != null) {
                    if (typeBinding2.isArrayType()) {
                        return false;
                    }
                    return isCompatibleWith(typeBinding2);
                }
                if ((typeBinding instanceof InferenceVariable) && scope != null && (methodScope = scope.methodScope()) != null) {
                    ReferenceContext referenceContext = methodScope.referenceContext;
                    if ((referenceContext instanceof LambdaExpression) && ((LambdaExpression) referenceContext).inferenceContext != null) {
                        return true;
                    }
                }
            } else if (kind != 32772) {
                return false;
            }
        }
        int kind2 = kind();
        if ((kind2 == 260 || kind2 == 1028 || kind2 == 2052) && TypeBinding.equalsEquals(erasure(), typeBinding.erasure())) {
            return false;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding;
        if (referenceBinding.isIntersectionType18()) {
            ReferenceBinding[] referenceBindingArr = ((IntersectionTypeBinding18) referenceBinding).intersectingTypes;
            for (ReferenceBinding referenceBinding2 : referenceBindingArr) {
                if (!isCompatibleWith(referenceBinding2)) {
                    return false;
                }
            }
            return true;
        }
        if (referenceBinding.isInterface()) {
            if (implementsInterface(referenceBinding, true)) {
                return true;
            }
            if ((this instanceof TypeVariableBinding) && scope != null) {
                TypeBinding typeBinding3 = ((TypeVariableBinding) this).firstBound;
                if (typeBinding3 instanceof ParameterizedTypeBinding) {
                    return typeBinding3.capture(scope, -1, -1).isCompatibleWith(referenceBinding);
                }
            }
        }
        if (isInterface()) {
            return false;
        }
        return referenceBinding.isSuperclassOf(this);
    }

    public static boolean isConsistentIntersection(TypeBinding[] typeBindingArr) {
        int length = typeBindingArr.length;
        TypeBinding[] typeBindingArr2 = new TypeBinding[length];
        for (int i10 = 0; i10 < length; i10++) {
            TypeBinding typeBinding = typeBindingArr[i10];
            if (!typeBinding.isClass() && !typeBinding.isArrayType()) {
                typeBinding = typeBinding.superclass();
            }
            typeBindingArr2[i10] = typeBinding;
        }
        TypeBinding typeBinding2 = typeBindingArr2[0];
        for (int i11 = 1; i11 < length; i11++) {
            TypeBinding typeBinding3 = typeBindingArr2[i11];
            if (!typeBinding3.isTypeVariable() && !typeBinding3.isWildcard() && typeBinding3.isProperType(true) && !typeBinding2.isSubtypeOf(typeBinding3, false)) {
                if (!typeBinding3.isSubtypeOf(typeBinding2, false)) {
                    return false;
                }
                typeBinding2 = typeBinding3;
            }
        }
        return true;
    }

    public static void sortFields(FieldBinding[] fieldBindingArr, int i10, int i11) {
        Arrays.sort(fieldBindingArr, i10, i11, FIELD_COMPARATOR);
    }

    public static void sortMethods(MethodBinding[] methodBindingArr, int i10, int i11) {
        Arrays.sort(methodBindingArr, i10, i11, METHOD_COMPARATOR);
    }

    @Override
    public boolean acceptsNonNullDefault() {
        return true;
    }

    public void appendNullAnnotation(StringBuffer stringBuffer, CompilerOptions compilerOptions) {
        if (compilerOptions.isAnnotationBasedNullAnalysisEnabled) {
            if (compilerOptions.usesNullTypeAnnotations()) {
                for (AnnotationBinding annotationBinding : this.typeAnnotations) {
                    ReferenceBinding annotationType = annotationBinding.getAnnotationType();
                    if (annotationType.hasNullBit(96)) {
                        stringBuffer.append('@');
                        stringBuffer.append(annotationType.shortReadableName());
                        stringBuffer.append(C15883c.f126249O);
                    }
                }
                return;
            }
            if ((this.tagBits & 72057594037927936L) != 0) {
                char[][] cArr = compilerOptions.nonNullAnnotationName;
                stringBuffer.append('@');
                stringBuffer.append(cArr[cArr.length - 1]);
                stringBuffer.append(C15883c.f126249O);
            }
            if ((this.tagBits & 36028797018963968L) != 0) {
                char[][] cArr2 = compilerOptions.nullableAnnotationName;
                stringBuffer.append('@');
                stringBuffer.append(cArr2[cArr2.length - 1]);
                stringBuffer.append(C15883c.f126249O);
            }
        }
    }

    public int applyCloseableClassWhitelists() {
        char[][] cArr = this.compoundName;
        int length = cArr.length;
        if (length != 3) {
            if (length == 4 && CharOperation.equals(TypeConstants.JAVA, cArr[0]) && CharOperation.equals(TypeConstants.UTIL, this.compoundName[1]) && CharOperation.equals(TypeConstants.ZIP, this.compoundName[2])) {
                char[] cArr2 = this.compoundName[3];
                int length2 = TypeConstants.JAVA_UTIL_ZIP_WRAPPER_CLOSEABLES.length;
                for (int i10 = 0; i10 < length2; i10++) {
                    if (CharOperation.equals(cArr2, TypeConstants.JAVA_UTIL_ZIP_WRAPPER_CLOSEABLES[i10])) {
                        return 4;
                    }
                }
            }
        } else if (CharOperation.equals(TypeConstants.JAVA, cArr[0]) && CharOperation.equals(TypeConstants.IO, this.compoundName[1])) {
            char[] cArr3 = this.compoundName[2];
            int length3 = TypeConstants.JAVA_IO_WRAPPER_CLOSEABLES.length;
            for (int i11 = 0; i11 < length3; i11++) {
                if (CharOperation.equals(cArr3, TypeConstants.JAVA_IO_WRAPPER_CLOSEABLES[i11])) {
                    return 4;
                }
            }
            int length4 = TypeConstants.JAVA_IO_RESOURCE_FREE_CLOSEABLES.length;
            for (int i12 = 0; i12 < length4; i12++) {
                if (CharOperation.equals(cArr3, TypeConstants.JAVA_IO_RESOURCE_FREE_CLOSEABLES[i12])) {
                    return 8;
                }
            }
        }
        int length5 = TypeConstants.OTHER_WRAPPER_CLOSEABLES.length;
        for (int i13 = 0; i13 < length5; i13++) {
            if (CharOperation.equals(this.compoundName, TypeConstants.OTHER_WRAPPER_CLOSEABLES[i13])) {
                return 4;
            }
        }
        return 0;
    }

    public int applyCloseableInterfaceWhitelists() {
        if (this.compoundName.length == 4) {
            for (int i10 = 0; i10 < 2; i10++) {
                if (!CharOperation.equals(this.compoundName[i10], TypeConstants.JAVA_UTIL_STREAM[i10])) {
                    return 0;
                }
            }
            for (char[] cArr : TypeConstants.RESOURCE_FREE_CLOSEABLE_J_U_STREAMS) {
                if (CharOperation.equals(this.compoundName[3], cArr)) {
                    return 8;
                }
            }
        }
        return 0;
    }

    public FieldBinding[] availableFields() {
        return fields();
    }

    public MethodBinding[] availableMethods() {
        return methods();
    }

    @Override
    public boolean canBeInstantiated() {
        return (this.modifiers & 26112) == 0;
    }

    public boolean canBeSeenBy(PackageBinding packageBinding) {
        if (isPublic()) {
            return true;
        }
        return !isPrivate() && packageBinding == this.fPackage;
    }

    public char[] computeGenericTypeSignature(TypeVariableBinding[] typeVariableBindingArr) {
        boolean z10 = isMemberType() && hasEnclosingInstanceContext() && (enclosingType().modifiers & 1073741824) != 0;
        TypeVariableBinding[] typeVariableBindingArr2 = Binding.NO_TYPE_VARIABLES;
        if (typeVariableBindingArr == typeVariableBindingArr2 && !z10) {
            return signature();
        }
        StringBuffer stringBuffer = new StringBuffer(10);
        if (z10) {
            char[] genericTypeSignature = enclosingType().genericTypeSignature();
            stringBuffer.append(genericTypeSignature, 0, genericTypeSignature.length - 1);
            stringBuffer.append('.');
            stringBuffer.append(this.sourceName);
        } else {
            char[] signature = signature();
            stringBuffer.append(signature, 0, signature.length - 1);
        }
        if (typeVariableBindingArr == typeVariableBindingArr2) {
            stringBuffer.append(';');
        } else {
            stringBuffer.append('<');
            for (TypeVariableBinding typeVariableBinding : typeVariableBindingArr) {
                stringBuffer.append(typeVariableBinding.genericTypeSignature());
            }
            stringBuffer.append(">;");
        }
        int length = stringBuffer.length();
        char[] cArr = new char[length];
        stringBuffer.getChars(0, length, cArr, 0);
        return cArr;
    }

    public void computeId() {
        char[][] cArr = this.compoundName;
        int length = cArr.length;
        if (length != 3) {
            if (length == 4) {
                if (CharOperation.equals(TypeConstants.COM_GOOGLE_INJECT_INJECT, cArr)) {
                    this.f102482id = 81;
                    return;
                }
                if (CharOperation.equals(TypeConstants.JAVA, this.compoundName[0])) {
                    char[][] cArr2 = this.compoundName;
                    if (cArr2[1].length == 0) {
                        return;
                    }
                    char[] cArr3 = cArr2[2];
                    if (cArr3.length == 0) {
                        return;
                    }
                    char[] cArr4 = cArr2[3];
                    if (cArr4.length == 0) {
                        return;
                    }
                    char c10 = cArr3[0];
                    if (c10 != 'a') {
                        if (c10 != 'i') {
                            if (c10 == 'r' && CharOperation.equals(cArr3, TypeConstants.REFLECT)) {
                                char c11 = cArr4[0];
                                if (c11 == 'C') {
                                    if (CharOperation.equals(cArr4, TypeConstants.JAVA_LANG_REFLECT_CONSTRUCTOR[2])) {
                                        this.f102482id = 20;
                                        return;
                                    }
                                    return;
                                } else {
                                    if (c11 != 'F') {
                                        if (c11 == 'M' && CharOperation.equals(cArr4, TypeConstants.JAVA_LANG_REFLECT_METHOD[2])) {
                                            this.f102482id = 55;
                                            return;
                                        }
                                        return;
                                    }
                                    if (CharOperation.equals(cArr4, TypeConstants.JAVA_LANG_REFLECT_FIELD[2])) {
                                        this.f102482id = 54;
                                        return;
                                    }
                                    return;
                                }
                            }
                            return;
                        }
                        if (CharOperation.equals(cArr3, TypeConstants.INVOKE) && cArr4.length != 0 && cArr4[0] == 'M' && CharOperation.equals(cArr4, TypeConstants.JAVA_LANG_INVOKE_METHODHANDLE_$_POLYMORPHICSIGNATURE[3])) {
                            this.f102482id = 61;
                            return;
                        }
                        return;
                    }
                    if (CharOperation.equals(cArr3, TypeConstants.ANNOTATION)) {
                        char c12 = cArr4[0];
                        if (c12 == 'A') {
                            if (CharOperation.equals(cArr4, TypeConstants.JAVA_LANG_ANNOTATION_ANNOTATION[3])) {
                                this.f102482id = 43;
                                return;
                            }
                            return;
                        }
                        if (c12 == 'I') {
                            if (CharOperation.equals(cArr4, TypeConstants.JAVA_LANG_ANNOTATION_INHERITED[3])) {
                                this.f102482id = 46;
                                return;
                            }
                            return;
                        }
                        if (c12 != 'R') {
                            if (c12 == 'T') {
                                if (CharOperation.equals(cArr4, TypeConstants.JAVA_LANG_ANNOTATION_TARGET[3])) {
                                    this.f102482id = 50;
                                    return;
                                }
                                return;
                            } else {
                                if (c12 != 'D') {
                                    if (c12 == 'E' && CharOperation.equals(cArr4, TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE[3])) {
                                        this.f102482id = 52;
                                        return;
                                    }
                                    return;
                                }
                                if (CharOperation.equals(cArr4, TypeConstants.JAVA_LANG_ANNOTATION_DOCUMENTED[3])) {
                                    this.f102482id = 45;
                                    return;
                                }
                                return;
                            }
                        }
                        int length2 = cArr4.length;
                        if (length2 == 9) {
                            if (CharOperation.equals(cArr4, TypeConstants.JAVA_LANG_ANNOTATION_RETENTION[3])) {
                                this.f102482id = 48;
                                return;
                            }
                            return;
                        } else {
                            if (length2 != 10) {
                                if (length2 == 15 && CharOperation.equals(cArr4, TypeConstants.JAVA_LANG_ANNOTATION_RETENTIONPOLICY[3])) {
                                    this.f102482id = 51;
                                    return;
                                }
                                return;
                            }
                            if (CharOperation.equals(cArr4, TypeConstants.JAVA_LANG_ANNOTATION_REPEATABLE[3])) {
                                this.f102482id = 90;
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            if (length != 5) {
                if (length != 6) {
                    if (length == 7 && CharOperation.equals(TypeConstants.JDT, cArr[2]) && CharOperation.equals(TypeConstants.TYPEBINDING, this.compoundName[6]) && CharOperation.equals(TypeConstants.ORG_ECLIPSE_JDT_INTERNAL_COMPILER_LOOKUP_TYPEBINDING, this.compoundName)) {
                        this.typeBits |= 16;
                        return;
                    }
                    return;
                }
                if (CharOperation.equals(TypeConstants.ORG, cArr[0])) {
                    if (CharOperation.equals(TypeConstants.SPRING, this.compoundName[1])) {
                        if (CharOperation.equals(TypeConstants.AUTOWIRED, this.compoundName[5]) && CharOperation.equals(TypeConstants.ORG_SPRING_AUTOWIRED, this.compoundName)) {
                            this.f102482id = 82;
                            return;
                        }
                        return;
                    }
                    if (CharOperation.equals(TypeConstants.JUNIT, this.compoundName[1])) {
                        if (CharOperation.equals(TypeConstants.METHOD_SOURCE, this.compoundName[5]) && CharOperation.equals(TypeConstants.ORG_JUNIT_METHOD_SOURCE, this.compoundName)) {
                            this.f102482id = 93;
                            return;
                        }
                        return;
                    }
                    if (CharOperation.equals(TypeConstants.JDT, this.compoundName[2]) && CharOperation.equals(TypeConstants.ITYPEBINDING, this.compoundName[5]) && CharOperation.equals(TypeConstants.ORG_ECLIPSE_JDT_CORE_DOM_ITYPEBINDING, this.compoundName)) {
                        this.typeBits |= 16;
                        return;
                    }
                    return;
                }
                return;
            }
            char[] cArr5 = cArr[0];
            char c13 = cArr5[0];
            if (c13 == 'c') {
                if (CharOperation.equals(TypeConstants.COM, cArr5) && CharOperation.equals(TypeConstants.COM_GOOGLE_COMMON_BASE_PRECONDITIONS, this.compoundName)) {
                    this.f102482id = 73;
                    return;
                }
                return;
            }
            if (c13 != 'j') {
                if (c13 == 'o' && CharOperation.equals(TypeConstants.ORG, cArr5)) {
                    char[] cArr6 = this.compoundName[1];
                    if (cArr6.length == 0) {
                        return;
                    }
                    char c14 = cArr6[0];
                    if (c14 != 'a') {
                        if (c14 == 'e' && CharOperation.equals(TypeConstants.ECLIPSE, cArr6)) {
                            char[] cArr7 = this.compoundName[2];
                            if (cArr7.length != 0 && cArr7[0] == 'c' && CharOperation.equals(cArr7, TypeConstants.CORE)) {
                                char[][] cArr8 = this.compoundName;
                                char[] cArr9 = cArr8[3];
                                if (cArr9.length != 0 && cArr9[0] == 'r') {
                                    char[] cArr10 = cArr8[4];
                                    if (cArr10.length == 0) {
                                        return;
                                    }
                                    char[][] cArr11 = TypeConstants.ORG_ECLIPSE_CORE_RUNTIME_ASSERT;
                                    if (CharOperation.equals(cArr9, cArr11[3]) && CharOperation.equals(cArr10, cArr11[4])) {
                                        this.f102482id = 68;
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (CharOperation.equals(TypeConstants.APACHE, cArr6) && CharOperation.equals(TypeConstants.COMMONS, this.compoundName[2])) {
                        if (CharOperation.equals(TypeConstants.ORG_APACHE_COMMONS_LANG_VALIDATE, this.compoundName)) {
                            this.f102482id = 71;
                            return;
                        } else {
                            if (CharOperation.equals(TypeConstants.ORG_APACHE_COMMONS_LANG3_VALIDATE, this.compoundName)) {
                                this.f102482id = 72;
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            if (CharOperation.equals(TypeConstants.JAVA, cArr5)) {
                char[] cArr12 = this.compoundName[1];
                if (cArr12.length != 0 && CharOperation.equals(TypeConstants.LANG, cArr12)) {
                    char[] cArr13 = this.compoundName[2];
                    if (cArr13.length != 0 && cArr13[0] == 'i' && CharOperation.equals(cArr13, TypeConstants.INVOKE)) {
                        char[][] cArr14 = this.compoundName;
                        char[] cArr15 = cArr14[3];
                        if (cArr15.length != 0 && cArr15[0] == 'M') {
                            char[] cArr16 = cArr14[4];
                            if (cArr16.length == 0) {
                                return;
                            }
                            char[][] cArr17 = TypeConstants.JAVA_LANG_INVOKE_METHODHANDLE_POLYMORPHICSIGNATURE;
                            if (CharOperation.equals(cArr15, cArr17[3]) && CharOperation.equals(cArr16, cArr17[4])) {
                                this.f102482id = 61;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        char[] cArr18 = cArr[0];
        int length3 = cArr18.length;
        if (length3 == 3) {
            if (CharOperation.equals(TypeConstants.ORG_JUNIT_ASSERT, cArr)) {
                this.f102482id = 70;
                return;
            }
            return;
        }
        if (length3 != 4) {
            if (length3 != 5) {
                return;
            }
            char c15 = cArr18[1];
            if (c15 != 'a') {
                if (c15 == 'u' && CharOperation.equals(TypeConstants.JUNIT_FRAMEWORK_ASSERT, cArr)) {
                    this.f102482id = 69;
                    return;
                }
                return;
            }
            if (CharOperation.equals(TypeConstants.JAVAX_ANNOTATION_INJECT_INJECT, cArr)) {
                this.f102482id = 80;
                return;
            }
            return;
        }
        if (CharOperation.equals(TypeConstants.JAVA, cArr18)) {
            char[][] cArr19 = this.compoundName;
            char[] cArr20 = cArr19[1];
            if (cArr20.length == 0) {
                return;
            }
            char[] cArr21 = cArr19[2];
            if (cArr21.length == 0) {
                return;
            }
            if (!CharOperation.equals(TypeConstants.LANG, cArr20)) {
                char c16 = cArr20[0];
                if (c16 != 'i') {
                    if (c16 == 'u' && CharOperation.equals(cArr20, TypeConstants.UTIL)) {
                        char c17 = cArr21[0];
                        if (c17 == 'C') {
                            if (CharOperation.equals(cArr21, TypeConstants.JAVA_UTIL_COLLECTION[2])) {
                                this.f102482id = 59;
                                this.typeBits |= 512;
                                return;
                            }
                            return;
                        }
                        if (c17 == 'I') {
                            if (CharOperation.equals(cArr21, TypeConstants.JAVA_UTIL_ITERATOR[2])) {
                                this.f102482id = 39;
                                return;
                            }
                            return;
                        }
                        if (c17 == 'O') {
                            if (CharOperation.equals(cArr21, TypeConstants.JAVA_UTIL_OBJECTS[2])) {
                                this.f102482id = 74;
                                return;
                            }
                            return;
                        } else {
                            if (c17 != 'L') {
                                if (c17 == 'M' && CharOperation.equals(cArr21, TypeConstants.JAVA_UTIL_MAP[2])) {
                                    this.f102482id = 91;
                                    this.typeBits |= 256;
                                    return;
                                }
                                return;
                            }
                            if (CharOperation.equals(cArr21, TypeConstants.JAVA_UTIL_LIST[2])) {
                                this.f102482id = 92;
                                this.typeBits |= 1024;
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                if (CharOperation.equals(cArr20, TypeConstants.IO)) {
                    char c18 = cArr21[0];
                    if (c18 == 'C') {
                        if (CharOperation.equals(cArr21, TypeConstants.JAVA_IO_CLOSEABLE[2])) {
                            this.typeBits |= 2;
                            return;
                        }
                        return;
                    }
                    if (c18 == 'E') {
                        if (CharOperation.equals(cArr21, TypeConstants.JAVA_IO_EXTERNALIZABLE[2])) {
                            this.f102482id = 56;
                            return;
                        }
                        return;
                    }
                    if (c18 == 'I') {
                        if (CharOperation.equals(cArr21, TypeConstants.JAVA_IO_IOEXCEPTION[2])) {
                            this.f102482id = 58;
                            return;
                        }
                        return;
                    } else if (c18 == 'S') {
                        if (CharOperation.equals(cArr21, TypeConstants.JAVA_IO_SERIALIZABLE[2])) {
                            this.f102482id = 37;
                            return;
                        }
                        return;
                    } else {
                        if (c18 != 'O') {
                            if (c18 == 'P' && CharOperation.equals(cArr21, TypeConstants.JAVA_IO_PRINTSTREAM[2])) {
                                this.f102482id = 53;
                                return;
                            }
                            return;
                        }
                        if (CharOperation.equals(cArr21, TypeConstants.JAVA_IO_OBJECTSTREAMEXCEPTION[2])) {
                            this.f102482id = 57;
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            switch (cArr21[0]) {
                case 'A':
                    int length4 = cArr21.length;
                    if (length4 != 13) {
                        if (length4 == 14 && CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_ASSERTIONERROR[2])) {
                            this.f102482id = 35;
                            return;
                        }
                        return;
                    }
                    if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_AUTOCLOSEABLE[2])) {
                        this.f102482id = 62;
                        this.typeBits |= 1;
                        return;
                    }
                    return;
                case 'B':
                    int length5 = cArr21.length;
                    if (length5 != 4) {
                        if (length5 == 7 && CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_BOOLEAN[2])) {
                            this.f102482id = 33;
                            return;
                        }
                        return;
                    }
                    if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_BYTE[2])) {
                        this.f102482id = 26;
                        return;
                    }
                    return;
                case 'C':
                    int length6 = cArr21.length;
                    if (length6 == 5) {
                        if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_CLASS[2])) {
                            this.f102482id = 16;
                            return;
                        }
                        return;
                    } else {
                        if (length6 != 9) {
                            if (length6 == 22 && CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_CLASSNOTFOUNDEXCEPTION[2])) {
                                this.f102482id = 23;
                                return;
                            }
                            return;
                        }
                        if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_CHARACTER[2])) {
                            this.f102482id = 28;
                            return;
                        } else {
                            if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_CLONEABLE[2])) {
                                this.f102482id = 36;
                                return;
                            }
                            return;
                        }
                    }
                case 'D':
                    int length7 = cArr21.length;
                    if (length7 != 6) {
                        if (length7 == 10 && CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_DEPRECATED[2])) {
                            this.f102482id = 44;
                            return;
                        }
                        return;
                    }
                    if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_DOUBLE[2])) {
                        this.f102482id = 32;
                        return;
                    }
                    return;
                case 'E':
                    int length8 = cArr21.length;
                    if (length8 == 4) {
                        if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_ENUM[2])) {
                            this.f102482id = 41;
                            return;
                        }
                        return;
                    } else {
                        if (length8 != 5) {
                            if (length8 == 9 && CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_EXCEPTION[2])) {
                                this.f102482id = 25;
                                return;
                            }
                            return;
                        }
                        if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_ERROR[2])) {
                            this.f102482id = 19;
                            return;
                        }
                        return;
                    }
                case 'F':
                    if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_FLOAT[2])) {
                        this.f102482id = 31;
                        return;
                    } else {
                        if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_FUNCTIONAL_INTERFACE[2])) {
                            this.f102482id = 77;
                            return;
                        }
                        return;
                    }
                case 'G':
                case 'H':
                case 'J':
                case 'K':
                case 'M':
                case 'P':
                case 'Q':
                case 'U':
                default:
                    return;
                case 'I':
                    int length9 = cArr21.length;
                    if (length9 == 7) {
                        if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_INTEGER[2])) {
                            this.f102482id = 29;
                            return;
                        }
                        return;
                    } else {
                        if (length9 != 8) {
                            if (length9 == 24 && CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_ILLEGALARGUMENTEXCEPTION[2])) {
                                this.f102482id = 42;
                                return;
                            }
                            return;
                        }
                        if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_ITERABLE[2])) {
                            this.f102482id = 38;
                            return;
                        }
                        return;
                    }
                case 'L':
                    if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_LONG[2])) {
                        this.f102482id = 30;
                        return;
                    }
                    return;
                case 'N':
                    if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_NOCLASSDEFERROR[2])) {
                        this.f102482id = 22;
                        return;
                    }
                    return;
                case 'O':
                    int length10 = cArr21.length;
                    if (length10 != 6) {
                        if (length10 == 8 && CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_OVERRIDE[2])) {
                            this.f102482id = 47;
                            return;
                        }
                        return;
                    }
                    if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_OBJECT[2])) {
                        this.f102482id = 1;
                        return;
                    }
                    return;
                case 'R':
                    if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_RUNTIMEEXCEPTION[2])) {
                        this.f102482id = 24;
                        return;
                    }
                    return;
                case 'S':
                    int length11 = cArr21.length;
                    if (length11 == 5) {
                        if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_SHORT[2])) {
                            this.f102482id = 27;
                            return;
                        }
                        return;
                    }
                    if (length11 == 6) {
                        if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_STRING[2])) {
                            this.f102482id = 11;
                            return;
                        } else {
                            if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_SYSTEM[2])) {
                                this.f102482id = 18;
                                return;
                            }
                            return;
                        }
                    }
                    if (length11 != 16) {
                        switch (length11) {
                            case 11:
                                if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_SAFEVARARGS[2])) {
                                    this.f102482id = 60;
                                    return;
                                }
                                return;
                            case 12:
                                if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_STRINGBUFFER[2])) {
                                    this.f102482id = 17;
                                    return;
                                }
                                return;
                            case 13:
                                if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_STRINGBUILDER[2])) {
                                    this.f102482id = 40;
                                    return;
                                }
                                return;
                            default:
                                return;
                        }
                    }
                    if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_SUPPRESSWARNINGS[2])) {
                        this.f102482id = 49;
                        return;
                    }
                    return;
                case 'T':
                    if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_THROWABLE[2])) {
                        this.f102482id = 21;
                        return;
                    }
                    return;
                case 'V':
                    if (CharOperation.equals(cArr21, TypeConstants.JAVA_LANG_VOID[2])) {
                        this.f102482id = 34;
                        return;
                    }
                    return;
            }
        }
    }

    @Override
    public char[] computeUniqueKey(boolean z10) {
        return !z10 ? signature() : genericTypeSignature();
    }

    @Override
    public char[] constantPoolName() {
        char[] cArr = this.constantPoolName;
        if (cArr != null) {
            return cArr;
        }
        char[] concatWith = CharOperation.concatWith(this.compoundName, '/');
        this.constantPoolName = concatWith;
        return concatWith;
    }

    @Override
    public String debugName() {
        return this.compoundName != null ? hasTypeAnnotations() ? annotatedDebugName() : new String(readableName()) : "UNNAMED TYPE";
    }

    @Override
    public int depth() {
        int i10 = 0;
        ReferenceBinding referenceBinding = this;
        while (true) {
            referenceBinding = referenceBinding.enclosingType();
            if (referenceBinding == null) {
                return i10;
            }
            i10++;
        }
    }

    public boolean detectAnnotationCycle() {
        long j10 = this.tagBits;
        if ((j10 & 4294967296L) != 0) {
            return false;
        }
        if ((j10 & 2147483648L) != 0) {
            return true;
        }
        this.tagBits = j10 | 2147483648L;
        MethodBinding[] methods = methods();
        int length = methods.length;
        boolean z10 = false;
        for (int i10 = 0; i10 < length; i10++) {
            TypeBinding erasure = methods[i10].returnType.leafComponentType().erasure();
            if (TypeBinding.equalsEquals(this, erasure)) {
                if (this instanceof SourceTypeBinding) {
                    MethodDeclaration methodDeclaration = (MethodDeclaration) methods[i10].sourceMethod();
                    ((SourceTypeBinding) this).scope.problemReporter().annotationCircularity(this, this, methodDeclaration != null ? methodDeclaration.returnType : null);
                }
            } else if (erasure.isAnnotationType() && ((ReferenceBinding) erasure).detectAnnotationCycle()) {
                if (this instanceof SourceTypeBinding) {
                    MethodDeclaration methodDeclaration2 = (MethodDeclaration) methods[i10].sourceMethod();
                    ((SourceTypeBinding) this).scope.problemReporter().annotationCircularity(this, erasure, methodDeclaration2 != null ? methodDeclaration2.returnType : null);
                }
                z10 = true;
            }
        }
        if (z10) {
            return true;
        }
        this.tagBits |= 4294967296L;
        return false;
    }

    @Override
    public ReferenceBinding downwardsProjection(Scope scope, TypeBinding[] typeBindingArr) {
        return this;
    }

    public final ReferenceBinding enclosingTypeAt(int i10) {
        ReferenceBinding referenceBinding = this;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0 || referenceBinding == null) {
                break;
            }
            referenceBinding = referenceBinding.enclosingType();
            i10 = i11;
        }
        return referenceBinding;
    }

    public int enumConstantCount() {
        int i10 = 0;
        for (FieldBinding fieldBinding : fields()) {
            if ((fieldBinding.modifiers & 16384) != 0) {
                i10++;
            }
        }
        return i10;
    }

    public int fieldCount() {
        return fields().length;
    }

    public FieldBinding[] fields() {
        return Binding.NO_FIELDS;
    }

    public final int getAccessFlags() {
        return this.modifiers & 65535;
    }

    @Override
    public long getAnnotationTagBits() {
        return this.tagBits;
    }

    @Override
    public AnnotationBinding[] getAnnotations() {
        return retrieveAnnotations(this);
    }

    public int getEnclosingInstancesSlotSize() {
        return (isStatic() || enclosingType() == null) ? 0 : 1;
    }

    public MethodBinding getExactConstructor(TypeBinding[] typeBindingArr) {
        return null;
    }

    public MethodBinding getExactMethod(char[] cArr, TypeBinding[] typeBindingArr, CompilationUnitScope compilationUnitScope) {
        return null;
    }

    public FieldBinding getField(char[] cArr, boolean z10) {
        return null;
    }

    public char[] getFileName() {
        return this.fileName;
    }

    public MethodBinding[] getInterfaceAbstractContracts(Scope scope, boolean z10, boolean z11) throws InvalidInputException {
        if (!isInterface() || !isValidBinding()) {
            throw new InvalidInputException("Not a functional interface");
        }
        MethodBinding[] methods = methods();
        MethodBinding[] methodBindingArr = new MethodBinding[0];
        int i10 = 0;
        int i11 = 0;
        for (ReferenceBinding referenceBinding : superInterfaces()) {
            MethodBinding[] interfaceAbstractContracts = referenceBinding.getInterfaceAbstractContracts(scope, z10, false);
            int length = interfaceAbstractContracts == null ? 0 : interfaceAbstractContracts.length;
            if (length != 0) {
                int i12 = i11 + length;
                if (i10 < i12) {
                    MethodBinding[] methodBindingArr2 = new MethodBinding[i12];
                    System.arraycopy(methodBindingArr, 0, methodBindingArr2, 0, i11);
                    methodBindingArr = methodBindingArr2;
                    i10 = i12;
                }
                System.arraycopy(interfaceAbstractContracts, 0, methodBindingArr, i11, length);
                i11 = i12;
            }
        }
        LookupEnvironment environment = scope.environment();
        int length2 = methods == null ? 0 : methods.length;
        for (int i13 = 0; i13 < length2; i13++) {
            MethodBinding methodBinding = methods[i13];
            if (methodBinding != null && !methodBinding.isStatic() && !methodBinding.redeclaresPublicObjectMethod(scope) && !methodBinding.isPrivate()) {
                if (!methodBinding.isValidBinding()) {
                    throw new InvalidInputException("Not a functional interface");
                }
                int i14 = 0;
                while (i14 < i11) {
                    MethodBinding methodBinding2 = methodBindingArr[i14];
                    if (methodBinding2 == null || !MethodVerifier.doesMethodOverride(methodBinding, methodBinding2, environment) || i14 >= i11 - 1) {
                        i14++;
                    } else {
                        System.arraycopy(methodBindingArr, i14 + 1, methodBindingArr, i14, i11 - i14);
                    }
                }
                if (!z11 || !methodBinding.isDefaultMethod()) {
                    if (i11 == i10) {
                        i10 += 16;
                        MethodBinding[] methodBindingArr3 = new MethodBinding[i10];
                        System.arraycopy(methodBindingArr, 0, methodBindingArr3, 0, i11);
                        methodBindingArr = methodBindingArr3;
                    }
                    if (environment.globalOptions.isAnnotationBasedNullAnalysisEnabled) {
                        ImplicitNullAnnotationVerifier.ensureNullnessIsKnown(methodBinding, scope);
                    }
                    methodBindingArr[i11] = methodBinding;
                    i11++;
                }
            }
        }
        int i15 = 0;
        while (i15 < i11) {
            MethodBinding methodBinding3 = methodBindingArr[i15];
            if (!TypeBinding.equalsEquals(methodBinding3.declaringClass, this)) {
                int i16 = 0;
                while (i16 < i11) {
                    MethodBinding methodBinding4 = methodBindingArr[i16];
                    if (i15 != i16 && !TypeBinding.equalsEquals(methodBinding4.declaringClass, this) && (methodBinding3 == methodBinding4 || MethodVerifier.doesMethodOverride(methodBinding3, methodBinding4, environment))) {
                        i11--;
                        if (i16 < i11) {
                            System.arraycopy(methodBindingArr, i16 + 1, methodBindingArr, i16, i11 - i16);
                        }
                        i16--;
                        if (i16 < i15) {
                            i15--;
                        }
                    }
                    i16++;
                }
                if (z11 && methodBinding3.isDefaultMethod()) {
                    i11--;
                    if (i15 < i11) {
                        System.arraycopy(methodBindingArr, i15 + 1, methodBindingArr, i15, i11 - i15);
                    }
                    i15--;
                }
            }
            i15++;
        }
        if (i11 >= i10) {
            return methodBindingArr;
        }
        MethodBinding[] methodBindingArr4 = new MethodBinding[i11];
        System.arraycopy(methodBindingArr, 0, methodBindingArr4, 0, i11);
        return methodBindingArr4;
    }

    public ReferenceBinding getMemberType(char[] cArr) {
        ReferenceBinding[] memberTypes = memberTypes();
        int length = memberTypes.length;
        do {
            length--;
            if (length < 0) {
                return null;
            }
        } while (!CharOperation.equals(memberTypes[length].sourceName, cArr));
        return memberTypes[length];
    }

    @Override
    public MethodBinding[] getMethods(char[] cArr) {
        return Binding.NO_METHODS;
    }

    public int getNullDefault() {
        return 0;
    }

    public int getOuterLocalVariablesSlotSize() {
        return 0;
    }

    @Override
    public PackageBinding getPackage() {
        return this.fPackage;
    }

    @Override
    public MethodBinding getSingleAbstractMethod(Scope scope, boolean z10) {
        ReferenceBinding[] referenceBindingArr;
        ReferenceBinding[] referenceBindingArr2;
        ReferenceBinding[] referenceBindingArr3;
        int i10;
        int i11;
        int i12;
        int i13;
        ReferenceBinding[] referenceBindingArr4;
        ReferenceBinding[] referenceBindingArr5;
        int i14;
        int i15 = !z10 ? 1 : 0;
        MethodBinding[] methodBindingArr = this.singleAbstractMethod;
        if (methodBindingArr != null) {
            MethodBinding methodBinding = methodBindingArr[i15];
            if (methodBinding != null) {
                return methodBinding;
            }
        } else {
            this.singleAbstractMethod = new MethodBinding[2];
        }
        if (this.compoundName != null) {
            scope.compilationUnitScope().recordQualifiedReference(this.compoundName);
        }
        int i16 = 1;
        try {
            MethodBinding[] interfaceAbstractContracts = getInterfaceAbstractContracts(scope, z10, true);
            if (interfaceAbstractContracts != null && interfaceAbstractContracts.length != 0) {
                int length = interfaceAbstractContracts.length;
                int i17 = 0;
                char[] cArr = null;
                int i18 = 0;
                int i19 = 0;
                while (i18 < length) {
                    MethodBinding methodBinding2 = interfaceAbstractContracts[i18];
                    if (methodBinding2 != null) {
                        if (cArr != null) {
                            TypeBinding[] typeBindingArr = methodBinding2.parameters;
                            if ((typeBindingArr == null ? 0 : typeBindingArr.length) == i19 && CharOperation.equals(methodBinding2.selector, cArr)) {
                            }
                            MethodBinding[] methodBindingArr2 = this.singleAbstractMethod;
                            ProblemMethodBinding problemMethodBinding = samProblemBinding;
                            methodBindingArr2[i15] = problemMethodBinding;
                            return problemMethodBinding;
                        }
                        char[] cArr2 = methodBinding2.selector;
                        TypeBinding[] typeBindingArr2 = methodBinding2.parameters;
                        i19 = typeBindingArr2 == null ? 0 : typeBindingArr2.length;
                        cArr = cArr2;
                    }
                    i18++;
                    i16 = 1;
                    i17 = 0;
                }
                if (interfaceAbstractContracts.length == i16) {
                    MethodBinding[] methodBindingArr3 = this.singleAbstractMethod;
                    MethodBinding methodBinding3 = interfaceAbstractContracts[i17];
                    methodBindingArr3[i15] = methodBinding3;
                    return methodBinding3;
                }
                LookupEnvironment environment = scope.environment();
                int length2 = interfaceAbstractContracts.length;
                boolean z11 = environment.globalOptions.isAnnotationBasedNullAnalysisEnabled;
                int i20 = length2 - 1;
                int i21 = i17;
                while (i20 >= 0) {
                    MethodBinding methodBinding4 = interfaceAbstractContracts[i20];
                    if (methodBinding4.typeVariables != Binding.NO_TYPE_VARIABLES) {
                        i21 = i16;
                    }
                    TypeBinding typeBinding = methodBinding4.returnType;
                    TypeBinding[] typeBindingArr3 = methodBinding4.parameters;
                    int i22 = i17;
                    while (i22 < length2) {
                        int i23 = length2;
                        int i24 = i20;
                        if (i24 != i22) {
                            MethodBinding methodBinding5 = interfaceAbstractContracts[i22];
                            if (methodBinding5.typeVariables != Binding.NO_TYPE_VARIABLES) {
                                i21 = 1;
                            }
                            if ((i21 != 0 && (methodBinding5 = MethodVerifier.computeSubstituteMethod(methodBinding5, methodBinding4, environment)) == null) || !MethodVerifier.isSubstituteParameterSubsignature(methodBinding4, methodBinding5, environment) || !MethodVerifier.areReturnTypesCompatible(methodBinding4, methodBinding5, environment)) {
                                i20 = i24 - 1;
                                length2 = i23;
                                i16 = 1;
                                i17 = 0;
                            } else if (z11) {
                                TypeBinding strongerType = NullAnnotationMatching.strongerType(typeBinding, methodBinding5.returnType, environment);
                                typeBindingArr3 = NullAnnotationMatching.weakerTypes(typeBindingArr3, methodBinding5.parameters, environment);
                                typeBinding = strongerType;
                            }
                        }
                        i22++;
                        i20 = i24;
                        length2 = i23;
                        i16 = 1;
                        i17 = 0;
                    }
                    ReferenceBinding[] referenceBindingArr6 = new ReferenceBinding[i17];
                    TypeVariableBinding[] typeVariableBindingArr = methodBinding4.typeVariables;
                    TypeVariableBinding[] typeVariableBindingArr2 = Binding.NO_TYPE_VARIABLES;
                    int i25 = (typeVariableBindingArr != typeVariableBindingArr2 || i21 == 0) ? i17 : i16;
                    int i26 = typeVariableBindingArr != typeVariableBindingArr2 ? i16 : i17;
                    int length3 = typeVariableBindingArr.length;
                    int i27 = i17;
                    int i28 = i27;
                    int i29 = i28;
                    loop3: while (true) {
                        if (i27 >= length2) {
                            referenceBindingArr = referenceBindingArr6;
                            break;
                        }
                        MethodBinding methodBinding6 = interfaceAbstractContracts[i27];
                        ReferenceBinding[] referenceBindingArr7 = methodBinding6.thrownExceptions;
                        referenceBindingArr = referenceBindingArr6;
                        int length4 = referenceBindingArr7 == null ? 0 : referenceBindingArr7.length;
                        if (length4 == 0) {
                            break;
                        }
                        if (i26 == 0 || methodBinding6 == methodBinding4) {
                            i10 = i28;
                        } else {
                            ReferenceBinding[] referenceBindingArr8 = new ReferenceBinding[length4];
                            i10 = i28;
                            System.arraycopy(referenceBindingArr7, 0, referenceBindingArr8, 0, length4);
                            for (int i30 = 0; i30 < length3; i30++) {
                                if (referenceBindingArr8[i30] instanceof TypeVariableBinding) {
                                    referenceBindingArr8[i30] = methodBinding4.typeVariables[i30];
                                }
                            }
                            referenceBindingArr7 = referenceBindingArr8;
                        }
                        ReferenceBinding[] referenceBindingArr9 = referenceBindingArr;
                        int i31 = i10;
                        int i32 = length3;
                        int i33 = i29;
                        int i34 = 0;
                        while (i34 < length4) {
                            ReferenceBinding referenceBinding = referenceBindingArr7[i34];
                            if (i25 != 0) {
                                referenceBinding = (ReferenceBinding) referenceBinding.erasure();
                            }
                            ReferenceBinding[] referenceBindingArr10 = referenceBindingArr7;
                            ReferenceBinding referenceBinding2 = referenceBinding;
                            int i35 = length4;
                            int i36 = 0;
                            while (true) {
                                if (i36 >= length2) {
                                    if (i31 == i33) {
                                        int i37 = i33 + 16;
                                        ReferenceBinding[] referenceBindingArr11 = new ReferenceBinding[i37];
                                        System.arraycopy(referenceBindingArr9, 0, referenceBindingArr11, 0, i31);
                                        referenceBindingArr9 = referenceBindingArr11;
                                        i33 = i37;
                                    }
                                    referenceBindingArr9[i31] = referenceBinding2;
                                    i31++;
                                    i11 = i27;
                                    i12 = length2;
                                } else {
                                    if (i27 != i36) {
                                        i13 = i33;
                                        MethodBinding methodBinding7 = interfaceAbstractContracts[i36];
                                        i11 = i27;
                                        ReferenceBinding[] referenceBindingArr12 = methodBinding7.thrownExceptions;
                                        referenceBindingArr4 = referenceBindingArr9;
                                        int length5 = referenceBindingArr12 == null ? 0 : referenceBindingArr12.length;
                                        if (length5 != 0) {
                                            if (i26 == 0 || methodBinding7 == methodBinding4) {
                                                i12 = length2;
                                                referenceBindingArr5 = referenceBindingArr12;
                                            } else {
                                                referenceBindingArr5 = new ReferenceBinding[length5];
                                                i12 = length2;
                                                System.arraycopy(referenceBindingArr12, 0, referenceBindingArr5, 0, length5);
                                                int i38 = 0;
                                                while (true) {
                                                    i14 = i32;
                                                    if (i38 >= i14) {
                                                        break;
                                                    }
                                                    i32 = i14;
                                                    if (referenceBindingArr5[i38] instanceof TypeVariableBinding) {
                                                        referenceBindingArr5[i38] = methodBinding4.typeVariables[i38];
                                                    }
                                                    i38++;
                                                }
                                                i32 = i14;
                                            }
                                            for (int i39 = 0; i39 < length5; i39++) {
                                                ReferenceBinding referenceBinding3 = referenceBindingArr5[i39];
                                                if (i25 != 0) {
                                                    referenceBinding3 = (ReferenceBinding) referenceBinding3.erasure();
                                                }
                                                if (referenceBinding2.isCompatibleWith(referenceBinding3)) {
                                                    break;
                                                }
                                            }
                                            i33 = i13;
                                            referenceBindingArr9 = referenceBindingArr4;
                                            break;
                                        }
                                        i28 = i31;
                                        i29 = i13;
                                        referenceBindingArr2 = referenceBindingArr4;
                                        break loop3;
                                    }
                                    i13 = i33;
                                    i11 = i27;
                                    referenceBindingArr4 = referenceBindingArr9;
                                    i12 = length2;
                                    i36++;
                                    i33 = i13;
                                    i27 = i11;
                                    referenceBindingArr9 = referenceBindingArr4;
                                    length2 = i12;
                                }
                            }
                            i34++;
                            referenceBindingArr7 = referenceBindingArr10;
                            length4 = i35;
                            i27 = i11;
                            length2 = i12;
                        }
                        i27++;
                        i29 = i33;
                        referenceBindingArr6 = referenceBindingArr9;
                        i28 = i31;
                        length3 = i32;
                    }
                    referenceBindingArr2 = referenceBindingArr;
                    if (i28 != i29) {
                        ReferenceBinding[] referenceBindingArr13 = new ReferenceBinding[i28];
                        System.arraycopy(referenceBindingArr2, 0, referenceBindingArr13, 0, i28);
                        referenceBindingArr3 = referenceBindingArr13;
                    } else {
                        referenceBindingArr3 = referenceBindingArr2;
                    }
                    this.singleAbstractMethod[i15] = new MethodBinding(methodBinding4.modifiers | 4096, methodBinding4.selector, typeBinding, typeBindingArr3, referenceBindingArr3, methodBinding4.declaringClass);
                    MethodBinding methodBinding8 = this.singleAbstractMethod[i15];
                    methodBinding8.typeVariables = methodBinding4.typeVariables;
                    return methodBinding8;
                }
                MethodBinding[] methodBindingArr4 = this.singleAbstractMethod;
                ProblemMethodBinding problemMethodBinding2 = samProblemBinding;
                methodBindingArr4[i15] = problemMethodBinding2;
                return problemMethodBinding2;
            }
            MethodBinding[] methodBindingArr5 = this.singleAbstractMethod;
            ProblemMethodBinding problemMethodBinding3 = samProblemBinding;
            methodBindingArr5[i15] = problemMethodBinding3;
            return problemMethodBinding3;
        } catch (InvalidInputException unused) {
            MethodBinding[] methodBindingArr6 = this.singleAbstractMethod;
            ProblemMethodBinding problemMethodBinding4 = samProblemBinding;
            methodBindingArr6[i15] = problemMethodBinding4;
            return problemMethodBinding4;
        }
    }

    public TypeVariableBinding getTypeVariable(char[] cArr) {
        TypeVariableBinding[] typeVariables = typeVariables();
        int length = typeVariables.length;
        do {
            length--;
            if (length < 0) {
                return null;
            }
        } while (!CharOperation.equals(typeVariables[length].sourceName, cArr));
        return typeVariables[length];
    }

    public boolean hasEnclosingInstanceContext() {
        if (isMemberType() && !isStatic()) {
            return true;
        }
        if (enclosingMethod() != null) {
            return !r0.isStatic();
        }
        return false;
    }

    public boolean hasIncompatibleSuperType(ReferenceBinding referenceBinding) {
        ReferenceBinding[] referenceBindingArr;
        ReferenceBinding[] referenceBindingArr2;
        if (TypeBinding.equalsEquals(this, referenceBinding)) {
            return false;
        }
        ReferenceBinding[] referenceBindingArr3 = null;
        ReferenceBinding referenceBinding2 = this;
        int i10 = 0;
        do {
            TypeBinding findSuperTypeOriginatingFrom = referenceBinding.findSuperTypeOriginatingFrom(referenceBinding2);
            if (findSuperTypeOriginatingFrom != null && findSuperTypeOriginatingFrom.isProvablyDistinct(referenceBinding2)) {
                return true;
            }
            ReferenceBinding[] superInterfaces = referenceBinding2.superInterfaces();
            if (superInterfaces != null && superInterfaces != Binding.NO_SUPERINTERFACES) {
                if (referenceBindingArr3 == null) {
                    i10 = superInterfaces.length;
                    referenceBindingArr3 = superInterfaces;
                } else {
                    int length = i10 + superInterfaces.length;
                    if (length >= referenceBindingArr3.length) {
                        referenceBindingArr2 = new ReferenceBinding[length + 5];
                        System.arraycopy(referenceBindingArr3, 0, referenceBindingArr2, 0, i10);
                    } else {
                        referenceBindingArr2 = referenceBindingArr3;
                    }
                    int i11 = i10;
                    for (ReferenceBinding referenceBinding3 : superInterfaces) {
                        int i12 = 0;
                        while (true) {
                            if (i12 >= i11) {
                                referenceBindingArr2[i11] = referenceBinding3;
                                i11++;
                                break;
                            }
                            if (TypeBinding.equalsEquals(referenceBinding3, referenceBindingArr2[i12])) {
                                break;
                            }
                            i12++;
                        }
                    }
                    referenceBindingArr3 = referenceBindingArr2;
                    i10 = i11;
                }
            }
            referenceBinding2 = referenceBinding2.superclass();
        } while (referenceBinding2 != null);
        for (int i13 = 0; i13 < i10; i13++) {
            ReferenceBinding referenceBinding4 = referenceBindingArr3[i13];
            if (TypeBinding.equalsEquals(referenceBinding4, referenceBinding)) {
                return false;
            }
            TypeBinding findSuperTypeOriginatingFrom2 = referenceBinding.findSuperTypeOriginatingFrom(referenceBinding4);
            if (findSuperTypeOriginatingFrom2 != null && findSuperTypeOriginatingFrom2.isProvablyDistinct(referenceBinding4)) {
                return true;
            }
            ReferenceBinding[] superInterfaces2 = referenceBinding4.superInterfaces();
            if (superInterfaces2 != null && superInterfaces2 != Binding.NO_SUPERINTERFACES) {
                int length2 = i10 + superInterfaces2.length;
                if (length2 >= referenceBindingArr3.length) {
                    referenceBindingArr = new ReferenceBinding[length2 + 5];
                    System.arraycopy(referenceBindingArr3, 0, referenceBindingArr, 0, i10);
                } else {
                    referenceBindingArr = referenceBindingArr3;
                }
                int i14 = i10;
                for (ReferenceBinding referenceBinding5 : superInterfaces2) {
                    int i15 = 0;
                    while (true) {
                        if (i15 >= i14) {
                            referenceBindingArr[i14] = referenceBinding5;
                            i14++;
                            break;
                        }
                        if (TypeBinding.equalsEquals(referenceBinding5, referenceBindingArr[i15])) {
                            break;
                        }
                        i15++;
                    }
                }
                referenceBindingArr3 = referenceBindingArr;
                i10 = i14;
            }
        }
        return false;
    }

    public boolean hasMemberTypes() {
        return false;
    }

    public boolean hasNonNullDefaultFor(int i10, int i11) {
        for (ReferenceBinding referenceBinding = this; referenceBinding != null; referenceBinding = referenceBinding.enclosingType()) {
            int nullDefault = ((ReferenceBinding) referenceBinding.original()).getNullDefault();
            if (nullDefault != 0) {
                return (i10 & nullDefault) != 0;
            }
        }
        return (i10 & getPackage().getDefaultNullness()) != 0;
    }

    public boolean hasNullBit(int i10) {
        return (i10 & this.typeBits) != 0;
    }

    public final boolean hasRestrictedAccess() {
        return (this.modifiers & 262144) != 0;
    }

    public int hashCode() {
        char[][] cArr = this.compoundName;
        return (cArr == null || cArr.length == 0) ? super.hashCode() : CharOperation.hashCode(cArr[cArr.length - 1]);
    }

    public boolean implementsInterface(ReferenceBinding referenceBinding, boolean z10) {
        ReferenceBinding[] referenceBindingArr;
        ReferenceBinding[] referenceBindingArr2;
        if (TypeBinding.equalsEquals(this, referenceBinding)) {
            return true;
        }
        ReferenceBinding[] referenceBindingArr3 = null;
        ReferenceBinding referenceBinding2 = this;
        int i10 = 0;
        do {
            ReferenceBinding[] superInterfaces = referenceBinding2.superInterfaces();
            if (superInterfaces != null && superInterfaces != Binding.NO_SUPERINTERFACES) {
                if (referenceBindingArr3 == null) {
                    i10 = superInterfaces.length;
                    referenceBindingArr3 = superInterfaces;
                } else {
                    int length = i10 + superInterfaces.length;
                    if (length >= referenceBindingArr3.length) {
                        referenceBindingArr2 = new ReferenceBinding[length + 5];
                        System.arraycopy(referenceBindingArr3, 0, referenceBindingArr2, 0, i10);
                    } else {
                        referenceBindingArr2 = referenceBindingArr3;
                    }
                    int i11 = i10;
                    for (ReferenceBinding referenceBinding3 : superInterfaces) {
                        int i12 = 0;
                        while (true) {
                            if (i12 >= i11) {
                                referenceBindingArr2[i11] = referenceBinding3;
                                i11++;
                                break;
                            }
                            if (TypeBinding.equalsEquals(referenceBinding3, referenceBindingArr2[i12])) {
                                break;
                            }
                            i12++;
                        }
                    }
                    referenceBindingArr3 = referenceBindingArr2;
                    i10 = i11;
                }
            }
            if (!z10) {
                break;
            }
            referenceBinding2 = referenceBinding2.superclass();
        } while (referenceBinding2 != null);
        for (int i13 = 0; i13 < i10; i13++) {
            ReferenceBinding referenceBinding4 = referenceBindingArr3[i13];
            if (referenceBinding4.isEquivalentTo(referenceBinding)) {
                return true;
            }
            ReferenceBinding[] superInterfaces2 = referenceBinding4.superInterfaces();
            if (superInterfaces2 != null && superInterfaces2 != Binding.NO_SUPERINTERFACES) {
                int length2 = i10 + superInterfaces2.length;
                if (length2 >= referenceBindingArr3.length) {
                    referenceBindingArr = new ReferenceBinding[length2 + 5];
                    System.arraycopy(referenceBindingArr3, 0, referenceBindingArr, 0, i10);
                } else {
                    referenceBindingArr = referenceBindingArr3;
                }
                int i14 = i10;
                for (ReferenceBinding referenceBinding5 : superInterfaces2) {
                    int i15 = 0;
                    while (true) {
                        if (i15 >= i14) {
                            referenceBindingArr[i14] = referenceBinding5;
                            i14++;
                            break;
                        }
                        if (TypeBinding.equalsEquals(referenceBinding5, referenceBindingArr[i15])) {
                            break;
                        }
                        i15++;
                    }
                }
                referenceBindingArr3 = referenceBindingArr;
                i10 = i14;
            }
        }
        return false;
    }

    public boolean implementsMethod(MethodBinding methodBinding) {
        char[] cArr = methodBinding.selector;
        for (ReferenceBinding referenceBinding = this; referenceBinding != null; referenceBinding = referenceBinding.superclass()) {
            MethodBinding[] methods = referenceBinding.methods();
            long binarySearch = binarySearch(cArr, methods);
            if (binarySearch >= 0) {
                int i10 = (int) (binarySearch >> 32);
                for (int i11 = (int) binarySearch; i11 <= i10; i11++) {
                    if (methods[i11].areParametersEqual(methodBinding)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean isAbstract() {
        return (this.modifiers & 1024) != 0;
    }

    @Override
    public boolean isAnnotationType() {
        return (this.modifiers & 8192) != 0;
    }

    public final boolean isBinaryBinding() {
        return (this.tagBits & 64) != 0;
    }

    @Override
    public boolean isClass() {
        return (this.modifiers & 25088) == 0;
    }

    @Override
    public boolean isCompatibleWith(TypeBinding typeBinding, Scope scope) {
        if (TypeBinding.equalsEquals(typeBinding, this) || typeBinding.f102482id == 1) {
            return true;
        }
        SimpleLookupTable simpleLookupTable = this.compatibleCache;
        if (simpleLookupTable == null) {
            this.compatibleCache = new SimpleLookupTable(3);
        } else {
            Object obj = simpleLookupTable.get(typeBinding);
            if (obj != null) {
                return obj == Boolean.TRUE;
            }
        }
        this.compatibleCache.put(typeBinding, Boolean.FALSE);
        if (isCompatibleWith0(typeBinding, scope)) {
            this.compatibleCache.put(typeBinding, Boolean.TRUE);
            return true;
        }
        if (scope == null && (this instanceof TypeVariableBinding) && (((TypeVariableBinding) this).firstBound instanceof ParameterizedTypeBinding)) {
            this.compatibleCache.put(typeBinding, null);
        }
        return false;
    }

    public final boolean isDefault() {
        return (this.modifiers & 7) == 0;
    }

    public final boolean isDeprecated() {
        return (this.modifiers & 1048576) != 0;
    }

    @Override
    public boolean isEnum() {
        return (this.modifiers & 16384) != 0;
    }

    public final boolean isFinal() {
        return (this.modifiers & 16) != 0;
    }

    @Override
    public boolean isFunctionalInterface(Scope scope) {
        MethodBinding singleAbstractMethod;
        return isInterface() && (singleAbstractMethod = getSingleAbstractMethod(scope, true)) != null && singleAbstractMethod.isValidBinding();
    }

    public boolean isHierarchyBeingActivelyConnected() {
        long j10 = this.tagBits;
        return (512 & j10) == 0 && (256 & j10) != 0 && (j10 & TagBits.PauseHierarchyCheck) == 0;
    }

    public boolean isHierarchyBeingConnected() {
        long j10 = this.tagBits;
        return (512 & j10) == 0 && (j10 & 256) != 0;
    }

    public boolean isHierarchyConnected() {
        return true;
    }

    @Override
    public boolean isInterface() {
        return (this.modifiers & 512) != 0;
    }

    public boolean isNestmateOf(ReferenceBinding referenceBinding) {
        SourceTypeBinding sourceTypeBinding = getSourceTypeBinding(this);
        SourceTypeBinding sourceTypeBinding2 = getSourceTypeBinding(referenceBinding);
        if (sourceTypeBinding == null || sourceTypeBinding2 == null) {
            return false;
        }
        return sourceTypeBinding.isNestmateOf(sourceTypeBinding2);
    }

    public final boolean isOrEnclosedByPrivateType() {
        if (isLocalType()) {
            return true;
        }
        for (ReferenceBinding referenceBinding = this; referenceBinding != null; referenceBinding = referenceBinding.enclosingType()) {
            if ((referenceBinding.modifiers & 2) != 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean isPrivate() {
        return (this.modifiers & 2) != 0;
    }

    @Override
    public boolean isProperType(boolean z10) {
        ReferenceBinding enclosingType = enclosingType();
        if (enclosingType == null || enclosingType.isProperType(z10)) {
            return super.isProperType(z10);
        }
        return false;
    }

    public final boolean isProtected() {
        return (this.modifiers & 4) != 0;
    }

    public final boolean isPublic() {
        return (this.modifiers & 1) != 0;
    }

    @Override
    public final boolean isStatic() {
        return (this.modifiers & BluetoothClass.Device.PHONE_CORDLESS) != 0 || (this.tagBits & 4) == 0;
    }

    public final boolean isStrictfp() {
        return (this.modifiers & 2048) != 0;
    }

    public boolean isSubTypeOfRTL(TypeBinding typeBinding) {
        ReferenceBinding[] intersectingTypes;
        if (TypeBinding.equalsEquals(this, typeBinding)) {
            return true;
        }
        if (typeBinding instanceof CaptureBinding) {
            TypeBinding typeBinding2 = ((CaptureBinding) typeBinding).lowerBound;
            return typeBinding2 != null && isSubtypeOf(typeBinding2, false);
        }
        if (!(typeBinding instanceof ReferenceBinding) || (intersectingTypes = ((ReferenceBinding) typeBinding).getIntersectingTypes()) == null) {
            return false;
        }
        for (ReferenceBinding referenceBinding : intersectingTypes) {
            if (!isSubtypeOf(referenceBinding, false)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean isSubtypeOf(TypeBinding typeBinding, boolean z10) {
        if (isSubTypeOfRTL(typeBinding)) {
            return true;
        }
        TypeBinding findSuperTypeOriginatingFrom = findSuperTypeOriginatingFrom(typeBinding);
        if (findSuperTypeOriginatingFrom == null) {
            return false;
        }
        if (TypeBinding.equalsEquals(findSuperTypeOriginatingFrom, typeBinding)) {
            return true;
        }
        if (typeBinding.isRawType() && TypeBinding.equalsEquals(findSuperTypeOriginatingFrom.erasure(), typeBinding.erasure())) {
            return true;
        }
        TypeBinding[] typeArguments = typeBinding.typeArguments();
        TypeBinding[] typeArguments2 = findSuperTypeOriginatingFrom.typeArguments();
        if (typeArguments2 == null || typeArguments == null || typeArguments.length != typeArguments2.length) {
            return false;
        }
        for (int i10 = 0; i10 < typeArguments.length; i10++) {
            if (!typeArguments2[i10].isTypeArgumentContainedBy(typeArguments[i10])) {
                return false;
            }
        }
        return true;
    }

    public boolean isSuperclassOf(ReferenceBinding referenceBinding) {
        do {
            referenceBinding = referenceBinding.superclass();
            if (referenceBinding == null) {
                return false;
            }
        } while (!referenceBinding.isEquivalentTo(this));
        return true;
    }

    @Override
    public boolean isThrowable() {
        ReferenceBinding referenceBinding = this;
        do {
            int i10 = referenceBinding.f102482id;
            if (i10 == 19 || i10 == 21 || i10 == 24 || i10 == 25) {
                return true;
            }
            referenceBinding = referenceBinding.superclass();
        } while (referenceBinding != null);
        return false;
    }

    @Override
    public boolean isUncheckedException(boolean z10) {
        int i10;
        int i11 = this.f102482id;
        if (i11 != 19) {
            if (i11 != 21) {
                if (i11 != 24) {
                    if (i11 != 25) {
                        ReferenceBinding referenceBinding = this;
                        do {
                            referenceBinding = referenceBinding.superclass();
                            if (referenceBinding == null) {
                                return false;
                            }
                            i10 = referenceBinding.f102482id;
                            if (i10 != 19) {
                                if (i10 == 21) {
                                    break;
                                }
                                if (i10 != 24) {
                                }
                            }
                            return true;
                        } while (i10 != 25);
                        return false;
                    }
                }
            }
            return z10;
        }
        return true;
    }

    public final boolean isUsed() {
        return (this.modifiers & 134217728) != 0;
    }

    public final boolean isViewedAsDeprecated() {
        if ((this.modifiers & IntentFilter.MATCH_CATEGORY_HOST) != 0) {
            return true;
        }
        if (!getPackage().isViewedAsDeprecated()) {
            return false;
        }
        this.tagBits |= getPackage().tagBits & 4611686018427387904L;
        return true;
    }

    public ReferenceBinding[] memberTypes() {
        return Binding.NO_MEMBER_TYPES;
    }

    public MethodBinding[] methods() {
        return Binding.NO_METHODS;
    }

    public ModuleBinding module() {
        PackageBinding packageBinding = this.fPackage;
        if (packageBinding != null) {
            return packageBinding.enclosingModule;
        }
        return null;
    }

    @Override
    public char[] nullAnnotatedReadableName(CompilerOptions compilerOptions, boolean z10) {
        if (z10) {
            return nullAnnotatedShortReadableName(compilerOptions);
        }
        return nullAnnotatedReadableName(compilerOptions);
    }

    public char[] nullAnnotatedShortReadableName(CompilerOptions compilerOptions) {
        StringBuffer stringBuffer = new StringBuffer(10);
        if (isMemberType()) {
            stringBuffer.append(enclosingType().nullAnnotatedReadableName(compilerOptions, true));
            stringBuffer.append('.');
            appendNullAnnotation(stringBuffer, compilerOptions);
            stringBuffer.append(this.sourceName);
        } else {
            appendNullAnnotation(stringBuffer, compilerOptions);
            char[] cArr = this.sourceName;
            if (cArr != null) {
                stringBuffer.append(cArr);
            } else {
                stringBuffer.append(shortReadableName());
            }
        }
        TypeBinding[] typeArguments = typeArguments();
        if (typeArguments != null && typeArguments.length > 0) {
            stringBuffer.append('<');
            int length = typeArguments.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 > 0) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
                stringBuffer.append(typeArguments[i10].nullAnnotatedReadableName(compilerOptions, true));
            }
            stringBuffer.append('>');
        }
        int length2 = stringBuffer.length();
        char[] cArr2 = new char[length2];
        stringBuffer.getChars(0, length2, cArr2, 0);
        return cArr2;
    }

    public final ReferenceBinding outermostEnclosingType() {
        ReferenceBinding referenceBinding = this;
        while (true) {
            ReferenceBinding enclosingType = referenceBinding.enclosingType();
            if (enclosingType == null) {
                return referenceBinding;
            }
            referenceBinding = enclosingType;
        }
    }

    @Override
    public char[] qualifiedSourceName() {
        return isMemberType() ? CharOperation.concat(enclosingType().qualifiedSourceName(), sourceName(), '.') : sourceName();
    }

    @Override
    public char[] readableName() {
        return readableName(true);
    }

    public AnnotationHolder retrieveAnnotationHolder(Binding binding, boolean z10) {
        SimpleLookupTable storedAnnotations = storedAnnotations(z10, false);
        if (storedAnnotations == null) {
            return null;
        }
        return (AnnotationHolder) storedAnnotations.get(binding);
    }

    public AnnotationBinding[] retrieveAnnotations(Binding binding) {
        AnnotationHolder retrieveAnnotationHolder = retrieveAnnotationHolder(binding, true);
        return retrieveAnnotationHolder == null ? Binding.NO_ANNOTATIONS : retrieveAnnotationHolder.getAnnotations();
    }

    @Override
    public void setAnnotations(AnnotationBinding[] annotationBindingArr, boolean z10) {
        storeAnnotations(this, annotationBindingArr, z10);
    }

    public void setContainerAnnotationType(ReferenceBinding referenceBinding) {
    }

    @Override
    public char[] shortReadableName() {
        return shortReadableName(true);
    }

    @Override
    public char[] signature() {
        char[] cArr = this.signature;
        if (cArr != null) {
            return cArr;
        }
        char[] concat = CharOperation.concat('L', constantPoolName(), ';');
        this.signature = concat;
        return concat;
    }

    @Override
    public char[] sourceName() {
        return this.sourceName;
    }

    public void storeAnnotationHolder(Binding binding, AnnotationHolder annotationHolder) {
        if (annotationHolder == null) {
            SimpleLookupTable storedAnnotations = storedAnnotations(false, false);
            if (storedAnnotations != null) {
                storedAnnotations.removeKey(binding);
                return;
            }
            return;
        }
        SimpleLookupTable storedAnnotations2 = storedAnnotations(true, false);
        if (storedAnnotations2 != null) {
            storedAnnotations2.put(binding, annotationHolder);
        }
    }

    public void storeAnnotations(Binding binding, AnnotationBinding[] annotationBindingArr, boolean z10) {
        AnnotationHolder annotationHolder;
        if (annotationBindingArr == null || annotationBindingArr.length == 0) {
            SimpleLookupTable storedAnnotations = storedAnnotations(false, z10);
            annotationHolder = storedAnnotations != null ? (AnnotationHolder) storedAnnotations.get(binding) : null;
            if (annotationHolder == null) {
                return;
            }
        } else {
            SimpleLookupTable storedAnnotations2 = storedAnnotations(true, z10);
            if (storedAnnotations2 == null) {
                return;
            }
            annotationHolder = (AnnotationHolder) storedAnnotations2.get(binding);
            if (annotationHolder == null) {
                annotationHolder = new AnnotationHolder();
            }
        }
        storeAnnotationHolder(binding, annotationHolder.setAnnotations(annotationBindingArr));
    }

    public SimpleLookupTable storedAnnotations(boolean z10, boolean z11) {
        return null;
    }

    @Override
    public ReferenceBinding[] superInterfaces() {
        return Binding.NO_SUPERINTERFACES;
    }

    @Override
    public ReferenceBinding superclass() {
        return null;
    }

    public ReferenceBinding[] syntheticEnclosingInstanceTypes() {
        ReferenceBinding enclosingType;
        if (isStatic() || (enclosingType = enclosingType()) == null) {
            return null;
        }
        return new ReferenceBinding[]{enclosingType};
    }

    public void tagAsHavingDefectiveContainerType() {
    }

    public FieldBinding[] unResolvedFields() {
        return Binding.NO_FIELDS;
    }

    public MethodBinding[] unResolvedMethods() {
        return methods();
    }

    @Override
    public ReferenceBinding upwardsProjection(Scope scope, TypeBinding[] typeBindingArr) {
        return this;
    }

    public MethodBinding[] getMethods(char[] cArr, int i10) {
        return getMethods(cArr);
    }

    public char[] readableName(boolean z10) {
        char[] concatWith;
        TypeVariableBinding[] typeVariables;
        if (isMemberType()) {
            concatWith = CharOperation.concat(enclosingType().readableName(z10 && hasEnclosingInstanceContext()), this.sourceName, '.');
        } else {
            concatWith = CharOperation.concatWith(this.compoundName, '.');
        }
        if (!z10 || (typeVariables = typeVariables()) == Binding.NO_TYPE_VARIABLES) {
            return concatWith;
        }
        StringBuffer stringBuffer = new StringBuffer(10);
        stringBuffer.append(concatWith);
        stringBuffer.append('<');
        int length = typeVariables.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 > 0) {
                stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
            stringBuffer.append(typeVariables[i10].readableName());
        }
        stringBuffer.append('>');
        int length2 = stringBuffer.length();
        char[] cArr = new char[length2];
        stringBuffer.getChars(0, length2, cArr, 0);
        return cArr;
    }

    public char[] shortReadableName(boolean z10) {
        char[] cArr;
        TypeVariableBinding[] typeVariables;
        if (isMemberType()) {
            cArr = CharOperation.concat(enclosingType().shortReadableName(z10 && hasEnclosingInstanceContext()), this.sourceName, '.');
        } else {
            cArr = this.sourceName;
        }
        if (!z10 || (typeVariables = typeVariables()) == Binding.NO_TYPE_VARIABLES) {
            return cArr;
        }
        StringBuffer stringBuffer = new StringBuffer(10);
        stringBuffer.append(cArr);
        stringBuffer.append('<');
        int length = typeVariables.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 > 0) {
                stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
            stringBuffer.append(typeVariables[i10].shortReadableName());
        }
        stringBuffer.append('>');
        int length2 = stringBuffer.length();
        char[] cArr2 = new char[length2];
        stringBuffer.getChars(0, length2, cArr2, 0);
        return cArr2;
    }

    public char[] nullAnnotatedReadableName(CompilerOptions compilerOptions) {
        StringBuffer stringBuffer = new StringBuffer(10);
        if (isMemberType()) {
            stringBuffer.append(enclosingType().nullAnnotatedReadableName(compilerOptions, false));
            stringBuffer.append('.');
            appendNullAnnotation(stringBuffer, compilerOptions);
            stringBuffer.append(this.sourceName);
        } else {
            char[][] cArr = this.compoundName;
            if (cArr != null) {
                int length = cArr.length;
                int i10 = 0;
                while (i10 < length - 1) {
                    stringBuffer.append(this.compoundName[i10]);
                    stringBuffer.append('.');
                    i10++;
                }
                appendNullAnnotation(stringBuffer, compilerOptions);
                stringBuffer.append(this.compoundName[i10]);
            } else {
                appendNullAnnotation(stringBuffer, compilerOptions);
                char[] cArr2 = this.sourceName;
                if (cArr2 != null) {
                    stringBuffer.append(cArr2);
                } else {
                    stringBuffer.append(readableName());
                }
            }
        }
        TypeBinding[] typeArguments = typeArguments();
        if (typeArguments != null && typeArguments.length > 0) {
            stringBuffer.append('<');
            int length2 = typeArguments.length;
            for (int i11 = 0; i11 < length2; i11++) {
                if (i11 > 0) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
                stringBuffer.append(typeArguments[i11].nullAnnotatedReadableName(compilerOptions, false));
            }
            stringBuffer.append('>');
        }
        int length3 = stringBuffer.length();
        char[] cArr3 = new char[length3];
        stringBuffer.getChars(0, length3, cArr3, 0);
        return cArr3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x00a5, code lost:
    
        if (r9.isErasureBoundTo(enclosingType().erasure()) != false) goto L52;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean canBeSeenBy(ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2) {
        ReferenceBinding referenceBinding3;
        ReferenceBinding referenceBinding4;
        if (isPublic()) {
            return true;
        }
        if (isStatic() && (referenceBinding.isRawType() || referenceBinding.isParameterizedType())) {
            referenceBinding = referenceBinding.actualType();
        }
        if (TypeBinding.equalsEquals(referenceBinding2, this) && TypeBinding.equalsEquals(referenceBinding2, referenceBinding)) {
            return true;
        }
        if (isProtected()) {
            if (TypeBinding.equalsEquals(referenceBinding2, this) || referenceBinding2.fPackage == this.fPackage) {
                return true;
            }
            TypeBinding erasure = referenceBinding2.erasure();
            TypeBinding erasure2 = enclosingType().erasure();
            if (TypeBinding.equalsEquals(erasure2, referenceBinding2)) {
                return true;
            }
            if (erasure2 == null) {
                return false;
            }
            while (erasure.findSuperTypeOriginatingFrom(erasure2) == null) {
                erasure = erasure.enclosingType();
                if (erasure == null) {
                    return false;
                }
            }
            return true;
        }
        if (isPrivate()) {
            if (!TypeBinding.equalsEquals(referenceBinding, this) && !TypeBinding.equalsEquals(referenceBinding, enclosingType())) {
                if (referenceBinding.isTypeVariable()) {
                    TypeVariableBinding typeVariableBinding = (TypeVariableBinding) referenceBinding;
                    if (typeVariableBinding.environment.globalOptions.complianceLevel <= ClassFileConstants.JDK1_6) {
                        if (!typeVariableBinding.isErasureBoundTo(erasure())) {
                        }
                    }
                }
                return false;
            }
            if (TypeBinding.notEquals(referenceBinding2, this)) {
                ReferenceBinding enclosingType = referenceBinding2.enclosingType();
                while (true) {
                    referenceBinding3 = referenceBinding2;
                    referenceBinding2 = enclosingType;
                    if (referenceBinding2 == null) {
                        break;
                    }
                    enclosingType = referenceBinding2.enclosingType();
                }
                ReferenceBinding referenceBinding5 = (ReferenceBinding) erasure();
                ReferenceBinding enclosingType2 = referenceBinding5.enclosingType();
                while (true) {
                    ReferenceBinding referenceBinding6 = enclosingType2;
                    referenceBinding4 = referenceBinding5;
                    referenceBinding5 = referenceBinding6;
                    if (referenceBinding5 == null) {
                        break;
                    }
                    enclosingType2 = referenceBinding5.enclosingType();
                }
                if (TypeBinding.notEquals(referenceBinding3, referenceBinding4)) {
                    return false;
                }
            }
            return true;
        }
        if (referenceBinding2.fPackage != this.fPackage) {
            return false;
        }
        TypeBinding original = (enclosingType() == null ? this : enclosingType()).original();
        do {
            if (referenceBinding.isCapture()) {
                if (TypeBinding.equalsEquals(original, referenceBinding.erasure().original())) {
                    return true;
                }
            } else if (TypeBinding.equalsEquals(original, referenceBinding.original())) {
                return true;
            }
            PackageBinding packageBinding = referenceBinding.fPackage;
            if (packageBinding != null && packageBinding != this.fPackage) {
                return false;
            }
            referenceBinding = referenceBinding.superclass();
        } while (referenceBinding != null);
        return false;
    }

    public static long binarySearch(char[] cArr, MethodBinding[] methodBindingArr) {
        int length;
        if (methodBindingArr == null || (length = methodBindingArr.length) == 0) {
            return -1L;
        }
        int i10 = length - 1;
        int length2 = cArr.length;
        int i11 = 0;
        while (i11 <= i10) {
            int i12 = ((i10 - i11) / 2) + i11;
            char[] cArr2 = methodBindingArr[i12].selector;
            int compare = compare(cArr, cArr2, length2, cArr2.length);
            if (compare < 0) {
                i10 = i12 - 1;
            } else {
                if (compare <= 0) {
                    int i13 = i12;
                    while (i13 > i11 && CharOperation.equals(methodBindingArr[i13 - 1].selector, cArr)) {
                        i13--;
                    }
                    while (i12 < i10) {
                        int i14 = i12 + 1;
                        if (!CharOperation.equals(methodBindingArr[i14].selector, cArr)) {
                            break;
                        }
                        i12 = i14;
                    }
                    return i13 + (i12 << 32);
                }
                i11 = i12 + 1;
            }
        }
        return -1L;
    }

    public ReferenceBinding() {
    }

    @Override
    public boolean canBeSeenBy(Scope scope) {
        ReferenceBinding referenceBinding;
        if (isPublic()) {
            return true;
        }
        ReferenceBinding enclosingSourceType = scope.enclosingSourceType();
        if (TypeBinding.equalsEquals(enclosingSourceType, this)) {
            return true;
        }
        if (enclosingSourceType == null) {
            return !isPrivate() && scope.getCurrentPackage() == this.fPackage;
        }
        if (isProtected()) {
            if (enclosingSourceType.fPackage == this.fPackage) {
                return true;
            }
            ReferenceBinding enclosingType = enclosingType();
            if (enclosingType == null) {
                return false;
            }
            TypeBinding erasure = enclosingType.erasure();
            TypeBinding erasure2 = enclosingSourceType.erasure();
            while (!TypeBinding.equalsEquals(erasure, enclosingSourceType) && erasure2.findSuperTypeOriginatingFrom(erasure) == null) {
                erasure2 = erasure2.enclosingType();
                if (erasure2 == null) {
                    return false;
                }
            }
            return true;
        }
        if (!isPrivate()) {
            return enclosingSourceType.fPackage == this.fPackage;
        }
        ReferenceBinding enclosingType2 = enclosingSourceType.enclosingType();
        while (true) {
            referenceBinding = enclosingSourceType;
            enclosingSourceType = enclosingType2;
            if (enclosingSourceType == null) {
                break;
            }
            enclosingType2 = enclosingSourceType.enclosingType();
        }
        ReferenceBinding referenceBinding2 = (ReferenceBinding) erasure();
        ReferenceBinding enclosingType3 = referenceBinding2.enclosingType();
        while (true) {
            ReferenceBinding referenceBinding3 = enclosingType3;
            ReferenceBinding referenceBinding4 = referenceBinding2;
            referenceBinding2 = referenceBinding3;
            if (referenceBinding2 == null) {
                return TypeBinding.equalsEquals(referenceBinding, referenceBinding4);
            }
            enclosingType3 = referenceBinding2.enclosingType();
        }
    }

    public void computeId(LookupEnvironment lookupEnvironment) {
        lookupEnvironment.getUnannotatedType(this);
    }
}
