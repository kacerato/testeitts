package org.eclipse.jdt.internal.compiler.lookup;

import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.stream.Stream;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.ast.SwitchStatement;

public class SyntheticMethodBinding extends MethodBinding {
    public static final int ArrayClone = 15;
    public static final int ArrayConstructor = 14;
    public static final int BridgeMethod = 8;
    public static final int ConstructorAccess = 6;
    public static final int DeserializeLambda = 17;
    public static final int EnumValueOf = 10;
    public static final int EnumValues = 9;
    public static final int FactoryMethod = 16;
    public static final int FieldReadAccess = 1;
    public static final int FieldWriteAccess = 2;
    public static final int LambdaMethod = 13;
    public static final int MethodAccess = 5;
    public static final int SerializableMethodReference = 18;
    public static final int SuperFieldReadAccess = 3;
    public static final int SuperFieldWriteAccess = 4;
    public static final int SuperMethodAccess = 7;
    public static final int SwitchTable = 11;
    public static final int TooManyEnumsConstants = 12;
    public int endIndex;
    public int fakePaddedParameters;
    public int index;
    public LambdaExpression lambda;
    public int purpose;
    public ReferenceExpression serializableMethodRef;
    public int sourceStart;
    public int startIndex;
    public SwitchStatement switchStatement;
    public TypeBinding targetEnumType;
    public MethodBinding targetMethod;
    public FieldBinding targetReadField;
    public FieldBinding targetWriteField;

    public SyntheticMethodBinding(FieldBinding fieldBinding, boolean z10, boolean z11, ReferenceBinding referenceBinding) {
        boolean z12;
        this.sourceStart = 0;
        this.fakePaddedParameters = 0;
        this.modifiers = 4104;
        this.tagBits |= 25769803776L;
        SourceTypeBinding sourceTypeBinding = (SourceTypeBinding) referenceBinding;
        SyntheticMethodBinding[] syntheticMethods = sourceTypeBinding.syntheticMethods();
        int length = syntheticMethods == null ? 0 : syntheticMethods.length;
        this.index = length;
        this.selector = CharOperation.concat(TypeConstants.SYNTHETIC_ACCESS_METHOD_PREFIX, String.valueOf(length).toCharArray());
        if (z10) {
            this.returnType = fieldBinding.type;
            if (fieldBinding.isStatic()) {
                this.parameters = Binding.NO_PARAMETERS;
            } else {
                this.parameters = r12;
                TypeBinding[] typeBindingArr = {sourceTypeBinding};
            }
            this.targetReadField = fieldBinding;
            this.purpose = z11 ? 3 : 1;
        } else {
            this.returnType = TypeBinding.VOID;
            if (fieldBinding.isStatic()) {
                this.parameters = r12;
                TypeBinding[] typeBindingArr2 = {fieldBinding.type};
            } else {
                this.parameters = r12;
                TypeBinding[] typeBindingArr3 = {sourceTypeBinding, fieldBinding.type};
            }
            this.targetWriteField = fieldBinding;
            this.purpose = z11 ? 4 : 2;
        }
        this.thrownExceptions = Binding.NO_EXCEPTIONS;
        this.declaringClass = sourceTypeBinding;
        do {
            MethodBinding[] methods = sourceTypeBinding.methods();
            long binarySearch = ReferenceBinding.binarySearch(this.selector, methods);
            if (binarySearch >= 0) {
                int length2 = this.parameters.length;
                int i10 = (int) (binarySearch >> 32);
                for (int i11 = (int) binarySearch; i11 <= i10; i11++) {
                    TypeBinding[] typeBindingArr4 = methods[i11].parameters;
                    if (typeBindingArr4.length == length2) {
                        for (int i12 = 0; i12 < length2; i12++) {
                            if (TypeBinding.notEquals(typeBindingArr4[i12], this.parameters[i12])) {
                                break;
                            }
                        }
                        break;
                    }
                }
            }
            if (syntheticMethods != null) {
                int length3 = syntheticMethods.length;
                for (int i13 = 0; i13 < length3; i13++) {
                    SyntheticMethodBinding syntheticMethodBinding = syntheticMethods[i13];
                    if (syntheticMethodBinding != null && CharOperation.equals(this.selector, syntheticMethodBinding.selector) && areParametersEqual(methods[i13])) {
                        z12 = true;
                    }
                }
            }
            z12 = false;
            if (z12) {
                length++;
                setSelector(CharOperation.concat(TypeConstants.SYNTHETIC_ACCESS_METHOD_PREFIX, String.valueOf(length).toCharArray()));
            }
        } while (z12);
        FieldDeclaration[] fieldDeclarationArr = sourceTypeBinding.scope.referenceContext.fields;
        if (fieldDeclarationArr != null) {
            for (FieldDeclaration fieldDeclaration : fieldDeclarationArr) {
                if (fieldDeclaration.binding == fieldBinding) {
                    this.sourceStart = fieldDeclaration.sourceStart;
                    return;
                }
            }
        }
        this.sourceStart = sourceTypeBinding.scope.referenceContext.sourceStart;
    }

    public static TypeVariableBinding[] lambda$1(int i10) {
        return new TypeVariableBinding[i10];
    }

    public void initializeConstructorAccessor(MethodBinding methodBinding) {
        boolean z10;
        this.targetMethod = methodBinding;
        this.modifiers = 4096;
        this.tagBits |= 25769803776L;
        SourceTypeBinding sourceTypeBinding = (SourceTypeBinding) methodBinding.declaringClass;
        SyntheticMethodBinding[] syntheticMethods = sourceTypeBinding.syntheticMethods();
        this.index = syntheticMethods == null ? 0 : syntheticMethods.length;
        this.selector = methodBinding.selector;
        this.returnType = methodBinding.returnType;
        this.purpose = 6;
        int length = methodBinding.parameters.length;
        TypeBinding[] typeBindingArr = new TypeBinding[length + 1];
        this.parameters = typeBindingArr;
        System.arraycopy(methodBinding.parameters, 0, typeBindingArr, 0, length);
        this.parameters[length] = methodBinding.declaringClass;
        this.thrownExceptions = methodBinding.thrownExceptions;
        this.declaringClass = sourceTypeBinding;
        do {
            MethodBinding[] methods = sourceTypeBinding.methods();
            int length2 = methods.length;
            int i10 = 0;
            while (true) {
                z10 = true;
                if (i10 >= length2) {
                    if (syntheticMethods != null) {
                        int length3 = syntheticMethods.length;
                        for (int i11 = 0; i11 < length3; i11++) {
                            SyntheticMethodBinding syntheticMethodBinding = syntheticMethods[i11];
                            if (syntheticMethodBinding != null && CharOperation.equals(this.selector, syntheticMethodBinding.selector) && areParameterErasuresEqual(syntheticMethods[i11])) {
                                break;
                            }
                        }
                    }
                    z10 = false;
                } else if (CharOperation.equals(this.selector, methods[i10].selector) && areParameterErasuresEqual(methods[i10])) {
                    break;
                } else {
                    i10++;
                }
            }
            if (z10) {
                TypeBinding[] typeBindingArr2 = this.parameters;
                int length4 = typeBindingArr2.length;
                TypeBinding[] typeBindingArr3 = new TypeBinding[length4 + 1];
                this.parameters = typeBindingArr3;
                System.arraycopy(typeBindingArr2, 0, typeBindingArr3, 0, length4);
                this.parameters[length4] = this.declaringClass;
            }
        } while (z10);
        AbstractMethodDeclaration[] abstractMethodDeclarationArr = sourceTypeBinding.scope.referenceContext.methods;
        if (abstractMethodDeclarationArr != null) {
            for (AbstractMethodDeclaration abstractMethodDeclaration : abstractMethodDeclarationArr) {
                if (abstractMethodDeclaration.binding == methodBinding) {
                    this.sourceStart = abstractMethodDeclaration.sourceStart;
                    return;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a9, code lost:
    
        r10 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void initializeMethodAccessor(MethodBinding methodBinding, boolean z10, ReferenceBinding referenceBinding) {
        boolean z11;
        this.targetMethod = methodBinding;
        if (z10 && referenceBinding.isInterface() && !methodBinding.isStatic()) {
            this.modifiers = 4098;
        } else if (referenceBinding.isInterface()) {
            this.modifiers = 4105;
        } else {
            this.modifiers = 4104;
        }
        this.tagBits |= 25769803776L;
        SourceTypeBinding sourceTypeBinding = (SourceTypeBinding) referenceBinding;
        SyntheticMethodBinding[] syntheticMethods = sourceTypeBinding.syntheticMethods();
        int length = syntheticMethods == null ? 0 : syntheticMethods.length;
        this.index = length;
        this.selector = CharOperation.concat(TypeConstants.SYNTHETIC_ACCESS_METHOD_PREFIX, String.valueOf(length).toCharArray());
        this.returnType = methodBinding.returnType;
        this.purpose = z10 ? 7 : 5;
        if (methodBinding.isStatic() || (z10 && referenceBinding.isInterface())) {
            this.parameters = methodBinding.parameters;
        } else {
            TypeBinding[] typeBindingArr = new TypeBinding[methodBinding.parameters.length + 1];
            this.parameters = typeBindingArr;
            typeBindingArr[0] = sourceTypeBinding;
            TypeBinding[] typeBindingArr2 = methodBinding.parameters;
            System.arraycopy(typeBindingArr2, 0, typeBindingArr, 1, typeBindingArr2.length);
        }
        this.thrownExceptions = methodBinding.thrownExceptions;
        this.declaringClass = sourceTypeBinding;
        do {
            MethodBinding[] methods = sourceTypeBinding.methods();
            int length2 = methods.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length2) {
                    if (syntheticMethods != null) {
                        int length3 = syntheticMethods.length;
                        for (int i11 = 0; i11 < length3; i11++) {
                            SyntheticMethodBinding syntheticMethodBinding = syntheticMethods[i11];
                            if (syntheticMethodBinding == null || !CharOperation.equals(this.selector, syntheticMethodBinding.selector) || !areParameterErasuresEqual(syntheticMethods[i11])) {
                            }
                        }
                    }
                    z11 = false;
                } else if (CharOperation.equals(this.selector, methods[i10].selector) && areParameterErasuresEqual(methods[i10])) {
                    break;
                } else {
                    i10++;
                }
            }
            if (z11) {
                length++;
                setSelector(CharOperation.concat(TypeConstants.SYNTHETIC_ACCESS_METHOD_PREFIX, String.valueOf(length).toCharArray()));
            }
        } while (z11);
        AbstractMethodDeclaration[] abstractMethodDeclarationArr = sourceTypeBinding.scope.referenceContext.methods;
        if (abstractMethodDeclarationArr != null) {
            for (AbstractMethodDeclaration abstractMethodDeclaration : abstractMethodDeclarationArr) {
                if (abstractMethodDeclaration.binding == methodBinding) {
                    this.sourceStart = abstractMethodDeclaration.sourceStart;
                    return;
                }
            }
        }
    }

    public boolean isConstructorRelated() {
        return this.purpose == 6;
    }

    public void markNonNull(LookupEnvironment lookupEnvironment) {
        markNonNull(this, this.purpose, lookupEnvironment);
    }

    @Override
    public LambdaExpression sourceLambda() {
        return this.lambda;
    }

    public static void markNonNull(MethodBinding methodBinding, int i10, LookupEnvironment lookupEnvironment) {
        if (i10 != 9) {
            if (i10 != 10) {
                return;
            }
            if (lookupEnvironment.usesNullTypeAnnotations()) {
                methodBinding.returnType = lookupEnvironment.createAnnotatedType(methodBinding.returnType, new AnnotationBinding[]{lookupEnvironment.getNonNullAnnotation()});
                return;
            } else {
                methodBinding.tagBits |= 72057594037927936L;
                return;
            }
        }
        if (lookupEnvironment.usesNullTypeAnnotations()) {
            TypeBinding leafComponentType = ((ArrayBinding) methodBinding.returnType).leafComponentType();
            AnnotationBinding nonNullAnnotation = lookupEnvironment.getNonNullAnnotation();
            TypeBinding createAnnotatedType = lookupEnvironment.createAnnotatedType(leafComponentType, new AnnotationBinding[]{lookupEnvironment.getNonNullAnnotation()});
            AnnotationBinding[] annotationBindingArr = new AnnotationBinding[2];
            annotationBindingArr[0] = nonNullAnnotation;
            methodBinding.returnType = lookupEnvironment.createArrayType(createAnnotatedType, 1, annotationBindingArr);
            return;
        }
        methodBinding.tagBits |= 72057594037927936L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SyntheticMethodBinding(FieldBinding fieldBinding, ReferenceBinding referenceBinding, TypeBinding typeBinding, char[] cArr, SwitchStatement switchStatement) {
        Object[] objArr;
        this.sourceStart = 0;
        this.fakePaddedParameters = 0;
        this.modifiers = (referenceBinding.isInterface() ? 1 : 0) | 4104;
        this.tagBits |= 25769803776L;
        SourceTypeBinding sourceTypeBinding = (SourceTypeBinding) referenceBinding;
        SyntheticMethodBinding[] syntheticMethods = sourceTypeBinding.syntheticMethods();
        int length = syntheticMethods == null ? 0 : syntheticMethods.length;
        this.index = length;
        this.selector = cArr;
        this.returnType = sourceTypeBinding.scope.createArrayType(TypeBinding.INT, 1);
        this.parameters = Binding.NO_PARAMETERS;
        this.targetReadField = fieldBinding;
        this.targetEnumType = typeBinding;
        this.purpose = 11;
        this.thrownExceptions = Binding.NO_EXCEPTIONS;
        this.declaringClass = sourceTypeBinding;
        this.switchStatement = switchStatement;
        if (sourceTypeBinding.isStrictfp()) {
            this.modifiers |= 2048;
        }
        do {
            MethodBinding[] methods = sourceTypeBinding.methods();
            long binarySearch = ReferenceBinding.binarySearch(this.selector, methods);
            if (binarySearch >= 0) {
                int length2 = this.parameters.length;
                int i10 = (int) (binarySearch >> 32);
                for (int i11 = (int) binarySearch; i11 <= i10; i11++) {
                    TypeBinding[] typeBindingArr = methods[i11].parameters;
                    if (typeBindingArr.length == length2) {
                        for (int i12 = 0; i12 < length2; i12++) {
                            if (TypeBinding.notEquals(typeBindingArr[i12], this.parameters[i12])) {
                                break;
                            }
                        }
                        break;
                    }
                }
            }
            if (syntheticMethods != null) {
                int length3 = syntheticMethods.length;
                for (int i13 = 0; i13 < length3; i13++) {
                    SyntheticMethodBinding syntheticMethodBinding = syntheticMethods[i13];
                    if (syntheticMethodBinding != null && CharOperation.equals(this.selector, syntheticMethodBinding.selector) && areParametersEqual(methods[i13])) {
                        objArr = true;
                    }
                }
            }
            objArr = false;
            if (objArr != false) {
                length++;
                setSelector(CharOperation.concat(cArr, String.valueOf(length).toCharArray()));
            }
        } while (objArr != false);
        this.sourceStart = sourceTypeBinding.scope.referenceContext.sourceStart;
    }

    public SyntheticMethodBinding(MethodBinding methodBinding, boolean z10, ReferenceBinding referenceBinding) {
        this.sourceStart = 0;
        this.fakePaddedParameters = 0;
        if (methodBinding.isConstructor()) {
            initializeConstructorAccessor(methodBinding);
        } else {
            initializeMethodAccessor(methodBinding, z10, referenceBinding);
        }
    }

    public SyntheticMethodBinding(MethodBinding methodBinding, MethodBinding methodBinding2, SourceTypeBinding sourceTypeBinding) {
        this.sourceStart = 0;
        this.fakePaddedParameters = 0;
        this.declaringClass = sourceTypeBinding;
        this.selector = methodBinding.selector;
        this.modifiers = (methodBinding2.modifiers | 4160) & (-1073743153);
        this.tagBits |= 25769803776L;
        this.returnType = methodBinding.returnType;
        this.parameters = methodBinding.parameters;
        this.thrownExceptions = methodBinding.thrownExceptions;
        this.targetMethod = methodBinding2;
        this.purpose = 8;
        SyntheticMethodBinding[] syntheticMethods = sourceTypeBinding.syntheticMethods();
        this.index = syntheticMethods != null ? syntheticMethods.length : 0;
    }

    public SyntheticMethodBinding(SourceTypeBinding sourceTypeBinding, char[] cArr) {
        this.sourceStart = 0;
        this.fakePaddedParameters = 0;
        this.declaringClass = sourceTypeBinding;
        this.selector = cArr;
        this.modifiers = 9;
        this.tagBits |= 25769803776L;
        LookupEnvironment environment = sourceTypeBinding.scope.environment();
        this.thrownExceptions = Binding.NO_EXCEPTIONS;
        if (cArr == TypeConstants.VALUES) {
            this.returnType = environment.createArrayType(environment.convertToParameterizedType(sourceTypeBinding), 1);
            this.parameters = Binding.NO_PARAMETERS;
            this.purpose = 9;
        } else if (cArr == TypeConstants.VALUEOF) {
            this.returnType = environment.convertToParameterizedType(sourceTypeBinding);
            this.parameters = new TypeBinding[]{sourceTypeBinding.scope.getJavaLangString()};
            this.purpose = 10;
        }
        SyntheticMethodBinding[] syntheticMethods = ((SourceTypeBinding) this.declaringClass).syntheticMethods();
        this.index = syntheticMethods != null ? syntheticMethods.length : 0;
        if (sourceTypeBinding.isStrictfp()) {
            this.modifiers |= 2048;
        }
    }

    public SyntheticMethodBinding(SourceTypeBinding sourceTypeBinding) {
        this.sourceStart = 0;
        this.fakePaddedParameters = 0;
        this.declaringClass = sourceTypeBinding;
        this.selector = TypeConstants.DESERIALIZE_LAMBDA;
        this.modifiers = 4106;
        this.tagBits |= 25769803776L;
        this.thrownExceptions = Binding.NO_EXCEPTIONS;
        this.returnType = sourceTypeBinding.scope.getJavaLangObject();
        this.parameters = new TypeBinding[]{sourceTypeBinding.scope.getJavaLangInvokeSerializedLambda()};
        this.purpose = 17;
        SyntheticMethodBinding[] syntheticMethods = sourceTypeBinding.syntheticMethods();
        this.index = syntheticMethods != null ? syntheticMethods.length : 0;
    }

    public SyntheticMethodBinding(SourceTypeBinding sourceTypeBinding, int i10, int i11) {
        this.sourceStart = 0;
        this.fakePaddedParameters = 0;
        this.declaringClass = sourceTypeBinding;
        SyntheticMethodBinding[] syntheticMethods = sourceTypeBinding.syntheticMethods();
        this.index = syntheticMethods != null ? syntheticMethods.length : 0;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(TypeConstants.SYNTHETIC_ENUM_CONSTANT_INITIALIZATION_METHOD_PREFIX);
        stringBuffer.append(this.index);
        this.selector = String.valueOf(stringBuffer).toCharArray();
        this.modifiers = 10;
        this.tagBits |= 25769803776L;
        this.purpose = 12;
        this.thrownExceptions = Binding.NO_EXCEPTIONS;
        this.returnType = TypeBinding.VOID;
        this.parameters = Binding.NO_PARAMETERS;
        this.startIndex = i10;
        this.endIndex = i11;
    }

    public SyntheticMethodBinding(MethodBinding methodBinding, SourceTypeBinding sourceTypeBinding) {
        this.sourceStart = 0;
        this.fakePaddedParameters = 0;
        this.declaringClass = sourceTypeBinding;
        this.selector = methodBinding.selector;
        this.modifiers = (methodBinding.modifiers | 4160) & (-1073743153);
        this.tagBits |= 25769803776L;
        this.returnType = methodBinding.returnType;
        this.parameters = methodBinding.parameters;
        this.thrownExceptions = methodBinding.thrownExceptions;
        this.targetMethod = methodBinding;
        this.purpose = 7;
        SyntheticMethodBinding[] syntheticMethods = sourceTypeBinding.syntheticMethods();
        this.index = syntheticMethods != null ? syntheticMethods.length : 0;
    }

    public SyntheticMethodBinding(int i10, ArrayBinding arrayBinding, char[] cArr, SourceTypeBinding sourceTypeBinding) {
        this.sourceStart = 0;
        this.fakePaddedParameters = 0;
        this.declaringClass = sourceTypeBinding;
        this.selector = cArr;
        this.modifiers = 4106;
        this.tagBits |= 25769803776L;
        this.returnType = arrayBinding;
        LookupEnvironment lookupEnvironment = sourceTypeBinding.environment;
        if (lookupEnvironment.globalOptions.isAnnotationBasedNullAnalysisEnabled) {
            if (lookupEnvironment.usesNullTypeAnnotations()) {
                this.returnType = lookupEnvironment.createAnnotatedType(this.returnType, new AnnotationBinding[]{lookupEnvironment.getNonNullAnnotation()});
            } else {
                this.tagBits |= 72057594037927936L;
            }
        }
        this.parameters = new TypeBinding[]{i10 == 14 ? TypeBinding.INT : arrayBinding};
        this.thrownExceptions = Binding.NO_EXCEPTIONS;
        this.purpose = i10;
        SyntheticMethodBinding[] syntheticMethods = sourceTypeBinding.syntheticMethods();
        this.index = syntheticMethods != null ? syntheticMethods.length : 0;
    }

    public SyntheticMethodBinding(LambdaExpression lambdaExpression, char[] cArr, SourceTypeBinding sourceTypeBinding) {
        this.sourceStart = 0;
        this.fakePaddedParameters = 0;
        this.lambda = lambdaExpression;
        this.declaringClass = sourceTypeBinding;
        this.selector = cArr;
        MethodBinding methodBinding = lambdaExpression.binding;
        this.modifiers = methodBinding.modifiers;
        this.tagBits |= (methodBinding.tagBits & 1024) | 25769803776L;
        this.returnType = methodBinding.returnType;
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        this.parameters = typeBindingArr;
        TypeVariableBinding[] typeVariableBindingArr = (TypeVariableBinding[]) Stream.of((Object[]) typeBindingArr).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean isTypeVariable;
                isTypeVariable = ((TypeBinding) obj).isTypeVariable();
                return isTypeVariable;
            }
        }).toArray(new IntFunction() {
            @Override
            public final Object apply(int i10) {
                TypeVariableBinding[] lambda$1;
                lambda$1 = SyntheticMethodBinding.lambda$1(i10);
                return lambda$1;
            }
        });
        if (typeVariableBindingArr != null && typeVariableBindingArr.length > 0) {
            this.typeVariables = typeVariableBindingArr;
        }
        this.thrownExceptions = lambdaExpression.binding.thrownExceptions;
        this.purpose = 13;
        SyntheticMethodBinding[] syntheticMethods = sourceTypeBinding.syntheticMethods();
        this.index = syntheticMethods != null ? syntheticMethods.length : 0;
    }

    public SyntheticMethodBinding(ReferenceExpression referenceExpression, SourceTypeBinding sourceTypeBinding) {
        this.sourceStart = 0;
        this.fakePaddedParameters = 0;
        this.serializableMethodRef = referenceExpression;
        this.declaringClass = sourceTypeBinding;
        MethodBinding methodBinding = referenceExpression.binding;
        this.selector = methodBinding.selector;
        this.modifiers = methodBinding.modifiers;
        this.tagBits |= (methodBinding.tagBits & 1024) | 25769803776L;
        this.returnType = methodBinding.returnType;
        this.parameters = methodBinding.parameters;
        this.thrownExceptions = methodBinding.thrownExceptions;
        this.purpose = 18;
        SyntheticMethodBinding[] syntheticMethods = sourceTypeBinding.syntheticMethods();
        this.index = syntheticMethods != null ? syntheticMethods.length : 0;
    }

    public SyntheticMethodBinding(MethodBinding methodBinding, MethodBinding methodBinding2, char[] cArr, TypeBinding[] typeBindingArr, SourceTypeBinding sourceTypeBinding) {
        this.sourceStart = 0;
        this.fakePaddedParameters = 0;
        this.declaringClass = sourceTypeBinding;
        this.selector = cArr;
        this.modifiers = 4106;
        this.tagBits |= 25769803776L;
        this.returnType = methodBinding2.declaringClass;
        int length = methodBinding.parameters.length;
        int length2 = typeBindingArr.length;
        TypeBinding[] typeBindingArr2 = new TypeBinding[length2 + length];
        this.parameters = typeBindingArr2;
        System.arraycopy(typeBindingArr, 0, typeBindingArr2, 0, length2);
        System.arraycopy(methodBinding.parameters, 0, this.parameters, length2, length);
        this.fakePaddedParameters = methodBinding2.parameters.length - length;
        this.thrownExceptions = methodBinding2.thrownExceptions;
        this.purpose = 16;
        this.targetMethod = methodBinding2;
        SyntheticMethodBinding[] syntheticMethods = sourceTypeBinding.syntheticMethods();
        this.index = syntheticMethods != null ? syntheticMethods.length : 0;
    }
}
