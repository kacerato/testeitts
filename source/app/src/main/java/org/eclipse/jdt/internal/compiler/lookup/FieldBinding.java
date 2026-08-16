package org.eclipse.jdt.internal.compiler.lookup;

import android.content.IntentFilter;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;

public class FieldBinding extends VariableBinding {
    public int compoundUseFlag;
    public ReferenceBinding declaringClass;

    public FieldBinding() {
        super(null, null, 0, null);
        this.compoundUseFlag = 0;
    }

    public final boolean canBeSeenBy(PackageBinding packageBinding) {
        if (isPublic()) {
            return true;
        }
        return !isPrivate() && packageBinding == this.declaringClass.getPackage();
    }

    @Override
    public char[] computeUniqueKey(boolean z10) {
        ReferenceBinding referenceBinding = this.declaringClass;
        char[] computeUniqueKey = referenceBinding == null ? CharOperation.NO_CHAR : referenceBinding.computeUniqueKey(false);
        int length = computeUniqueKey.length;
        int length2 = this.name.length;
        TypeBinding typeBinding = this.type;
        char[] computeUniqueKey2 = typeBinding == null ? new char[]{'V'} : typeBinding.computeUniqueKey(false);
        int length3 = computeUniqueKey2.length;
        char[] cArr = new char[length + 1 + length2 + 1 + length3];
        System.arraycopy(computeUniqueKey, 0, cArr, 0, length);
        int i10 = length + 1;
        cArr[length] = '.';
        System.arraycopy(this.name, 0, cArr, i10, length2);
        int i11 = i10 + length2;
        cArr[i11] = ')';
        System.arraycopy(computeUniqueKey2, 0, cArr, i11 + 1, length3);
        return cArr;
    }

    @Override
    public Constant constant() {
        Constant constant = this.constant;
        if (constant == null) {
            if (isFinal()) {
                FieldBinding original = original();
                ReferenceBinding referenceBinding = original.declaringClass;
                if (referenceBinding instanceof SourceTypeBinding) {
                    ClassScope classScope = ((SourceTypeBinding) referenceBinding).scope;
                    if (classScope != null) {
                        TypeDeclaration typeDeclaration = classScope.referenceContext;
                        FieldDeclaration declarationOf = typeDeclaration.declarationOf(original);
                        MethodScope methodScope = original.isStatic() ? typeDeclaration.staticInitializerScope : typeDeclaration.initializerScope;
                        boolean z10 = methodScope.insideTypeAnnotation;
                        try {
                            methodScope.insideTypeAnnotation = false;
                            declarationOf.resolve(methodScope);
                            methodScope.insideTypeAnnotation = z10;
                            constant = original.constant;
                            if (constant == null) {
                                constant = Constant.NotAConstant;
                            }
                        } catch (Throwable th2) {
                            methodScope.insideTypeAnnotation = z10;
                            throw th2;
                        }
                    } else {
                        constant = Constant.NotAConstant;
                    }
                } else {
                    constant = Constant.NotAConstant;
                }
            } else {
                constant = Constant.NotAConstant;
            }
            this.constant = constant;
        }
        return constant;
    }

    public void fillInDefaultNonNullness(FieldDeclaration fieldDeclaration, Scope scope) {
        TypeBinding typeBinding = this.type;
        if (typeBinding == null || typeBinding.isBaseType()) {
            return;
        }
        LookupEnvironment environment = scope.environment();
        if (!environment.usesNullTypeAnnotations()) {
            long j10 = this.tagBits;
            if ((TagBits.AnnotationNullMASK & j10) == 0) {
                this.tagBits = j10 | 72057594037927936L;
                return;
            } else {
                if ((j10 & 72057594037927936L) != 0) {
                    scope.problemReporter().nullAnnotationIsRedundant(fieldDeclaration);
                    return;
                }
                return;
            }
        }
        if (this.type.acceptsNonNullDefault()) {
            TypeBinding typeBinding2 = this.type;
            long j11 = typeBinding2.tagBits;
            if ((TagBits.AnnotationNullMASK & j11) == 0) {
                this.type = environment.createAnnotatedType(typeBinding2, new AnnotationBinding[]{environment.getNonNullAnnotation()});
            } else if ((j11 & 72057594037927936L) != 0) {
                scope.problemReporter().nullAnnotationIsRedundant(fieldDeclaration);
            }
        }
    }

    public char[] genericSignature() {
        if ((this.modifiers & 1073741824) == 0) {
            return null;
        }
        return this.type.genericTypeSignature();
    }

    public final int getAccessFlags() {
        return this.modifiers & 65535;
    }

    @Override
    public long getAnnotationTagBits() {
        FieldBinding original = original();
        if ((original.tagBits & 8589934592L) == 0) {
            ReferenceBinding referenceBinding = original.declaringClass;
            if (referenceBinding instanceof SourceTypeBinding) {
                ClassScope classScope = ((SourceTypeBinding) referenceBinding).scope;
                if (classScope == null) {
                    this.tagBits |= 25769803776L;
                    return 0L;
                }
                TypeDeclaration typeDeclaration = classScope.referenceContext;
                FieldDeclaration declarationOf = typeDeclaration.declarationOf(original);
                if (declarationOf != null) {
                    MethodScope methodScope = isStatic() ? typeDeclaration.staticInitializerScope : typeDeclaration.initializerScope;
                    FieldBinding fieldBinding = methodScope.initializedField;
                    int i10 = methodScope.lastVisibleFieldID;
                    try {
                        methodScope.initializedField = original;
                        methodScope.lastVisibleFieldID = original.f102483id;
                        ASTNode.resolveAnnotations(methodScope, declarationOf.annotations, original);
                    } finally {
                        methodScope.initializedField = fieldBinding;
                        methodScope.lastVisibleFieldID = i10;
                    }
                }
            }
        }
        return original.tagBits;
    }

    @Override
    public AnnotationBinding[] getAnnotations() {
        FieldBinding original = original();
        ReferenceBinding referenceBinding = original.declaringClass;
        return referenceBinding == null ? Binding.NO_ANNOTATIONS : referenceBinding.retrieveAnnotations(original);
    }

    public final boolean isDefault() {
        return (isPublic() || isProtected() || isPrivate()) ? false : true;
    }

    public final boolean isDeprecated() {
        return (this.modifiers & 1048576) != 0;
    }

    public final boolean isOrEnclosedByPrivateType() {
        if ((this.modifiers & 2) != 0) {
            return true;
        }
        ReferenceBinding referenceBinding = this.declaringClass;
        return referenceBinding != null && referenceBinding.isOrEnclosedByPrivateType();
    }

    public final boolean isPrivate() {
        return (this.modifiers & 2) != 0;
    }

    public final boolean isProtected() {
        return (this.modifiers & 4) != 0;
    }

    public final boolean isPublic() {
        return (this.modifiers & 1) != 0;
    }

    public final boolean isStatic() {
        return (this.modifiers & 8) != 0;
    }

    public final boolean isSynthetic() {
        return (this.modifiers & 4096) != 0;
    }

    public final boolean isTransient() {
        return (this.modifiers & 128) != 0;
    }

    public final boolean isUsed() {
        return (this.modifiers & 134217728) != 0 || this.compoundUseFlag > 0;
    }

    public final boolean isUsedOnlyInCompound() {
        return (this.modifiers & 134217728) == 0 && this.compoundUseFlag > 0;
    }

    public final boolean isViewedAsDeprecated() {
        return (this.modifiers & IntentFilter.MATCH_CATEGORY_HOST) != 0;
    }

    @Override
    public final boolean isVolatile() {
        return (this.modifiers & 64) != 0;
    }

    @Override
    public final int kind() {
        return 1;
    }

    public FieldBinding original() {
        return this;
    }

    @Override
    public void setAnnotations(AnnotationBinding[] annotationBindingArr, boolean z10) {
        this.declaringClass.storeAnnotations(this, annotationBindingArr, z10);
    }

    public FieldDeclaration sourceField() {
        FieldDeclaration fieldDeclaration;
        try {
            FieldDeclaration[] fieldDeclarationArr = ((SourceTypeBinding) this.declaringClass).scope.referenceContext.fields;
            if (fieldDeclarationArr != null) {
                int length = fieldDeclarationArr.length;
                do {
                    length--;
                    if (length >= 0) {
                        fieldDeclaration = fieldDeclarationArr[length];
                    }
                } while (this != fieldDeclaration.binding);
                return fieldDeclaration;
            }
        } catch (ClassCastException unused) {
        }
        return null;
    }

    public FieldBinding(char[] cArr, TypeBinding typeBinding, int i10, ReferenceBinding referenceBinding, Constant constant) {
        super(cArr, typeBinding, i10, constant);
        this.compoundUseFlag = 0;
        this.declaringClass = referenceBinding;
    }

    public final boolean canBeSeenBy(TypeBinding typeBinding, InvocationSite invocationSite, Scope scope) {
        ReferenceBinding referenceBinding;
        ReferenceBinding referenceBinding2;
        if (isPublic()) {
            return true;
        }
        ReferenceBinding enclosingSourceType = scope.enclosingSourceType();
        if (TypeBinding.equalsEquals(enclosingSourceType, this.declaringClass) && TypeBinding.equalsEquals(enclosingSourceType, typeBinding)) {
            return true;
        }
        if (enclosingSourceType == null) {
            return !isPrivate() && scope.getCurrentPackage() == this.declaringClass.fPackage;
        }
        if (isProtected()) {
            if (TypeBinding.equalsEquals(enclosingSourceType, this.declaringClass) || enclosingSourceType.fPackage == this.declaringClass.fPackage) {
                return true;
            }
            ReferenceBinding referenceBinding3 = (ReferenceBinding) typeBinding.erasure();
            ReferenceBinding referenceBinding4 = (ReferenceBinding) this.declaringClass.erasure();
            int i10 = 0;
            do {
                if (enclosingSourceType.findSuperTypeOriginatingFrom(referenceBinding4) != null) {
                    if (invocationSite.isSuperAccess()) {
                        return true;
                    }
                    if (typeBinding instanceof ArrayBinding) {
                        return false;
                    }
                    if (isStatic()) {
                        if (i10 > 0) {
                            invocationSite.setDepth(i10);
                        }
                        return true;
                    }
                    if (TypeBinding.equalsEquals(enclosingSourceType, referenceBinding3) || referenceBinding3.findSuperTypeOriginatingFrom(enclosingSourceType) != null) {
                        if (i10 > 0) {
                            invocationSite.setDepth(i10);
                        }
                        return true;
                    }
                }
                i10++;
                enclosingSourceType = enclosingSourceType.enclosingType();
            } while (enclosingSourceType != null);
            return false;
        }
        if (isPrivate()) {
            if (TypeBinding.notEquals(typeBinding, this.declaringClass) && (scope.compilerOptions().complianceLevel > ClassFileConstants.JDK1_6 || !typeBinding.isTypeVariable() || !((TypeVariableBinding) typeBinding).isErasureBoundTo(this.declaringClass.erasure()))) {
                return false;
            }
            if (TypeBinding.notEquals(enclosingSourceType, this.declaringClass)) {
                ReferenceBinding enclosingType = enclosingSourceType.enclosingType();
                while (true) {
                    referenceBinding = enclosingSourceType;
                    enclosingSourceType = enclosingType;
                    if (enclosingSourceType == null) {
                        break;
                    }
                    enclosingType = enclosingSourceType.enclosingType();
                }
                ReferenceBinding referenceBinding5 = (ReferenceBinding) this.declaringClass.erasure();
                ReferenceBinding enclosingType2 = referenceBinding5.enclosingType();
                while (true) {
                    ReferenceBinding referenceBinding6 = enclosingType2;
                    referenceBinding2 = referenceBinding5;
                    referenceBinding5 = referenceBinding6;
                    if (referenceBinding5 == null) {
                        break;
                    }
                    enclosingType2 = referenceBinding5.enclosingType();
                }
                if (TypeBinding.notEquals(referenceBinding, referenceBinding2)) {
                    return false;
                }
            }
            return true;
        }
        ReferenceBinding referenceBinding7 = this.declaringClass;
        PackageBinding packageBinding = referenceBinding7.fPackage;
        if (enclosingSourceType.fPackage != packageBinding || (typeBinding instanceof ArrayBinding)) {
            return false;
        }
        TypeBinding original = referenceBinding7.original();
        ReferenceBinding referenceBinding8 = (ReferenceBinding) typeBinding;
        do {
            if (referenceBinding8.isCapture()) {
                if (TypeBinding.equalsEquals(original, referenceBinding8.erasure().original())) {
                    return true;
                }
            } else if (TypeBinding.equalsEquals(original, referenceBinding8.original())) {
                return true;
            }
            PackageBinding packageBinding2 = referenceBinding8.fPackage;
            if (packageBinding2 != null && packageBinding2 != packageBinding) {
                return false;
            }
            referenceBinding8 = referenceBinding8.superclass();
        } while (referenceBinding8 != null);
        return false;
    }

    public FieldBinding(FieldBinding fieldBinding, ReferenceBinding referenceBinding) {
        super(fieldBinding.name, fieldBinding.type, fieldBinding.modifiers, fieldBinding.constant());
        this.compoundUseFlag = 0;
        this.declaringClass = referenceBinding;
        this.f102483id = fieldBinding.f102483id;
        setAnnotations(fieldBinding.getAnnotations(), false);
    }

    public FieldBinding(FieldDeclaration fieldDeclaration, TypeBinding typeBinding, int i10, ReferenceBinding referenceBinding) {
        this(fieldDeclaration.name, typeBinding, i10, referenceBinding, null);
        fieldDeclaration.binding = this;
    }

    @Override
    public Constant constant(Scope scope) {
        Constant constant = this.constant;
        if (constant != null) {
            return constant;
        }
        ProblemReporter problemReporter = scope.problemReporter();
        IErrorHandlingPolicy suspendTempErrorHandlingPolicy = problemReporter.suspendTempErrorHandlingPolicy();
        try {
            return constant();
        } finally {
            problemReporter.resumeTempErrorHandlingPolicy(suspendTempErrorHandlingPolicy);
        }
    }
}
