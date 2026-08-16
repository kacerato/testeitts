package org.eclipse.jdt.internal.compiler.lookup;

import java.util.ArrayList;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.classfmt.AnnotationInfo;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.eclipse.jdt.internal.compiler.classfmt.MethodInfoWithAnnotations;
import org.eclipse.jdt.internal.compiler.classfmt.NonNullDefaultAwareTypeAnnotationWalker;
import org.eclipse.jdt.internal.compiler.classfmt.TypeAnnotationWalker;
import org.eclipse.jdt.internal.compiler.codegen.ConstantPool;
import org.eclipse.jdt.internal.compiler.env.ClassSignature;
import org.eclipse.jdt.internal.compiler.env.EnumConstantSignature;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryElementValuePair;
import org.eclipse.jdt.internal.compiler.env.IBinaryField;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryNestedType;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.IBinaryTypeAnnotation;
import org.eclipse.jdt.internal.compiler.env.ITypeAnnotationWalker;
import org.eclipse.jdt.internal.compiler.impl.BooleanConstant;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.ElementValuePair;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;

public class BinaryTypeBinding extends ReferenceBinding {
    private ReferenceBinding containerAnnotationType;
    int defaultNullness;
    protected ReferenceBinding enclosingType;
    protected LookupEnvironment environment;
    public ExternalAnnotationStatus externalAnnotationStatus;
    protected FieldBinding[] fields;
    protected ReferenceBinding[] memberTypes;
    protected MethodBinding[] methods;
    protected ModuleBinding module;
    private BinaryTypeBinding prototype;
    protected SimpleLookupTable storedAnnotations;
    protected ReferenceBinding[] superInterfaces;
    protected ReferenceBinding superclass;
    protected TypeVariableBinding[] typeVariables;
    public static final char[] TYPE_QUALIFIER_DEFAULT = "TypeQualifierDefault".toCharArray();
    private static final IBinaryMethod[] NO_BINARY_METHODS = new IBinaryMethod[0];

    public enum ExternalAnnotationStatus {
        FROM_SOURCE,
        NOT_EEA_CONFIGURED,
        NO_EEA_FILE,
        TYPE_IS_ANNOTATED;

        private static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$BinaryTypeBinding$ExternalAnnotationStatus;

        public static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$BinaryTypeBinding$ExternalAnnotationStatus() {
            int[] iArr = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$BinaryTypeBinding$ExternalAnnotationStatus;
            if (iArr != null) {
                return iArr;
            }
            int[] iArr2 = new int[valuesCustom().length];
            try {
                iArr2[FROM_SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr2[NOT_EEA_CONFIGURED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr2[NO_EEA_FILE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[TYPE_IS_ANNOTATED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$BinaryTypeBinding$ExternalAnnotationStatus = iArr2;
            return iArr2;
        }

        public static ExternalAnnotationStatus[] valuesCustom() {
            ExternalAnnotationStatus[] valuesCustom = values();
            int length = valuesCustom.length;
            ExternalAnnotationStatus[] externalAnnotationStatusArr = new ExternalAnnotationStatus[length];
            System.arraycopy(valuesCustom, 0, externalAnnotationStatusArr, 0, length);
            return externalAnnotationStatusArr;
        }

        public boolean isPotentiallyUnannotatedLib() {
            int i10 = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$BinaryTypeBinding$ExternalAnnotationStatus()[ordinal()];
            return (i10 == 1 || i10 == 4) ? false : true;
        }
    }

    public BinaryTypeBinding() {
        this.storedAnnotations = null;
        this.defaultNullness = 0;
        this.externalAnnotationStatus = ExternalAnnotationStatus.NOT_EEA_CONFIGURED;
        this.prototype = this;
    }

    private TypeVariableBinding[] addMethodTypeVariables(TypeVariableBinding[] typeVariableBindingArr) {
        TypeVariableBinding[] typeVariableBindingArr2;
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        TypeVariableBinding[] typeVariableBindingArr3 = this.typeVariables;
        if (typeVariableBindingArr3 == null || typeVariableBindingArr3 == (typeVariableBindingArr2 = Binding.NO_TYPE_VARIABLES)) {
            return typeVariableBindingArr;
        }
        if (typeVariableBindingArr == null || typeVariableBindingArr == typeVariableBindingArr2) {
            return typeVariableBindingArr3;
        }
        int length = typeVariableBindingArr3.length + typeVariableBindingArr.length;
        TypeVariableBinding[] typeVariableBindingArr4 = new TypeVariableBinding[length];
        System.arraycopy(typeVariableBindingArr3, 0, typeVariableBindingArr4, 0, typeVariableBindingArr3.length);
        int length2 = this.typeVariables.length;
        int length3 = typeVariableBindingArr.length;
        int i10 = length2;
        for (int i11 = 0; i11 < length3; i11++) {
            int length4 = this.typeVariables.length - 1;
            while (true) {
                if (length4 < 0) {
                    typeVariableBindingArr4[i10] = typeVariableBindingArr[i11];
                    i10++;
                    break;
                }
                if (CharOperation.equals(typeVariableBindingArr[i11].sourceName, this.typeVariables[length4].sourceName)) {
                    break;
                }
                length4--;
            }
        }
        if (i10 == length) {
            return typeVariableBindingArr4;
        }
        TypeVariableBinding[] typeVariableBindingArr5 = new TypeVariableBinding[i10];
        System.arraycopy(typeVariableBindingArr4, 0, typeVariableBindingArr5, 0, i10);
        return typeVariableBindingArr5;
    }

    public static Object convertMemberValue(Object obj, LookupEnvironment lookupEnvironment, char[][][] cArr, boolean z10) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Constant) {
            return obj;
        }
        if (obj instanceof ClassSignature) {
            return lookupEnvironment.getTypeFromSignature(((ClassSignature) obj).getTypeName(), 0, -1, false, null, cArr, ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER);
        }
        if (obj instanceof IBinaryAnnotation) {
            return createAnnotation((IBinaryAnnotation) obj, lookupEnvironment, cArr);
        }
        if (obj instanceof EnumConstantSignature) {
            EnumConstantSignature enumConstantSignature = (EnumConstantSignature) obj;
            ReferenceBinding referenceBinding = (ReferenceBinding) lookupEnvironment.getTypeFromSignature(enumConstantSignature.getTypeName(), 0, -1, false, null, cArr, ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER);
            return (!referenceBinding.isUnresolvedType() || z10) ? ((ReferenceBinding) resolveType(referenceBinding, lookupEnvironment, false)).getField(enumConstantSignature.getEnumConstantName(), false) : new ElementValuePair.UnresolvedEnumConstant(referenceBinding, lookupEnvironment, enumConstantSignature.getEnumConstantName());
        }
        if (!(obj instanceof Object[])) {
            throw new IllegalStateException();
        }
        Object[] objArr = (Object[]) obj;
        int length = objArr.length;
        if (length == 0) {
            return objArr;
        }
        Object[] objArr2 = new Object[length];
        for (int i10 = 0; i10 < length; i10++) {
            objArr2[i10] = convertMemberValue(objArr[i10], lookupEnvironment, cArr, z10);
        }
        return objArr2;
    }

    public static AnnotationBinding createAnnotation(IBinaryAnnotation iBinaryAnnotation, LookupEnvironment lookupEnvironment, char[][][] cArr) {
        RuntimeException runtimeException;
        if ((iBinaryAnnotation instanceof AnnotationInfo) && (runtimeException = ((AnnotationInfo) iBinaryAnnotation).exceptionDuringDecode) != null) {
            new IllegalStateException("Accessing annotation with decode error", runtimeException).printStackTrace();
        }
        IBinaryElementValuePair[] elementValuePairs = iBinaryAnnotation.getElementValuePairs();
        int length = elementValuePairs == null ? 0 : elementValuePairs.length;
        ElementValuePair[] elementValuePairArr = length == 0 ? Binding.NO_ELEMENT_VALUE_PAIRS : new ElementValuePair[length];
        for (int i10 = 0; i10 < length; i10++) {
            elementValuePairArr[i10] = new ElementValuePair(elementValuePairs[i10].getName(), convertMemberValue(elementValuePairs[i10].getValue(), lookupEnvironment, cArr, false), (MethodBinding) null);
        }
        char[] typeName = iBinaryAnnotation.getTypeName();
        if (iBinaryAnnotation.isExternalAnnotation()) {
            lookupEnvironment = lookupEnvironment.root;
        }
        return lookupEnvironment.createUnresolvedAnnotation(lookupEnvironment.getTypeFromConstantPoolName(typeName, 1, typeName.length - 1, false, cArr), elementValuePairArr);
    }

    public static AnnotationBinding[] createAnnotations(IBinaryAnnotation[] iBinaryAnnotationArr, LookupEnvironment lookupEnvironment, char[][][] cArr) {
        int length = iBinaryAnnotationArr == null ? 0 : iBinaryAnnotationArr.length;
        AnnotationBinding[] annotationBindingArr = length == 0 ? Binding.NO_ANNOTATIONS : new AnnotationBinding[length];
        for (int i10 = 0; i10 < length; i10++) {
            annotationBindingArr[i10] = createAnnotation(iBinaryAnnotationArr[i10], lookupEnvironment, cArr);
        }
        return annotationBindingArr;
    }

    private void createFields(IBinaryField[] iBinaryFieldArr, IBinaryType iBinaryType, long j10, char[][][] cArr) {
        int length;
        char[] cArr2;
        int i10;
        TypeBinding typeFromTypeSignature;
        int i11;
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        LookupEnvironment lookupEnvironment = this.environment;
        boolean z10 = lookupEnvironment.mayTolerateMissingType;
        lookupEnvironment.mayTolerateMissingType = true;
        try {
            this.fields = Binding.NO_FIELDS;
            if (iBinaryFieldArr != null && (length = iBinaryFieldArr.length) > 0) {
                FieldBinding[] fieldBindingArr = new FieldBinding[length];
                boolean z11 = false;
                boolean z12 = j10 >= ClassFileConstants.JDK1_5;
                boolean hasRestrictedAccess = hasRestrictedAccess();
                int i12 = -1;
                int i13 = 0;
                while (i13 < length) {
                    IBinaryField iBinaryField = iBinaryFieldArr[i13];
                    char[] genericSignature = z12 ? iBinaryField.getGenericSignature() : null;
                    ITypeAnnotationWalker typeAnnotationWalker = getTypeAnnotationWalker(iBinaryField.getTypeAnnotations(), getNullDefaultFrom(iBinaryField.getAnnotations()));
                    if (j10 >= ClassFileConstants.JDK1_8) {
                        typeAnnotationWalker = iBinaryType.enrichWithExternalAnnotationsFor(typeAnnotationWalker, iBinaryFieldArr[i13], this.environment);
                    }
                    ITypeAnnotationWalker field = typeAnnotationWalker.toField();
                    if (genericSignature == null) {
                        cArr2 = genericSignature;
                        i10 = i13;
                        typeFromTypeSignature = this.environment.getTypeFromSignature(iBinaryField.getTypeName(), 0, -1, false, this, cArr, field);
                    } else {
                        cArr2 = genericSignature;
                        i10 = i13;
                        typeFromTypeSignature = this.environment.getTypeFromTypeSignature(new SignatureWrapper(cArr2), Binding.NO_TYPE_VARIABLES, this, cArr, field);
                    }
                    FieldBinding fieldBinding = new FieldBinding(iBinaryField.getName(), typeFromTypeSignature, 33554432 | iBinaryField.getModifiers(), this, iBinaryField.getConstant());
                    CompilerOptions compilerOptions = this.environment.globalOptions;
                    boolean z13 = (compilerOptions.storeAnnotations || compilerOptions.sourceLevel < ClassFileConstants.JDK9 || iBinaryField.getAnnotations() == null || (iBinaryField.getTagBits() & 70368744177664L) == 0) ? false : true;
                    if (i12 >= 0 || (!(this.environment.globalOptions.storeAnnotations || z13) || iBinaryField.getAnnotations() == null)) {
                        i11 = i10;
                    } else {
                        if (z13) {
                            storedAnnotations(true, true);
                        }
                        i11 = i10;
                        i12 = i11;
                    }
                    fieldBinding.f102483id = i11;
                    if (z12) {
                        fieldBinding.tagBits |= iBinaryField.getTagBits();
                    }
                    if (hasRestrictedAccess) {
                        fieldBinding.modifiers |= 262144;
                    }
                    if (cArr2 != null) {
                        fieldBinding.modifiers |= 1073741824;
                    }
                    fieldBindingArr[i11] = fieldBinding;
                    i13 = i11 + 1;
                    z11 = false;
                }
                this.fields = fieldBindingArr;
                if (i12 >= 0) {
                    for (int i14 = i12; i14 < length; i14++) {
                        this.fields[i14].setAnnotations(createAnnotations(iBinaryFieldArr[i14].getAnnotations(), this.environment, cArr), z11);
                    }
                }
            }
        } finally {
            this.environment.mayTolerateMissingType = z10;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0200, code lost:
    
        if (r1 == 'L') goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0202, code lost:
    
        r0 = r0 + r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0207, code lost:
    
        if (r18[r0] != ';') goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0209, code lost:
    
        r4 = r12;
        r7 = r13;
        r13 = r21;
     */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0360  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private MethodBinding createMethod(IBinaryMethod iBinaryMethod, IBinaryType iBinaryType, long j10, char[][][] cArr) {
        boolean z10;
        TypeBinding[] typeBindingArr;
        AnnotationBinding[][] annotationBindingArr;
        TypeBinding typeFromTypeSignature;
        char[][] exceptionTypeNames;
        ITypeAnnotationWalker iTypeAnnotationWalker;
        int i10;
        TypeBinding[] typeBindingArr2;
        TypeBinding typeBinding;
        AnnotationBinding[][] annotationBindingArr2;
        TypeVariableBinding[] typeVariableBindingArr;
        ReferenceBinding[] referenceBindingArr;
        int length;
        ArrayList arrayList;
        int i11;
        int i12;
        char c10;
        char c11;
        int i13;
        int i14;
        ReferenceBinding[] referenceBindingArr2;
        TypeVariableBinding[] typeVariableBindingArr2;
        boolean z11;
        int i15;
        TypeBinding[] typeBindingArr3;
        AnnotationBinding[][] annotationBindingArr3;
        int length2;
        int i16;
        int length3;
        char c12;
        int i17;
        int i18;
        int i19;
        ReferenceBinding[] referenceBindingArr3;
        boolean z12;
        ITypeAnnotationWalker iTypeAnnotationWalker2;
        TypeBinding[] typeBindingArr4;
        TypeVariableBinding[] typeVariableBindingArr3;
        int i20;
        short s10;
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        int modifiers = iBinaryMethod.getModifiers() | 33554432;
        if (j10 < ClassFileConstants.JDK1_5) {
            modifiers &= -129;
        }
        if (isInterface() && (modifiers & 1024) == 0 && (modifiers & 8) == 0 && (modifiers & 2) == 0) {
            modifiers |= 65536;
        }
        int i21 = modifiers;
        ReferenceBinding[] referenceBindingArr4 = Binding.NO_EXCEPTIONS;
        TypeBinding[] typeBindingArr5 = Binding.NO_PARAMETERS;
        TypeVariableBinding[] typeVariableBindingArr4 = Binding.NO_TYPE_VARIABLES;
        char[][] argumentNames = iBinaryMethod.getArgumentNames();
        int i22 = 1;
        boolean z13 = j10 >= ClassFileConstants.JDK1_5;
        ITypeAnnotationWalker typeAnnotationWalker = getTypeAnnotationWalker(iBinaryMethod.getTypeAnnotations(), getNullDefaultFrom(iBinaryMethod.getAnnotations()));
        char[] genericSignature = iBinaryMethod.getGenericSignature();
        boolean z14 = z13;
        if (genericSignature == null) {
            char[] methodDescriptor = iBinaryMethod.getMethodDescriptor();
            if (j10 >= ClassFileConstants.JDK1_8) {
                typeAnnotationWalker = iBinaryType.enrichWithExternalAnnotationsFor(typeAnnotationWalker, iBinaryMethod, this.environment);
            }
            ITypeAnnotationWalker iTypeAnnotationWalker3 = typeAnnotationWalker;
            int i23 = 0;
            int i24 = 0;
            while (true) {
                i23 += i22;
                char c13 = methodDescriptor[i23];
                c10 = 'L';
                c11 = '[';
                if (c13 == ')') {
                    break;
                }
                int i25 = i24;
                ReferenceBinding[] referenceBindingArr5 = referenceBindingArr4;
                TypeVariableBinding[] typeVariableBindingArr5 = typeVariableBindingArr4;
                boolean z15 = z14;
                ITypeAnnotationWalker iTypeAnnotationWalker4 = iTypeAnnotationWalker3;
                int i26 = i22;
                if (c13 != '[') {
                    i24 = i25 + 1;
                } else {
                    iTypeAnnotationWalker3 = iTypeAnnotationWalker4;
                    i22 = i26;
                    typeVariableBindingArr4 = typeVariableBindingArr5;
                    i24 = i25;
                }
                referenceBindingArr4 = referenceBindingArr5;
                z14 = z15;
            }
            if (iBinaryMethod.isConstructor()) {
                int i27 = (!isMemberType() || isStatic()) ? 0 : i22;
                if (isEnum()) {
                    i27 += 2;
                }
                i13 = i27;
            } else {
                i13 = 0;
            }
            int i28 = i24 - i13;
            if (i28 > 0) {
                TypeBinding[] typeBindingArr6 = new TypeBinding[i28];
                annotationBindingArr3 = this.environment.globalOptions.storeAnnotations ? new AnnotationBinding[i28] : null;
                i15 = i22;
                int i29 = 0;
                int i30 = 0;
                short s11 = 0;
                while (i30 < i24) {
                    while (true) {
                        i29 += i22;
                        c12 = methodDescriptor[i29];
                        if (c12 != c11) {
                            break;
                        }
                        i22 = 1;
                    }
                    if (c12 == c10) {
                        do {
                            i29++;
                        } while (methodDescriptor[i29] != ';');
                    }
                    int i31 = i29;
                    if (i30 >= i13) {
                        int i32 = i30 - i13;
                        short s12 = s11;
                        s10 = (short) (s12 + 1);
                        i17 = i30;
                        i18 = i24;
                        referenceBindingArr3 = referenceBindingArr4;
                        iTypeAnnotationWalker2 = iTypeAnnotationWalker3;
                        i19 = i13;
                        z12 = z14;
                        typeBindingArr4 = typeBindingArr6;
                        typeVariableBindingArr3 = typeVariableBindingArr4;
                        i20 = 1;
                        typeBindingArr4[i32] = this.environment.getTypeFromSignature(methodDescriptor, i15, i31, false, this, cArr, iTypeAnnotationWalker3.toMethodParameter(s12));
                        if (annotationBindingArr3 != null) {
                            annotationBindingArr3[i32] = createAnnotations(iBinaryMethod.getParameterAnnotations(i32, this.fileName), this.environment, cArr);
                        }
                    } else {
                        i17 = i30;
                        i18 = i24;
                        i19 = i13;
                        referenceBindingArr3 = referenceBindingArr4;
                        z12 = z14;
                        short s13 = s11;
                        iTypeAnnotationWalker2 = iTypeAnnotationWalker3;
                        typeBindingArr4 = typeBindingArr6;
                        typeVariableBindingArr3 = typeVariableBindingArr4;
                        i20 = 1;
                        s10 = s13;
                    }
                    i15 = i31 + 1;
                    i30 = i17 + 1;
                    iTypeAnnotationWalker3 = iTypeAnnotationWalker2;
                    i22 = i20;
                    typeBindingArr6 = typeBindingArr4;
                    typeVariableBindingArr4 = typeVariableBindingArr3;
                    i29 = i31;
                    i24 = i18;
                    referenceBindingArr4 = referenceBindingArr3;
                    z14 = z12;
                    i13 = i19;
                    c11 = '[';
                    s11 = s10;
                    c10 = 'L';
                }
                i14 = i13;
                typeBindingArr3 = typeBindingArr6;
                referenceBindingArr2 = referenceBindingArr4;
                typeVariableBindingArr2 = typeVariableBindingArr4;
                z11 = z14;
                iTypeAnnotationWalker = iTypeAnnotationWalker3;
            } else {
                i14 = i13;
                referenceBindingArr2 = referenceBindingArr4;
                typeVariableBindingArr2 = typeVariableBindingArr4;
                z11 = z14;
                iTypeAnnotationWalker = iTypeAnnotationWalker3;
                i15 = i23;
                typeBindingArr3 = typeBindingArr5;
                annotationBindingArr3 = null;
            }
            char[][] exceptionTypeNames2 = iBinaryMethod.getExceptionTypeNames();
            if (exceptionTypeNames2 != null && (length3 = exceptionTypeNames2.length) > 0) {
                ReferenceBinding[] referenceBindingArr6 = new ReferenceBinding[length3];
                int i33 = 0;
                while (i33 < length3) {
                    int i34 = i33;
                    ReferenceBinding[] referenceBindingArr7 = referenceBindingArr6;
                    referenceBindingArr7[i34] = this.environment.getTypeFromConstantPoolName(exceptionTypeNames2[i33], 0, -1, false, cArr, iTypeAnnotationWalker.toThrows(i33));
                    i33 = i34 + 1;
                    referenceBindingArr6 = referenceBindingArr7;
                    length3 = length3;
                }
                referenceBindingArr2 = referenceBindingArr6;
            }
            TypeBinding typeFromSignature = !iBinaryMethod.isConstructor() ? this.environment.getTypeFromSignature(methodDescriptor, i15 + 1, -1, false, this, cArr, iTypeAnnotationWalker.toMethodReturn()) : null;
            if (argumentNames == null) {
                i16 = i14;
                length2 = 0;
            } else {
                length2 = argumentNames.length;
                i16 = i14;
            }
            if (i16 > 0 && length2 > 0) {
                if (i16 >= length2) {
                    argumentNames = Binding.NO_PARAMETER_NAMES;
                } else {
                    int i35 = length2 - i16;
                    char[][] cArr2 = new char[i35];
                    System.arraycopy(argumentNames, i16, cArr2, 0, i35);
                    argumentNames = cArr2;
                    i10 = i21;
                    typeBindingArr2 = typeBindingArr3;
                    annotationBindingArr2 = annotationBindingArr3;
                    typeVariableBindingArr = typeVariableBindingArr2;
                    referenceBindingArr = referenceBindingArr2;
                    z10 = z11;
                    typeBinding = typeFromSignature;
                }
            }
            typeBinding = typeFromSignature;
            i10 = i21;
            typeBindingArr2 = typeBindingArr3;
            annotationBindingArr2 = annotationBindingArr3;
            typeVariableBindingArr = typeVariableBindingArr2;
            referenceBindingArr = referenceBindingArr2;
            z10 = z11;
        } else {
            TypeVariableBinding[] typeVariableBindingArr6 = typeVariableBindingArr4;
            int i36 = 1;
            if (j10 >= ClassFileConstants.JDK1_8) {
                typeAnnotationWalker = iBinaryType.enrichWithExternalAnnotationsFor(typeAnnotationWalker, iBinaryMethod, this.environment);
            }
            ITypeAnnotationWalker iTypeAnnotationWalker5 = typeAnnotationWalker;
            int i37 = i21 | 1073741824;
            z10 = z14;
            SignatureWrapper signatureWrapper = new SignatureWrapper(genericSignature, z10);
            char[] cArr3 = signatureWrapper.signature;
            int i38 = signatureWrapper.start;
            if (cArr3[i38] == '<') {
                signatureWrapper.start = i38 + 1;
                TypeVariableBinding[] createTypeVariables = createTypeVariables(signatureWrapper, false, cArr, iTypeAnnotationWalker5, false);
                signatureWrapper.start++;
                typeVariableBindingArr6 = createTypeVariables;
            }
            char[] cArr4 = signatureWrapper.signature;
            int i39 = signatureWrapper.start;
            if (cArr4[i39] == '(') {
                int i40 = i39 + 1;
                signatureWrapper.start = i40;
                char c14 = ')';
                if (cArr4[i40] == ')') {
                    signatureWrapper.start = i39 + 2;
                } else {
                    ArrayList arrayList2 = new ArrayList(2);
                    short s14 = 0;
                    while (true) {
                        char[] cArr5 = signatureWrapper.signature;
                        i11 = signatureWrapper.start;
                        if (cArr5[i11] == c14) {
                            break;
                        }
                        arrayList2.add(this.environment.getTypeFromTypeSignature(signatureWrapper, typeVariableBindingArr6, this, cArr, NonNullDefaultAwareTypeAnnotationWalker.updateWalkerForParamNonNullDefault(iTypeAnnotationWalker5, getNullDefaultFrom(iBinaryMethod.getParameterAnnotations(s14, this.fileName)), this.environment).toMethodParameter(s14)));
                        s14 = (short) (s14 + 1);
                        c14 = c14;
                    }
                    signatureWrapper.start = i11 + 1;
                    int size = arrayList2.size();
                    TypeBinding[] typeBindingArr7 = new TypeBinding[size];
                    arrayList2.toArray(typeBindingArr7);
                    if (this.environment.globalOptions.storeAnnotations) {
                        AnnotationBinding[][] annotationBindingArr4 = new AnnotationBinding[size];
                        for (int i41 = 0; i41 < size; i41++) {
                            annotationBindingArr4[i41] = createAnnotations(iBinaryMethod.getParameterAnnotations(i41, this.fileName), this.environment, cArr);
                        }
                        typeBindingArr = typeBindingArr7;
                        annotationBindingArr = annotationBindingArr4;
                        typeFromTypeSignature = this.environment.getTypeFromTypeSignature(signatureWrapper, typeVariableBindingArr6, this, cArr, iTypeAnnotationWalker5.toMethodReturn());
                        if (signatureWrapper.atEnd() && signatureWrapper.signature[signatureWrapper.start] == '^') {
                            ArrayList arrayList3 = new ArrayList(2);
                            int i42 = 0;
                            while (true) {
                                signatureWrapper.start += i36;
                                int i43 = i42 + 1;
                                arrayList = arrayList3;
                                arrayList.add(this.environment.getTypeFromTypeSignature(signatureWrapper, typeVariableBindingArr6, this, cArr, iTypeAnnotationWalker5.toThrows(i42)));
                                if (signatureWrapper.atEnd() || signatureWrapper.signature[signatureWrapper.start] != '^') {
                                    break;
                                }
                                arrayList3 = arrayList;
                                i42 = i43;
                                i36 = 1;
                            }
                            ReferenceBinding[] referenceBindingArr8 = new ReferenceBinding[arrayList.size()];
                            arrayList.toArray(referenceBindingArr8);
                            referenceBindingArr = referenceBindingArr8;
                        } else {
                            exceptionTypeNames = iBinaryMethod.getExceptionTypeNames();
                            if (exceptionTypeNames != null || (length = exceptionTypeNames.length) <= 0) {
                                iTypeAnnotationWalker = iTypeAnnotationWalker5;
                                i10 = i37;
                                typeBindingArr2 = typeBindingArr;
                                typeBinding = typeFromTypeSignature;
                                annotationBindingArr2 = annotationBindingArr;
                                typeVariableBindingArr = typeVariableBindingArr6;
                                referenceBindingArr = referenceBindingArr4;
                            } else {
                                ReferenceBinding[] referenceBindingArr9 = new ReferenceBinding[length];
                                int i44 = 0;
                                while (i44 < length) {
                                    int i45 = i44;
                                    ReferenceBinding[] referenceBindingArr10 = referenceBindingArr9;
                                    referenceBindingArr10[i45] = this.environment.getTypeFromConstantPoolName(exceptionTypeNames[i44], 0, -1, false, cArr, iTypeAnnotationWalker5.toThrows(i44));
                                    i44 = i45 + 1;
                                    referenceBindingArr9 = referenceBindingArr10;
                                }
                                referenceBindingArr = referenceBindingArr9;
                            }
                        }
                        iTypeAnnotationWalker = iTypeAnnotationWalker5;
                        i10 = i37;
                        typeBindingArr2 = typeBindingArr;
                        typeBinding = typeFromTypeSignature;
                        annotationBindingArr2 = annotationBindingArr;
                        typeVariableBindingArr = typeVariableBindingArr6;
                    } else {
                        typeBindingArr = typeBindingArr7;
                        annotationBindingArr = null;
                        typeFromTypeSignature = this.environment.getTypeFromTypeSignature(signatureWrapper, typeVariableBindingArr6, this, cArr, iTypeAnnotationWalker5.toMethodReturn());
                        if (signatureWrapper.atEnd()) {
                        }
                        exceptionTypeNames = iBinaryMethod.getExceptionTypeNames();
                        if (exceptionTypeNames != null) {
                        }
                        iTypeAnnotationWalker = iTypeAnnotationWalker5;
                        i10 = i37;
                        typeBindingArr2 = typeBindingArr;
                        typeBinding = typeFromTypeSignature;
                        annotationBindingArr2 = annotationBindingArr;
                        typeVariableBindingArr = typeVariableBindingArr6;
                        referenceBindingArr = referenceBindingArr4;
                    }
                }
            }
            typeBindingArr = typeBindingArr5;
            annotationBindingArr = null;
            typeFromTypeSignature = this.environment.getTypeFromTypeSignature(signatureWrapper, typeVariableBindingArr6, this, cArr, iTypeAnnotationWalker5.toMethodReturn());
            if (signatureWrapper.atEnd()) {
            }
            exceptionTypeNames = iBinaryMethod.getExceptionTypeNames();
            if (exceptionTypeNames != null) {
            }
            iTypeAnnotationWalker = iTypeAnnotationWalker5;
            i10 = i37;
            typeBindingArr2 = typeBindingArr;
            typeBinding = typeFromTypeSignature;
            annotationBindingArr2 = annotationBindingArr;
            typeVariableBindingArr = typeVariableBindingArr6;
            referenceBindingArr = referenceBindingArr4;
        }
        MethodBinding methodBinding = iBinaryMethod.isConstructor() ? new MethodBinding(i10, typeBindingArr2, referenceBindingArr, this) : new MethodBinding(i10, iBinaryMethod.getSelector(), typeBinding, typeBindingArr2, referenceBindingArr, this);
        IBinaryAnnotation[] annotationsAtCursor = iTypeAnnotationWalker.toReceiver().getAnnotationsAtCursor(this.f102482id, false);
        if (annotationsAtCursor != null && annotationsAtCursor.length > 0) {
            LookupEnvironment lookupEnvironment = this.environment;
            methodBinding.receiver = lookupEnvironment.createAnnotatedType(this, createAnnotations(annotationsAtCursor, lookupEnvironment, cArr));
        }
        CompilerOptions compilerOptions = this.environment.globalOptions;
        boolean z16 = !compilerOptions.storeAnnotations && compilerOptions.sourceLevel >= ClassFileConstants.JDK9 && (iBinaryMethod instanceof MethodInfoWithAnnotations) && (iBinaryMethod.getTagBits() & 70368744177664L) != 0;
        if (this.environment.globalOptions.storeAnnotations || z16) {
            if (z16) {
                storedAnnotations(true, true);
            }
            IBinaryAnnotation[] annotations = iBinaryMethod.getAnnotations();
            if (iBinaryMethod.isConstructor()) {
                i12 = 0;
                methodBinding.setTypeAnnotations(createAnnotations(iTypeAnnotationWalker.toMethodReturn().getAnnotationsAtCursor(this.f102482id, false), this.environment, cArr));
            } else {
                i12 = 0;
            }
            methodBinding.setAnnotations(createAnnotations(annotations, this.environment, cArr), annotationBindingArr2, isAnnotationType() ? convertMemberValue(iBinaryMethod.getDefaultValue(), this.environment, cArr, true) : null, this.environment);
        } else {
            i12 = 0;
        }
        if (argumentNames != null) {
            methodBinding.parameterNames = argumentNames;
        }
        if (z10) {
            methodBinding.tagBits |= iBinaryMethod.getTagBits();
        }
        methodBinding.typeVariables = typeVariableBindingArr;
        int length4 = typeVariableBindingArr.length;
        for (int i46 = i12; i46 < length4; i46++) {
            this.environment.typeSystem.fixTypeVariableDeclaringElement(typeVariableBindingArr[i46], methodBinding);
        }
        return methodBinding;
    }

    private IBinaryMethod[] createMethods(IBinaryMethod[] iBinaryMethodArr, IBinaryType iBinaryType, long j10, char[][][] cArr) {
        int i10;
        int i11;
        int i12;
        int[] iArr;
        int i13;
        IBinaryMethod[] iBinaryMethodArr2;
        IBinaryMethod[] iBinaryMethodArr3 = iBinaryMethodArr;
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        LookupEnvironment lookupEnvironment = this.environment;
        boolean z10 = lookupEnvironment.mayTolerateMissingType;
        boolean z11 = true;
        lookupEnvironment.mayTolerateMissingType = true;
        int[] iArr2 = null;
        if (iBinaryMethodArr3 != null) {
            try {
                int length = iBinaryMethodArr3.length;
                if (j10 >= ClassFileConstants.JDK1_5) {
                    z11 = false;
                }
                int i14 = length;
                i10 = i14;
                int i15 = -1;
                while (true) {
                    i14--;
                    if (i14 < 0) {
                        break;
                    }
                    IBinaryMethod iBinaryMethod = iBinaryMethodArr3[i14];
                    if ((iBinaryMethod.getModifiers() & 4096) != 0) {
                        if (!z11 || (iBinaryMethod.getModifiers() & 64) == 0) {
                            if (iArr2 == null) {
                                iArr2 = new int[iBinaryMethodArr3.length];
                            }
                            iArr2[i14] = -1;
                            i10--;
                        }
                    } else if (i15 == -1) {
                        char[] selector = iBinaryMethod.getSelector();
                        if (selector.length == 8 && selector[0] == '<') {
                            i10--;
                            i15 = i14;
                        }
                    }
                }
                i11 = length;
                i12 = i15;
                iArr = iArr2;
            } catch (Throwable th2) {
                this.environment.mayTolerateMissingType = z10;
                throw th2;
            }
        } else {
            i10 = 0;
            i11 = 0;
            iArr = null;
            i12 = -1;
        }
        if (i10 == 0) {
            this.methods = Binding.NO_METHODS;
            iBinaryMethodArr3 = NO_BINARY_METHODS;
        } else {
            boolean hasRestrictedAccess = hasRestrictedAccess();
            MethodBinding[] methodBindingArr = new MethodBinding[i10];
            if (i10 != i11) {
                IBinaryMethod[] iBinaryMethodArr4 = new IBinaryMethod[i10];
                int i16 = 0;
                int i17 = 0;
                while (i16 < i11) {
                    if (i12 == i16 || (iArr != null && iArr[i16] == -1)) {
                        i13 = i16;
                        iBinaryMethodArr2 = iBinaryMethodArr4;
                        i16 = i13 + 1;
                        iBinaryMethodArr4 = iBinaryMethodArr2;
                    }
                    i13 = i16;
                    iBinaryMethodArr2 = iBinaryMethodArr4;
                    MethodBinding createMethod = createMethod(iBinaryMethodArr3[i16], iBinaryType, j10, cArr);
                    if (hasRestrictedAccess) {
                        createMethod.modifiers |= 262144;
                    }
                    iBinaryMethodArr2[i17] = iBinaryMethodArr3[i13];
                    int i18 = i17 + 1;
                    methodBindingArr[i17] = createMethod;
                    i17 = i18;
                    i16 = i13 + 1;
                    iBinaryMethodArr4 = iBinaryMethodArr2;
                }
                this.methods = methodBindingArr;
                this.environment.mayTolerateMissingType = z10;
                return iBinaryMethodArr4;
            }
            for (int i19 = 0; i19 < i11; i19++) {
                MethodBinding createMethod2 = createMethod(iBinaryMethodArr3[i19], iBinaryType, j10, cArr);
                if (hasRestrictedAccess) {
                    createMethod2.modifiers |= 262144;
                }
                methodBindingArr[i19] = createMethod2;
            }
            this.methods = methodBindingArr;
        }
        this.environment.mayTolerateMissingType = z10;
        return iBinaryMethodArr3;
    }

    private TypeVariableBinding[] createTypeVariables(SignatureWrapper signatureWrapper, boolean z10, char[][][] cArr, ITypeAnnotationWalker iTypeAnnotationWalker, boolean z11) {
        int i10;
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        char[] cArr2 = signatureWrapper.signature;
        int length = cArr2.length;
        ArrayList arrayList = new ArrayList(1);
        boolean z12 = true;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 1; i13 < length; i13++) {
            char c10 = cArr2[i13];
            if (c10 != ';') {
                if (c10 == '<') {
                    i11++;
                } else if (c10 == '>') {
                    i11--;
                    if (i11 < 0) {
                        break;
                    }
                } else if (z12) {
                    TypeVariableBinding typeVariableBinding = new TypeVariableBinding(CharOperation.subarray(cArr2, i13, CharOperation.indexOf(':', cArr2, i13)), this, i12, this.environment);
                    int i14 = i12 + 1;
                    AnnotationBinding[] createAnnotations = createAnnotations(iTypeAnnotationWalker.toTypeParameter(z11, i12).getAnnotationsAtCursor(0, false), this.environment, cArr);
                    if (createAnnotations != null && createAnnotations != Binding.NO_ANNOTATIONS) {
                        typeVariableBinding.setTypeAnnotations(createAnnotations, this.environment.globalOptions.isAnnotationBasedNullAnalysisEnabled);
                    }
                    arrayList.add(typeVariableBinding);
                    i12 = i14;
                    z12 = false;
                }
            } else if (i11 == 0 && (i10 = i13 + 1) < length && cArr2[i10] != ':') {
                z12 = true;
            }
        }
        TypeVariableBinding[] typeVariableBindingArr = new TypeVariableBinding[i12];
        arrayList.toArray(typeVariableBindingArr);
        if (z10) {
            this.typeVariables = typeVariableBindingArr;
        }
        for (int i15 = 0; i15 < i12; i15++) {
            initializeTypeVariable(typeVariableBindingArr[i15], typeVariableBindingArr, signatureWrapper, cArr, iTypeAnnotationWalker.toTypeParameterBounds(z11, i15));
            if (this.externalAnnotationStatus.isPotentiallyUnannotatedLib() && typeVariableBindingArr[i15].hasNullTypeAnnotations()) {
                this.externalAnnotationStatus = ExternalAnnotationStatus.TYPE_IS_ANNOTATED;
            }
        }
        return typeVariableBindingArr;
    }

    public static int evaluateTypeQualifierDefault(ReferenceBinding referenceBinding) {
        ElementValuePair[] elementValuePairs;
        for (AnnotationBinding annotationBinding : referenceBinding.getAnnotations()) {
            if (CharOperation.equals(annotationBinding.getAnnotationType().compoundName[annotationBinding.type.compoundName.length - 1], TYPE_QUALIFIER_DEFAULT) && (elementValuePairs = annotationBinding.getElementValuePairs()) != null) {
                for (ElementValuePair elementValuePair : elementValuePairs) {
                    if (CharOperation.equals(elementValuePair.getName(), TypeConstants.VALUE)) {
                        Object value = elementValuePair.getValue();
                        if (!(value instanceof Object[])) {
                            return Annotation.nullLocationBitsFromElementTypeAnnotationValue(value);
                        }
                        Object[] objArr = (Object[]) value;
                        int i10 = 0;
                        for (Object obj : objArr) {
                            i10 |= Annotation.nullLocationBitsFromElementTypeAnnotationValue(obj);
                        }
                        return i10;
                    }
                }
            }
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x003b, code lost:
    
        if (r0 == 'L') goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x003d, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0040, code lost:
    
        if (r21[r1] != ';') goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0042, code lost:
    
        r16 = r1;
        r18 = r5;
        r19 = r6;
        r11 = r7;
        r0 = r20.environment.getTypeFromSignature(r21, r3, r16, false, r20, r22, org.eclipse.jdt.internal.compiler.env.ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x005f, code lost:
    
        if ((r0 instanceof org.eclipse.jdt.internal.compiler.lookup.UnresolvedReferenceBinding) == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0061, code lost:
    
        r0 = resolveType(r0, r20.environment, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0067, code lost:
    
        r19[r18] = r0;
        r3 = r16 + 1;
        r5 = r18 + 1;
        r7 = r11;
        r1 = r16;
        r6 = r19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private MethodBinding findMethod(char[] cArr, char[][][] cArr2) {
        int i10;
        char c10;
        TypeBinding[] typeBindingArr;
        int i11;
        char c11;
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        int i12 = -1;
        while (true) {
            i10 = i12 + 1;
            if (cArr[i10] == '(') {
                break;
            }
            i12 = i10;
        }
        char[] cArr3 = new char[i10];
        int i13 = 0;
        System.arraycopy(cArr, 0, cArr3, 0, i10);
        TypeBinding[] typeBindingArr2 = Binding.NO_PARAMETERS;
        int i14 = i10;
        int i15 = 0;
        while (true) {
            i14++;
            char c12 = cArr[i14];
            c10 = '[';
            if (c12 == ')') {
                break;
            }
            if (c12 != '[') {
                i15++;
                if (c12 != 'L') {
                }
                do {
                    i14++;
                } while (cArr[i14] != ';');
            }
            i13 = 0;
        }
        if (i15 > 0) {
            typeBindingArr = new TypeBinding[i15];
            int i16 = i12 + 2;
            int i17 = i13;
            while (i17 < i15) {
                do {
                    i10++;
                    c11 = cArr[i10];
                } while (c11 == c10);
            }
        } else {
            typeBindingArr = typeBindingArr2;
        }
        int length = typeBindingArr.length;
        for (MethodBinding methodBinding : this.enclosingType.getMethods(cArr3, length)) {
            TypeBinding[] typeBindingArr3 = methodBinding.parameters;
            int length2 = typeBindingArr3.length;
            if (length == length2) {
                while (i11 < length2) {
                    i11 = (TypeBinding.notEquals(typeBindingArr[i11], typeBindingArr3[i11]) && TypeBinding.notEquals(typeBindingArr[i11].erasure(), typeBindingArr3[i11].erasure())) ? 0 : i11 + 1;
                }
                return methodBinding;
            }
        }
        return null;
    }

    public static int getNonNullByDefaultValue(IBinaryAnnotation iBinaryAnnotation, LookupEnvironment lookupEnvironment) {
        char[][] signature2qualifiedTypeName = signature2qualifiedTypeName(iBinaryAnnotation.getTypeName());
        IBinaryElementValuePair[] elementValuePairs = iBinaryAnnotation.getElementValuePairs();
        if (elementValuePairs != null && elementValuePairs.length != 0) {
            if (elementValuePairs.length <= 0) {
                return 2;
            }
            int i10 = 0;
            for (IBinaryElementValuePair iBinaryElementValuePair : elementValuePairs) {
                i10 |= Annotation.nullLocationBitsFromAnnotationValue(iBinaryElementValuePair.getValue());
            }
            return i10;
        }
        ReferenceBinding type = lookupEnvironment.getType(signature2qualifiedTypeName, lookupEnvironment.UnNamedModule);
        if (type == null) {
            return 0;
        }
        if (type.isUnresolvedType()) {
            type = ((UnresolvedReferenceBinding) type).resolve(lookupEnvironment, false);
        }
        int evaluateTypeQualifierDefault = evaluateTypeQualifierDefault(type);
        if (evaluateTypeQualifierDefault != 0) {
            return evaluateTypeQualifierDefault;
        }
        MethodBinding[] methods = type.methods();
        if (methods == null || methods.length != 1) {
            return 56;
        }
        return Annotation.nullLocationBitsFromAnnotationValue(methods[0].getDefaultValue());
    }

    private int getNullDefaultFrom(IBinaryAnnotation[] iBinaryAnnotationArr) {
        if (iBinaryAnnotationArr == null) {
            return 0;
        }
        int i10 = 0;
        for (IBinaryAnnotation iBinaryAnnotation : iBinaryAnnotationArr) {
            if (this.environment.getNullAnnotationBit(signature2qualifiedTypeName(iBinaryAnnotation.getTypeName())) == 128) {
                i10 |= getNonNullByDefaultValue(iBinaryAnnotation, this.environment);
            }
        }
        return i10;
    }

    private ITypeAnnotationWalker getTypeAnnotationWalker(IBinaryTypeAnnotation[] iBinaryTypeAnnotationArr, int i10) {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        if (iBinaryTypeAnnotationArr == null || iBinaryTypeAnnotationArr.length == 0 || !this.environment.usesAnnotatedTypeSystem()) {
            if (this.environment.globalOptions.isAnnotationBasedNullAnalysisEnabled) {
                if (i10 == 0) {
                    i10 = getNullDefault();
                }
                if (i10 > 2) {
                    return new NonNullDefaultAwareTypeAnnotationWalker(i10, this.environment);
                }
            }
            return ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
        }
        if (this.environment.globalOptions.isAnnotationBasedNullAnalysisEnabled) {
            if (i10 == 0) {
                i10 = getNullDefault();
            }
            if (i10 > 2) {
                return new NonNullDefaultAwareTypeAnnotationWalker(iBinaryTypeAnnotationArr, i10, this.environment);
            }
        }
        return new TypeAnnotationWalker(iBinaryTypeAnnotationArr);
    }

    private void initializeTypeVariable(TypeVariableBinding typeVariableBinding, TypeVariableBinding[] typeVariableBindingArr, SignatureWrapper signatureWrapper, char[][][] cArr, ITypeAnnotationWalker iTypeAnnotationWalker) {
        ReferenceBinding resolvedJavaBaseType;
        short s10;
        ReferenceBinding referenceBinding;
        ReferenceBinding[] referenceBindingArr;
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        int indexOf = CharOperation.indexOf(':', signatureWrapper.signature, signatureWrapper.start) + 1;
        signatureWrapper.start = indexOf;
        if (signatureWrapper.signature[indexOf] == ':') {
            resolvedJavaBaseType = this.environment.getResolvedJavaBaseType(TypeConstants.JAVA_LANG_OBJECT, null);
            s10 = (short) 1;
            referenceBinding = null;
        } else {
            short s11 = (short) 1;
            TypeBinding typeFromTypeSignature = this.environment.getTypeFromTypeSignature(signatureWrapper, typeVariableBindingArr, this, cArr, iTypeAnnotationWalker.toTypeBound((short) 0));
            resolvedJavaBaseType = typeFromTypeSignature instanceof ReferenceBinding ? (ReferenceBinding) typeFromTypeSignature : this.environment.getResolvedJavaBaseType(TypeConstants.JAVA_LANG_OBJECT, null);
            s10 = s11;
            referenceBinding = resolvedJavaBaseType;
        }
        typeVariableBinding.modifiers |= 33554432;
        typeVariableBinding.setSuperClass(resolvedJavaBaseType);
        if (signatureWrapper.signature[signatureWrapper.start] == ':') {
            ArrayList arrayList = new ArrayList(2);
            while (true) {
                signatureWrapper.start++;
                short s12 = (short) (s10 + 1);
                arrayList.add(this.environment.getTypeFromTypeSignature(signatureWrapper, typeVariableBindingArr, this, cArr, iTypeAnnotationWalker.toTypeBound(s10)));
                if (signatureWrapper.signature[signatureWrapper.start] != ':') {
                    break;
                } else {
                    s10 = s12;
                }
            }
            referenceBindingArr = new ReferenceBinding[arrayList.size()];
            arrayList.toArray(referenceBindingArr);
        } else {
            referenceBindingArr = null;
        }
        if (referenceBindingArr == null) {
            referenceBindingArr = Binding.NO_SUPERINTERFACES;
        }
        typeVariableBinding.setSuperInterfaces(referenceBindingArr);
        if (referenceBinding == null) {
            ReferenceBinding[] referenceBindingArr2 = typeVariableBinding.superInterfaces;
            referenceBinding = referenceBindingArr2.length != 0 ? referenceBindingArr2[0] : null;
        }
        typeVariableBinding.setFirstBound(referenceBinding);
    }

    private boolean isPrototype() {
        return this == this.prototype;
    }

    public static TypeBinding resolveType(TypeBinding typeBinding, LookupEnvironment lookupEnvironment, boolean z10) {
        int kind = typeBinding.kind();
        if (kind == 68) {
            ArrayBinding arrayBinding = (ArrayBinding) typeBinding;
            TypeBinding typeBinding2 = arrayBinding.leafComponentType;
            resolveType(typeBinding2, lookupEnvironment, z10);
            if (typeBinding2.hasNullTypeAnnotations() && lookupEnvironment.usesNullTypeAnnotations()) {
                if (arrayBinding.nullTagBitsPerDimension == null) {
                    arrayBinding.nullTagBitsPerDimension = new long[arrayBinding.dimensions + 1];
                }
                arrayBinding.nullTagBitsPerDimension[arrayBinding.dimensions] = typeBinding2.tagBits & TagBits.AnnotationNullMASK;
            }
        } else {
            if (kind != 260) {
                if (kind != 516) {
                    if (kind != 2052) {
                        if (kind == 4100) {
                            ((TypeVariableBinding) typeBinding).resolve();
                        } else if (kind != 8196) {
                            if (typeBinding instanceof UnresolvedReferenceBinding) {
                                return ((UnresolvedReferenceBinding) typeBinding).resolve(lookupEnvironment, z10);
                            }
                            if (z10) {
                                return lookupEnvironment.convertUnresolvedBinaryToRawType(typeBinding);
                            }
                        }
                    } else if (z10) {
                        return lookupEnvironment.convertUnresolvedBinaryToRawType(typeBinding);
                    }
                }
                return ((WildcardBinding) typeBinding).resolve();
            }
            ((ParameterizedTypeBinding) typeBinding).resolve();
        }
        return typeBinding;
    }

    private FieldBinding resolveTypeFor(FieldBinding fieldBinding) {
        if (!isPrototype()) {
            return this.prototype.resolveTypeFor(fieldBinding);
        }
        if ((fieldBinding.modifiers & 33554432) == 0) {
            return fieldBinding;
        }
        TypeBinding resolveType = resolveType(fieldBinding.type, this.environment, true);
        fieldBinding.type = resolveType;
        if ((resolveType.tagBits & 128) != 0) {
            fieldBinding.tagBits |= 128;
        }
        fieldBinding.modifiers &= -33554433;
        return fieldBinding;
    }

    private void scanFieldForNullAnnotation(IBinaryField iBinaryField, FieldBinding fieldBinding, boolean z10, ITypeAnnotationWalker iTypeAnnotationWalker) {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        if (z10 && (iBinaryField.getModifiers() & 16384) != 0) {
            fieldBinding.tagBits |= 72057594037927936L;
            return;
        }
        if (!CharOperation.equals(this.fPackage.compoundName, TypeConstants.JAVA_LANG_ANNOTATION) && this.environment.usesNullTypeAnnotations()) {
            TypeBinding typeBinding = fieldBinding.type;
            if (typeBinding == null || typeBinding.isBaseType() || (typeBinding.tagBits & TagBits.AnnotationNullMASK) != 0 || !typeBinding.acceptsNonNullDefault()) {
                return;
            }
            int nullDefaultFrom = getNullDefaultFrom(iBinaryField.getAnnotations());
            if (nullDefaultFrom == 0) {
                if (!hasNonNullDefaultFor(32, -1)) {
                    return;
                }
            } else if ((nullDefaultFrom & 32) == 0) {
                return;
            }
            LookupEnvironment lookupEnvironment = this.environment;
            fieldBinding.type = lookupEnvironment.createAnnotatedType(typeBinding, new AnnotationBinding[]{lookupEnvironment.getNonNullAnnotation()});
            return;
        }
        TypeBinding typeBinding2 = fieldBinding.type;
        if (typeBinding2 == null || typeBinding2.isBaseType()) {
            return;
        }
        boolean z11 = false;
        IBinaryAnnotation[] annotationsAtCursor = iTypeAnnotationWalker != ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER ? iTypeAnnotationWalker.getAnnotationsAtCursor(fieldBinding.type.f102482id, false) : iBinaryField.getAnnotations();
        if (annotationsAtCursor != null) {
            for (IBinaryAnnotation iBinaryAnnotation : annotationsAtCursor) {
                char[] typeName = iBinaryAnnotation.getTypeName();
                if (typeName[0] == 'L') {
                    int nullAnnotationBit = this.environment.getNullAnnotationBit(signature2qualifiedTypeName(typeName));
                    if (nullAnnotationBit == 32) {
                        fieldBinding.tagBits |= 72057594037927936L;
                    } else if (nullAnnotationBit == 64) {
                        fieldBinding.tagBits |= 36028797018963968L;
                    }
                    z11 = true;
                    break;
                }
            }
        }
        if (z11 && this.externalAnnotationStatus.isPotentiallyUnannotatedLib()) {
            this.externalAnnotationStatus = ExternalAnnotationStatus.TYPE_IS_ANNOTATED;
        }
        if (z11) {
            return;
        }
        int nullDefaultFrom2 = getNullDefaultFrom(iBinaryField.getAnnotations());
        if (nullDefaultFrom2 == 0) {
            if (!hasNonNullDefaultFor(32, -1)) {
                return;
            }
        } else if ((nullDefaultFrom2 & 32) == 0) {
            return;
        }
        fieldBinding.tagBits |= 72057594037927936L;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void scanMethodForNullAnnotation(IBinaryMethod iBinaryMethod, MethodBinding methodBinding, ITypeAnnotationWalker iTypeAnnotationWalker, boolean z10) {
        TypeBinding typeBinding;
        TypeBinding typeBinding2;
        TypeBinding typeBinding3;
        TypeBinding typeBinding4;
        int i10;
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        if (isEnum()) {
            if (CharOperation.equals(TypeConstants.VALUEOF, iBinaryMethod.getSelector())) {
                TypeBinding[] typeBindingArr = methodBinding.parameters;
                if (typeBindingArr.length == 1 && typeBindingArr[0].f102482id == 11) {
                    i10 = 10;
                    if (i10 != 0) {
                        LookupEnvironment lookupEnvironment = this.environment;
                        if (lookupEnvironment.globalOptions.useNullTypeAnnotations == null) {
                            lookupEnvironment.deferredEnumMethods.add(methodBinding);
                            return;
                        } else {
                            SyntheticMethodBinding.markNonNull(methodBinding, i10, lookupEnvironment);
                            return;
                        }
                    }
                }
            }
            i10 = (CharOperation.equals(TypeConstants.VALUES, iBinaryMethod.getSelector()) && methodBinding.parameters == Binding.NO_PARAMETERS) ? 9 : 0;
            if (i10 != 0) {
            }
        }
        ITypeAnnotationWalker methodReturn = iTypeAnnotationWalker.toMethodReturn();
        IBinaryAnnotation[] annotationsAtCursor = methodReturn != ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER ? methodReturn.getAnnotationsAtCursor(methodBinding.returnType.f102482id, false) : iBinaryMethod.getAnnotations();
        if (annotationsAtCursor != null) {
            int i11 = 0;
            for (int i12 = 0; i12 < annotationsAtCursor.length; i12++) {
                char[] typeName = annotationsAtCursor[i12].getTypeName();
                if (typeName[0] == 'L') {
                    int nullAnnotationBit = this.environment.getNullAnnotationBit(signature2qualifiedTypeName(typeName));
                    if (nullAnnotationBit == 128) {
                        i11 |= getNonNullByDefaultValue(annotationsAtCursor[i12], this.environment);
                    } else if (nullAnnotationBit == 32) {
                        methodBinding.tagBits |= 72057594037927936L;
                        if (this.environment.usesNullTypeAnnotations() && (typeBinding4 = methodBinding.returnType) != null && !typeBinding4.hasNullTypeAnnotations()) {
                            LookupEnvironment lookupEnvironment2 = this.environment;
                            methodBinding.returnType = lookupEnvironment2.createAnnotatedType(methodBinding.returnType, new AnnotationBinding[]{lookupEnvironment2.getNonNullAnnotation()});
                        }
                    } else if (nullAnnotationBit == 64) {
                        methodBinding.tagBits |= 36028797018963968L;
                        if (this.environment.usesNullTypeAnnotations() && (typeBinding3 = methodBinding.returnType) != null && !typeBinding3.hasNullTypeAnnotations()) {
                            LookupEnvironment lookupEnvironment3 = this.environment;
                            methodBinding.returnType = lookupEnvironment3.createAnnotatedType(methodBinding.returnType, new AnnotationBinding[]{lookupEnvironment3.getNullableAnnotation()});
                        }
                    }
                }
            }
            methodBinding.defaultNullness = i11;
        }
        TypeBinding[] typeBindingArr2 = methodBinding.parameters;
        int length = typeBindingArr2.length;
        int parameterCount = iTypeAnnotationWalker instanceof ExternalAnnotationProvider.IMethodAnnotationWalker ? ((ExternalAnnotationProvider.IMethodAnnotationWalker) iTypeAnnotationWalker).getParameterCount() : iBinaryMethod.getAnnotatedParametersCount();
        if (parameterCount > 0) {
            for (int i13 = 0; i13 < length; i13++) {
                if (parameterCount > 0) {
                    int i14 = (parameterCount - length) + i13;
                    ITypeAnnotationWalker methodParameter = iTypeAnnotationWalker.toMethodParameter((short) i14);
                    IBinaryAnnotation[] annotationsAtCursor2 = methodParameter != ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER ? methodParameter.getAnnotationsAtCursor(typeBindingArr2[i13].f102482id, false) : iBinaryMethod.getParameterAnnotations(i14, this.fileName);
                    if (annotationsAtCursor2 != null) {
                        int i15 = 0;
                        while (true) {
                            if (i15 >= annotationsAtCursor2.length) {
                                break;
                            }
                            char[] typeName2 = annotationsAtCursor2[i15].getTypeName();
                            if (typeName2[0] == 'L') {
                                int nullAnnotationBit2 = this.environment.getNullAnnotationBit(signature2qualifiedTypeName(typeName2));
                                if (nullAnnotationBit2 == 32) {
                                    if (methodBinding.parameterNonNullness == null) {
                                        methodBinding.parameterNonNullness = new Boolean[length];
                                    }
                                    methodBinding.parameterNonNullness[i13] = Boolean.TRUE;
                                    if (this.environment.usesNullTypeAnnotations() && (typeBinding = methodBinding.parameters[i13]) != null && !typeBinding.hasNullTypeAnnotations()) {
                                        TypeBinding[] typeBindingArr3 = methodBinding.parameters;
                                        LookupEnvironment lookupEnvironment4 = this.environment;
                                        typeBindingArr3[i13] = lookupEnvironment4.createAnnotatedType(typeBindingArr3[i13], new AnnotationBinding[]{lookupEnvironment4.getNonNullAnnotation()});
                                    }
                                } else if (nullAnnotationBit2 == 64) {
                                    if (methodBinding.parameterNonNullness == null) {
                                        methodBinding.parameterNonNullness = new Boolean[length];
                                    }
                                    methodBinding.parameterNonNullness[i13] = Boolean.FALSE;
                                    if (this.environment.usesNullTypeAnnotations() && (typeBinding2 = methodBinding.parameters[i13]) != null && !typeBinding2.hasNullTypeAnnotations()) {
                                        TypeBinding[] typeBindingArr4 = methodBinding.parameters;
                                        LookupEnvironment lookupEnvironment5 = this.environment;
                                        typeBindingArr4[i13] = lookupEnvironment5.createAnnotatedType(typeBindingArr4[i13], new AnnotationBinding[]{lookupEnvironment5.getNullableAnnotation()});
                                    }
                                }
                            }
                            i15++;
                        }
                    }
                }
            }
        }
        if (z10 && this.externalAnnotationStatus.isPotentiallyUnannotatedLib()) {
            if (methodBinding.returnType.hasNullTypeAnnotations() || (methodBinding.tagBits & TagBits.AnnotationNullMASK) != 0 || methodBinding.parameterNonNullness != null) {
                this.externalAnnotationStatus = ExternalAnnotationStatus.TYPE_IS_ANNOTATED;
                return;
            }
            for (TypeBinding typeBinding5 : typeBindingArr2) {
                if (typeBinding5.hasNullTypeAnnotations()) {
                    this.externalAnnotationStatus = ExternalAnnotationStatus.TYPE_IS_ANNOTATED;
                    return;
                }
            }
        }
    }

    private void scanTypeForContainerAnnotation(IBinaryType iBinaryType, char[][][] cArr) {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        IBinaryAnnotation[] annotations = iBinaryType.getAnnotations();
        if (annotations != null) {
            int length = annotations.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (CharOperation.equals(annotations[i10].getTypeName(), ConstantPool.JAVA_LANG_ANNOTATION_REPEATABLE)) {
                    IBinaryElementValuePair[] elementValuePairs = annotations[i10].getElementValuePairs();
                    if (elementValuePairs == null || elementValuePairs.length != 1) {
                        return;
                    }
                    Object value = elementValuePairs[0].getValue();
                    if (value instanceof ClassSignature) {
                        this.containerAnnotationType = (ReferenceBinding) this.environment.getTypeFromSignature(((ClassSignature) value).getTypeName(), 0, -1, false, null, cArr, ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER);
                        return;
                    }
                    return;
                }
            }
        }
    }

    private void scanTypeForNullDefaultAnnotation(IBinaryType iBinaryType, PackageBinding packageBinding) {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        char[][] nonNullByDefaultAnnotationName = this.environment.getNonNullByDefaultAnnotationName();
        if (nonNullByDefaultAnnotationName == null || CharOperation.equals(CharOperation.splitOn('/', iBinaryType.getName()), nonNullByDefaultAnnotationName)) {
            return;
        }
        IBinaryAnnotation[] annotations = iBinaryType.getAnnotations();
        boolean equals = CharOperation.equals(sourceName(), TypeConstants.PACKAGE_INFO_NAME);
        if (annotations != null) {
            int length = annotations.length;
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                char[] typeName = annotations[i11].getTypeName();
                if (typeName[0] == 'L' && this.environment.getNullAnnotationBit(signature2qualifiedTypeName(typeName)) == 128) {
                    i10 |= getNonNullByDefaultValue(annotations[i11], this.environment);
                }
            }
            this.defaultNullness = i10;
            if (i10 != 0) {
                if (equals) {
                    packageBinding.setDefaultNullness(i10);
                    return;
                }
                return;
            }
        }
        if (equals) {
            packageBinding.setDefaultNullness(0);
            return;
        }
        ReferenceBinding referenceBinding = this.enclosingType;
        if (referenceBinding == null || !setNullDefault(referenceBinding.getNullDefault())) {
            if (packageBinding.getDefaultNullness() == 0 && !equals && (this.typeBits & 224) == 0 && packageBinding.getType(TypeConstants.PACKAGE_INFO_NAME, packageBinding.enclosingModule) == null) {
                packageBinding.setDefaultNullness(0);
            }
            setNullDefault(packageBinding.getDefaultNullness());
        }
    }

    public static char[][] signature2qualifiedTypeName(char[] cArr) {
        return CharOperation.splitOn('/', cArr, 1, cArr.length - 1);
    }

    @Override
    public FieldBinding[] availableFields() {
        if (!isPrototype()) {
            return this.prototype.availableFields();
        }
        long j10 = this.tagBits;
        if ((8192 & j10) != 0) {
            return this.fields;
        }
        if ((j10 & 4096) == 0) {
            FieldBinding[] fieldBindingArr = this.fields;
            int length = fieldBindingArr.length;
            if (length > 1) {
                ReferenceBinding.sortFields(fieldBindingArr, 0, length);
            }
            this.tagBits = 4096 | this.tagBits;
        }
        int length2 = this.fields.length;
        FieldBinding[] fieldBindingArr2 = new FieldBinding[length2];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            FieldBinding[] fieldBindingArr3 = this.fields;
            if (i10 >= fieldBindingArr3.length) {
                break;
            }
            try {
                fieldBindingArr2[i11] = resolveTypeFor(fieldBindingArr3[i10]);
                i11++;
            } catch (AbortCompilation unused) {
            }
            i10++;
        }
        if (i11 >= length2) {
            return fieldBindingArr2;
        }
        FieldBinding[] fieldBindingArr4 = new FieldBinding[i11];
        System.arraycopy(fieldBindingArr2, 0, fieldBindingArr4, 0, i11);
        return fieldBindingArr4;
    }

    @Override
    public MethodBinding[] availableMethods() {
        if (!isPrototype()) {
            return this.prototype.availableMethods();
        }
        long j10 = this.tagBits;
        if ((32768 & j10) != 0) {
            return this.methods;
        }
        if ((j10 & 16384) == 0) {
            MethodBinding[] methodBindingArr = this.methods;
            int length = methodBindingArr.length;
            if (length > 1) {
                ReferenceBinding.sortMethods(methodBindingArr, 0, length);
            }
            this.tagBits = 16384 | this.tagBits;
        }
        int length2 = this.methods.length;
        MethodBinding[] methodBindingArr2 = new MethodBinding[length2];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            MethodBinding[] methodBindingArr3 = this.methods;
            if (i10 >= methodBindingArr3.length) {
                break;
            }
            try {
                methodBindingArr2[i11] = resolveTypesFor(methodBindingArr3[i10]);
                i11++;
            } catch (AbortCompilation unused) {
            }
            i10++;
        }
        if (i11 >= length2) {
            return methodBindingArr2;
        }
        MethodBinding[] methodBindingArr4 = new MethodBinding[i11];
        System.arraycopy(methodBindingArr2, 0, methodBindingArr4, 0, i11);
        return methodBindingArr4;
    }

    public void cachePartsFrom(IBinaryType iBinaryType, boolean z10) {
        char[][][] cArr;
        SignatureWrapper signatureWrapper;
        int length;
        MethodBinding findMethod;
        int length2;
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        try {
            this.typeVariables = Binding.NO_TYPE_VARIABLES;
            this.superInterfaces = Binding.NO_SUPERINTERFACES;
            this.memberTypes = Binding.NO_MEMBER_TYPES;
            IBinaryNestedType[] memberTypes = iBinaryType.getMemberTypes();
            if (memberTypes != null && (length2 = memberTypes.length) > 0) {
                this.memberTypes = new ReferenceBinding[length2];
                for (int i10 = 0; i10 < length2; i10++) {
                    this.memberTypes[i10] = this.environment.getTypeFromConstantPoolName(memberTypes[i10].getName(), 0, -1, false, null);
                }
                this.tagBits |= TagBits.HasUnresolvedMemberTypes;
            }
            CompilerOptions compilerOptions = this.environment.globalOptions;
            long j10 = compilerOptions.originalSourceLevel;
            if (compilerOptions.isAnnotationBasedNullAnalysisEnabled) {
                scanTypeForNullDefaultAnnotation(iBinaryType, this.fPackage);
            }
            ITypeAnnotationWalker typeAnnotationWalker = getTypeAnnotationWalker(iBinaryType.getTypeAnnotations(), 0);
            ITypeAnnotationWalker enrichWithExternalAnnotationsFor = iBinaryType.enrichWithExternalAnnotationsFor(typeAnnotationWalker, null, this.environment);
            ExternalAnnotationStatus externalAnnotationStatus = iBinaryType.getExternalAnnotationStatus();
            this.externalAnnotationStatus = externalAnnotationStatus;
            if (externalAnnotationStatus.isPotentiallyUnannotatedLib() && this.defaultNullness != 0) {
                this.externalAnnotationStatus = ExternalAnnotationStatus.TYPE_IS_ANNOTATED;
            }
            char[] genericSignature = iBinaryType.getGenericSignature();
            long tagBits = this.tagBits | iBinaryType.getTagBits();
            this.tagBits = tagBits;
            if (this.environment.globalOptions.complianceLevel < ClassFileConstants.JDK1_8) {
                this.tagBits = tagBits & (-9007199254740993L);
            }
            char[][][] missingTypeNames = iBinaryType.getMissingTypeNames();
            if (genericSignature != null) {
                SignatureWrapper signatureWrapper2 = new SignatureWrapper(genericSignature);
                char[] cArr2 = signatureWrapper2.signature;
                int i11 = signatureWrapper2.start;
                if (cArr2[i11] == '<') {
                    signatureWrapper2.start = i11 + 1;
                    signatureWrapper = signatureWrapper2;
                    cArr = missingTypeNames;
                    this.typeVariables = createTypeVariables(signatureWrapper2, true, missingTypeNames, enrichWithExternalAnnotationsFor, true);
                    signatureWrapper.start++;
                    this.tagBits |= 16777216;
                    this.modifiers |= 1073741824;
                } else {
                    signatureWrapper = signatureWrapper2;
                    cArr = missingTypeNames;
                }
            } else {
                cArr = missingTypeNames;
                signatureWrapper = null;
            }
            TypeVariableBinding[] typeVariableBindingArr = Binding.NO_TYPE_VARIABLES;
            char[] enclosingMethod = iBinaryType.getEnclosingMethod();
            if (enclosingMethod != null && (findMethod = findMethod(enclosingMethod, cArr)) != null) {
                typeVariableBindingArr = findMethod.typeVariables;
                this.typeVariables = addMethodTypeVariables(typeVariableBindingArr);
            }
            TypeVariableBinding[] typeVariableBindingArr2 = typeVariableBindingArr;
            if (genericSignature == null) {
                char[] superclassName = iBinaryType.getSuperclassName();
                if (superclassName != null) {
                    this.superclass = this.environment.getTypeFromConstantPoolName(superclassName, 0, -1, false, cArr, enrichWithExternalAnnotationsFor.toSupertype((short) -1, superclassName));
                    this.tagBits |= TagBits.HasUnresolvedSuperclass;
                }
                this.superInterfaces = Binding.NO_SUPERINTERFACES;
                char[][] interfaceNames = iBinaryType.getInterfaceNames();
                if (interfaceNames != null && (length = interfaceNames.length) > 0) {
                    this.superInterfaces = new ReferenceBinding[length];
                    for (short s10 = 0; s10 < length; s10 = (short) (s10 + 1)) {
                        this.superInterfaces[s10] = this.environment.getTypeFromConstantPoolName(interfaceNames[s10], 0, -1, false, cArr, enrichWithExternalAnnotationsFor.toSupertype(s10, superclassName));
                    }
                    this.tagBits |= TagBits.HasUnresolvedSuperinterfaces;
                }
            } else {
                this.superclass = (ReferenceBinding) this.environment.getTypeFromTypeSignature(signatureWrapper, typeVariableBindingArr2, this, cArr, enrichWithExternalAnnotationsFor.toSupertype((short) -1, signatureWrapper.peekFullType()));
                this.tagBits |= TagBits.HasUnresolvedSuperclass;
                this.superInterfaces = Binding.NO_SUPERINTERFACES;
                if (!signatureWrapper.atEnd()) {
                    ArrayList arrayList = new ArrayList(2);
                    short s11 = 0;
                    while (true) {
                        short s12 = (short) (s11 + 1);
                        arrayList.add(this.environment.getTypeFromTypeSignature(signatureWrapper, typeVariableBindingArr2, this, cArr, enrichWithExternalAnnotationsFor.toSupertype(s11, signatureWrapper.peekFullType())));
                        if (signatureWrapper.atEnd()) {
                            break;
                        } else {
                            s11 = s12;
                        }
                    }
                    ReferenceBinding[] referenceBindingArr = new ReferenceBinding[arrayList.size()];
                    this.superInterfaces = referenceBindingArr;
                    arrayList.toArray(referenceBindingArr);
                    this.tagBits |= TagBits.HasUnresolvedSuperinterfaces;
                }
            }
            CompilerOptions compilerOptions2 = this.environment.globalOptions;
            boolean z11 = compilerOptions2.isAnnotationBasedNullAnalysisEnabled && compilerOptions2.sourceLevel >= ClassFileConstants.JDK1_8;
            if (z11 && this.externalAnnotationStatus.isPotentiallyUnannotatedLib()) {
                ReferenceBinding referenceBinding = this.superclass;
                if (referenceBinding == null || !referenceBinding.hasNullTypeAnnotations()) {
                    ReferenceBinding[] referenceBindingArr2 = this.superInterfaces;
                    int length3 = referenceBindingArr2.length;
                    int i12 = 0;
                    while (true) {
                        if (i12 >= length3) {
                            break;
                        }
                        if (referenceBindingArr2[i12].hasNullTypeAnnotations()) {
                            this.externalAnnotationStatus = ExternalAnnotationStatus.TYPE_IS_ANNOTATED;
                            break;
                        }
                        i12++;
                    }
                } else {
                    this.externalAnnotationStatus = ExternalAnnotationStatus.TYPE_IS_ANNOTATED;
                }
            }
            if (z10) {
                IBinaryField[] fields = iBinaryType.getFields();
                createFields(fields, iBinaryType, j10, cArr);
                IBinaryMethod[] createMethods = createMethods(iBinaryType.getMethods(), iBinaryType, j10, cArr);
                if (isViewedAsDeprecated()) {
                    int length4 = this.fields.length;
                    for (int i13 = 0; i13 < length4; i13++) {
                        FieldBinding fieldBinding = this.fields[i13];
                        if (!fieldBinding.isDeprecated()) {
                            fieldBinding.modifiers = 2097152 | fieldBinding.modifiers;
                        }
                    }
                    int length5 = this.methods.length;
                    for (int i14 = 0; i14 < length5; i14++) {
                        MethodBinding methodBinding = this.methods[i14];
                        if (!methodBinding.isDeprecated()) {
                            methodBinding.modifiers |= 2097152;
                        }
                    }
                }
                if (this.environment.globalOptions.isAnnotationBasedNullAnalysisEnabled) {
                    if (fields != null) {
                        for (int i15 = 0; i15 < fields.length; i15++) {
                            ITypeAnnotationWalker iTypeAnnotationWalker = ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
                            if (j10 < ClassFileConstants.JDK1_8) {
                                iTypeAnnotationWalker = iBinaryType.enrichWithExternalAnnotationsFor(typeAnnotationWalker, fields[i15], this.environment);
                            }
                            scanFieldForNullAnnotation(fields[i15], this.fields[i15], isEnum(), iTypeAnnotationWalker);
                        }
                    }
                    if (createMethods != null) {
                        for (int i16 = 0; i16 < createMethods.length; i16++) {
                            ITypeAnnotationWalker iTypeAnnotationWalker2 = ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
                            if (j10 < ClassFileConstants.JDK1_8) {
                                iTypeAnnotationWalker2 = iBinaryType.enrichWithExternalAnnotationsFor(iTypeAnnotationWalker2, createMethods[i16], this.environment);
                            }
                            scanMethodForNullAnnotation(createMethods[i16], this.methods[i16], iTypeAnnotationWalker2, z11);
                        }
                    }
                }
            }
            if (this.environment.globalOptions.storeAnnotations) {
                setAnnotations(createAnnotations(iBinaryType.getAnnotations(), this.environment, cArr), false);
            } else if (j10 >= ClassFileConstants.JDK9 && isDeprecated() && iBinaryType.getAnnotations() != null) {
                IBinaryAnnotation[] annotations = iBinaryType.getAnnotations();
                int length6 = annotations.length;
                int i17 = 0;
                while (true) {
                    if (i17 >= length6) {
                        break;
                    }
                    IBinaryAnnotation iBinaryAnnotation = annotations[i17];
                    if (iBinaryAnnotation.isDeprecatedAnnotation()) {
                        AnnotationBinding[] createAnnotations = createAnnotations(new IBinaryAnnotation[]{iBinaryAnnotation}, this.environment, cArr);
                        setAnnotations(createAnnotations, true);
                        for (ElementValuePair elementValuePair : createAnnotations[0].getElementValuePairs()) {
                            if (CharOperation.equals(elementValuePair.name, TypeConstants.FOR_REMOVAL)) {
                                Object obj = elementValuePair.value;
                                if ((obj instanceof BooleanConstant) && ((BooleanConstant) obj).booleanValue()) {
                                    this.tagBits |= 4611686018427387904L;
                                    markImplicitTerminalDeprecation(this);
                                }
                            }
                        }
                    } else {
                        i17++;
                    }
                }
            }
            if (isAnnotationType()) {
                scanTypeForContainerAnnotation(iBinaryType, cArr);
            }
            if (this.fields == null) {
                this.fields = Binding.NO_FIELDS;
            }
            if (this.methods == null) {
                this.methods = Binding.NO_METHODS;
            }
        } catch (Throwable th2) {
            if (this.fields == null) {
                this.fields = Binding.NO_FIELDS;
            }
            if (this.methods == null) {
                this.methods = Binding.NO_METHODS;
            }
            throw th2;
        }
    }

    @Override
    public boolean canBeSeenBy(Scope scope) {
        return scope.module().canAccess(this.fPackage) && super.canBeSeenBy(scope);
    }

    @Override
    public TypeBinding clone(TypeBinding typeBinding) {
        BinaryTypeBinding binaryTypeBinding = new BinaryTypeBinding(this);
        ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding;
        binaryTypeBinding.enclosingType = referenceBinding;
        if (referenceBinding != null) {
            binaryTypeBinding.tagBits |= TagBits.HasUnresolvedEnclosingType;
        } else {
            binaryTypeBinding.tagBits &= -134217729;
        }
        binaryTypeBinding.tagBits |= TagBits.HasUnresolvedMemberTypes;
        return binaryTypeBinding;
    }

    @Override
    public ReferenceBinding containerAnnotationType() {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        ReferenceBinding referenceBinding = this.containerAnnotationType;
        if (referenceBinding instanceof UnresolvedReferenceBinding) {
            this.containerAnnotationType = (ReferenceBinding) resolveType(referenceBinding, this.environment, false);
        }
        return this.containerAnnotationType;
    }

    @Override
    public ReferenceBinding enclosingType() {
        if ((this.tagBits & TagBits.HasUnresolvedEnclosingType) == 0) {
            return this.enclosingType;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) resolveType(this.enclosingType, this.environment, false);
        this.enclosingType = referenceBinding;
        this.tagBits &= -134217729;
        return referenceBinding;
    }

    @Override
    public FieldBinding[] fields() {
        if (!isPrototype()) {
            FieldBinding[] fields = this.prototype.fields();
            this.fields = fields;
            return fields;
        }
        long j10 = this.tagBits;
        if ((j10 & 8192) != 0) {
            return this.fields;
        }
        if ((j10 & 4096) == 0) {
            FieldBinding[] fieldBindingArr = this.fields;
            int length = fieldBindingArr.length;
            if (length > 1) {
                ReferenceBinding.sortFields(fieldBindingArr, 0, length);
            }
            this.tagBits |= 4096;
        }
        int length2 = this.fields.length;
        while (true) {
            length2--;
            if (length2 < 0) {
                this.tagBits |= 8192;
                return this.fields;
            }
            resolveTypeFor(this.fields[length2]);
        }
    }

    @Override
    public char[] genericTypeSignature() {
        return !isPrototype() ? this.prototype.computeGenericTypeSignature(this.typeVariables) : computeGenericTypeSignature(this.typeVariables);
    }

    @Override
    public MethodBinding getExactConstructor(TypeBinding[] typeBindingArr) {
        if (!isPrototype()) {
            return this.prototype.getExactConstructor(typeBindingArr);
        }
        if ((this.tagBits & 16384) == 0) {
            MethodBinding[] methodBindingArr = this.methods;
            int length = methodBindingArr.length;
            if (length > 1) {
                ReferenceBinding.sortMethods(methodBindingArr, 0, length);
            }
            this.tagBits = 16384 | this.tagBits;
        }
        int length2 = typeBindingArr.length;
        long binarySearch = ReferenceBinding.binarySearch(TypeConstants.INIT, this.methods);
        if (binarySearch < 0) {
            return null;
        }
        int i10 = (int) (binarySearch >> 32);
        for (int i11 = (int) binarySearch; i11 <= i10; i11++) {
            MethodBinding methodBinding = this.methods[i11];
            if (methodBinding.parameters.length == length2) {
                resolveTypesFor(methodBinding);
                TypeBinding[] typeBindingArr2 = methodBinding.parameters;
                for (int i12 = 0; i12 < length2; i12++) {
                    if (TypeBinding.notEquals(typeBindingArr2[i12], typeBindingArr[i12])) {
                        break;
                    }
                }
                return methodBinding;
            }
        }
        return null;
    }

    @Override
    public MethodBinding getExactMethod(char[] cArr, TypeBinding[] typeBindingArr, CompilationUnitScope compilationUnitScope) {
        boolean z10;
        if (!isPrototype()) {
            return this.prototype.getExactMethod(cArr, typeBindingArr, compilationUnitScope);
        }
        if ((this.tagBits & 16384) == 0) {
            MethodBinding[] methodBindingArr = this.methods;
            int length = methodBindingArr.length;
            if (length > 1) {
                ReferenceBinding.sortMethods(methodBindingArr, 0, length);
            }
            this.tagBits = 16384 | this.tagBits;
        }
        int length2 = typeBindingArr.length;
        long binarySearch = ReferenceBinding.binarySearch(cArr, this.methods);
        if (binarySearch >= 0) {
            int i10 = (int) binarySearch;
            int i11 = (int) (binarySearch >> 32);
            z10 = true;
            while (i10 <= i11) {
                MethodBinding methodBinding = this.methods[i10];
                if (methodBinding.parameters.length == length2) {
                    resolveTypesFor(methodBinding);
                    TypeBinding[] typeBindingArr2 = methodBinding.parameters;
                    for (int i12 = 0; i12 < length2; i12++) {
                        if (TypeBinding.notEquals(typeBindingArr2[i12], typeBindingArr[i12])) {
                            break;
                        }
                    }
                    return methodBinding;
                }
                i10++;
                z10 = false;
            }
        } else {
            z10 = true;
        }
        if (!z10) {
            return null;
        }
        if (isInterface()) {
            if (superInterfaces().length != 1) {
                return null;
            }
            if (compilationUnitScope != null) {
                compilationUnitScope.recordTypeReference(this.superInterfaces[0]);
            }
            return this.superInterfaces[0].getExactMethod(cArr, typeBindingArr, compilationUnitScope);
        }
        if (superclass() == null) {
            return null;
        }
        if (compilationUnitScope != null) {
            compilationUnitScope.recordTypeReference(this.superclass);
        }
        return this.superclass.getExactMethod(cArr, typeBindingArr, compilationUnitScope);
    }

    @Override
    public FieldBinding getField(char[] cArr, boolean z10) {
        if (!isPrototype()) {
            return this.prototype.getField(cArr, z10);
        }
        if ((this.tagBits & 4096) == 0) {
            FieldBinding[] fieldBindingArr = this.fields;
            int length = fieldBindingArr.length;
            if (length > 1) {
                ReferenceBinding.sortFields(fieldBindingArr, 0, length);
            }
            this.tagBits |= 4096;
        }
        FieldBinding binarySearch = ReferenceBinding.binarySearch(cArr, this.fields);
        return (!z10 || binarySearch == null) ? binarySearch : resolveTypeFor(binarySearch);
    }

    @Override
    public ReferenceBinding getMemberType(char[] cArr) {
        if (!isPrototype()) {
            ReferenceBinding memberType = this.prototype.getMemberType(cArr);
            if (memberType == null) {
                return null;
            }
            return this.environment.createMemberType(memberType, this);
        }
        int length = this.memberTypes.length;
        while (true) {
            length--;
            if (length < 0) {
                return null;
            }
            ReferenceBinding referenceBinding = this.memberTypes[length];
            if (referenceBinding instanceof UnresolvedReferenceBinding) {
                char[] cArr2 = referenceBinding.sourceName;
                char[][] cArr3 = this.compoundName;
                int length2 = cArr3[cArr3.length - 1].length + 1;
                if (cArr2.length == cArr.length + length2 && CharOperation.fragmentEquals(cArr, cArr2, length2, true)) {
                    ReferenceBinding[] referenceBindingArr = this.memberTypes;
                    ReferenceBinding referenceBinding2 = (ReferenceBinding) resolveType(referenceBinding, this.environment, false);
                    referenceBindingArr[length] = referenceBinding2;
                    return referenceBinding2;
                }
            } else if (CharOperation.equals(cArr, referenceBinding.sourceName)) {
                return referenceBinding;
            }
        }
    }

    @Override
    public MethodBinding[] getMethods(char[] cArr) {
        if (!isPrototype()) {
            return this.prototype.getMethods(cArr);
        }
        long j10 = this.tagBits;
        int i10 = 0;
        if ((j10 & 32768) != 0) {
            long binarySearch = ReferenceBinding.binarySearch(cArr, this.methods);
            if (binarySearch >= 0) {
                int i11 = (int) binarySearch;
                int i12 = (((int) (binarySearch >> 32)) - i11) + 1;
                if ((this.tagBits & 32768) != 0) {
                    MethodBinding[] methodBindingArr = new MethodBinding[i12];
                    System.arraycopy(this.methods, i11, methodBindingArr, 0, i12);
                    return methodBindingArr;
                }
            }
            return Binding.NO_METHODS;
        }
        if ((j10 & 16384) == 0) {
            MethodBinding[] methodBindingArr2 = this.methods;
            int length = methodBindingArr2.length;
            if (length > 1) {
                ReferenceBinding.sortMethods(methodBindingArr2, 0, length);
            }
            this.tagBits |= 16384;
        }
        long binarySearch2 = ReferenceBinding.binarySearch(cArr, this.methods);
        if (binarySearch2 >= 0) {
            int i13 = (int) binarySearch2;
            int i14 = (int) (binarySearch2 >> 32);
            MethodBinding[] methodBindingArr3 = new MethodBinding[(i14 - i13) + 1];
            while (i13 <= i14) {
                methodBindingArr3[i10] = resolveTypesFor(this.methods[i13]);
                i13++;
                i10++;
            }
            return methodBindingArr3;
        }
        return Binding.NO_METHODS;
    }

    @Override
    public int getNullDefault() {
        return this.defaultNullness;
    }

    @Override
    public TypeVariableBinding getTypeVariable(char[] cArr) {
        if (!isPrototype()) {
            return this.prototype.getTypeVariable(cArr);
        }
        TypeVariableBinding typeVariable = super.getTypeVariable(cArr);
        typeVariable.resolve();
        return typeVariable;
    }

    @Override
    public boolean hasMemberTypes() {
        return !isPrototype() ? this.prototype.hasMemberTypes() : this.memberTypes.length > 0;
    }

    @Override
    public boolean hasTypeBit(int i10) {
        if (!isPrototype()) {
            return this.prototype.hasTypeBit(i10);
        }
        LookupEnvironment lookupEnvironment = this.environment;
        boolean z10 = lookupEnvironment.mayTolerateMissingType;
        lookupEnvironment.mayTolerateMissingType = true;
        try {
            superclass();
            superInterfaces();
            this.environment.mayTolerateMissingType = z10;
            return (i10 & this.typeBits) != 0;
        } catch (Throwable th2) {
            this.environment.mayTolerateMissingType = z10;
            throw th2;
        }
    }

    @Override
    public boolean isEquivalentTo(TypeBinding typeBinding) {
        if (TypeBinding.equalsEquals(this, typeBinding)) {
            return true;
        }
        if (typeBinding == null) {
            return false;
        }
        int kind = typeBinding.kind();
        if (kind != 260) {
            if (kind != 516) {
                if (kind != 1028) {
                    if (kind != 8196) {
                        return false;
                    }
                }
            }
            return ((WildcardBinding) typeBinding).boundCheck(this);
        }
        return TypeBinding.equalsEquals(typeBinding.erasure(), this);
    }

    @Override
    public boolean isGenericType() {
        return !isPrototype() ? this.prototype.isGenericType() : this.typeVariables != Binding.NO_TYPE_VARIABLES;
    }

    @Override
    public boolean isHierarchyConnected() {
        return !isPrototype() ? this.prototype.isHierarchyConnected() : (this.tagBits & 100663296) == 0;
    }

    @Override
    public boolean isRepeatableAnnotationType() {
        if (isPrototype()) {
            return this.containerAnnotationType != null;
        }
        throw new IllegalStateException();
    }

    @Override
    public int kind() {
        return !isPrototype() ? this.prototype.kind() : this.typeVariables != Binding.NO_TYPE_VARIABLES ? 2052 : 4;
    }

    public void markImplicitTerminalDeprecation(ReferenceBinding referenceBinding) {
        for (ReferenceBinding referenceBinding2 : referenceBinding.memberTypes()) {
            referenceBinding2.tagBits = 4611686018427387904L | referenceBinding2.tagBits;
            markImplicitTerminalDeprecation(referenceBinding2);
        }
        MethodBinding[] unResolvedMethods = referenceBinding.unResolvedMethods();
        if (unResolvedMethods != null) {
            for (MethodBinding methodBinding : unResolvedMethods) {
                methodBinding.tagBits |= 4611686018427387904L;
            }
        }
        FieldBinding[] unResolvedFields = referenceBinding.unResolvedFields();
        if (unResolvedFields != null) {
            for (FieldBinding fieldBinding : unResolvedFields) {
                fieldBinding.tagBits |= 4611686018427387904L;
            }
        }
    }

    @Override
    public ReferenceBinding[] memberTypes() {
        if (!isPrototype()) {
            if ((TagBits.HasUnresolvedMemberTypes & this.tagBits) == 0) {
                return this.memberTypes;
            }
            ReferenceBinding[] memberTypes = this.prototype.memberTypes();
            int length = memberTypes == null ? 0 : memberTypes.length;
            if (length > 0) {
                this.memberTypes = new ReferenceBinding[length];
                for (int i10 = 0; i10 < length; i10++) {
                    this.memberTypes[i10] = this.environment.createMemberType(memberTypes[i10], this);
                }
            }
            this.tagBits &= -268435457;
            return this.memberTypes;
        }
        if ((TagBits.HasUnresolvedMemberTypes & this.tagBits) == 0) {
            return this.memberTypes;
        }
        int length2 = this.memberTypes.length;
        while (true) {
            length2--;
            if (length2 < 0) {
                this.tagBits &= -268435457;
                return this.memberTypes;
            }
            ReferenceBinding[] referenceBindingArr = this.memberTypes;
            referenceBindingArr[length2] = (ReferenceBinding) resolveType(referenceBindingArr[length2], this.environment, false);
        }
    }

    @Override
    public MethodBinding[] methods() {
        if (!isPrototype()) {
            MethodBinding[] methods = this.prototype.methods();
            this.methods = methods;
            return methods;
        }
        long j10 = this.tagBits;
        if ((j10 & 32768) != 0) {
            return this.methods;
        }
        if ((j10 & 16384) == 0) {
            MethodBinding[] methodBindingArr = this.methods;
            int length = methodBindingArr.length;
            if (length > 1) {
                ReferenceBinding.sortMethods(methodBindingArr, 0, length);
            }
            this.tagBits |= 16384;
        }
        int length2 = this.methods.length;
        while (true) {
            length2--;
            if (length2 < 0) {
                this.tagBits |= 32768;
                return this.methods;
            }
            resolveTypesFor(this.methods[length2]);
        }
    }

    @Override
    public ModuleBinding module() {
        return !isPrototype() ? this.prototype.module : this.module;
    }

    @Override
    public TypeBinding prototype() {
        return this.prototype;
    }

    public MethodBinding resolveTypesFor(MethodBinding methodBinding) {
        if (!isPrototype()) {
            return this.prototype.resolveTypesFor(methodBinding);
        }
        if ((methodBinding.modifiers & 33554432) == 0) {
            return methodBinding;
        }
        if (!methodBinding.isConstructor()) {
            TypeBinding resolveType = resolveType(methodBinding.returnType, this.environment, true);
            methodBinding.returnType = resolveType;
            if ((resolveType.tagBits & 128) != 0) {
                methodBinding.tagBits |= 128;
            }
        }
        int length = methodBinding.parameters.length;
        while (true) {
            length--;
            if (length < 0) {
                break;
            }
            TypeBinding resolveType2 = resolveType(methodBinding.parameters[length], this.environment, true);
            methodBinding.parameters[length] = resolveType2;
            if ((resolveType2.tagBits & 128) != 0) {
                methodBinding.tagBits |= 128;
            }
        }
        int length2 = methodBinding.thrownExceptions.length;
        while (true) {
            length2--;
            if (length2 < 0) {
                break;
            }
            ReferenceBinding referenceBinding = (ReferenceBinding) resolveType(methodBinding.thrownExceptions[length2], this.environment, true);
            methodBinding.thrownExceptions[length2] = referenceBinding;
            if ((referenceBinding.tagBits & 128) != 0) {
                methodBinding.tagBits |= 128;
            }
        }
        int length3 = methodBinding.typeVariables.length;
        while (true) {
            length3--;
            if (length3 < 0) {
                methodBinding.modifiers &= -33554433;
                return methodBinding;
            }
            methodBinding.typeVariables[length3].resolve();
        }
    }

    @Override
    public AnnotationBinding[] retrieveAnnotations(Binding binding) {
        return !isPrototype() ? this.prototype.retrieveAnnotations(binding) : AnnotationBinding.addStandardAnnotations(super.retrieveAnnotations(binding), binding.getAnnotationTagBits(), this.environment);
    }

    @Override
    public void setContainerAnnotationType(ReferenceBinding referenceBinding) {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        this.containerAnnotationType = referenceBinding;
    }

    public boolean setNullDefault(int i10) {
        this.defaultNullness = i10;
        return i10 != 0;
    }

    @Override
    public SimpleLookupTable storedAnnotations(boolean z10, boolean z11) {
        if (!isPrototype()) {
            return this.prototype.storedAnnotations(z10, z11);
        }
        if (z10 && this.storedAnnotations == null) {
            if (!this.environment.globalOptions.storeAnnotations && !z11) {
                return null;
            }
            this.storedAnnotations = new SimpleLookupTable(3);
        }
        return this.storedAnnotations;
    }

    @Override
    public ReferenceBinding[] superInterfaces() {
        if (!isPrototype()) {
            ReferenceBinding[] superInterfaces = this.prototype.superInterfaces();
            this.superInterfaces = superInterfaces;
            return superInterfaces;
        }
        if ((this.tagBits & TagBits.HasUnresolvedSuperinterfaces) == 0) {
            return this.superInterfaces;
        }
        int length = this.superInterfaces.length;
        while (true) {
            length--;
            if (length < 0) {
                this.tagBits &= -67108865;
                return this.superInterfaces;
            }
            ReferenceBinding[] referenceBindingArr = this.superInterfaces;
            referenceBindingArr[length] = (ReferenceBinding) resolveType(referenceBindingArr[length], this.environment, true);
            if (this.superInterfaces[length].problemId() == 1) {
                this.tagBits |= 131072;
            } else {
                LookupEnvironment lookupEnvironment = this.environment;
                boolean z10 = lookupEnvironment.mayTolerateMissingType;
                lookupEnvironment.mayTolerateMissingType = true;
                try {
                    this.superInterfaces[length].superclass();
                    if (this.superInterfaces[length].isParameterizedType() && TypeBinding.equalsEquals(this.superInterfaces[length].actualType(), this)) {
                        this.tagBits |= 131072;
                    } else {
                        this.superInterfaces[length].superInterfaces();
                        this.environment.mayTolerateMissingType = z10;
                    }
                } finally {
                    this.environment.mayTolerateMissingType = z10;
                }
            }
            int i10 = this.typeBits | (this.superInterfaces[length].typeBits & TypeIds.InheritableBits);
            this.typeBits = i10;
            if ((i10 & 3) != 0) {
                this.typeBits = i10 | applyCloseableInterfaceWhitelists();
            }
        }
    }

    @Override
    public ReferenceBinding superclass() {
        if (!isPrototype()) {
            ReferenceBinding superclass = this.prototype.superclass();
            this.superclass = superclass;
            return superclass;
        }
        if ((this.tagBits & TagBits.HasUnresolvedSuperclass) == 0) {
            return this.superclass;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) resolveType(this.superclass, this.environment, true);
        this.superclass = referenceBinding;
        this.tagBits &= -33554433;
        if (referenceBinding.problemId() == 1) {
            this.tagBits |= 131072;
        } else {
            LookupEnvironment lookupEnvironment = this.environment;
            boolean z10 = lookupEnvironment.mayTolerateMissingType;
            lookupEnvironment.mayTolerateMissingType = true;
            try {
                this.superclass.superclass();
                this.superclass.superInterfaces();
            } finally {
                this.environment.mayTolerateMissingType = z10;
            }
        }
        int i10 = this.typeBits | (this.superclass.typeBits & TypeIds.InheritableBits);
        this.typeBits = i10;
        if ((i10 & 3) != 0) {
            this.typeBits = i10 | applyCloseableClassWhitelists();
        }
        return this.superclass;
    }

    @Override
    public void tagAsHavingDefectiveContainerType() {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        ReferenceBinding referenceBinding = this.containerAnnotationType;
        if (referenceBinding == null || !referenceBinding.isValidBinding()) {
            return;
        }
        ReferenceBinding referenceBinding2 = this.containerAnnotationType;
        this.containerAnnotationType = new ProblemReferenceBinding(referenceBinding2.compoundName, referenceBinding2, 22);
    }

    public String toString() {
        if (hasTypeAnnotations()) {
            return annotatedDebugName();
        }
        StringBuffer stringBuffer = new StringBuffer();
        if (isDeprecated()) {
            stringBuffer.append("deprecated ");
        }
        if (isPublic()) {
            stringBuffer.append("public ");
        }
        if (isProtected()) {
            stringBuffer.append("protected ");
        }
        if (isPrivate()) {
            stringBuffer.append("private ");
        }
        if (isAbstract() && isClass()) {
            stringBuffer.append("abstract ");
        }
        if (isStatic() && isNestedType()) {
            stringBuffer.append("static ");
        }
        if (isFinal()) {
            stringBuffer.append("final ");
        }
        if (isEnum()) {
            stringBuffer.append("enum ");
        } else if (isAnnotationType()) {
            stringBuffer.append("@interface ");
        } else if (isClass()) {
            stringBuffer.append(ExternalAnnotationProvider.CLASS_PREFIX);
        } else {
            stringBuffer.append("interface ");
        }
        char[][] cArr = this.compoundName;
        stringBuffer.append(cArr != null ? CharOperation.toString(cArr) : "UNNAMED TYPE");
        TypeVariableBinding[] typeVariableBindingArr = this.typeVariables;
        if (typeVariableBindingArr == null) {
            stringBuffer.append("<NULL TYPE VARIABLES>");
        } else if (typeVariableBindingArr != Binding.NO_TYPE_VARIABLES) {
            stringBuffer.append("<");
            int length = this.typeVariables.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 > 0) {
                    stringBuffer.append(", ");
                }
                TypeVariableBinding typeVariableBinding = this.typeVariables[i10];
                if (typeVariableBinding == null) {
                    stringBuffer.append("NULL TYPE VARIABLE");
                } else {
                    stringBuffer.append(typeVariableBinding.toString().toCharArray(), 1, r5.length - 2);
                }
            }
            stringBuffer.append(">");
        }
        stringBuffer.append("\n\textends ");
        ReferenceBinding referenceBinding = this.superclass;
        stringBuffer.append(referenceBinding != null ? referenceBinding.debugName() : "NULL TYPE");
        ReferenceBinding[] referenceBindingArr = this.superInterfaces;
        if (referenceBindingArr == null) {
            stringBuffer.append("NULL SUPERINTERFACES");
        } else if (referenceBindingArr != Binding.NO_SUPERINTERFACES) {
            stringBuffer.append("\n\timplements : ");
            int length2 = this.superInterfaces.length;
            for (int i11 = 0; i11 < length2; i11++) {
                if (i11 > 0) {
                    stringBuffer.append(", ");
                }
                ReferenceBinding referenceBinding2 = this.superInterfaces[i11];
                stringBuffer.append(referenceBinding2 != null ? referenceBinding2.debugName() : "NULL TYPE");
            }
        }
        if (this.enclosingType != null) {
            stringBuffer.append("\n\tenclosing type : ");
            stringBuffer.append(this.enclosingType.debugName());
        }
        FieldBinding[] fieldBindingArr = this.fields;
        if (fieldBindingArr == null) {
            stringBuffer.append("NULL FIELDS");
        } else if (fieldBindingArr != Binding.NO_FIELDS) {
            stringBuffer.append("\n/*   fields   */");
            int length3 = this.fields.length;
            for (int i12 = 0; i12 < length3; i12++) {
                stringBuffer.append(this.fields[i12] != null ? "\n" + this.fields[i12].toString() : "\nNULL FIELD");
            }
        }
        MethodBinding[] methodBindingArr = this.methods;
        if (methodBindingArr == null) {
            stringBuffer.append("NULL METHODS");
        } else if (methodBindingArr != Binding.NO_METHODS) {
            stringBuffer.append("\n/*   methods   */");
            int length4 = this.methods.length;
            for (int i13 = 0; i13 < length4; i13++) {
                stringBuffer.append(this.methods[i13] != null ? "\n" + this.methods[i13].toString() : "\nNULL METHOD");
            }
        }
        ReferenceBinding[] referenceBindingArr2 = this.memberTypes;
        if (referenceBindingArr2 == null) {
            stringBuffer.append("NULL MEMBER TYPES");
        } else if (referenceBindingArr2 != Binding.NO_MEMBER_TYPES) {
            stringBuffer.append("\n/*   members   */");
            int length5 = this.memberTypes.length;
            for (int i14 = 0; i14 < length5; i14++) {
                stringBuffer.append(this.memberTypes[i14] != null ? "\n" + this.memberTypes[i14].toString() : "\nNULL TYPE");
            }
        }
        stringBuffer.append("\n\n\n");
        return stringBuffer.toString();
    }

    @Override
    public TypeVariableBinding[] typeVariables() {
        if (!isPrototype()) {
            TypeVariableBinding[] typeVariables = this.prototype.typeVariables();
            this.typeVariables = typeVariables;
            return typeVariables;
        }
        if ((this.tagBits & 16777216) == 0) {
            return this.typeVariables;
        }
        int length = this.typeVariables.length;
        while (true) {
            length--;
            if (length < 0) {
                this.tagBits &= -16777217;
                return this.typeVariables;
            }
            this.typeVariables[length].resolve();
        }
    }

    @Override
    public FieldBinding[] unResolvedFields() {
        return !isPrototype() ? this.prototype.unResolvedFields() : this.fields;
    }

    @Override
    public MethodBinding[] unResolvedMethods() {
        return !isPrototype() ? this.prototype.unResolvedMethods() : this.methods;
    }

    @Override
    public TypeBinding unannotated() {
        return this.prototype;
    }

    @Override
    public TypeBinding withoutToplevelNullAnnotation() {
        if (!hasNullTypeAnnotations()) {
            return this;
        }
        AnnotationBinding[] filterNullTypeAnnotations = this.environment.filterNullTypeAnnotations(this.typeAnnotations);
        return filterNullTypeAnnotations.length > 0 ? this.environment.createAnnotatedType(this.prototype, filterNullTypeAnnotations) : this.prototype;
    }

    public BinaryTypeBinding(BinaryTypeBinding binaryTypeBinding) {
        super(binaryTypeBinding);
        this.storedAnnotations = null;
        this.defaultNullness = 0;
        this.externalAnnotationStatus = ExternalAnnotationStatus.NOT_EEA_CONFIGURED;
        this.superclass = binaryTypeBinding.superclass;
        this.enclosingType = binaryTypeBinding.enclosingType;
        this.superInterfaces = binaryTypeBinding.superInterfaces;
        this.fields = binaryTypeBinding.fields;
        this.methods = binaryTypeBinding.methods;
        this.memberTypes = binaryTypeBinding.memberTypes;
        this.typeVariables = binaryTypeBinding.typeVariables;
        this.prototype = binaryTypeBinding.prototype;
        this.environment = binaryTypeBinding.environment;
        this.storedAnnotations = binaryTypeBinding.storedAnnotations;
    }

    @Override
    public MethodBinding[] getMethods(char[] cArr, int i10) {
        if (!isPrototype()) {
            return this.prototype.getMethods(cArr, i10);
        }
        long j10 = this.tagBits;
        if ((32768 & j10) != 0) {
            return getMethods(cArr);
        }
        int i11 = 0;
        if ((j10 & 16384) == 0) {
            MethodBinding[] methodBindingArr = this.methods;
            int length = methodBindingArr.length;
            if (length > 1) {
                ReferenceBinding.sortMethods(methodBindingArr, 0, length);
            }
            this.tagBits = 16384 | this.tagBits;
        }
        long binarySearch = ReferenceBinding.binarySearch(cArr, this.methods);
        if (binarySearch < 0) {
            return Binding.NO_METHODS;
        }
        int i12 = (int) binarySearch;
        int i13 = (int) (binarySearch >> 32);
        int i14 = (i13 - i12) + 1;
        int i15 = 0;
        for (int i16 = i12; i16 <= i13; i16++) {
            if (this.methods[i16].doesParameterLengthMatch(i10)) {
                i15++;
            }
        }
        if (i15 == 0) {
            MethodBinding[] methodBindingArr2 = new MethodBinding[i14];
            while (i12 <= i13) {
                methodBindingArr2[i11] = resolveTypesFor(this.methods[i12]);
                i12++;
                i11++;
            }
            return methodBindingArr2;
        }
        MethodBinding[] methodBindingArr3 = new MethodBinding[i15];
        while (i12 <= i13) {
            if (this.methods[i12].doesParameterLengthMatch(i10)) {
                methodBindingArr3[i11] = resolveTypesFor(this.methods[i12]);
                i11++;
            }
            i12++;
        }
        return methodBindingArr3;
    }

    public BinaryTypeBinding(PackageBinding packageBinding, IBinaryType iBinaryType, LookupEnvironment lookupEnvironment) {
        this(packageBinding, iBinaryType, lookupEnvironment, false);
    }

    public BinaryTypeBinding(PackageBinding packageBinding, IBinaryType iBinaryType, LookupEnvironment lookupEnvironment, boolean z10) {
        this.storedAnnotations = null;
        this.defaultNullness = 0;
        this.externalAnnotationStatus = ExternalAnnotationStatus.NOT_EEA_CONFIGURED;
        this.prototype = this;
        this.compoundName = CharOperation.splitOn('/', iBinaryType.getName());
        computeId();
        this.tagBits |= 64;
        this.environment = lookupEnvironment;
        this.fPackage = packageBinding;
        this.fileName = iBinaryType.getFileName();
        char[] genericSignature = iBinaryType.getGenericSignature();
        this.typeVariables = (genericSignature == null || genericSignature.length <= 0 || genericSignature[0] != '<') ? Binding.NO_TYPE_VARIABLES : null;
        this.sourceName = iBinaryType.getSourceName();
        this.modifiers = iBinaryType.getModifiers();
        if ((iBinaryType.getTagBits() & 131072) != 0) {
            this.tagBits |= 131072;
        }
        if (iBinaryType.isAnonymous()) {
            this.tagBits |= TagBits.AnonymousTypeMask;
        } else if (iBinaryType.isLocal()) {
            this.tagBits |= TagBits.LocalTypeMask;
        } else if (iBinaryType.isMember()) {
            this.tagBits |= TagBits.MemberTypeMask;
        }
        char[] enclosingTypeName = iBinaryType.getEnclosingTypeName();
        if (enclosingTypeName != null) {
            this.enclosingType = lookupEnvironment.getTypeFromConstantPoolName(enclosingTypeName, 0, -1, true, null);
            this.tagBits |= 134219788;
            if (enclosingType().isStrictfp()) {
                this.modifiers |= 2048;
            }
            if (enclosingType().isDeprecated()) {
                this.modifiers |= 2097152;
            }
        }
        if (z10) {
            cachePartsFrom(iBinaryType, true);
        }
    }
}
