package org.eclipse.jdt.internal.compiler.lookup;

import android.mtp.MtpConstants;
import java.lang.constant.ConstantDescs;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Receiver;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.ast.SwitchStatement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;

public class SourceTypeBinding extends ReferenceBinding {
    private static final int CLASS_LITERAL_EMUL = 2;
    private static final int FIELD_EMUL = 1;
    private static final int MAX_SYNTHETICS = 3;
    private static final int METHOD_EMUL = 0;
    private ReferenceBinding containerAnnotationType;
    public int defaultNullness;
    LookupEnvironment environment;
    public ExternalAnnotationProvider externalAnnotationProvider;
    private FieldBinding[] fields;
    char[] genericReferenceTypeSignature;
    public ReferenceBinding[] memberTypes;
    private MethodBinding[] methods;
    public ModuleBinding module;
    private SourceTypeBinding nestHost;
    public HashSet<SourceTypeBinding> nestMembers;
    private int nullnessDefaultInitialized;
    protected SourceTypeBinding prototype;
    public ClassScope scope;
    private SimpleLookupTable storedAnnotations;
    public ReferenceBinding[] superInterfaces;
    public ReferenceBinding superclass;
    HashMap[] synthetics;
    public TypeVariableBinding[] typeVariables;

    public SourceTypeBinding(char[][] cArr, PackageBinding packageBinding, ClassScope classScope) {
        this.storedAnnotations = null;
        this.nullnessDefaultInitialized = 0;
        this.containerAnnotationType = null;
        this.compoundName = cArr;
        this.fPackage = packageBinding;
        this.fileName = classScope.referenceCompilationUnit().getFileName();
        TypeDeclaration typeDeclaration = classScope.referenceContext;
        this.modifiers = typeDeclaration.modifiers;
        this.sourceName = typeDeclaration.name;
        this.scope = classScope;
        this.environment = classScope.environment();
        this.fields = Binding.UNINITIALIZED_FIELDS;
        this.methods = Binding.UNINITIALIZED_METHODS;
        this.prototype = this;
        computeId();
    }

    private void addDefaultAbstractMethods() {
        ReferenceBinding[] superInterfaces;
        int i10;
        ReferenceBinding[] referenceBindingArr;
        int i11;
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        long j10 = this.tagBits;
        if ((j10 & 1024) != 0) {
            return;
        }
        this.tagBits = j10 | 1024;
        if (!isClass() || !isAbstract() || this.scope.compilerOptions().targetJDK >= ClassFileConstants.JDK1_2 || (superInterfaces = superInterfaces()) == Binding.NO_SUPERINTERFACES) {
            return;
        }
        int i12 = 0;
        MethodBinding[] methodBindingArr = null;
        ReferenceBinding[] referenceBindingArr2 = superInterfaces;
        int length = superInterfaces.length;
        int i13 = 0;
        int i14 = 0;
        while (i14 < length) {
            ReferenceBinding referenceBinding = referenceBindingArr2[i14];
            if (referenceBinding.isValidBinding()) {
                MethodBinding[] methods = referenceBinding.methods();
                int length2 = methods.length;
                int i15 = i13;
                MethodBinding[] methodBindingArr2 = methodBindingArr;
                while (true) {
                    int i16 = length2 - 1;
                    if (i16 < 0) {
                        break;
                    }
                    MethodBinding methodBinding = methods[i16];
                    if (implementsMethod(methodBinding)) {
                        i11 = i12;
                    } else {
                        if (i15 == 0) {
                            methodBindingArr2 = new MethodBinding[5];
                        } else {
                            int i17 = i12;
                            while (i17 < i15) {
                                i11 = i12;
                                MethodBinding methodBinding2 = methodBindingArr2[i17];
                                if (!CharOperation.equals(methodBinding2.selector, methodBinding.selector) || !methodBinding2.areParametersEqual(methodBinding)) {
                                    i17++;
                                    i12 = i11;
                                }
                            }
                        }
                        MethodBinding[] methodBindingArr3 = methodBindingArr2;
                        MethodBinding methodBinding3 = new MethodBinding(528384 | methodBinding.modifiers, methodBinding.selector, methodBinding.returnType, methodBinding.parameters, methodBinding.thrownExceptions, this);
                        if (i15 == methodBindingArr3.length) {
                            MethodBinding[] methodBindingArr4 = new MethodBinding[i15 * 2];
                            i11 = 0;
                            System.arraycopy(methodBindingArr3, 0, methodBindingArr4, 0, i15);
                            methodBindingArr2 = methodBindingArr4;
                        } else {
                            i11 = 0;
                            methodBindingArr2 = methodBindingArr3;
                        }
                        methodBindingArr2[i15] = methodBinding3;
                        i15++;
                    }
                    i12 = i11;
                    length2 = i16;
                }
                ReferenceBinding[] superInterfaces2 = referenceBinding.superInterfaces();
                if (superInterfaces2 != Binding.NO_SUPERINTERFACES) {
                    int length3 = superInterfaces2.length;
                    int i18 = length + length3;
                    if (i18 >= referenceBindingArr2.length) {
                        referenceBindingArr = new ReferenceBinding[i18 + 5];
                        System.arraycopy(referenceBindingArr2, i12, referenceBindingArr, i12, length);
                    } else {
                        referenceBindingArr = referenceBindingArr2;
                    }
                    int i19 = length;
                    for (int i20 = i12; i20 < length3; i20++) {
                        ReferenceBinding referenceBinding2 = superInterfaces2[i20];
                        int i21 = i12;
                        while (true) {
                            if (i21 >= i19) {
                                referenceBindingArr[i19] = referenceBinding2;
                                i19++;
                                break;
                            } else if (TypeBinding.equalsEquals(referenceBinding2, referenceBindingArr[i21])) {
                                break;
                            } else {
                                i21++;
                            }
                        }
                    }
                    referenceBindingArr2 = referenceBindingArr;
                    methodBindingArr = methodBindingArr2;
                    length = i19;
                } else {
                    methodBindingArr = methodBindingArr2;
                }
                i10 = i12;
                i13 = i15;
            } else {
                i10 = i12;
            }
            i14++;
            i12 = i10;
        }
        if (i13 > 0) {
            MethodBinding[] methodBindingArr5 = this.methods;
            int length4 = methodBindingArr5.length;
            int i22 = length4 + i13;
            System.arraycopy(methodBindingArr5, i12, setMethods(new MethodBinding[i22]), i12, length4);
            System.arraycopy(methodBindingArr, i12, this.methods, length4, i13);
            if (i22 > 1) {
                ReferenceBinding.sortMethods(this.methods, i12, i22);
            }
        }
    }

    private void addDeserializeLambdaMethod() {
        HashMap hashMap = this.synthetics[0];
        char[] cArr = TypeConstants.DESERIALIZE_LAMBDA;
        if (((SyntheticMethodBinding[]) hashMap.get(cArr)) == null) {
            SyntheticMethodBinding syntheticMethodBinding = new SyntheticMethodBinding(this);
            this.synthetics[0].put(cArr, r4);
            SyntheticMethodBinding[] syntheticMethodBindingArr = {syntheticMethodBinding};
        }
    }

    private void checkAnnotationsInType() {
        getAnnotationTagBits();
        ReferenceBinding enclosingType = enclosingType();
        if (enclosingType != null && enclosingType.isViewedAsDeprecated() && !isDeprecated()) {
            this.modifiers |= 2097152;
            this.tagBits |= enclosingType.tagBits & 4611686018427387904L;
        }
        int length = this.memberTypes.length;
        for (int i10 = 0; i10 < length; i10++) {
            ((SourceTypeBinding) this.memberTypes[i10]).checkAnnotationsInType();
        }
    }

    private void createArgumentBindings(MethodBinding methodBinding, CompilerOptions compilerOptions) {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        if (compilerOptions.isAnnotationBasedNullAnalysisEnabled) {
            getNullDefault();
        }
        AbstractMethodDeclaration sourceMethod = methodBinding.sourceMethod();
        if (sourceMethod != null) {
            if (methodBinding.parameters != Binding.NO_PARAMETERS) {
                sourceMethod.createArgumentBindings();
            }
            if (compilerOptions.isAnnotationBasedNullAnalysisEnabled) {
                new ImplicitNullAnnotationVerifier(this.scope.environment()).checkImplicitNullAnnotations(methodBinding, sourceMethod, true, this.scope);
            }
        }
    }

    private void internalFaultInTypeForFieldsAndMethods() {
        fields();
        methods();
        int length = this.memberTypes.length;
        for (int i10 = 0; i10 < length; i10++) {
            ((SourceTypeBinding) this.memberTypes[i10]).internalFaultInTypeForFieldsAndMethods();
        }
    }

    public static String lambda$0(SourceTypeBinding sourceTypeBinding) {
        return new String(sourceTypeBinding.constantPoolName());
    }

    private void maybeMarkTypeParametersNonNull() {
        ClassScope classScope;
        TypeVariableBinding[] typeVariableBindingArr = this.typeVariables;
        if (typeVariableBindingArr == null || typeVariableBindingArr.length <= 0 || (classScope = this.scope) == null || !classScope.hasDefaultNullnessFor(128, sourceStart())) {
            return;
        }
        AnnotationBinding[] annotationBindingArr = {this.environment.getNonNullAnnotation()};
        int i10 = 0;
        while (true) {
            TypeVariableBinding[] typeVariableBindingArr2 = this.typeVariables;
            if (i10 >= typeVariableBindingArr2.length) {
                return;
            }
            TypeVariableBinding typeVariableBinding = typeVariableBindingArr2[i10];
            if ((typeVariableBinding.tagBits & TagBits.AnnotationNullMASK) == 0) {
                typeVariableBindingArr2[i10] = (TypeVariableBinding) this.environment.createAnnotatedType(typeVariableBinding, annotationBindingArr);
            }
            i10++;
        }
    }

    private static void rejectTypeAnnotatedVoidMethod(AbstractMethodDeclaration abstractMethodDeclaration) {
        Annotation[] annotationArr = abstractMethodDeclaration.annotations;
        int length = annotationArr == null ? 0 : annotationArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            ReferenceBinding referenceBinding = (ReferenceBinding) annotationArr[i10].resolvedType;
            if (referenceBinding != null) {
                long j10 = referenceBinding.tagBits;
                if ((9007199254740992L & j10) != 0 && (j10 & 274877906944L) == 0) {
                    abstractMethodDeclaration.scope.problemReporter().illegalUsageOfTypeAnnotations(annotationArr[i10]);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x02de A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01b0 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private MethodBinding resolveTypesWithSuspendedTempErrorHandlingPolicy(MethodBinding methodBinding) {
        TypeParameter[] typeParameterArr;
        boolean z10;
        Annotation[] annotationArr;
        int i10;
        int i11;
        int i12;
        boolean z11;
        TypeBinding resolveType;
        TypeParameter[] typeParameterArr2;
        int i13;
        boolean z12;
        Argument[] argumentArr;
        TypeBinding resolveType2;
        if (!isPrototype()) {
            return this.prototype.resolveTypesFor(methodBinding);
        }
        if ((methodBinding.modifiers & 33554432) == 0) {
            return methodBinding;
        }
        long j10 = this.scope.compilerOptions().sourceLevel;
        int i14 = 0;
        if (j10 >= ClassFileConstants.JDK1_5) {
            ReferenceBinding javaLangObject = this.scope.getJavaLangObject();
            for (TypeVariableBinding typeVariableBinding : methodBinding.typeVariables) {
                typeVariableBinding.superclass = javaLangObject;
            }
            if ((methodBinding.getAnnotationTagBits() & 70368744177664L) != 0) {
                methodBinding.modifiers |= 1048576;
            }
        }
        if (isViewedAsDeprecated() && !methodBinding.isDeprecated()) {
            methodBinding.modifiers |= 2097152;
            methodBinding.tagBits |= this.tagBits & 4611686018427387904L;
        }
        if (hasRestrictedAccess()) {
            methodBinding.modifiers |= 262144;
        }
        AbstractMethodDeclaration sourceMethod = methodBinding.sourceMethod();
        if (sourceMethod == null) {
            return null;
        }
        TypeParameter[] typeParameters = sourceMethod.typeParameters();
        boolean z13 = true;
        if (typeParameters != null) {
            sourceMethod.scope.connectTypeVariables(typeParameters, true);
            for (TypeParameter typeParameter : typeParameters) {
                typeParameter.checkBounds(sourceMethod.scope);
            }
        }
        TypeReference[] typeReferenceArr = sourceMethod.thrownExceptions;
        if (typeReferenceArr != null) {
            int length = typeReferenceArr.length;
            methodBinding.thrownExceptions = new ReferenceBinding[length];
            int i15 = 0;
            int i16 = 0;
            while (i15 < length) {
                ReferenceBinding referenceBinding = (ReferenceBinding) typeReferenceArr[i15].resolveType((BlockScope) sourceMethod.scope, true);
                if (referenceBinding != null) {
                    if (referenceBinding.isBoundParameterizedType()) {
                        sourceMethod.scope.problemReporter().invalidParameterizedExceptionType(referenceBinding, typeReferenceArr[i15]);
                    } else if (referenceBinding.findSuperTypeOriginatingFrom(21, true) == null && referenceBinding.isValidBinding()) {
                        sourceMethod.scope.problemReporter().cannotThrowType(typeReferenceArr[i15], referenceBinding);
                    } else {
                        if ((referenceBinding.tagBits & 128) != 0) {
                            methodBinding.tagBits |= 128;
                        }
                        if (typeReferenceArr[i15].hasNullTypeAnnotation(TypeReference.AnnotationPosition.ANY)) {
                            sourceMethod.scope.problemReporter().nullAnnotationUnsupportedLocation(typeReferenceArr[i15]);
                        }
                        methodBinding.modifiers |= referenceBinding.modifiers & 1073741824;
                        methodBinding.thrownExceptions[i16] = referenceBinding;
                        i16++;
                    }
                }
                i15++;
                i14 = 0;
            }
            if (i16 < length) {
                ReferenceBinding[] referenceBindingArr = methodBinding.thrownExceptions;
                ReferenceBinding[] referenceBindingArr2 = new ReferenceBinding[i16];
                methodBinding.thrownExceptions = referenceBindingArr2;
                System.arraycopy(referenceBindingArr, i14, referenceBindingArr2, i14, i16);
            }
        }
        Receiver receiver = sourceMethod.receiver;
        if (receiver != null) {
            methodBinding.receiver = receiver.type.resolveType((BlockScope) sourceMethod.scope, true);
        }
        boolean z14 = this.scope.compilerOptions().reportUnavoidableGenericTypeProblems;
        boolean shouldCheckAPILeaks = sourceMethod.scope.shouldCheckAPILeaks(this, methodBinding.isPublic());
        Argument[] argumentArr2 = sourceMethod.arguments;
        if (argumentArr2 != null) {
            int length2 = argumentArr2.length;
            methodBinding.parameters = Binding.NO_PARAMETERS;
            TypeBinding[] typeBindingArr = new TypeBinding[length2];
            int i17 = 0;
            z10 = false;
            while (i17 < length2) {
                Argument argument = argumentArr2[i17];
                if (argument.annotations != null) {
                    typeParameterArr2 = typeParameters;
                    methodBinding.tagBits |= 1024;
                } else {
                    typeParameterArr2 = typeParameters;
                }
                try {
                    if (z14 || methodBinding.isConstructor()) {
                        i13 = 1073741824;
                    } else {
                        i13 = 1073741824;
                        if ((argument.type.bits & 1073741824) == 0) {
                            z12 = z13;
                            if (z12) {
                                argumentArr = argumentArr2;
                            } else {
                                argumentArr = argumentArr2;
                                argument.type.bits |= i13;
                            }
                            ASTNode.handleNonNullByDefault(sourceMethod.scope, argument.annotations, argument);
                            resolveType2 = argument.type.resolveType((BlockScope) sourceMethod.scope, true);
                            if (resolveType2 != null) {
                                if (resolveType2 == TypeBinding.VOID) {
                                    sourceMethod.scope.problemReporter().argumentTypeCannotBeVoid(sourceMethod, argument);
                                } else {
                                    if ((resolveType2.tagBits & 128) != 0) {
                                        methodBinding.tagBits |= 128;
                                    }
                                    TypeBinding leafComponentType = resolveType2.leafComponentType();
                                    if ((leafComponentType instanceof ReferenceBinding) && (((ReferenceBinding) leafComponentType).modifiers & 1073741824) != 0) {
                                        methodBinding.modifiers |= 1073741824;
                                    }
                                    typeBindingArr[i17] = resolveType2;
                                    if (shouldCheckAPILeaks) {
                                        sourceMethod.scope.detectAPILeaks(argument.type, resolveType2);
                                    }
                                    argument.binding = new LocalVariableBinding(argument, resolveType2, argument.modifiers, sourceMethod.scope);
                                    i17++;
                                    typeParameters = typeParameterArr2;
                                    argumentArr2 = argumentArr;
                                    z13 = true;
                                }
                            }
                            z10 = true;
                            i17++;
                            typeParameters = typeParameterArr2;
                            argumentArr2 = argumentArr;
                            z13 = true;
                        }
                    }
                    ASTNode.handleNonNullByDefault(sourceMethod.scope, argument.annotations, argument);
                    resolveType2 = argument.type.resolveType((BlockScope) sourceMethod.scope, true);
                    if (resolveType2 != null) {
                    }
                    z10 = true;
                    i17++;
                    typeParameters = typeParameterArr2;
                    argumentArr2 = argumentArr;
                    z13 = true;
                } finally {
                    if (z12) {
                        argument.type.bits &= -1073741825;
                    }
                }
                z12 = false;
                if (z12) {
                }
            }
            if (!z10) {
                methodBinding.parameters = typeBindingArr;
            }
            typeParameterArr = typeParameters;
        } else {
            typeParameterArr = typeParameters;
            z10 = false;
        }
        if (j10 >= ClassFileConstants.JDK1_7) {
            if ((methodBinding.tagBits & 2251799813685248L) == 0) {
                TypeBinding[] typeBindingArr2 = methodBinding.parameters;
                if (typeBindingArr2 != null && typeBindingArr2.length > 0 && methodBinding.isVarargs()) {
                    TypeBinding[] typeBindingArr3 = methodBinding.parameters;
                    if (!typeBindingArr3[typeBindingArr3.length - 1].isReifiable()) {
                        ProblemReporter problemReporter = sourceMethod.scope.problemReporter();
                        Argument[] argumentArr3 = sourceMethod.arguments;
                        problemReporter.possibleHeapPollutionFromVararg(argumentArr3[argumentArr3.length - 1]);
                    }
                }
            } else if (!methodBinding.isVarargs()) {
                sourceMethod.scope.problemReporter().safeVarargsOnFixedArityMethod(methodBinding);
            } else if (!methodBinding.isStatic() && !methodBinding.isFinal() && !methodBinding.isConstructor() && (j10 < ClassFileConstants.JDK9 || !methodBinding.isPrivate())) {
                sourceMethod.scope.problemReporter().safeVarargsOnNonFinalInstanceMethod(methodBinding);
            }
        }
        if (!methodBinding.isConstructor()) {
            TypeReference typeReference = sourceMethod instanceof MethodDeclaration ? ((MethodDeclaration) sourceMethod).returnType : null;
            if (typeReference == null) {
                sourceMethod.scope.problemReporter().missingReturnType(sourceMethod);
                methodBinding.returnType = null;
                i10 = 0;
                i11 = 1;
            } else {
                try {
                    if (z14) {
                        i12 = 1073741824;
                    } else {
                        i12 = 1073741824;
                        if ((typeReference.bits & 1073741824) == 0) {
                            z11 = true;
                            if (z11) {
                                typeReference.bits |= i12;
                            }
                            resolveType = typeReference.resolveType((BlockScope) sourceMethod.scope, true);
                            if (resolveType != null) {
                                i11 = 1;
                                i10 = 0;
                            } else {
                                if ((resolveType.tagBits & 128) != 0) {
                                    methodBinding.tagBits |= 128;
                                }
                                methodBinding.returnType = resolveType;
                                if (j10 >= ClassFileConstants.JDK1_8 && !methodBinding.isVoidMethod()) {
                                    Annotation[] annotationArr2 = sourceMethod.annotations;
                                    if (annotationArr2 != null && annotationArr2.length != 0) {
                                        ASTNode.copySE8AnnotationsToType(sourceMethod.scope, methodBinding, annotationArr2, false);
                                    }
                                    Annotation.isTypeUseCompatible(typeReference, this.scope, sourceMethod.annotations);
                                }
                                TypeBinding leafComponentType2 = resolveType.leafComponentType();
                                if ((leafComponentType2 instanceof ReferenceBinding) && (((ReferenceBinding) leafComponentType2).modifiers & 1073741824) != 0) {
                                    methodBinding.modifiers |= 1073741824;
                                } else if (leafComponentType2 == TypeBinding.VOID && sourceMethod.annotations != null) {
                                    rejectTypeAnnotatedVoidMethod(sourceMethod);
                                }
                                if (shouldCheckAPILeaks) {
                                    sourceMethod.scope.detectAPILeaks(typeReference, resolveType);
                                }
                            }
                        }
                    }
                    resolveType = typeReference.resolveType((BlockScope) sourceMethod.scope, true);
                    if (resolveType != null) {
                    }
                } finally {
                    if (z11) {
                        typeReference.bits &= -1073741825;
                    }
                }
                z11 = false;
                if (z11) {
                }
            }
            if (z10) {
                sourceMethod.binding = null;
                methodBinding.parameters = Binding.NO_PARAMETERS;
                if (typeParameterArr != null) {
                    int length3 = typeParameterArr.length;
                    for (int i18 = i10; i18 < length3; i18++) {
                        typeParameterArr[i18].binding = null;
                    }
                }
                return null;
            }
            CompilerOptions compilerOptions = this.scope.compilerOptions();
            if (compilerOptions.isAnnotationBasedNullAnalysisEnabled && !methodBinding.isConstructor() && methodBinding.returnType != null) {
                long j11 = methodBinding.tagBits & TagBits.AnnotationNullMASK;
                if (j11 != 0) {
                    TypeReference typeReference2 = ((MethodDeclaration) sourceMethod).returnType;
                    if (this.scope.environment().usesNullTypeAnnotations()) {
                        if (!this.scope.validateNullAnnotation(j11, typeReference2, sourceMethod.annotations)) {
                            methodBinding.returnType.tagBits &= -108086391056891905L;
                        }
                        methodBinding.tagBits &= -108086391056891905L;
                    } else if (!this.scope.validateNullAnnotation(j11, typeReference2, sourceMethod.annotations)) {
                        methodBinding.tagBits &= -108086391056891905L;
                    }
                }
            }
            if (compilerOptions.storeAnnotations) {
                createArgumentBindings(methodBinding, compilerOptions);
            }
            if (i11 != 0) {
                return methodBinding;
            }
            methodBinding.modifiers &= -33554433;
            ExternalAnnotationProvider externalAnnotationProvider = this.externalAnnotationProvider;
            if (externalAnnotationProvider != null) {
                ExternalAnnotationSuperimposer.annotateMethodBinding(methodBinding, externalAnnotationProvider, this.environment);
            }
            return methodBinding;
        }
        if (j10 >= ClassFileConstants.JDK1_8 && (annotationArr = sourceMethod.annotations) != null && annotationArr.length != 0) {
            i10 = 0;
            ASTNode.copySE8AnnotationsToType(sourceMethod.scope, methodBinding, annotationArr, false);
            i11 = i10;
            if (z10) {
            }
        }
        i10 = 0;
        i11 = i10;
        if (z10) {
        }
    }

    public void addNestMember(SourceTypeBinding sourceTypeBinding) {
        if (this.nestMembers == null) {
            this.nestMembers = new HashSet<>();
        }
        this.nestMembers.add(sourceTypeBinding);
    }

    public SyntheticMethodBinding addSyntheticArrayMethod(ArrayBinding arrayBinding, int i10, char[] cArr) {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        if (this.synthetics == null) {
            this.synthetics = new HashMap[3];
        }
        HashMap[] hashMapArr = this.synthetics;
        if (hashMapArr[0] == null) {
            hashMapArr[0] = new HashMap(5);
        }
        SyntheticMethodBinding[] syntheticMethodBindingArr = (SyntheticMethodBinding[]) this.synthetics[0].get(arrayBinding);
        if (syntheticMethodBindingArr == null) {
            SyntheticMethodBinding syntheticMethodBinding = new SyntheticMethodBinding(i10, arrayBinding, cArr, this);
            SyntheticMethodBinding[] syntheticMethodBindingArr2 = new SyntheticMethodBinding[2];
            this.synthetics[0].put(arrayBinding, syntheticMethodBindingArr2);
            syntheticMethodBindingArr2[i10 != 14 ? (char) 1 : (char) 0] = syntheticMethodBinding;
            return syntheticMethodBinding;
        }
        SyntheticMethodBinding syntheticMethodBinding2 = syntheticMethodBindingArr[i10 == 14 ? (char) 0 : (char) 1];
        if (syntheticMethodBinding2 == null) {
            syntheticMethodBinding2 = new SyntheticMethodBinding(i10, arrayBinding, cArr, this);
            syntheticMethodBindingArr[i10 != 14 ? (char) 1 : (char) 0] = syntheticMethodBinding2;
        }
        return syntheticMethodBinding2;
    }

    public SyntheticMethodBinding addSyntheticBridgeMethod(MethodBinding methodBinding, MethodBinding methodBinding2) {
        if (isPrototype()) {
            if (isInterface() && this.scope.compilerOptions().sourceLevel <= ClassFileConstants.JDK1_7) {
                return null;
            }
            if (TypeBinding.equalsEquals(methodBinding.returnType.erasure(), methodBinding2.returnType.erasure()) && methodBinding.areParameterErasuresEqual(methodBinding2)) {
                return null;
            }
            if (this.synthetics == null) {
                this.synthetics = new HashMap[3];
            }
            HashMap[] hashMapArr = this.synthetics;
            HashMap hashMap = hashMapArr[0];
            if (hashMap == null) {
                hashMapArr[0] = new HashMap(5);
            } else {
                for (Object obj : hashMap.o()) {
                    if (obj instanceof MethodBinding) {
                        MethodBinding methodBinding3 = (MethodBinding) obj;
                        if (CharOperation.equals(methodBinding.selector, methodBinding3.selector) && TypeBinding.equalsEquals(methodBinding.returnType.erasure(), methodBinding3.returnType.erasure()) && methodBinding.areParameterErasuresEqual(methodBinding3)) {
                            return null;
                        }
                    }
                }
            }
            SyntheticMethodBinding[] syntheticMethodBindingArr = (SyntheticMethodBinding[]) this.synthetics[0].get(methodBinding);
            if (syntheticMethodBindingArr == null) {
                SyntheticMethodBinding syntheticMethodBinding = new SyntheticMethodBinding(methodBinding, methodBinding2, this);
                SyntheticMethodBinding[] syntheticMethodBindingArr2 = new SyntheticMethodBinding[2];
                this.synthetics[0].put(methodBinding, syntheticMethodBindingArr2);
                syntheticMethodBindingArr2[1] = syntheticMethodBinding;
                return syntheticMethodBinding;
            }
            SyntheticMethodBinding syntheticMethodBinding2 = syntheticMethodBindingArr[1];
            if (syntheticMethodBinding2 == null) {
                syntheticMethodBinding2 = new SyntheticMethodBinding(methodBinding, methodBinding2, this);
                syntheticMethodBindingArr[1] = syntheticMethodBinding2;
            }
            return syntheticMethodBinding2;
        }
        throw new IllegalStateException();
    }

    public SyntheticMethodBinding addSyntheticEnumMethod(char[] cArr) {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        if (this.synthetics == null) {
            this.synthetics = new HashMap[3];
        }
        HashMap[] hashMapArr = this.synthetics;
        if (hashMapArr[0] == null) {
            hashMapArr[0] = new HashMap(5);
        }
        SyntheticMethodBinding[] syntheticMethodBindingArr = (SyntheticMethodBinding[]) this.synthetics[0].get(cArr);
        if (syntheticMethodBindingArr == null) {
            SyntheticMethodBinding syntheticMethodBinding = new SyntheticMethodBinding(this, cArr);
            SyntheticMethodBinding[] syntheticMethodBindingArr2 = new SyntheticMethodBinding[2];
            this.synthetics[0].put(cArr, syntheticMethodBindingArr2);
            syntheticMethodBindingArr2[0] = syntheticMethodBinding;
            return syntheticMethodBinding;
        }
        SyntheticMethodBinding syntheticMethodBinding2 = syntheticMethodBindingArr[0];
        if (syntheticMethodBinding2 == null) {
            syntheticMethodBinding2 = new SyntheticMethodBinding(this, cArr);
            syntheticMethodBindingArr[0] = syntheticMethodBinding2;
        }
        return syntheticMethodBinding2;
    }

    public SyntheticMethodBinding addSyntheticFactoryMethod(MethodBinding methodBinding, MethodBinding methodBinding2, TypeBinding[] typeBindingArr, char[] cArr) {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        if (this.synthetics == null) {
            this.synthetics = new HashMap[3];
        }
        HashMap[] hashMapArr = this.synthetics;
        if (hashMapArr[0] == null) {
            hashMapArr[0] = new HashMap(5);
        }
        SyntheticMethodBinding syntheticMethodBinding = new SyntheticMethodBinding(methodBinding, methodBinding2, cArr, typeBindingArr, this);
        this.synthetics[0].put(cArr, new SyntheticMethodBinding[]{syntheticMethodBinding});
        return syntheticMethodBinding;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FieldBinding addSyntheticFieldForAssert(BlockScope blockScope) {
        Object[] objArr;
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        if (this.synthetics == null) {
            this.synthetics = new HashMap[3];
        }
        HashMap[] hashMapArr = this.synthetics;
        if (hashMapArr[1] == null) {
            hashMapArr[1] = new HashMap(5);
        }
        FieldBinding fieldBinding = (FieldBinding) this.synthetics[1].get("assertionEmulation");
        if (fieldBinding == null) {
            fieldBinding = new SyntheticFieldBinding(TypeConstants.SYNTHETIC_ASSERT_DISABLED, TypeBinding.BOOLEAN, (isInterface() ? 1 : 0) | MtpConstants.OPERATION_TERMINATE_OPEN_CAPTURE, this, Constant.NotAConstant, this.synthetics[1].size());
            this.synthetics[1].put("assertionEmulation", fieldBinding);
        }
        int i10 = 0;
        do {
            FieldBinding field = getField(fieldBinding.name, true);
            if (field != null) {
                TypeDeclaration typeDeclaration = this.scope.referenceContext;
                FieldDeclaration[] fieldDeclarationArr = typeDeclaration.fields;
                int length = fieldDeclarationArr == null ? 0 : fieldDeclarationArr.length;
                for (int i11 = 0; i11 < length; i11++) {
                    if (typeDeclaration.fields[i11].binding == field) {
                        fieldBinding.name = CharOperation.concat(TypeConstants.SYNTHETIC_ASSERT_DISABLED, (ConstantDescs.DEFAULT_NAME + String.valueOf(i10)).toCharArray());
                        objArr = true;
                        i10++;
                        break;
                    }
                }
            }
            objArr = false;
        } while (objArr != false);
        return fieldBinding;
    }

    public FieldBinding addSyntheticFieldForClassLiteral(TypeBinding typeBinding, BlockScope blockScope) {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        if (this.synthetics == null) {
            this.synthetics = new HashMap[3];
        }
        HashMap[] hashMapArr = this.synthetics;
        if (hashMapArr[2] == null) {
            hashMapArr[2] = new HashMap(5);
        }
        FieldBinding fieldBinding = (FieldBinding) this.synthetics[2].get(typeBinding);
        if (fieldBinding == null) {
            fieldBinding = new SyntheticFieldBinding(CharOperation.concat(TypeConstants.SYNTHETIC_CLASS, String.valueOf(this.synthetics[2].size()).toCharArray()), blockScope.getJavaLangClass(), 4104, this, Constant.NotAConstant, this.synthetics[2].size());
            this.synthetics[2].put(typeBinding, fieldBinding);
        }
        FieldBinding field = getField(fieldBinding.name, true);
        if (field != null) {
            FieldDeclaration[] fieldDeclarationArr = blockScope.referenceType().fields;
            int i10 = 0;
            int length = fieldDeclarationArr == null ? 0 : fieldDeclarationArr.length;
            while (true) {
                if (i10 >= length) {
                    break;
                }
                FieldDeclaration fieldDeclaration = fieldDeclarationArr[i10];
                if (fieldDeclaration.binding == field) {
                    blockScope.problemReporter().duplicateFieldInType(this, fieldDeclaration);
                    break;
                }
                i10++;
            }
        }
        return fieldBinding;
    }

    public FieldBinding addSyntheticFieldForEnumValues() {
        boolean z10;
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        if (this.synthetics == null) {
            this.synthetics = new HashMap[3];
        }
        HashMap[] hashMapArr = this.synthetics;
        if (hashMapArr[1] == null) {
            hashMapArr[1] = new HashMap(5);
        }
        FieldBinding fieldBinding = (FieldBinding) this.synthetics[1].get("enumConstantValues");
        if (fieldBinding == null) {
            fieldBinding = new SyntheticFieldBinding(TypeConstants.SYNTHETIC_ENUM_VALUES, this.scope.createArrayType(this, 1), MtpConstants.OPERATION_COPY_OBJECT, this, Constant.NotAConstant, this.synthetics[1].size());
            this.synthetics[1].put("enumConstantValues", fieldBinding);
        }
        int i10 = 0;
        do {
            FieldBinding field = getField(fieldBinding.name, true);
            if (field != null) {
                FieldDeclaration[] fieldDeclarationArr = this.scope.referenceContext.fields;
                int length = fieldDeclarationArr == null ? 0 : fieldDeclarationArr.length;
                for (int i11 = 0; i11 < length; i11++) {
                    if (fieldDeclarationArr[i11].binding == field) {
                        fieldBinding.name = CharOperation.concat(TypeConstants.SYNTHETIC_ENUM_VALUES, (ConstantDescs.DEFAULT_NAME + String.valueOf(i10)).toCharArray());
                        z10 = true;
                        i10++;
                        break;
                    }
                }
            }
            z10 = false;
        } while (z10);
        return fieldBinding;
    }

    public FieldBinding addSyntheticFieldForInnerclass(LocalVariableBinding localVariableBinding) {
        boolean z10;
        if (isPrototype()) {
            if (this.synthetics == null) {
                this.synthetics = new HashMap[3];
            }
            HashMap[] hashMapArr = this.synthetics;
            if (hashMapArr[1] == null) {
                hashMapArr[1] = new HashMap(5);
            }
            FieldBinding fieldBinding = (FieldBinding) this.synthetics[1].get(localVariableBinding);
            if (fieldBinding == null) {
                fieldBinding = new SyntheticFieldBinding(CharOperation.concat(TypeConstants.SYNTHETIC_OUTER_LOCAL_PREFIX, localVariableBinding.name), localVariableBinding.type, 4114, this, Constant.NotAConstant, this.synthetics[1].size());
                this.synthetics[1].put(localVariableBinding, fieldBinding);
            }
            int i10 = 1;
            do {
                FieldBinding field = getField(fieldBinding.name, true);
                z10 = false;
                if (field != null) {
                    FieldDeclaration[] fieldDeclarationArr = this.scope.referenceContext.fields;
                    int length = fieldDeclarationArr == null ? 0 : fieldDeclarationArr.length;
                    int i11 = 0;
                    while (true) {
                        if (i11 >= length) {
                            break;
                        }
                        if (fieldDeclarationArr[i11].binding == field) {
                            fieldBinding.name = CharOperation.concat(TypeConstants.SYNTHETIC_OUTER_LOCAL_PREFIX, localVariableBinding.name, ("$" + String.valueOf(i10)).toCharArray());
                            z10 = true;
                            i10++;
                            break;
                        }
                        i11++;
                    }
                }
            } while (z10);
            return fieldBinding;
        }
        throw new IllegalStateException();
    }

    public SyntheticFieldBinding addSyntheticFieldForSwitchEnum(char[] cArr, String str) {
        boolean z10;
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        if (this.synthetics == null) {
            this.synthetics = new HashMap[3];
        }
        HashMap[] hashMapArr = this.synthetics;
        if (hashMapArr[1] == null) {
            hashMapArr[1] = new HashMap(5);
        }
        SyntheticFieldBinding syntheticFieldBinding = (SyntheticFieldBinding) this.synthetics[1].get(str);
        if (syntheticFieldBinding == null) {
            syntheticFieldBinding = new SyntheticFieldBinding(cArr, this.scope.createArrayType(TypeBinding.INT, 1), (isInterface() ? 17 : 2) | 4104, this, Constant.NotAConstant, this.synthetics[1].size());
            this.synthetics[1].put(str, syntheticFieldBinding);
        }
        int i10 = 0;
        do {
            FieldBinding field = getField(syntheticFieldBinding.name, true);
            if (field != null) {
                FieldDeclaration[] fieldDeclarationArr = this.scope.referenceContext.fields;
                int length = fieldDeclarationArr == null ? 0 : fieldDeclarationArr.length;
                for (int i11 = 0; i11 < length; i11++) {
                    if (fieldDeclarationArr[i11].binding == field) {
                        syntheticFieldBinding.name = CharOperation.concat(cArr, (ConstantDescs.DEFAULT_NAME + String.valueOf(i10)).toCharArray());
                        z10 = true;
                        i10++;
                        break;
                    }
                }
            }
            z10 = false;
        } while (z10);
        return syntheticFieldBinding;
    }

    public SyntheticMethodBinding addSyntheticMethod(FieldBinding fieldBinding, boolean z10, boolean z11) {
        if (isPrototype()) {
            if (this.synthetics == null) {
                this.synthetics = new HashMap[3];
            }
            HashMap[] hashMapArr = this.synthetics;
            if (hashMapArr[0] == null) {
                hashMapArr[0] = new HashMap(5);
            }
            SyntheticMethodBinding[] syntheticMethodBindingArr = (SyntheticMethodBinding[]) this.synthetics[0].get(fieldBinding);
            if (syntheticMethodBindingArr == null) {
                SyntheticMethodBinding syntheticMethodBinding = new SyntheticMethodBinding(fieldBinding, z10, z11, this);
                SyntheticMethodBinding[] syntheticMethodBindingArr2 = new SyntheticMethodBinding[2];
                this.synthetics[0].put(fieldBinding, syntheticMethodBindingArr2);
                syntheticMethodBindingArr2[!z10 ? 1 : 0] = syntheticMethodBinding;
                return syntheticMethodBinding;
            }
            SyntheticMethodBinding syntheticMethodBinding2 = syntheticMethodBindingArr[!z10 ? 1 : 0];
            if (syntheticMethodBinding2 == null) {
                syntheticMethodBinding2 = new SyntheticMethodBinding(fieldBinding, z10, z11, this);
                syntheticMethodBindingArr[!z10 ? 1 : 0] = syntheticMethodBinding2;
            }
            return syntheticMethodBinding2;
        }
        throw new IllegalStateException();
    }

    public SyntheticMethodBinding addSyntheticMethodForEnumInitialization(int i10, int i11) {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        if (this.synthetics == null) {
            this.synthetics = new HashMap[3];
        }
        HashMap[] hashMapArr = this.synthetics;
        if (hashMapArr[0] == null) {
            hashMapArr[0] = new HashMap(5);
        }
        SyntheticMethodBinding syntheticMethodBinding = new SyntheticMethodBinding(this, i10, i11);
        SyntheticMethodBinding[] syntheticMethodBindingArr = new SyntheticMethodBinding[2];
        this.synthetics[0].put(syntheticMethodBinding.selector, syntheticMethodBindingArr);
        syntheticMethodBindingArr[0] = syntheticMethodBinding;
        return syntheticMethodBinding;
    }

    public SyntheticMethodBinding addSyntheticMethodForSwitchEnum(TypeBinding typeBinding, SwitchStatement switchStatement) {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        if (this.synthetics == null) {
            this.synthetics = new HashMap[3];
        }
        HashMap[] hashMapArr = this.synthetics;
        if (hashMapArr[0] == null) {
            hashMapArr[0] = new HashMap(5);
        }
        char[] concat = CharOperation.concat(TypeConstants.SYNTHETIC_SWITCH_ENUM_TABLE, typeBinding.constantPoolName());
        CharOperation.replace(concat, '/', '$');
        String str = new String(concat);
        SyntheticMethodBinding[] syntheticMethodBindingArr = (SyntheticMethodBinding[]) this.synthetics[0].get(str);
        if (syntheticMethodBindingArr == null) {
            SyntheticMethodBinding syntheticMethodBinding = new SyntheticMethodBinding(addSyntheticFieldForSwitchEnum(concat, str), this, typeBinding, concat, switchStatement);
            SyntheticMethodBinding[] syntheticMethodBindingArr2 = new SyntheticMethodBinding[2];
            this.synthetics[0].put(str, syntheticMethodBindingArr2);
            syntheticMethodBindingArr2[0] = syntheticMethodBinding;
            return syntheticMethodBinding;
        }
        SyntheticMethodBinding syntheticMethodBinding2 = syntheticMethodBindingArr[0];
        if (syntheticMethodBinding2 != null) {
            return syntheticMethodBinding2;
        }
        SyntheticMethodBinding syntheticMethodBinding3 = new SyntheticMethodBinding(addSyntheticFieldForSwitchEnum(concat, str), this, typeBinding, concat, switchStatement);
        syntheticMethodBindingArr[0] = syntheticMethodBinding3;
        return syntheticMethodBinding3;
    }

    public boolean areFieldsInitialized() {
        return !isPrototype() ? this.prototype.areFieldsInitialized() : this.fields != Binding.UNINITIALIZED_FIELDS;
    }

    public boolean areMethodsInitialized() {
        return !isPrototype() ? this.prototype.areMethodsInitialized() : this.methods != Binding.UNINITIALIZED_METHODS;
    }

    @Override
    public boolean canBeSeenBy(Scope scope) {
        if (TypeBinding.equalsEquals(scope.enclosingSourceType(), this)) {
            return true;
        }
        return this.environment.canTypeBeAccessed(this, scope) && super.canBeSeenBy(scope);
    }

    @Override
    public TypeBinding clone(TypeBinding typeBinding) {
        return new SourceTypeBinding(this);
    }

    @Override
    public char[] computeUniqueKey(boolean z10) {
        int lastIndexOf;
        if (!isPrototype()) {
            return this.prototype.computeUniqueKey();
        }
        char[] computeUniqueKey = super.computeUniqueKey(z10);
        if (computeUniqueKey.length != 2 && !Util.isClassFileName(this.fileName) && (lastIndexOf = CharOperation.lastIndexOf('.', this.fileName)) != -1) {
            char[] subarray = CharOperation.subarray(this.fileName, CharOperation.lastIndexOf('/', this.fileName) + 1, lastIndexOf);
            int lastIndexOf2 = CharOperation.lastIndexOf('/', computeUniqueKey) + 1;
            int i10 = lastIndexOf2 != 0 ? lastIndexOf2 : 1;
            int indexOf = isMemberType() ? CharOperation.indexOf('$', computeUniqueKey, i10) : -1;
            if (indexOf == -1) {
                indexOf = CharOperation.indexOf('<', computeUniqueKey, i10);
            }
            if (indexOf == -1) {
                indexOf = CharOperation.indexOf(';', computeUniqueKey, i10);
            }
            char[] subarray2 = CharOperation.subarray(computeUniqueKey, i10, indexOf);
            if (!CharOperation.equals(subarray2, subarray)) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(computeUniqueKey, 0, i10);
                stringBuffer.append(subarray);
                stringBuffer.append(JavaElement.JEM_METHOD);
                stringBuffer.append(subarray2);
                stringBuffer.append(computeUniqueKey, indexOf, computeUniqueKey.length - indexOf);
                int length = stringBuffer.length();
                char[] cArr = new char[length];
                stringBuffer.getChars(0, length, cArr, 0);
                return cArr;
            }
        }
        return computeUniqueKey;
    }

    @Override
    public ReferenceBinding containerAnnotationType() {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        ReferenceBinding referenceBinding = this.containerAnnotationType;
        if (referenceBinding instanceof UnresolvedReferenceBinding) {
            this.containerAnnotationType = (ReferenceBinding) BinaryTypeBinding.resolveType(referenceBinding, this.scope.environment(), false);
        }
        return this.containerAnnotationType;
    }

    public void evaluateNullAnnotations() {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        if (this.nullnessDefaultInitialized > 0 || !this.scope.compilerOptions().isAnnotationBasedNullAnalysisEnabled) {
            return;
        }
        if ((this.tagBits & TagBits.AnnotationNullMASK) != 0) {
            Annotation[] annotationArr = this.scope.referenceContext.annotations;
            for (int i10 = 0; i10 < annotationArr.length; i10++) {
                ReferenceBinding annotationType = annotationArr[i10].getCompilerAnnotation().getAnnotationType();
                if (annotationType != null && annotationType.hasNullBit(96)) {
                    this.scope.problemReporter().nullAnnotationUnsupportedLocation(annotationArr[i10]);
                    this.tagBits &= -108086391056891905L;
                }
            }
        }
        char[] cArr = this.sourceName;
        char[] cArr2 = TypeConstants.PACKAGE_INFO_NAME;
        boolean equals = CharOperation.equals(cArr, cArr2);
        PackageBinding packageBinding = getPackage();
        boolean z10 = packageBinding.compoundName == CharOperation.NO_CHAR_CHAR;
        if (!equals) {
            boolean isNullnessAnnotationPackage = this.scope.environment().isNullnessAnnotationPackage(packageBinding);
            if (packageBinding.getDefaultNullness() == 0 && !z10 && !isNullnessAnnotationPackage && !(this instanceof NestedTypeBinding)) {
                ReferenceBinding type = packageBinding.getType(cArr2, this.module);
                if (type == null) {
                    this.scope.problemReporter().missingNonNullByDefaultAnnotation(this.scope.referenceContext);
                    packageBinding.setDefaultNullness(2);
                } else if ((type instanceof SourceTypeBinding) && (type.tagBits & 512) == 0) {
                    CompilationUnitScope compilationUnitScope = ((SourceTypeBinding) type).scope.compilationUnitScope();
                    boolean z11 = compilationUnitScope.connectingHierarchy;
                    compilationUnitScope.connectingHierarchy = true;
                    try {
                        type.getAnnotationTagBits();
                    } finally {
                        compilationUnitScope.connectingHierarchy = z11;
                    }
                } else {
                    type.getAnnotationTagBits();
                }
            }
        }
        this.nullnessDefaultInitialized = 1;
        int i11 = this.defaultNullness;
        if (i11 != 0) {
            ClassScope classScope = this.scope;
            TypeDeclaration typeDeclaration = classScope.referenceContext;
            if (equals) {
                int defaultNullness = packageBinding.enclosingModule.getDefaultNullness();
                int i12 = this.defaultNullness;
                if (defaultNullness == i12) {
                    this.scope.problemReporter().nullDefaultAnnotationIsRedundant(typeDeclaration, typeDeclaration.annotations, packageBinding.enclosingModule);
                } else {
                    packageBinding.setDefaultNullness(i12);
                }
            } else {
                Binding checkRedundantDefaultNullness = classScope.parent.checkRedundantDefaultNullness(i11, typeDeclaration.declarationSourceStart);
                if (checkRedundantDefaultNullness != null) {
                    this.scope.problemReporter().nullDefaultAnnotationIsRedundant(typeDeclaration, typeDeclaration.annotations, checkRedundantDefaultNullness);
                }
            }
        } else if (equals || (z10 && !(this instanceof NestedTypeBinding))) {
            this.scope.problemReporter().missingNonNullByDefaultAnnotation(this.scope.referenceContext);
            if (!z10) {
                packageBinding.setDefaultNullness(2);
            }
        }
        maybeMarkTypeParametersNonNull();
    }

    public void faultInTypesForFieldsAndMethods() {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        checkAnnotationsInType();
        internalFaultInTypeForFieldsAndMethods();
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0095  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FieldBinding[] fields() {
        int i10;
        if (!isPrototype()) {
            long j10 = this.tagBits;
            if ((j10 & 8192) != 0) {
                return this.fields;
            }
            this.tagBits = j10 | 8192;
            FieldBinding[] fields = this.prototype.fields();
            this.fields = fields;
            return fields;
        }
        long j11 = this.tagBits;
        if ((j11 & 8192) != 0) {
            return this.fields;
        }
        FieldBinding[] fieldBindingArr = this.fields;
        int i11 = 0;
        if ((j11 & 4096) == 0) {
            try {
                int length = fieldBindingArr.length;
                if (length > 1) {
                    ReferenceBinding.sortFields(fieldBindingArr, 0, length);
                }
                this.tagBits |= 4096;
            } catch (Throwable th2) {
                th = th2;
                i10 = 0;
                if (i10 > 0) {
                }
                throw th;
            }
        }
        FieldBinding[] fieldBindingArr2 = this.fields;
        int length2 = fieldBindingArr2.length;
        i10 = 0;
        for (int i12 = 0; i12 < length2; i12++) {
            try {
                if (resolveTypeFor(fieldBindingArr2[i12]) == null) {
                    if (fieldBindingArr == fieldBindingArr2) {
                        fieldBindingArr = new FieldBinding[length2];
                        System.arraycopy(fieldBindingArr2, 0, fieldBindingArr, 0, length2);
                    }
                    fieldBindingArr[i12] = null;
                    i10++;
                }
            } catch (Throwable th3) {
                th = th3;
                if (i10 > 0) {
                    int length3 = fieldBindingArr.length - i10;
                    if (length3 == 0) {
                        return setFields(Binding.NO_FIELDS);
                    }
                    FieldBinding[] fieldBindingArr3 = new FieldBinding[length3];
                    int length4 = fieldBindingArr.length;
                    int i13 = 0;
                    while (i11 < length4) {
                        FieldBinding fieldBinding = fieldBindingArr[i11];
                        if (fieldBinding != null) {
                            fieldBindingArr3[i13] = fieldBinding;
                            i13++;
                        }
                        i11++;
                    }
                    setFields(fieldBindingArr3);
                }
                throw th;
            }
        }
        if (i10 > 0) {
            int length5 = fieldBindingArr.length - i10;
            if (length5 == 0) {
                return setFields(Binding.NO_FIELDS);
            }
            FieldBinding[] fieldBindingArr4 = new FieldBinding[length5];
            int length6 = fieldBindingArr.length;
            int i14 = 0;
            while (i11 < length6) {
                FieldBinding fieldBinding2 = fieldBindingArr[i11];
                if (fieldBinding2 != null) {
                    fieldBindingArr4[i14] = fieldBinding2;
                    i14++;
                }
                i11++;
            }
            setFields(fieldBindingArr4);
        }
        this.tagBits |= 8192;
        return this.fields;
    }

    public void generateSyntheticFinalFieldInitialization(CodeStream codeStream) {
        HashMap hashMap;
        MethodBinding[] methodBindingArr;
        MethodBinding methodBinding;
        HashMap[] hashMapArr = this.synthetics;
        if (hashMapArr == null || (hashMap = hashMapArr[1]) == null) {
            return;
        }
        for (FieldBinding fieldBinding : hashMap.values()) {
            if (CharOperation.prefixEquals(TypeConstants.SYNTHETIC_SWITCH_ENUM_TABLE, fieldBinding.name) && fieldBinding.isFinal() && (methodBindingArr = (MethodBinding[]) this.synthetics[0].get(new String(fieldBinding.name))) != null && (methodBinding = methodBindingArr[0]) != null) {
                codeStream.invoke(Opcodes.OPC_invokestatic, methodBinding, null);
                codeStream.fieldAccess(Opcodes.OPC_putstatic, fieldBinding, null);
            }
        }
    }

    public char[] genericSignature() {
        StringBuffer stringBuffer;
        if (!isPrototype()) {
            return this.prototype.genericSignature();
        }
        if (this.typeVariables != Binding.NO_TYPE_VARIABLES) {
            stringBuffer = new StringBuffer(10);
            stringBuffer.append('<');
            int length = this.typeVariables.length;
            for (int i10 = 0; i10 < length; i10++) {
                stringBuffer.append(this.typeVariables[i10].genericSignature());
            }
            stringBuffer.append('>');
        } else {
            ReferenceBinding referenceBinding = this.superclass;
            if (referenceBinding == null || !referenceBinding.isParameterizedType()) {
                int length2 = this.superInterfaces.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    if (!this.superInterfaces[i11].isParameterizedType()) {
                    }
                }
                return null;
            }
            stringBuffer = new StringBuffer(10);
        }
        StringBuffer stringBuffer2 = stringBuffer;
        ReferenceBinding referenceBinding2 = this.superclass;
        if (referenceBinding2 != null) {
            stringBuffer2.append(referenceBinding2.genericTypeSignature());
        } else {
            stringBuffer2.append(this.scope.getJavaLangObject().genericTypeSignature());
        }
        int length3 = this.superInterfaces.length;
        for (int i12 = 0; i12 < length3; i12++) {
            stringBuffer2.append(this.superInterfaces[i12].genericTypeSignature());
        }
        return stringBuffer2.toString().toCharArray();
    }

    @Override
    public char[] genericTypeSignature() {
        if (!isPrototype()) {
            return this.prototype.genericTypeSignature();
        }
        if (this.genericReferenceTypeSignature == null) {
            this.genericReferenceTypeSignature = computeGenericTypeSignature(this.typeVariables);
        }
        return this.genericReferenceTypeSignature;
    }

    @Override
    public long getAnnotationTagBits() {
        ClassScope classScope;
        if (!isPrototype()) {
            return this.prototype.getAnnotationTagBits();
        }
        if ((this.tagBits & 8589934592L) == 0 && (classScope = this.scope) != null) {
            TypeDeclaration typeDeclaration = classScope.referenceContext;
            MethodScope methodScope = typeDeclaration.staticInitializerScope;
            boolean z10 = methodScope.insideTypeAnnotation;
            try {
                methodScope.insideTypeAnnotation = true;
                ASTNode.resolveAnnotations(methodScope, typeDeclaration.annotations, this);
                typeDeclaration.staticInitializerScope.insideTypeAnnotation = z10;
                if ((this.tagBits & 70368744177664L) != 0) {
                    this.modifiers |= 1048576;
                }
            } catch (Throwable th2) {
                typeDeclaration.staticInitializerScope.insideTypeAnnotation = z10;
                throw th2;
            }
        }
        return this.tagBits;
    }

    public MethodBinding[] getDefaultAbstractMethods() {
        if (!isPrototype()) {
            return this.prototype.getDefaultAbstractMethods();
        }
        int length = this.methods.length;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            length--;
            if (length < 0) {
                break;
            }
            if (this.methods[length].isDefaultAbstract()) {
                i11++;
            }
        }
        if (i11 == 0) {
            return Binding.NO_METHODS;
        }
        MethodBinding[] methodBindingArr = new MethodBinding[i11];
        int length2 = this.methods.length;
        while (true) {
            length2--;
            if (length2 < 0) {
                return methodBindingArr;
            }
            if (this.methods[length2].isDefaultAbstract()) {
                methodBindingArr[i10] = this.methods[length2];
                i10++;
            }
        }
    }

    @Override
    public MethodBinding getExactConstructor(TypeBinding[] typeBindingArr) {
        if (!isPrototype()) {
            return this.prototype.getExactConstructor(typeBindingArr);
        }
        int length = typeBindingArr.length;
        long j10 = this.tagBits;
        if ((32768 & j10) != 0) {
            long binarySearch = ReferenceBinding.binarySearch(TypeConstants.INIT, this.methods);
            if (binarySearch < 0) {
                return null;
            }
            int i10 = (int) (binarySearch >> 32);
            for (int i11 = (int) binarySearch; i11 <= i10; i11++) {
                MethodBinding methodBinding = this.methods[i11];
                TypeBinding[] typeBindingArr2 = methodBinding.parameters;
                if (typeBindingArr2.length == length) {
                    for (int i12 = 0; i12 < length; i12++) {
                        if (TypeBinding.notEquals(typeBindingArr2[i12], typeBindingArr[i12])) {
                            break;
                        }
                    }
                    return methodBinding;
                }
            }
            return null;
        }
        if ((j10 & 16384) == 0) {
            MethodBinding[] methodBindingArr = this.methods;
            int length2 = methodBindingArr.length;
            if (length2 > 1) {
                ReferenceBinding.sortMethods(methodBindingArr, 0, length2);
            }
            this.tagBits |= 16384;
        }
        long binarySearch2 = ReferenceBinding.binarySearch(TypeConstants.INIT, this.methods);
        if (binarySearch2 < 0) {
            return null;
        }
        int i13 = (int) (binarySearch2 >> 32);
        for (int i14 = (int) binarySearch2; i14 <= i13; i14++) {
            MethodBinding methodBinding2 = this.methods[i14];
            if (resolveTypesFor(methodBinding2) == null || methodBinding2.returnType == null) {
                methods();
                return getExactConstructor(typeBindingArr);
            }
            TypeBinding[] typeBindingArr3 = methodBinding2.parameters;
            if (typeBindingArr3.length == length) {
                for (int i15 = 0; i15 < length; i15++) {
                    if (TypeBinding.notEquals(typeBindingArr3[i15], typeBindingArr[i15])) {
                        break;
                    }
                }
                return methodBinding2;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0117 A[ORIG_RETURN, RETURN] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MethodBinding getExactMethod(char[] cArr, TypeBinding[] typeBindingArr, CompilationUnitScope compilationUnitScope) {
        boolean z10;
        if (!isPrototype()) {
            return this.prototype.getExactMethod(cArr, typeBindingArr, compilationUnitScope);
        }
        int length = typeBindingArr.length;
        long j10 = this.tagBits;
        if ((32768 & j10) != 0) {
            long binarySearch = ReferenceBinding.binarySearch(cArr, this.methods);
            if (binarySearch >= 0) {
                int i10 = (int) binarySearch;
                int i11 = (int) (binarySearch >> 32);
                z10 = true;
                while (i10 <= i11) {
                    MethodBinding methodBinding = this.methods[i10];
                    TypeBinding[] typeBindingArr2 = methodBinding.parameters;
                    if (typeBindingArr2.length == length) {
                        for (int i12 = 0; i12 < length; i12++) {
                            if (TypeBinding.notEquals(typeBindingArr2[i12], typeBindingArr[i12])) {
                                break;
                            }
                        }
                        return methodBinding;
                    }
                    i10++;
                    z10 = false;
                }
                if (z10) {
                    return null;
                }
                if (isInterface()) {
                    ReferenceBinding[] referenceBindingArr = this.superInterfaces;
                    if (referenceBindingArr.length != 1) {
                        return null;
                    }
                    if (compilationUnitScope != null) {
                        compilationUnitScope.recordTypeReference(referenceBindingArr[0]);
                    }
                    return this.superInterfaces[0].getExactMethod(cArr, typeBindingArr, compilationUnitScope);
                }
                ReferenceBinding referenceBinding = this.superclass;
                if (referenceBinding == null) {
                    return null;
                }
                if (compilationUnitScope != null) {
                    compilationUnitScope.recordTypeReference(referenceBinding);
                }
                return this.superclass.getExactMethod(cArr, typeBindingArr, compilationUnitScope);
            }
        } else {
            if ((j10 & 16384) == 0) {
                MethodBinding[] methodBindingArr = this.methods;
                int length2 = methodBindingArr.length;
                if (length2 > 1) {
                    ReferenceBinding.sortMethods(methodBindingArr, 0, length2);
                }
                this.tagBits |= 16384;
            }
            long binarySearch2 = ReferenceBinding.binarySearch(cArr, this.methods);
            if (binarySearch2 >= 0) {
                int i13 = (int) binarySearch2;
                int i14 = (int) (binarySearch2 >> 32);
                for (int i15 = i13; i15 <= i14; i15++) {
                    MethodBinding methodBinding2 = this.methods[i15];
                    if (resolveTypesFor(methodBinding2) == null || methodBinding2.returnType == null) {
                        methods();
                        return getExactMethod(cArr, typeBindingArr, compilationUnitScope);
                    }
                }
                boolean z11 = this.scope.compilerOptions().sourceLevel >= ClassFileConstants.JDK1_5;
                for (int i16 = i13; i16 <= i14; i16++) {
                    MethodBinding methodBinding3 = this.methods[i16];
                    for (int i17 = i14; i17 > i16; i17--) {
                        MethodBinding methodBinding4 = this.methods[i17];
                        if (z11 ? methodBinding3.areParameterErasuresEqual(methodBinding4) : methodBinding3.areParametersEqual(methodBinding4)) {
                            methods();
                            return getExactMethod(cArr, typeBindingArr, compilationUnitScope);
                        }
                    }
                }
                while (i13 <= i14) {
                    MethodBinding methodBinding5 = this.methods[i13];
                    TypeBinding[] typeBindingArr3 = methodBinding5.parameters;
                    if (typeBindingArr3.length == length) {
                        for (int i18 = 0; i18 < length; i18++) {
                            if (TypeBinding.notEquals(typeBindingArr3[i18], typeBindingArr[i18])) {
                                break;
                            }
                        }
                        return methodBinding5;
                    }
                    i13++;
                }
            }
        }
        z10 = true;
        if (z10) {
        }
    }

    @Override
    public FieldBinding getField(char[] cArr, boolean z10) {
        if (!isPrototype()) {
            return this.prototype.getField(cArr, z10);
        }
        long j10 = this.tagBits;
        if ((8192 & j10) != 0) {
            return ReferenceBinding.binarySearch(cArr, this.fields);
        }
        long j11 = j10 & 4096;
        int i10 = 0;
        if (j11 == 0) {
            FieldBinding[] fieldBindingArr = this.fields;
            int length = fieldBindingArr.length;
            if (length > 1) {
                ReferenceBinding.sortFields(fieldBindingArr, 0, length);
            }
            this.tagBits = 4096 | this.tagBits;
        }
        FieldBinding binarySearch = ReferenceBinding.binarySearch(cArr, this.fields);
        if (binarySearch == null) {
            return null;
        }
        try {
            FieldBinding resolveTypeFor = resolveTypeFor(binarySearch);
            if (resolveTypeFor == null) {
                FieldBinding[] fieldBindingArr2 = this.fields;
                int length2 = fieldBindingArr2.length - 1;
                if (length2 == 0) {
                    setFields(Binding.NO_FIELDS);
                } else {
                    FieldBinding[] fieldBindingArr3 = new FieldBinding[length2];
                    int length3 = fieldBindingArr2.length;
                    int i11 = 0;
                    while (i10 < length3) {
                        FieldBinding fieldBinding = this.fields[i10];
                        if (fieldBinding != binarySearch) {
                            fieldBindingArr3[i11] = fieldBinding;
                            i11++;
                        }
                        i10++;
                    }
                    setFields(fieldBindingArr3);
                }
            }
            return resolveTypeFor;
        } catch (Throwable th2) {
            int length4 = this.fields.length - 1;
            if (length4 != 0) {
                FieldBinding[] fieldBindingArr4 = new FieldBinding[length4];
                int length5 = this.fields.length;
                int i12 = 0;
                while (i10 < length5) {
                    FieldBinding fieldBinding2 = this.fields[i10];
                    if (fieldBinding2 != binarySearch) {
                        fieldBindingArr4[i12] = fieldBinding2;
                        i12++;
                    }
                    i10++;
                }
                setFields(fieldBindingArr4);
            } else {
                setFields(Binding.NO_FIELDS);
            }
            throw th2;
        }
    }

    @Override
    public MethodBinding[] getMethods(char[] cArr) {
        if (!isPrototype()) {
            return this.prototype.getMethods(cArr);
        }
        long j10 = this.tagBits;
        if ((32768 & j10) != 0) {
            long binarySearch = ReferenceBinding.binarySearch(cArr, this.methods);
            if (binarySearch < 0) {
                return Binding.NO_METHODS;
            }
            int i10 = (int) binarySearch;
            int i11 = (((int) (binarySearch >> 32)) - i10) + 1;
            MethodBinding[] methodBindingArr = new MethodBinding[i11];
            System.arraycopy(this.methods, i10, methodBindingArr, 0, i11);
            return methodBindingArr;
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
        if (binarySearch2 < 0) {
            return Binding.NO_METHODS;
        }
        int i12 = (int) binarySearch2;
        int i13 = (int) (binarySearch2 >> 32);
        for (int i14 = i12; i14 <= i13; i14++) {
            MethodBinding methodBinding = this.methods[i14];
            if (resolveTypesFor(methodBinding) == null || methodBinding.returnType == null) {
                methods();
                return getMethods(cArr);
            }
        }
        int i15 = i13 - i12;
        int i16 = i15 + 1;
        MethodBinding[] methodBindingArr3 = new MethodBinding[i16];
        System.arraycopy(this.methods, i12, methodBindingArr3, 0, i16);
        boolean z10 = this.scope.compilerOptions().sourceLevel >= ClassFileConstants.JDK1_5;
        for (int i17 = 0; i17 < i15; i17++) {
            MethodBinding methodBinding2 = methodBindingArr3[i17];
            for (int i18 = i15; i18 > i17; i18--) {
                if (z10 ? methodBinding2.areParameterErasuresEqual(methodBindingArr3[i18]) : methodBinding2.areParametersEqual(methodBindingArr3[i18])) {
                    methods();
                    return getMethods(cArr);
                }
            }
        }
        return methodBindingArr3;
    }

    public SourceTypeBinding getNestHost() {
        return this.nestHost;
    }

    public List<String> getNestMembers() {
        HashSet<SourceTypeBinding> hashSet = this.nestMembers;
        if (hashSet == null) {
            return null;
        }
        return (List) hashSet.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$0;
                lambda$0 = SourceTypeBinding.lambda$0((SourceTypeBinding) obj);
                return lambda$0;
            }
        }).sorted().collect(Collectors.toList());
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0012, code lost:
    
        if (r0 != 1) goto L13;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getNullDefault() {
        if (!isPrototype()) {
            return this.prototype.getNullDefault();
        }
        int i10 = this.nullnessDefaultInitialized;
        if (i10 == 0) {
            getAnnotationTagBits();
        }
        getPackage().isViewedAsDeprecated();
        this.nullnessDefaultInitialized = 2;
        return this.defaultNullness;
    }

    public SyntheticMethodBinding getSyntheticBridgeMethod(MethodBinding methodBinding) {
        HashMap hashMap;
        SyntheticMethodBinding[] syntheticMethodBindingArr;
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        HashMap[] hashMapArr = this.synthetics;
        if (hashMapArr == null || (hashMap = hashMapArr[0]) == null || (syntheticMethodBindingArr = (SyntheticMethodBinding[]) hashMap.get(methodBinding)) == null) {
            return null;
        }
        return syntheticMethodBindingArr[1];
    }

    public FieldBinding getSyntheticField(LocalVariableBinding localVariableBinding) {
        HashMap hashMap;
        if (isPrototype()) {
            HashMap[] hashMapArr = this.synthetics;
            if (hashMapArr == null || (hashMap = hashMapArr[1]) == null) {
                return null;
            }
            return (FieldBinding) hashMap.get(localVariableBinding);
        }
        throw new IllegalStateException();
    }

    @Override
    public boolean hasMemberTypes() {
        return !isPrototype() ? this.prototype.hasMemberTypes() : this.memberTypes.length > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [org.eclipse.jdt.internal.compiler.lookup.MethodScope] */
    @Override
    public boolean hasNonNullDefaultFor(int i10, int i11) {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        ClassScope classScope = this.scope;
        if (classScope == null) {
            return (i10 & this.defaultNullness) != 0;
        }
        ?? r12 = classScope.referenceContext.initializerScope;
        if (r12 != 0) {
            classScope = r12;
        }
        return classScope.hasDefaultNullnessFor(i10, i11);
    }

    @Override
    public boolean hasTypeBit(int i10) {
        return !isPrototype() ? this.prototype.hasTypeBit(i10) : (i10 & this.typeBits) != 0;
    }

    @Override
    public void initializeDeprecatedAnnotationTagBits() {
        if (!isPrototype()) {
            this.prototype.initializeDeprecatedAnnotationTagBits();
            return;
        }
        if ((this.tagBits & 17179869184L) == 0) {
            TypeDeclaration typeDeclaration = this.scope.referenceContext;
            MethodScope methodScope = typeDeclaration.staticInitializerScope;
            boolean z10 = methodScope.insideTypeAnnotation;
            try {
                methodScope.insideTypeAnnotation = true;
                ASTNode.resolveDeprecatedAnnotations(methodScope, typeDeclaration.annotations, this);
                long j10 = this.tagBits | 17179869184L;
                this.tagBits = j10;
                typeDeclaration.staticInitializerScope.insideTypeAnnotation = z10;
                if ((j10 & 70368744177664L) != 0) {
                    this.modifiers |= 1048576;
                }
            } catch (Throwable th2) {
                typeDeclaration.staticInitializerScope.insideTypeAnnotation = z10;
                throw th2;
            }
        }
    }

    @Override
    public void initializeForStaticImports() {
        if (!isPrototype()) {
            this.prototype.initializeForStaticImports();
            return;
        }
        ClassScope classScope = this.scope;
        if (classScope == null) {
            return;
        }
        if (this.superInterfaces == null) {
            classScope.connectTypeHierarchy();
        }
        this.scope.buildFields();
        this.scope.buildMethods();
    }

    @Override
    public boolean isEquivalentTo(TypeBinding typeBinding) {
        ReferenceBinding enclosingType;
        if (!isPrototype()) {
            return this.prototype.isEquivalentTo(typeBinding);
        }
        if (TypeBinding.equalsEquals(this, typeBinding)) {
            return true;
        }
        if (typeBinding == null) {
            return false;
        }
        int kind = typeBinding.kind();
        if (kind != 260) {
            if (kind != 516) {
                if (kind == 1028) {
                    return TypeBinding.equalsEquals(typeBinding.erasure(), this);
                }
                if (kind != 8196) {
                    return false;
                }
            }
            return ((WildcardBinding) typeBinding).boundCheck(this);
        }
        if ((typeBinding.tagBits & TagBits.HasDirectWildcard) == 0 && (!isMemberType() || !typeBinding.isMemberType())) {
            return false;
        }
        ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) typeBinding;
        if (TypeBinding.notEquals(this, parameterizedTypeBinding.genericType())) {
            return false;
        }
        if (!isStatic() && (enclosingType = enclosingType()) != null) {
            ReferenceBinding enclosingType2 = parameterizedTypeBinding.enclosingType();
            if (enclosingType2 == null) {
                return false;
            }
            if ((TagBits.HasDirectWildcard & enclosingType2.tagBits) == 0) {
                if (TypeBinding.notEquals(enclosingType, enclosingType2)) {
                    return false;
                }
            } else if (!enclosingType.isEquivalentTo(parameterizedTypeBinding.enclosingType())) {
                return false;
            }
        }
        TypeVariableBinding[] typeVariableBindingArr = this.typeVariables;
        int length = typeVariableBindingArr == null ? 0 : typeVariableBindingArr.length;
        TypeBinding[] typeBindingArr = parameterizedTypeBinding.arguments;
        if ((typeBindingArr == null ? 0 : typeBindingArr.length) != length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (!this.typeVariables[i10].isTypeArgumentContainedBy(typeBindingArr[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean isGenericType() {
        return !isPrototype() ? this.prototype.isGenericType() : this.typeVariables != Binding.NO_TYPE_VARIABLES;
    }

    @Override
    public boolean isHierarchyConnected() {
        return !isPrototype() ? this.prototype.isHierarchyConnected() : (this.tagBits & 512) != 0;
    }

    public boolean isNestmateOf(SourceTypeBinding sourceTypeBinding) {
        CompilerOptions compilerOptions = this.scope.compilerOptions();
        if (compilerOptions.targetJDK < ClassFileConstants.JDK11 || compilerOptions.complianceLevel < ClassFileConstants.JDK11) {
            return false;
        }
        SourceTypeBinding nestHost = sourceTypeBinding.getNestHost();
        if (TypeBinding.equalsEquals(this, sourceTypeBinding)) {
            return true;
        }
        SourceTypeBinding sourceTypeBinding2 = this.nestHost;
        if (sourceTypeBinding2 == null) {
            sourceTypeBinding2 = this;
        }
        if (nestHost != null) {
            sourceTypeBinding = nestHost;
        }
        return TypeBinding.equalsEquals(sourceTypeBinding2, sourceTypeBinding);
    }

    public boolean isPrototype() {
        return this == this.prototype;
    }

    @Override
    public boolean isRepeatableAnnotationType() {
        if (isPrototype()) {
            return this.containerAnnotationType != null;
        }
        throw new IllegalStateException();
    }

    @Override
    public boolean isTaggedRepeatable() {
        return (this.tagBits & 1152921504606846976L) != 0;
    }

    @Override
    public int kind() {
        return !isPrototype() ? this.prototype.kind() : this.typeVariables != Binding.NO_TYPE_VARIABLES ? 2052 : 4;
    }

    @Override
    public ReferenceBinding[] memberTypes() {
        if (!isPrototype()) {
            if ((this.tagBits & TagBits.HasUnresolvedMemberTypes) == 0) {
                return this.memberTypes;
            }
            ReferenceBinding[] memberTypes = this.prototype.memberTypes();
            this.memberTypes = memberTypes;
            int length = memberTypes == null ? 0 : memberTypes.length;
            this.memberTypes = new ReferenceBinding[length];
            for (int i10 = 0; i10 < length; i10++) {
                this.memberTypes[i10] = this.environment.createMemberType(memberTypes[i10], this);
            }
            this.tagBits &= -268435457;
        }
        return this.memberTypes;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x007b, code lost:
    
        r9 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x007e, code lost:
    
        r12 = r23.methods.length;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0081, code lost:
    
        r13 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0082, code lost:
    
        if (r13 < r12) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x00bb, code lost:
    
        r14 = r8[r13];
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x00bd, code lost:
    
        if (r14 != null) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0100, code lost:
    
        r13 = r13 + 1;
        r2 = 0;
        r4 = 32768;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x00c0, code lost:
    
        r15 = r14.selector;
        r3 = r6;
        r17 = r11;
        r2 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x00c9, code lost:
    
        if (r2 < r12) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x00cc, code lost:
    
        r4 = r8[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x00ce, code lost:
    
        if (r4 != null) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x00d0, code lost:
    
        r20 = r0;
        r22 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01ff, code lost:
    
        r3 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x02aa, code lost:
    
        r2 = r2 + 1;
        r0 = r20;
        r6 = 1;
        r7 = 0;
        r11 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x00dc, code lost:
    
        if (org.eclipse.jdt.core.compiler.CharOperation.equals(r15, r4.selector) != false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0109, code lost:
    
        if (r0 == 0) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x010f, code lost:
    
        if (r14.areParameterErasuresEqual(r4) == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0111, code lost:
    
        if (r9 == 0) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0113, code lost:
    
        r5 = r14.returnType;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0115, code lost:
    
        if (r5 == null) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0119, code lost:
    
        if (r4.returnType == null) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0129, code lost:
    
        if (org.eclipse.jdt.internal.compiler.lookup.TypeBinding.notEquals(r5.erasure(), r4.returnType.erasure()) == false) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x012b, code lost:
    
        r5 = r14.parameters;
        r7 = r4.parameters;
        r11 = r5.length;
        r6 = r14.typeVariables;
        r20 = r0;
        r0 = r4.typeVariables;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0136, code lost:
    
        if (r6 != r0) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0138, code lost:
    
        r21 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x013d, code lost:
    
        if (r21 != false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x013f, code lost:
    
        r22 = r3;
        r3 = r14.computeSubstitutedMethod(r4, r23.scope.environment());
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x014b, code lost:
    
        if (r3 == null) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x014d, code lost:
    
        r21 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x015b, code lost:
    
        if (r14.areParametersEqual(r3) == false) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x015d, code lost:
    
        if (r21 != false) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0203, code lost:
    
        r3 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0209, code lost:
    
        if (isEnum() == false) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0211, code lost:
    
        if (org.eclipse.jdt.core.compiler.CharOperation.equals(r15, org.eclipse.jdt.internal.compiler.lookup.TypeConstants.VALUEOF) != false) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0219, code lost:
    
        if (org.eclipse.jdt.core.compiler.CharOperation.equals(r15, org.eclipse.jdt.internal.compiler.lookup.TypeConstants.VALUES) == false) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x021b, code lost:
    
        r5 = 1;
        r19 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0222, code lost:
    
        if (r3 != r5) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x0224, code lost:
    
        r0 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0227, code lost:
    
        if (r17 != null) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0229, code lost:
    
        r6 = r14.sourceMethod();
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x022d, code lost:
    
        if (r6 == null) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0231, code lost:
    
        if (r6.binding == null) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0235, code lost:
    
        if (r14.returnType != null) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0239, code lost:
    
        if (r4.returnType == null) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x023b, code lost:
    
        r7 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x023e, code lost:
    
        if (r19 == false) goto L175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x0240, code lost:
    
        r23.scope.problemReporter().duplicateEnumSpecialMethod(r23, r6);
        r7 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0258, code lost:
    
        if (r7 == 0) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x025a, code lost:
    
        r6.binding = null;
        r0 = r23.methods;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x025f, code lost:
    
        if (r8 != r0) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0261, code lost:
    
        r8 = new org.eclipse.jdt.internal.compiler.lookup.MethodBinding[r12];
        java.lang.System.arraycopy(r0, 0, r8, 0, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0267, code lost:
    
        r8[r13] = null;
        r10 = r10 + 1;
        r17 = r6;
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x024b, code lost:
    
        r23.scope.problemReporter().duplicateMethodInType(r6, r14.areParametersEqual(r4), r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x023d, code lost:
    
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0270, code lost:
    
        r17 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0272, code lost:
    
        r5 = r4.sourceMethod();
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0276, code lost:
    
        if (r5 == null) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x027a, code lost:
    
        if (r5.binding == null) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x027c, code lost:
    
        if (r19 == false) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x027e, code lost:
    
        r23.scope.problemReporter().duplicateEnumSpecialMethod(r23, r5);
        r0 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0296, code lost:
    
        if (r0 == 0) goto L275;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0298, code lost:
    
        r5.binding = null;
        r0 = r23.methods;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x029d, code lost:
    
        if (r8 != r0) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x029f, code lost:
    
        r8 = new org.eclipse.jdt.internal.compiler.lookup.MethodBinding[r12];
        java.lang.System.arraycopy(r0, 0, r8, 0, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x02a5, code lost:
    
        r8[r2] = null;
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x0289, code lost:
    
        r23.scope.problemReporter().duplicateMethodInType(r5, r14.areParametersEqual(r4), r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x0226, code lost:
    
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x021f, code lost:
    
        r5 = 1;
        r19 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x015f, code lost:
    
        r3 = org.eclipse.jdt.internal.compiler.lookup.Binding.NO_TYPE_VARIABLES;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x0161, code lost:
    
        if (r6 == r3) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x0163, code lost:
    
        if (r0 == r3) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x0165, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x0168, code lost:
    
        if (r11 <= 0) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x016a, code lost:
    
        r0 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x016b, code lost:
    
        r0 = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x016d, code lost:
    
        if (r0 >= 0) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x017c, code lost:
    
        if (org.eclipse.jdt.internal.compiler.lookup.TypeBinding.notEquals(r5[r0], r7[r0].erasure()) == false) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x0182, code lost:
    
        if ((r5[r0] instanceof org.eclipse.jdt.internal.compiler.lookup.RawTypeBinding) == false) goto L277;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x0196, code lost:
    
        if (org.eclipse.jdt.internal.compiler.lookup.TypeBinding.notEquals(r7[r0].erasure(), ((org.eclipse.jdt.internal.compiler.lookup.RawTypeBinding) r5[r0]).actualType()) == false) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x01b6, code lost:
    
        if (r0 < 0) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x01b8, code lost:
    
        if (r0 >= r11) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x01ba, code lost:
    
        r11 = r11 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x01bc, code lost:
    
        if (r11 >= 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x01cb, code lost:
    
        if (org.eclipse.jdt.internal.compiler.lookup.TypeBinding.notEquals(r5[r11].erasure(), r7[r11]) == false) goto L291;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x01d1, code lost:
    
        if ((r7[r11] instanceof org.eclipse.jdt.internal.compiler.lookup.RawTypeBinding) == false) goto L288;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x01e5, code lost:
    
        if (org.eclipse.jdt.internal.compiler.lookup.TypeBinding.notEquals(r5[r11].erasure(), ((org.eclipse.jdt.internal.compiler.lookup.RawTypeBinding) r7[r11]).actualType()) == false) goto L292;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x01e7, code lost:
    
        r0 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x01e8, code lost:
    
        if (r0 < 0) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x01a1, code lost:
    
        if (org.eclipse.jdt.internal.compiler.lookup.TypeBinding.equalsEquals(r5[r0], r7[r0]) == false) goto L283;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x01a3, code lost:
    
        r3 = r5[r0].leafComponentType();
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x01ab, code lost:
    
        if ((r3 instanceof org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding) == false) goto L284;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x01b3, code lost:
    
        if (r3.typeVariables() == org.eclipse.jdt.internal.compiler.lookup.Binding.NO_TYPE_VARIABLES) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x01b5, code lost:
    
        r0 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x01ec, code lost:
    
        if (r11 == 0) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x0156, code lost:
    
        r3 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x0154, code lost:
    
        r22 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x013b, code lost:
    
        r21 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x01f0, code lost:
    
        r20 = r0;
        r22 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x01f5, code lost:
    
        r20 = r0;
        r22 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x01fd, code lost:
    
        if (r14.areParametersEqual(r4) != false) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x00e0, code lost:
    
        if (r14.returnType != null) goto L268;
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x00e4, code lost:
    
        if (r8[r13] == null) goto L269;
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x00e6, code lost:
    
        r2 = r14.sourceMethod();
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x00ea, code lost:
    
        if (r2 == null) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x00ec, code lost:
    
        r2.binding = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x00f3, code lost:
    
        r2 = r23.methods;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x00f5, code lost:
    
        if (r8 != r2) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x00f7, code lost:
    
        r8 = new org.eclipse.jdt.internal.compiler.lookup.MethodBinding[r12];
        java.lang.System.arraycopy(r2, r7, r8, r7, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x00fc, code lost:
    
        r8[r13] = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x00fe, code lost:
    
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x00ef, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x00f0, code lost:
    
        r3 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x0089, code lost:
    
        if ((r23.tagBits & r4) == r2) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x008d, code lost:
    
        return r23.methods;
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x008e, code lost:
    
        if (r10 <= 0) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x0090, code lost:
    
        r0 = r8.length - r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x0092, code lost:
    
        if (r0 != 0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x0094, code lost:
    
        setMethods(org.eclipse.jdt.internal.compiler.lookup.Binding.NO_METHODS);
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x009a, code lost:
    
        r0 = new org.eclipse.jdt.internal.compiler.lookup.MethodBinding[r0];
        r2 = r8.length;
        r3 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x009e, code lost:
    
        if (r7 < r2) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x00a4, code lost:
    
        r6 = r8[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x00a6, code lost:
    
        if (r6 == null) goto L295;
     */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x00a8, code lost:
    
        r0[r3] = r6;
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x00ad, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x00a0, code lost:
    
        setMethods(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x00b0, code lost:
    
        addDefaultAbstractMethods();
        r23.tagBits |= r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x00ba, code lost:
    
        return r23.methods;
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x007d, code lost:
    
        r9 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x006b, code lost:
    
        r0 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0067, code lost:
    
        if (r23.scope.compilerOptions().sourceLevel < org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants.JDK1_5) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0069, code lost:
    
        r0 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0079, code lost:
    
        if (r23.scope.compilerOptions().complianceLevel != org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants.JDK1_6) goto L35;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MethodBinding[] methods() {
        int i10;
        int i11;
        int length;
        int i12;
        long j10 = 0;
        long j11 = 32768;
        if (!isPrototype()) {
            long j12 = this.tagBits;
            if ((j12 & 32768) != 0) {
                return this.methods;
            }
            this.tagBits = j12 | 32768;
            MethodBinding[] methods = this.prototype.methods();
            this.methods = methods;
            return methods;
        }
        if ((this.tagBits & 32768) != 0) {
            return this.methods;
        }
        if (!areMethodsInitialized()) {
            this.scope.buildMethods();
        }
        int i13 = 1;
        int i14 = 0;
        if ((this.tagBits & 16384) == 0) {
            MethodBinding[] methodBindingArr = this.methods;
            int length2 = methodBindingArr.length;
            if (length2 > 1) {
                ReferenceBinding.sortMethods(methodBindingArr, 0, length2);
            }
            this.tagBits = 16384 | this.tagBits;
        }
        MethodBinding[] methodBindingArr2 = this.methods;
        try {
            length = methodBindingArr2.length;
            i12 = 0;
            i11 = 0;
        } catch (Throwable th2) {
            th = th2;
            i10 = 0;
            i11 = 0;
        }
        while (true) {
            MethodBinding methodBinding = null;
            if (i12 >= length) {
                break;
            }
            try {
                long j13 = this.tagBits;
                if ((j13 & 32768) != 0) {
                    MethodBinding[] methodBindingArr3 = this.methods;
                    if ((j13 & 32768) != 0) {
                        return methodBindingArr3;
                    }
                    if (i11 > 0) {
                        int length3 = methodBindingArr2.length - i11;
                        if (length3 == 0) {
                            setMethods(Binding.NO_METHODS);
                        } else {
                            MethodBinding[] methodBindingArr4 = new MethodBinding[length3];
                            int i15 = 0;
                            for (MethodBinding methodBinding2 : methodBindingArr2) {
                                if (methodBinding2 != null) {
                                    methodBindingArr4[i15] = methodBinding2;
                                    i15++;
                                }
                            }
                            setMethods(methodBindingArr4);
                        }
                    }
                    addDefaultAbstractMethods();
                    this.tagBits |= 32768;
                    return methodBindingArr3;
                }
                if (resolveTypesFor(this.methods[i12]) == null) {
                    MethodBinding[] methodBindingArr5 = this.methods;
                    if (methodBindingArr2 == methodBindingArr5) {
                        methodBindingArr2 = new MethodBinding[length];
                        i10 = 0;
                        try {
                            System.arraycopy(methodBindingArr5, 0, methodBindingArr2, 0, length);
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } else {
                        i10 = 0;
                    }
                    methodBindingArr2[i12] = null;
                    i11++;
                } else {
                    i10 = 0;
                }
                i12++;
                i14 = i10;
                j10 = 0;
                j11 = 32768;
                i13 = 1;
            } catch (Throwable th4) {
                th = th4;
                i10 = 0;
            }
            if ((this.tagBits & 32768) != 0) {
                return this.methods;
            }
            if (i11 > 0) {
                int length4 = methodBindingArr2.length - i11;
                if (length4 != 0) {
                    MethodBinding[] methodBindingArr6 = new MethodBinding[length4];
                    int length5 = methodBindingArr2.length;
                    for (int i16 = i10; i16 < length5; i16++) {
                        MethodBinding methodBinding3 = methodBindingArr2[i16];
                        if (methodBinding3 != null) {
                            methodBindingArr6[i10] = methodBinding3;
                            i10++;
                        }
                    }
                    setMethods(methodBindingArr6);
                } else {
                    setMethods(Binding.NO_METHODS);
                }
            }
            addDefaultAbstractMethods();
            this.tagBits |= 32768;
            throw th;
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

    public FieldBinding resolveTypeFor(FieldBinding fieldBinding) {
        TypeReference typeReference;
        if (!isPrototype()) {
            return this.prototype.resolveTypeFor(fieldBinding);
        }
        if ((fieldBinding.modifiers & 33554432) == 0) {
            return fieldBinding;
        }
        long j10 = this.scope.compilerOptions().sourceLevel;
        if (j10 >= ClassFileConstants.JDK1_5 && (fieldBinding.getAnnotationTagBits() & 70368744177664L) != 0) {
            fieldBinding.modifiers |= 1048576;
        }
        if (isViewedAsDeprecated() && !fieldBinding.isDeprecated()) {
            fieldBinding.modifiers |= 2097152;
            fieldBinding.tagBits |= this.tagBits & 4611686018427387904L;
        }
        if (hasRestrictedAccess()) {
            fieldBinding.modifiers |= 262144;
        }
        FieldDeclaration[] fieldDeclarationArr = this.scope.referenceContext.fields;
        int length = fieldDeclarationArr == null ? 0 : fieldDeclarationArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (fieldDeclarationArr[i10].binding == fieldBinding) {
                MethodScope methodScope = fieldBinding.isStatic() ? this.scope.referenceContext.staticInitializerScope : this.scope.referenceContext.initializerScope;
                FieldBinding fieldBinding2 = methodScope.initializedField;
                try {
                    methodScope.initializedField = fieldBinding;
                    FieldDeclaration fieldDeclaration = fieldDeclarationArr[i10];
                    TypeBinding convertToRawType = fieldDeclaration.getKind() == 3 ? methodScope.environment().convertToRawType(this, false) : fieldDeclaration.type.resolveType((BlockScope) methodScope, true);
                    fieldBinding.type = convertToRawType;
                    fieldBinding.modifiers &= -33554433;
                    if (convertToRawType == null) {
                        fieldDeclaration.binding = null;
                        methodScope.initializedField = fieldBinding2;
                        return null;
                    }
                    VoidTypeBinding voidTypeBinding = TypeBinding.VOID;
                    if (convertToRawType == voidTypeBinding) {
                        this.scope.problemReporter().variableTypeCannotBeVoid(fieldDeclaration);
                        fieldDeclaration.binding = null;
                        methodScope.initializedField = fieldBinding2;
                        return null;
                    }
                    if (convertToRawType.isArrayType() && ((ArrayBinding) convertToRawType).leafComponentType == voidTypeBinding) {
                        this.scope.problemReporter().variableTypeCannotBeVoidArray(fieldDeclaration);
                        fieldDeclaration.binding = null;
                        methodScope.initializedField = fieldBinding2;
                        return null;
                    }
                    if ((convertToRawType.tagBits & 128) != 0) {
                        fieldBinding.tagBits |= 128;
                    }
                    TypeBinding leafComponentType = convertToRawType.leafComponentType();
                    if ((leafComponentType instanceof ReferenceBinding) && (((ReferenceBinding) leafComponentType).modifiers & 1073741824) != 0) {
                        fieldBinding.modifiers |= 1073741824;
                    }
                    if (j10 >= ClassFileConstants.JDK1_8) {
                        Annotation[] annotationArr = fieldDeclaration.annotations;
                        if (annotationArr != null && annotationArr.length != 0) {
                            ASTNode.copySE8AnnotationsToType(methodScope, fieldBinding, annotationArr, fieldDeclaration.getKind() == 3);
                        }
                        Annotation.isTypeUseCompatible(fieldDeclaration.type, this.scope, annotationArr);
                    }
                    if (this.environment.globalOptions.isAnnotationBasedNullAnalysisEnabled) {
                        if (fieldDeclaration.getKind() == 3) {
                            fieldBinding.tagBits |= 72057594037927936L;
                        } else {
                            if (hasNonNullDefaultFor(32, fieldDeclaration.sourceStart)) {
                                fieldBinding.fillInDefaultNonNullness(fieldDeclaration, methodScope);
                            }
                            if (!this.scope.validateNullAnnotation(fieldBinding.tagBits, fieldDeclaration.type, fieldDeclaration.annotations)) {
                                fieldBinding.tagBits &= -108086391056891905L;
                            }
                        }
                    }
                    if (methodScope.shouldCheckAPILeaks(this, fieldBinding.isPublic()) && (typeReference = fieldDeclaration.type) != null) {
                        methodScope.detectAPILeaks(typeReference, convertToRawType);
                    }
                    methodScope.initializedField = fieldBinding2;
                    ExternalAnnotationProvider externalAnnotationProvider = this.externalAnnotationProvider;
                    if (externalAnnotationProvider != null) {
                        ExternalAnnotationSuperimposer.annotateFieldBinding(fieldBinding, externalAnnotationProvider, this.environment);
                    }
                    return fieldBinding;
                } catch (Throwable th2) {
                    methodScope.initializedField = fieldBinding2;
                    throw th2;
                }
            }
        }
        return null;
    }

    public MethodBinding resolveTypesFor(MethodBinding methodBinding) {
        ProblemReporter problemReporter = this.scope.problemReporter();
        IErrorHandlingPolicy suspendTempErrorHandlingPolicy = problemReporter.suspendTempErrorHandlingPolicy();
        try {
            return resolveTypesWithSuspendedTempErrorHandlingPolicy(methodBinding);
        } finally {
            problemReporter.resumeTempErrorHandlingPolicy(suspendTempErrorHandlingPolicy);
        }
    }

    @Override
    public AnnotationHolder retrieveAnnotationHolder(Binding binding, boolean z10) {
        if (!isPrototype()) {
            return this.prototype.retrieveAnnotationHolder(binding, z10);
        }
        if (z10) {
            binding.getAnnotationTagBits();
        }
        return super.retrieveAnnotationHolder(binding, false);
    }

    @Override
    public void setContainerAnnotationType(ReferenceBinding referenceBinding) {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        this.containerAnnotationType = referenceBinding;
    }

    public FieldBinding[] setFields(FieldBinding[] fieldBindingArr) {
        if (!isPrototype()) {
            return this.prototype.setFields(fieldBindingArr);
        }
        if ((this.tagBits & 8388608) != 0) {
            TypeBinding[] annotatedTypes = this.scope.environment().getAnnotatedTypes(this);
            int length = annotatedTypes == null ? 0 : annotatedTypes.length;
            for (int i10 = 0; i10 < length; i10++) {
                ((SourceTypeBinding) annotatedTypes[i10]).fields = fieldBindingArr;
            }
        }
        this.fields = fieldBindingArr;
        return fieldBindingArr;
    }

    public ReferenceBinding[] setMemberTypes(ReferenceBinding[] referenceBindingArr) {
        if (!isPrototype()) {
            return this.prototype.setMemberTypes(referenceBindingArr);
        }
        this.memberTypes = referenceBindingArr;
        if ((this.tagBits & 8388608) != 0) {
            TypeBinding[] annotatedTypes = this.scope.environment().getAnnotatedTypes(this);
            int length = annotatedTypes == null ? 0 : annotatedTypes.length;
            for (int i10 = 0; i10 < length; i10++) {
                SourceTypeBinding sourceTypeBinding = (SourceTypeBinding) annotatedTypes[i10];
                sourceTypeBinding.tagBits |= TagBits.HasUnresolvedMemberTypes;
                sourceTypeBinding.memberTypes();
            }
        }
        return this.memberTypes;
    }

    public MethodBinding[] setMethods(MethodBinding[] methodBindingArr) {
        if (!isPrototype()) {
            return this.prototype.setMethods(methodBindingArr);
        }
        if ((this.tagBits & 8388608) != 0) {
            TypeBinding[] annotatedTypes = this.scope.environment().getAnnotatedTypes(this);
            int length = annotatedTypes == null ? 0 : annotatedTypes.length;
            for (int i10 = 0; i10 < length; i10++) {
                ((SourceTypeBinding) annotatedTypes[i10]).methods = methodBindingArr;
            }
        }
        this.methods = methodBindingArr;
        return methodBindingArr;
    }

    public void setNestHost(SourceTypeBinding sourceTypeBinding) {
        this.nestHost = sourceTypeBinding;
    }

    public ReferenceBinding setSuperClass(ReferenceBinding referenceBinding) {
        if (!isPrototype()) {
            return this.prototype.setSuperClass(referenceBinding);
        }
        if ((this.tagBits & 8388608) != 0) {
            TypeBinding[] annotatedTypes = this.scope.environment().getAnnotatedTypes(this);
            int length = annotatedTypes == null ? 0 : annotatedTypes.length;
            for (int i10 = 0; i10 < length; i10++) {
                ((SourceTypeBinding) annotatedTypes[i10]).superclass = referenceBinding;
            }
        }
        this.superclass = referenceBinding;
        return referenceBinding;
    }

    public ReferenceBinding[] setSuperInterfaces(ReferenceBinding[] referenceBindingArr) {
        if (!isPrototype()) {
            return this.prototype.setSuperInterfaces(referenceBindingArr);
        }
        if ((this.tagBits & 8388608) != 0) {
            TypeBinding[] annotatedTypes = this.scope.environment().getAnnotatedTypes(this);
            int length = annotatedTypes == null ? 0 : annotatedTypes.length;
            for (int i10 = 0; i10 < length; i10++) {
                ((SourceTypeBinding) annotatedTypes[i10]).superInterfaces = referenceBindingArr;
            }
        }
        this.superInterfaces = referenceBindingArr;
        return referenceBindingArr;
    }

    public TypeVariableBinding[] setTypeVariables(TypeVariableBinding[] typeVariableBindingArr) {
        if (!isPrototype()) {
            return this.prototype.setTypeVariables(typeVariableBindingArr);
        }
        if ((this.tagBits & 8388608) != 0) {
            TypeBinding[] annotatedTypes = this.scope.environment().getAnnotatedTypes(this);
            int length = annotatedTypes == null ? 0 : annotatedTypes.length;
            for (int i10 = 0; i10 < length; i10++) {
                ((SourceTypeBinding) annotatedTypes[i10]).typeVariables = typeVariableBindingArr;
            }
        }
        this.typeVariables = typeVariableBindingArr;
        return typeVariableBindingArr;
    }

    public final int sourceEnd() {
        return !isPrototype() ? this.prototype.sourceEnd() : this.scope.referenceContext.sourceEnd;
    }

    public final int sourceStart() {
        return !isPrototype() ? this.prototype.sourceStart() : this.scope.referenceContext.sourceStart;
    }

    @Override
    public SimpleLookupTable storedAnnotations(boolean z10, boolean z11) {
        ClassScope classScope;
        if (!isPrototype()) {
            return this.prototype.storedAnnotations(z10, z11);
        }
        if (z10 && this.storedAnnotations == null && (classScope = this.scope) != null) {
            classScope.referenceCompilationUnit().compilationResult.hasAnnotations = true;
            if (!this.scope.environment().globalOptions.storeAnnotations && !z11) {
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
        ReferenceBinding[] referenceBindingArr = this.superInterfaces;
        if (referenceBindingArr != null) {
            return referenceBindingArr;
        }
        if (!isAnnotationType()) {
            return null;
        }
        ReferenceBinding[] referenceBindingArr2 = {this.scope.getJavaLangAnnotationAnnotation()};
        this.superInterfaces = referenceBindingArr2;
        return referenceBindingArr2;
    }

    @Override
    public ReferenceBinding superclass() {
        if (isPrototype()) {
            return this.superclass;
        }
        ReferenceBinding superclass = this.prototype.superclass();
        this.superclass = superclass;
        return superclass;
    }

    public FieldBinding[] syntheticFields() {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        HashMap[] hashMapArr = this.synthetics;
        if (hashMapArr == null) {
            return null;
        }
        HashMap hashMap = hashMapArr[1];
        int size = hashMap == null ? 0 : hashMap.size();
        HashMap hashMap2 = this.synthetics[2];
        int size2 = hashMap2 == null ? 0 : hashMap2.size();
        int i10 = size + size2;
        if (i10 == 0) {
            return null;
        }
        FieldBinding[] fieldBindingArr = new FieldBinding[i10];
        HashMap hashMap3 = this.synthetics[1];
        if (hashMap3 != null) {
            Iterator it = hashMap3.values().iterator();
            for (int i11 = 0; i11 < size; i11++) {
                SyntheticFieldBinding syntheticFieldBinding = (SyntheticFieldBinding) it.next();
                fieldBindingArr[syntheticFieldBinding.index] = syntheticFieldBinding;
            }
        }
        HashMap hashMap4 = this.synthetics[2];
        if (hashMap4 != null) {
            Iterator it2 = hashMap4.values().iterator();
            for (int i12 = 0; i12 < size2; i12++) {
                SyntheticFieldBinding syntheticFieldBinding2 = (SyntheticFieldBinding) it2.next();
                fieldBindingArr[syntheticFieldBinding2.index + size] = syntheticFieldBinding2;
            }
        }
        return fieldBindingArr;
    }

    public SyntheticMethodBinding[] syntheticMethods() {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        HashMap[] hashMapArr = this.synthetics;
        if (hashMapArr == null) {
            return null;
        }
        HashMap hashMap = hashMapArr[0];
        if (hashMap == null || hashMap.size() == 0) {
            return null;
        }
        SyntheticMethodBinding[] syntheticMethodBindingArr = new SyntheticMethodBinding[1];
        int i10 = 0;
        for (SyntheticMethodBinding[] syntheticMethodBindingArr2 : this.synthetics[0].values()) {
            int length = syntheticMethodBindingArr2.length;
            for (int i11 = 0; i11 < length; i11++) {
                if (syntheticMethodBindingArr2[i11] != null) {
                    int i12 = i10 + 1;
                    if (i12 > syntheticMethodBindingArr.length) {
                        SyntheticMethodBinding[] syntheticMethodBindingArr3 = new SyntheticMethodBinding[i12];
                        System.arraycopy(syntheticMethodBindingArr, 0, syntheticMethodBindingArr3, 0, i10);
                        syntheticMethodBindingArr = syntheticMethodBindingArr3;
                    }
                    syntheticMethodBindingArr[i10] = syntheticMethodBindingArr2[i11];
                    i10 = i12;
                }
            }
        }
        SyntheticMethodBinding[] syntheticMethodBindingArr4 = new SyntheticMethodBinding[syntheticMethodBindingArr.length];
        for (SyntheticMethodBinding syntheticMethodBinding : syntheticMethodBindingArr) {
            syntheticMethodBindingArr4[syntheticMethodBinding.index] = syntheticMethodBinding;
        }
        return syntheticMethodBindingArr4;
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

    public void tagIndirectlyAccessibleMembers() {
        if (!isPrototype()) {
            this.prototype.tagIndirectlyAccessibleMembers();
            return;
        }
        int i10 = 0;
        int i11 = 0;
        while (true) {
            FieldBinding[] fieldBindingArr = this.fields;
            if (i11 >= fieldBindingArr.length) {
                break;
            }
            if (!fieldBindingArr[i11].isPrivate()) {
                this.fields[i11].modifiers |= 134217728;
            }
            i11++;
        }
        while (true) {
            ReferenceBinding[] referenceBindingArr = this.memberTypes;
            if (i10 >= referenceBindingArr.length) {
                break;
            }
            if (!referenceBindingArr[i10].isPrivate()) {
                this.memberTypes[i10].modifiers |= 134217728;
            }
            i10++;
        }
        if (this.superclass.isPrivate()) {
            ReferenceBinding referenceBinding = this.superclass;
            if (referenceBinding instanceof SourceTypeBinding) {
                ((SourceTypeBinding) referenceBinding).tagIndirectlyAccessibleMembers();
            }
        }
    }

    public String toString() {
        if (hasTypeAnnotations()) {
            return annotatedDebugName();
        }
        StringBuffer stringBuffer = new StringBuffer(30);
        stringBuffer.append("(id=");
        int i10 = this.f102482id;
        if (i10 == Integer.MAX_VALUE) {
            stringBuffer.append("NoId");
        } else {
            stringBuffer.append(i10);
        }
        stringBuffer.append(")\n");
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
            for (int i11 = 0; i11 < length; i11++) {
                if (i11 > 0) {
                    stringBuffer.append(", ");
                }
                TypeVariableBinding typeVariableBinding = this.typeVariables[i11];
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
            for (int i12 = 0; i12 < length2; i12++) {
                if (i12 > 0) {
                    stringBuffer.append(", ");
                }
                ReferenceBinding referenceBinding2 = this.superInterfaces[i12];
                stringBuffer.append(referenceBinding2 != null ? referenceBinding2.debugName() : "NULL TYPE");
            }
        }
        if (enclosingType() != null) {
            stringBuffer.append("\n\tenclosing type : ");
            stringBuffer.append(enclosingType().debugName());
        }
        FieldBinding[] fieldBindingArr = this.fields;
        if (fieldBindingArr == null) {
            stringBuffer.append("NULL FIELDS");
        } else if (fieldBindingArr != Binding.NO_FIELDS) {
            stringBuffer.append("\n/*   fields   */");
            int length3 = this.fields.length;
            for (int i13 = 0; i13 < length3; i13++) {
                stringBuffer.append('\n');
                FieldBinding fieldBinding = this.fields[i13];
                stringBuffer.append(fieldBinding != null ? fieldBinding.toString() : "NULL FIELD");
            }
        }
        MethodBinding[] methodBindingArr = this.methods;
        if (methodBindingArr == null) {
            stringBuffer.append("NULL METHODS");
        } else if (methodBindingArr != Binding.NO_METHODS) {
            stringBuffer.append("\n/*   methods   */");
            int length4 = this.methods.length;
            for (int i14 = 0; i14 < length4; i14++) {
                stringBuffer.append('\n');
                MethodBinding methodBinding = this.methods[i14];
                stringBuffer.append(methodBinding != null ? methodBinding.toString() : "NULL METHOD");
            }
        }
        ReferenceBinding[] referenceBindingArr2 = this.memberTypes;
        if (referenceBindingArr2 == null) {
            stringBuffer.append("NULL MEMBER TYPES");
        } else if (referenceBindingArr2 != Binding.NO_MEMBER_TYPES) {
            stringBuffer.append("\n/*   members   */");
            int length5 = this.memberTypes.length;
            for (int i15 = 0; i15 < length5; i15++) {
                stringBuffer.append('\n');
                ReferenceBinding referenceBinding3 = this.memberTypes[i15];
                stringBuffer.append(referenceBinding3 != null ? referenceBinding3.toString() : "NULL TYPE");
            }
        }
        stringBuffer.append("\n\n");
        return stringBuffer.toString();
    }

    @Override
    public TypeVariableBinding[] typeVariables() {
        if (isPrototype()) {
            TypeVariableBinding[] typeVariableBindingArr = this.typeVariables;
            return typeVariableBindingArr != null ? typeVariableBindingArr : Binding.NO_TYPE_VARIABLES;
        }
        TypeVariableBinding[] typeVariables = this.prototype.typeVariables();
        this.typeVariables = typeVariables;
        return typeVariables;
    }

    @Override
    public FieldBinding[] unResolvedFields() {
        return !isPrototype() ? this.prototype.unResolvedFields() : this.fields;
    }

    @Override
    public TypeBinding unannotated() {
        return this.prototype;
    }

    public void verifyMethods(MethodVerifier methodVerifier) {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        methodVerifier.verify(this);
        int length = this.memberTypes.length;
        while (true) {
            length--;
            if (length < 0) {
                return;
            } else {
                ((SourceTypeBinding) this.memberTypes[length]).verifyMethods(methodVerifier);
            }
        }
    }

    @Override
    public TypeBinding withoutToplevelNullAnnotation() {
        if (!hasNullTypeAnnotations()) {
            return this;
        }
        AnnotationBinding[] filterNullTypeAnnotations = this.environment.filterNullTypeAnnotations(this.typeAnnotations);
        return filterNullTypeAnnotations.length > 0 ? this.environment.createAnnotatedType(this.prototype, filterNullTypeAnnotations) : this.prototype;
    }

    public FieldBinding getSyntheticField(ReferenceBinding referenceBinding, boolean z10) {
        HashMap hashMap;
        if (isPrototype()) {
            HashMap[] hashMapArr = this.synthetics;
            if (hashMapArr != null && (hashMap = hashMapArr[1]) != null) {
                FieldBinding fieldBinding = (FieldBinding) hashMap.get(referenceBinding);
                if (fieldBinding != null) {
                    return fieldBinding;
                }
                if (!z10) {
                    for (FieldBinding fieldBinding2 : this.synthetics[1].values()) {
                        if (CharOperation.prefixEquals(TypeConstants.SYNTHETIC_ENCLOSING_INSTANCE_PREFIX, fieldBinding2.name) && fieldBinding2.type.findSuperTypeOriginatingFrom(referenceBinding) != null) {
                            return fieldBinding2;
                        }
                    }
                }
            }
            return null;
        }
        throw new IllegalStateException();
    }

    public SyntheticMethodBinding addSyntheticMethod(LambdaExpression lambdaExpression) {
        SyntheticMethodBinding syntheticMethodBinding;
        if (isPrototype()) {
            if (this.synthetics == null) {
                this.synthetics = new HashMap[3];
            }
            HashMap[] hashMapArr = this.synthetics;
            if (hashMapArr[0] == null) {
                hashMapArr[0] = new HashMap(5);
            }
            SyntheticMethodBinding[] syntheticMethodBindingArr = (SyntheticMethodBinding[]) this.synthetics[0].get(lambdaExpression);
            if (syntheticMethodBindingArr == null) {
                syntheticMethodBinding = new SyntheticMethodBinding(lambdaExpression, CharOperation.concat(TypeConstants.ANONYMOUS_METHOD, Integer.toString(lambdaExpression.ordinal).toCharArray()), this);
                this.synthetics[0].put(lambdaExpression, r3);
                SyntheticMethodBinding[] syntheticMethodBindingArr2 = {syntheticMethodBinding};
            } else {
                syntheticMethodBinding = syntheticMethodBindingArr[0];
            }
            if (lambdaExpression.isSerializable) {
                addDeserializeLambdaMethod();
            }
            return syntheticMethodBinding;
        }
        throw new IllegalStateException();
    }

    public SourceTypeBinding(SourceTypeBinding sourceTypeBinding) {
        super(sourceTypeBinding);
        this.storedAnnotations = null;
        this.nullnessDefaultInitialized = 0;
        this.containerAnnotationType = null;
        SourceTypeBinding sourceTypeBinding2 = sourceTypeBinding.prototype;
        this.prototype = sourceTypeBinding2;
        sourceTypeBinding2.tagBits |= 8388608;
        long j10 = this.tagBits & (-8388609);
        this.superclass = sourceTypeBinding.superclass;
        this.superInterfaces = sourceTypeBinding.superInterfaces;
        this.fields = sourceTypeBinding.fields;
        this.methods = sourceTypeBinding.methods;
        this.memberTypes = sourceTypeBinding.memberTypes;
        this.typeVariables = sourceTypeBinding.typeVariables;
        this.environment = sourceTypeBinding.environment;
        this.synthetics = sourceTypeBinding.synthetics;
        this.genericReferenceTypeSignature = sourceTypeBinding.genericReferenceTypeSignature;
        this.storedAnnotations = sourceTypeBinding.storedAnnotations;
        this.defaultNullness = sourceTypeBinding.defaultNullness;
        this.nullnessDefaultInitialized = sourceTypeBinding.nullnessDefaultInitialized;
        this.containerAnnotationType = sourceTypeBinding.containerAnnotationType;
        this.tagBits = j10 | TagBits.HasUnresolvedMemberTypes;
    }

    public SyntheticMethodBinding addSyntheticBridgeMethod(MethodBinding methodBinding) {
        if (!isPrototype()) {
            throw new IllegalStateException();
        }
        if (this.scope.compilerOptions().complianceLevel <= ClassFileConstants.JDK1_5) {
            return null;
        }
        if ((!isInterface() || methodBinding.isDefaultMethod()) && !methodBinding.isAbstract() && !methodBinding.isFinal() && !methodBinding.isStatic()) {
            if (this.synthetics == null) {
                this.synthetics = new HashMap[3];
            }
            HashMap[] hashMapArr = this.synthetics;
            HashMap hashMap = hashMapArr[0];
            if (hashMap == null) {
                hashMapArr[0] = new HashMap(5);
            } else {
                for (Object obj : hashMap.o()) {
                    if (obj instanceof MethodBinding) {
                        MethodBinding methodBinding2 = (MethodBinding) obj;
                        if (CharOperation.equals(methodBinding.selector, methodBinding2.selector) && TypeBinding.equalsEquals(methodBinding.returnType.erasure(), methodBinding2.returnType.erasure()) && methodBinding.areParameterErasuresEqual(methodBinding2)) {
                        }
                    }
                }
            }
            SyntheticMethodBinding[] syntheticMethodBindingArr = (SyntheticMethodBinding[]) this.synthetics[0].get(methodBinding);
            if (syntheticMethodBindingArr == null) {
                SyntheticMethodBinding syntheticMethodBinding = new SyntheticMethodBinding(methodBinding, this);
                SyntheticMethodBinding[] syntheticMethodBindingArr2 = new SyntheticMethodBinding[2];
                this.synthetics[0].put(methodBinding, syntheticMethodBindingArr2);
                syntheticMethodBindingArr2[1] = syntheticMethodBinding;
                return syntheticMethodBinding;
            }
            SyntheticMethodBinding syntheticMethodBinding2 = syntheticMethodBindingArr[1];
            if (syntheticMethodBinding2 == null) {
                syntheticMethodBinding2 = new SyntheticMethodBinding(methodBinding, this);
                syntheticMethodBindingArr[1] = syntheticMethodBinding2;
            }
            return syntheticMethodBinding2;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0081, code lost:
    
        if (r9.scope.compilerOptions().complianceLevel < org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants.JDK1_5) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0092, code lost:
    
        r9.scope.problemReporter().duplicateFieldInType(r9, r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FieldBinding addSyntheticFieldForInnerclass(ReferenceBinding referenceBinding) {
        if (isPrototype()) {
            if (this.synthetics == null) {
                this.synthetics = new HashMap[3];
            }
            HashMap[] hashMapArr = this.synthetics;
            if (hashMapArr[1] == null) {
                hashMapArr[1] = new HashMap(5);
            }
            FieldBinding fieldBinding = (FieldBinding) this.synthetics[1].get(referenceBinding);
            if (fieldBinding == null) {
                fieldBinding = new SyntheticFieldBinding(CharOperation.concat(TypeConstants.SYNTHETIC_ENCLOSING_INSTANCE_PREFIX, String.valueOf(referenceBinding.depth()).toCharArray()), referenceBinding, 4112, this, Constant.NotAConstant, this.synthetics[1].size());
                this.synthetics[1].put(referenceBinding, fieldBinding);
            }
            loop0: while (true) {
                FieldBinding field = getField(fieldBinding.name, true);
                if (field == null) {
                    break;
                }
                FieldDeclaration[] fieldDeclarationArr = this.scope.referenceContext.fields;
                int i10 = 0;
                int length = fieldDeclarationArr == null ? 0 : fieldDeclarationArr.length;
                while (true) {
                    if (i10 >= length) {
                        break loop0;
                    }
                    FieldDeclaration fieldDeclaration = fieldDeclarationArr[i10];
                    if (fieldDeclaration.binding == field) {
                        break;
                    }
                    i10++;
                }
                fieldBinding.name = CharOperation.concat(fieldBinding.name, "$".toCharArray());
            }
            return fieldBinding;
        }
        throw new IllegalStateException();
    }

    public SyntheticMethodBinding addSyntheticMethod(ReferenceExpression referenceExpression) {
        SyntheticMethodBinding syntheticMethodBinding;
        if (isPrototype()) {
            if (!referenceExpression.isSerializable) {
                return null;
            }
            if (this.synthetics == null) {
                this.synthetics = new HashMap[3];
            }
            HashMap[] hashMapArr = this.synthetics;
            if (hashMapArr[0] == null) {
                hashMapArr[0] = new HashMap(5);
            }
            SyntheticMethodBinding[] syntheticMethodBindingArr = (SyntheticMethodBinding[]) this.synthetics[0].get(referenceExpression);
            if (syntheticMethodBindingArr == null) {
                syntheticMethodBinding = new SyntheticMethodBinding(referenceExpression, this);
                this.synthetics[0].put(referenceExpression, r3);
                SyntheticMethodBinding[] syntheticMethodBindingArr2 = {syntheticMethodBinding};
            } else {
                syntheticMethodBinding = syntheticMethodBindingArr[0];
            }
            addDeserializeLambdaMethod();
            return syntheticMethodBinding;
        }
        throw new IllegalStateException();
    }

    public SyntheticMethodBinding addSyntheticMethod(MethodBinding methodBinding, boolean z10) {
        SyntheticMethodBinding syntheticMethodBinding;
        if (isPrototype()) {
            if (this.synthetics == null) {
                this.synthetics = new HashMap[3];
            }
            HashMap[] hashMapArr = this.synthetics;
            if (hashMapArr[0] == null) {
                hashMapArr[0] = new HashMap(5);
            }
            SyntheticMethodBinding[] syntheticMethodBindingArr = (SyntheticMethodBinding[]) this.synthetics[0].get(methodBinding);
            if (syntheticMethodBindingArr == null) {
                syntheticMethodBinding = new SyntheticMethodBinding(methodBinding, z10, this);
                SyntheticMethodBinding[] syntheticMethodBindingArr2 = new SyntheticMethodBinding[2];
                this.synthetics[0].put(methodBinding, syntheticMethodBindingArr2);
                syntheticMethodBindingArr2[!z10 ? 1 : 0] = syntheticMethodBinding;
            } else {
                SyntheticMethodBinding syntheticMethodBinding2 = syntheticMethodBindingArr[!z10 ? 1 : 0];
                if (syntheticMethodBinding2 == null) {
                    syntheticMethodBinding2 = new SyntheticMethodBinding(methodBinding, z10, this);
                    syntheticMethodBindingArr[!z10 ? 1 : 0] = syntheticMethodBinding2;
                }
                syntheticMethodBinding = syntheticMethodBinding2;
            }
            if (methodBinding.declaringClass.isStatic()) {
                if ((methodBinding.isConstructor() && methodBinding.parameters.length >= 254) || methodBinding.parameters.length >= 255) {
                    this.scope.problemReporter().tooManyParametersForSyntheticMethod(methodBinding.sourceMethod());
                }
            } else if ((methodBinding.isConstructor() && methodBinding.parameters.length >= 253) || methodBinding.parameters.length >= 254) {
                this.scope.problemReporter().tooManyParametersForSyntheticMethod(methodBinding.sourceMethod());
            }
            return syntheticMethodBinding;
        }
        throw new IllegalStateException();
    }
}
