package org.eclipse.jdt.internal.compiler.lookup;

import android.bluetooth.BluetoothClass;
import android.util.Half;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;

public class ClassScope extends Scope {
    ArrayList<Object> deferredBoundChecks;
    public TypeDeclaration referenceContext;
    public TypeReference superTypeReference;

    public ClassScope(Scope scope, TypeDeclaration typeDeclaration) {
        super(3, scope);
        this.referenceContext = typeDeclaration;
        this.deferredBoundChecks = null;
    }

    private LocalTypeBinding buildLocalType(SourceTypeBinding sourceTypeBinding, PackageBinding packageBinding) {
        TypeDeclaration typeDeclaration = this.referenceContext;
        typeDeclaration.scope = this;
        typeDeclaration.staticInitializerScope = new MethodScope(this, this.referenceContext, true);
        this.referenceContext.initializerScope = new MethodScope(this, this.referenceContext, false);
        LocalTypeBinding localTypeBinding = new LocalTypeBinding(this, sourceTypeBinding, innermostSwitchCase());
        this.referenceContext.binding = localTypeBinding;
        checkAndSetModifiers();
        buildTypeVariables();
        ReferenceBinding[] referenceBindingArr = Binding.NO_MEMBER_TYPES;
        TypeDeclaration[] typeDeclarationArr = this.referenceContext.memberTypes;
        if (typeDeclarationArr != null) {
            int length = typeDeclarationArr.length;
            ReferenceBinding[] referenceBindingArr2 = new ReferenceBinding[length];
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                TypeDeclaration typeDeclaration2 = this.referenceContext.memberTypes[i11];
                int kind = TypeDeclaration.kind(typeDeclaration2.modifiers);
                if (kind == 2 || kind == 4) {
                    problemReporter().illegalLocalTypeDeclaration(typeDeclaration2);
                } else {
                    ReferenceBinding referenceBinding = localTypeBinding;
                    while (true) {
                        if (CharOperation.equals(referenceBinding.sourceName, typeDeclaration2.name)) {
                            problemReporter().typeCollidesWithEnclosingType(typeDeclaration2);
                            break;
                        }
                        referenceBinding = referenceBinding.enclosingType();
                        if (referenceBinding == null) {
                            int i12 = 0;
                            while (true) {
                                if (i12 >= i11) {
                                    LocalTypeBinding buildLocalType = new ClassScope(this, this.referenceContext.memberTypes[i11]).buildLocalType(localTypeBinding, packageBinding);
                                    buildLocalType.setAsMemberType();
                                    referenceBindingArr2[i10] = buildLocalType;
                                    i10++;
                                    break;
                                }
                                if (CharOperation.equals(this.referenceContext.memberTypes[i12].name, typeDeclaration2.name)) {
                                    problemReporter().duplicateNestedType(typeDeclaration2);
                                    break;
                                }
                                i12++;
                            }
                        }
                    }
                }
            }
            if (i10 != length) {
                referenceBindingArr = new ReferenceBinding[i10];
                System.arraycopy(referenceBindingArr2, 0, referenceBindingArr, 0, i10);
            } else {
                referenceBindingArr = referenceBindingArr2;
            }
        }
        localTypeBinding.setMemberTypes(referenceBindingArr);
        return localTypeBinding;
    }

    private void buildMemberTypes(AccessRestriction accessRestriction) {
        TypeDeclaration typeDeclaration = this.referenceContext;
        SourceTypeBinding sourceTypeBinding = typeDeclaration.binding;
        ReferenceBinding[] referenceBindingArr = Binding.NO_MEMBER_TYPES;
        TypeDeclaration[] typeDeclarationArr = typeDeclaration.memberTypes;
        if (typeDeclarationArr != null) {
            int length = typeDeclarationArr.length;
            ReferenceBinding[] referenceBindingArr2 = new ReferenceBinding[length];
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                TypeDeclaration typeDeclaration2 = this.referenceContext.memberTypes[i11];
                if (environment().root.isProcessingAnnotations && environment().isMissingType(typeDeclaration2.name)) {
                    throw new SourceTypeCollisionException();
                }
                int kind = TypeDeclaration.kind(typeDeclaration2.modifiers);
                if ((kind == 2 || kind == 4) && sourceTypeBinding.isNestedType() && sourceTypeBinding.isClass() && !sourceTypeBinding.isStatic()) {
                    problemReporter().illegalLocalTypeDeclaration(typeDeclaration2);
                } else {
                    ReferenceBinding referenceBinding = sourceTypeBinding;
                    while (true) {
                        if (CharOperation.equals(referenceBinding.sourceName, typeDeclaration2.name)) {
                            problemReporter().typeCollidesWithEnclosingType(typeDeclaration2);
                            break;
                        }
                        referenceBinding = referenceBinding.enclosingType();
                        if (referenceBinding == null) {
                            int i12 = 0;
                            while (true) {
                                if (i12 >= i11) {
                                    referenceBindingArr2[i10] = new ClassScope(this, typeDeclaration2).buildType(sourceTypeBinding, sourceTypeBinding.fPackage, accessRestriction);
                                    i10++;
                                    break;
                                } else {
                                    if (CharOperation.equals(this.referenceContext.memberTypes[i12].name, typeDeclaration2.name)) {
                                        problemReporter().duplicateNestedType(typeDeclaration2);
                                        break;
                                    }
                                    i12++;
                                }
                            }
                        }
                    }
                }
            }
            if (i10 != length) {
                referenceBindingArr = new ReferenceBinding[i10];
                System.arraycopy(referenceBindingArr2, 0, referenceBindingArr, 0, i10);
            } else {
                referenceBindingArr = referenceBindingArr2;
            }
        }
        sourceTypeBinding.setMemberTypes(referenceBindingArr);
    }

    private void buildTypeVariables() {
        TypeDeclaration typeDeclaration = this.referenceContext;
        SourceTypeBinding sourceTypeBinding = typeDeclaration.binding;
        TypeParameter[] typeParameterArr = typeDeclaration.typeParameters;
        if (typeParameterArr == null || typeParameterArr.length == 0) {
            sourceTypeBinding.setTypeVariables(Binding.NO_TYPE_VARIABLES);
            return;
        }
        sourceTypeBinding.setTypeVariables(Binding.NO_TYPE_VARIABLES);
        if (sourceTypeBinding.f102482id == 1) {
            problemReporter().objectCannotBeGeneric(this.referenceContext);
        } else {
            sourceTypeBinding.setTypeVariables(createTypeVariables(typeParameterArr, sourceTypeBinding));
            sourceTypeBinding.modifiers |= 1073741824;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:126:0x01e1, code lost:
    
        if (r11 != false) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0054, code lost:
    
        if (r0.isInterface() != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x00e1, code lost:
    
        if (r0.isDeprecated() == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x00e3, code lost:
    
        r1 = r1 | 2097152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x00f7, code lost:
    
        if (r0.isDeprecated() == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x0114, code lost:
    
        if (r0.isDeprecated() == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x026f, code lost:
    
        if ((r6 & 2) != 0) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0271, code lost:
    
        r1 = r1 & (-3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x028e, code lost:
    
        if ((r6 & 2) != 0) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0297, code lost:
    
        if ((r6 & 2) != 0) goto L186;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void checkAndSetModifiers() {
        FieldDeclaration[] fieldDeclarationArr;
        SourceTypeBinding sourceTypeBinding = this.referenceContext.binding;
        int i10 = sourceTypeBinding.modifiers;
        if ((4194304 & i10) != 0) {
            problemReporter().duplicateModifierForType(sourceTypeBinding);
        }
        ReferenceBinding enclosingType = sourceTypeBinding.enclosingType();
        boolean isMemberType = sourceTypeBinding.isMemberType();
        if (isMemberType) {
            if (sourceTypeBinding.hasEnclosingInstanceContext()) {
                i10 |= enclosingType.modifiers & 1073741824;
            }
            i10 |= enclosingType.modifiers & 2048;
            if (enclosingType.isInterface()) {
                i10 |= 1;
            }
            if (sourceTypeBinding.isEnum()) {
                if (!enclosingType.isStatic()) {
                    problemReporter().nonStaticContextForEnumMemberType(sourceTypeBinding);
                }
                i10 |= 8;
            }
        } else if (sourceTypeBinding.isLocalType()) {
            if (sourceTypeBinding.isEnum()) {
                problemReporter().illegalLocalTypeDeclaration(this.referenceContext);
                sourceTypeBinding.modifiers = 0;
                return;
            }
            if (sourceTypeBinding.isAnonymousType()) {
                if (compilerOptions().complianceLevel < ClassFileConstants.JDK9) {
                    i10 |= 16;
                }
                if (this.referenceContext.allocation.type == null) {
                    i10 |= 16384;
                }
            }
            Scope scope = this;
            do {
                int i11 = scope.kind;
                if (i11 == 2) {
                    MethodScope methodScope = (MethodScope) scope;
                    if (methodScope.isLambdaScope()) {
                        methodScope = methodScope.namedMethodScope();
                    }
                    if (methodScope.isInsideInitializer()) {
                        SourceTypeBinding sourceTypeBinding2 = ((TypeDeclaration) methodScope.referenceContext).binding;
                        FieldBinding fieldBinding = methodScope.initializedField;
                        if (fieldBinding == null) {
                            if (sourceTypeBinding2.isStrictfp()) {
                                i10 |= 2048;
                            }
                            if (sourceTypeBinding2.isViewedAsDeprecated()) {
                            }
                        } else if (fieldBinding.isViewedAsDeprecated()) {
                        }
                    } else {
                        MethodBinding methodBinding = ((AbstractMethodDeclaration) methodScope.referenceContext).binding;
                        if (methodBinding != null) {
                            if (methodBinding.isStrictfp()) {
                                i10 |= 2048;
                            }
                            if (methodBinding.isViewedAsDeprecated()) {
                            }
                        }
                    }
                } else if (i11 == 3) {
                    if (enclosingType.isStrictfp()) {
                        i10 |= 2048;
                    }
                    if (enclosingType.isViewedAsDeprecated() && !sourceTypeBinding.isDeprecated()) {
                        i10 |= 2097152;
                        sourceTypeBinding.tagBits |= enclosingType.tagBits & 4611686018427387904L;
                    }
                }
                scope = scope.parent;
            } while (scope != null);
        }
        int i12 = 65535 & i10;
        if ((i10 & 512) != 0) {
            if (isMemberType) {
                if ((53744 & i10) != 0) {
                    if ((i10 & 8192) != 0) {
                        problemReporter().illegalModifierForAnnotationMemberType(sourceTypeBinding);
                    } else {
                        problemReporter().illegalModifierForMemberInterface(sourceTypeBinding);
                    }
                }
            } else if ((53758 & i10) != 0) {
                if ((i10 & 8192) != 0) {
                    problemReporter().illegalModifierForAnnotationType(sourceTypeBinding);
                } else {
                    problemReporter().illegalModifierForInterface(sourceTypeBinding);
                }
            }
            if (sourceTypeBinding.sourceName == TypeConstants.PACKAGE_INFO_NAME && compilerOptions().targetJDK > ClassFileConstants.JDK1_5) {
                i10 |= 4096;
            }
            i10 |= 1024;
        } else if ((i10 & 16384) != 0) {
            if (isMemberType) {
                if ((47088 & i10) != 0) {
                    problemReporter().illegalModifierForMemberEnum(sourceTypeBinding);
                    i12 = i10 & 64511;
                    i10 &= Half.LOWEST_VALUE;
                }
            } else if (!sourceTypeBinding.isLocalType() && (47102 & i10) != 0) {
                problemReporter().illegalModifierForEnum(sourceTypeBinding);
            }
            if (!sourceTypeBinding.isAnonymousType()) {
                TypeDeclaration typeDeclaration = this.referenceContext;
                if ((typeDeclaration.bits & 2048) == 0) {
                    FieldDeclaration[] fieldDeclarationArr2 = typeDeclaration.fields;
                    int length = fieldDeclarationArr2 == null ? 0 : fieldDeclarationArr2.length;
                    if (length != 0) {
                        AbstractMethodDeclaration[] abstractMethodDeclarationArr = typeDeclaration.methods;
                        int length2 = abstractMethodDeclarationArr == null ? 0 : abstractMethodDeclarationArr.length;
                        boolean z10 = typeDeclaration.superInterfaces != null;
                        for (int i13 = 0; i13 < length2 && !z10; i13++) {
                            z10 = abstractMethodDeclarationArr[i13].isAbstract();
                        }
                        if (z10) {
                            int i14 = 0;
                            boolean z11 = false;
                            while (true) {
                                if (i14 < length) {
                                    FieldDeclaration fieldDeclaration = fieldDeclarationArr2[i14];
                                    if (fieldDeclaration.getKind() == 3) {
                                        if (!(fieldDeclaration.initialization instanceof QualifiedAllocationExpression)) {
                                            break;
                                        } else {
                                            z11 = true;
                                        }
                                    }
                                    i14++;
                                }
                            }
                        }
                    }
                    fieldDeclarationArr = this.referenceContext.fields;
                    if (fieldDeclarationArr != null) {
                        for (FieldDeclaration fieldDeclaration2 : fieldDeclarationArr) {
                            if (fieldDeclaration2.getKind() == 3 && (fieldDeclaration2.initialization instanceof QualifiedAllocationExpression)) {
                                break;
                            }
                        }
                    }
                    i10 |= 16;
                }
                i10 |= 1024;
                fieldDeclarationArr = this.referenceContext.fields;
                if (fieldDeclarationArr != null) {
                }
                i10 |= 16;
            }
        } else {
            if (isMemberType) {
                if ((62432 & i10) != 0) {
                    problemReporter().illegalModifierForMemberClass(sourceTypeBinding);
                }
            } else if (sourceTypeBinding.isLocalType()) {
                if ((62447 & i10) != 0) {
                    problemReporter().illegalModifierForLocalClass(sourceTypeBinding);
                }
            } else if ((62446 & i10) != 0) {
                problemReporter().illegalModifierForClass(sourceTypeBinding);
            }
            if ((i10 & BluetoothClass.Device.AUDIO_VIDEO_MICROPHONE) == 1040) {
                problemReporter().illegalModifierCombinationFinalAbstractForClass(sourceTypeBinding);
            }
        }
        if (isMemberType) {
            if (enclosingType.isInterface()) {
                if ((i12 & 6) != 0) {
                    problemReporter().illegalVisibilityModifierForInterfaceMemberType(sourceTypeBinding);
                    if ((i12 & 4) != 0) {
                        i10 &= -5;
                    }
                }
                if ((i12 & 8) != 0) {
                    if (enclosingType.isInterface()) {
                        i10 |= 8;
                    }
                } else if (!enclosingType.isStatic()) {
                    problemReporter().illegalStaticModifierForMemberType(sourceTypeBinding);
                }
            } else {
                int i15 = i12 & 7;
                if ((i15 & (i15 - 1)) > 1) {
                    problemReporter().illegalVisibilityModifierCombinationForMemberType(sourceTypeBinding);
                    if ((i12 & 1) != 0) {
                        if ((i12 & 4) != 0) {
                            i10 &= -5;
                        }
                    } else if ((i12 & 4) != 0) {
                    }
                }
                if ((i12 & 8) != 0) {
                }
            }
        }
        sourceTypeBinding.modifiers = i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x007f, code lost:
    
        if ((r0 & 2) != 0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0081, code lost:
    
        r2 = r2 & (-3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x008a, code lost:
    
        if ((r0 & 2) != 0) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void checkAndSetModifiersForField(FieldBinding fieldBinding, FieldDeclaration fieldDeclaration) {
        int i10;
        int i11 = fieldBinding.modifiers;
        ReferenceBinding referenceBinding = fieldBinding.declaringClass;
        if ((4194304 & i11) != 0) {
            problemReporter().duplicateModifierForField(referenceBinding, fieldDeclaration);
        }
        if (referenceBinding.isInterface()) {
            int i12 = i11 | 25;
            if ((65535 & i12) != 25) {
                if ((referenceBinding.modifiers & 8192) != 0) {
                    problemReporter().illegalModifierForAnnotationField(fieldDeclaration);
                } else {
                    problemReporter().illegalModifierForInterfaceField(fieldDeclaration);
                }
            }
            fieldBinding.modifiers = i12;
            return;
        }
        if (fieldDeclaration.getKind() == 3) {
            if ((i11 & 65535) != 0) {
                problemReporter().illegalModifierForEnumConstant(referenceBinding, fieldDeclaration);
            }
            fieldBinding.modifiers |= 134234137;
            return;
        }
        if ((65312 & i11) != 0) {
            problemReporter().illegalModifierForField(referenceBinding, fieldDeclaration);
            i10 = (-65313) & i11;
        } else {
            i10 = i11;
        }
        int i13 = i11 & 7;
        if ((i13 & (i13 - 1)) > 1) {
            problemReporter().illegalVisibilityModifierCombinationForField(referenceBinding, fieldDeclaration);
            if ((i11 & 1) != 0) {
                if ((i11 & 4) != 0) {
                    i10 &= -5;
                }
            } else if ((i11 & 4) != 0) {
            }
        }
        if ((i11 & 80) == 80) {
            problemReporter().illegalModifierCombinationFinalVolatileForField(referenceBinding, fieldDeclaration);
        }
        if (fieldDeclaration.initialization == null && (i10 & 16) != 0) {
            i10 |= 67108864;
        }
        fieldBinding.modifiers = i10;
    }

    private void checkForInheritedMemberTypes(SourceTypeBinding sourceTypeBinding) {
        ReferenceBinding[] referenceBindingArr;
        ReferenceBinding[] referenceBindingArr2;
        ReferenceBinding[] referenceBindingArr3 = null;
        ReferenceBinding referenceBinding = sourceTypeBinding;
        int i10 = 0;
        while (!referenceBinding.hasMemberTypes()) {
            ReferenceBinding[] superInterfaces = referenceBinding.superInterfaces();
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
                    for (ReferenceBinding referenceBinding2 : superInterfaces) {
                        int i12 = 0;
                        while (true) {
                            if (i12 >= i11) {
                                referenceBindingArr2[i11] = referenceBinding2;
                                i11++;
                                break;
                            } else if (TypeBinding.equalsEquals(referenceBinding2, referenceBindingArr2[i12])) {
                                break;
                            } else {
                                i12++;
                            }
                        }
                    }
                    referenceBindingArr3 = referenceBindingArr2;
                    i10 = i11;
                }
            }
            referenceBinding = referenceBinding.superclass();
            if (referenceBinding == null || (referenceBinding.tagBits & 65536) != 0) {
                if (referenceBindingArr3 != null) {
                    boolean z10 = false;
                    for (int i13 = 0; i13 < i10; i13++) {
                        ReferenceBinding referenceBinding3 = referenceBindingArr3[i13];
                        if ((referenceBinding3.tagBits & 65536) == 0) {
                            if (referenceBinding3.hasMemberTypes()) {
                                return;
                            }
                            ReferenceBinding[] superInterfaces2 = referenceBinding3.superInterfaces();
                            if (superInterfaces2 == null || superInterfaces2 == Binding.NO_SUPERINTERFACES) {
                                z10 = true;
                            } else {
                                int length2 = i10 + superInterfaces2.length;
                                if (length2 >= referenceBindingArr3.length) {
                                    referenceBindingArr = new ReferenceBinding[length2 + 5];
                                    System.arraycopy(referenceBindingArr3, 0, referenceBindingArr, 0, i10);
                                } else {
                                    referenceBindingArr = referenceBindingArr3;
                                }
                                int i14 = i10;
                                for (ReferenceBinding referenceBinding4 : superInterfaces2) {
                                    int i15 = 0;
                                    while (true) {
                                        if (i15 >= i14) {
                                            referenceBindingArr[i14] = referenceBinding4;
                                            i14++;
                                            break;
                                        } else if (TypeBinding.equalsEquals(referenceBinding4, referenceBindingArr[i15])) {
                                            break;
                                        } else {
                                            i15++;
                                        }
                                    }
                                }
                                z10 = true;
                                referenceBindingArr3 = referenceBindingArr;
                                i10 = i14;
                            }
                        }
                    }
                    if (z10) {
                        for (int i16 = 0; i16 < i10; i16++) {
                            referenceBindingArr3[i16].tagBits |= 65536;
                        }
                    }
                }
                ReferenceBinding referenceBinding5 = sourceTypeBinding;
                do {
                    referenceBinding5.tagBits |= 65536;
                    referenceBinding5 = referenceBinding5.superclass();
                    if (referenceBinding5 == null) {
                        return;
                    }
                } while ((referenceBinding5.tagBits & 65536) == 0);
                return;
            }
        }
    }

    private boolean connectEnumSuperclass() {
        SourceTypeBinding sourceTypeBinding = this.referenceContext.binding;
        ReferenceBinding javaLangEnum = getJavaLangEnum();
        if ((javaLangEnum.tagBits & 128) != 0) {
            sourceTypeBinding.tagBits |= 131072;
            sourceTypeBinding.setSuperClass(javaLangEnum);
            return false;
        }
        boolean detectHierarchyCycle = detectHierarchyCycle(sourceTypeBinding, javaLangEnum, null);
        TypeVariableBinding[] typeVariables = javaLangEnum.typeVariables();
        if (typeVariables == Binding.NO_TYPE_VARIABLES) {
            problemReporter().nonGenericTypeCannotBeParameterized(0, null, javaLangEnum, new TypeBinding[]{sourceTypeBinding});
            return false;
        }
        if (1 != typeVariables.length) {
            problemReporter().incorrectArityForParameterizedType(null, javaLangEnum, new TypeBinding[]{sourceTypeBinding});
            return false;
        }
        ParameterizedTypeBinding createParameterizedType = environment().createParameterizedType(javaLangEnum, new TypeBinding[]{environment().convertToRawType(sourceTypeBinding, false)}, null);
        sourceTypeBinding.tagBits = (131072 & createParameterizedType.tagBits) | sourceTypeBinding.tagBits;
        sourceTypeBinding.setSuperClass(createParameterizedType);
        if (!typeVariables[0].boundCheck(createParameterizedType, sourceTypeBinding, this, null).isOKbyJLS()) {
            problemReporter().typeMismatchError(javaLangEnum, typeVariables[0], sourceTypeBinding, (ASTNode) null);
        }
        return true ^ detectHierarchyCycle;
    }

    private void connectMemberTypes() {
        ReferenceBinding[] referenceBindingArr = this.referenceContext.binding.memberTypes;
        if (referenceBindingArr == null || referenceBindingArr == Binding.NO_MEMBER_TYPES) {
            return;
        }
        for (ReferenceBinding referenceBinding : referenceBindingArr) {
            ((SourceTypeBinding) referenceBinding).scope.connectTypeHierarchy();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00c1, code lost:
    
        if (r8.resolvedType.isValidBinding() == false) goto L42;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean connectSuperInterfaces() {
        int i10;
        int i11;
        SourceTypeBinding sourceTypeBinding = this.referenceContext.binding;
        sourceTypeBinding.setSuperInterfaces(Binding.NO_SUPERINTERFACES);
        TypeReference[] typeReferenceArr = this.referenceContext.superInterfaces;
        boolean z10 = 1;
        if (typeReferenceArr == null) {
            if (!sourceTypeBinding.isAnnotationType() || compilerOptions().sourceLevel < ClassFileConstants.JDK1_5) {
                return true;
            }
            ReferenceBinding javaLangAnnotationAnnotation = getJavaLangAnnotationAnnotation();
            boolean detectHierarchyCycle = detectHierarchyCycle(sourceTypeBinding, javaLangAnnotationAnnotation, null);
            sourceTypeBinding.setSuperInterfaces(new ReferenceBinding[]{javaLangAnnotationAnnotation});
            return !detectHierarchyCycle;
        }
        if (sourceTypeBinding.f102482id == 1) {
            return true;
        }
        int length = typeReferenceArr.length;
        ReferenceBinding[] referenceBindingArr = new ReferenceBinding[length];
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i13 < length) {
            TypeReference typeReference = this.referenceContext.superInterfaces[i13];
            ReferenceBinding findSupertype = findSupertype(typeReference);
            if (findSupertype == null) {
                sourceTypeBinding.tagBits |= 131072;
                i11 = i12;
                i10 = i13;
            } else {
                int i15 = i12;
                while (true) {
                    if (i15 >= i13) {
                        i10 = i13;
                        if (findSupertype.isInterface() || (findSupertype.tagBits & 128) != 0) {
                            if (findSupertype.isAnnotationType()) {
                                problemReporter().annotationTypeUsedAsSuperinterface(sourceTypeBinding, typeReference, findSupertype);
                            }
                            long j10 = findSupertype.tagBits;
                            if ((j10 & TagBits.HasDirectWildcard) != 0) {
                                problemReporter().superTypeCannotUseWildcard(sourceTypeBinding, typeReference, findSupertype);
                                sourceTypeBinding.tagBits |= 131072;
                            } else {
                                if ((j10 & 131072) == 0) {
                                    i11 = z10;
                                }
                                sourceTypeBinding.tagBits |= 131072;
                                i11 = (z10 ? 1 : 0) & (typeReference.resolvedType.isValidBinding() ? 1 : 0);
                                int i16 = sourceTypeBinding.typeBits | (findSupertype.typeBits & TypeIds.InheritableBits);
                                sourceTypeBinding.typeBits = i16;
                                if ((i16 & 3) != 0) {
                                    sourceTypeBinding.typeBits = i16 | sourceTypeBinding.applyCloseableInterfaceWhitelists();
                                }
                                referenceBindingArr[i14] = findSupertype;
                                i14++;
                            }
                        } else {
                            problemReporter().superinterfaceMustBeAnInterface(sourceTypeBinding, typeReference, findSupertype);
                            sourceTypeBinding.tagBits |= 131072;
                        }
                    } else {
                        i10 = i13;
                        if (TypeBinding.equalsEquals(referenceBindingArr[i15], findSupertype)) {
                            problemReporter().duplicateSuperinterface(sourceTypeBinding, typeReference, findSupertype);
                            sourceTypeBinding.tagBits |= 131072;
                            break;
                        }
                        i15++;
                        i13 = i10;
                    }
                }
                i11 = 0;
            }
            i13 = i10 + 1;
            i12 = 0;
            z10 = i11;
        }
        if (i14 > 0) {
            if (i14 != length) {
                ReferenceBinding[] referenceBindingArr2 = new ReferenceBinding[i14];
                System.arraycopy(referenceBindingArr, i12, referenceBindingArr2, i12, i14);
                referenceBindingArr = referenceBindingArr2;
            }
            sourceTypeBinding.setSuperInterfaces(referenceBindingArr);
        }
        return z10;
    }

    private boolean connectSuperclass() {
        TypeReference[] typeReferenceArr;
        TypeDeclaration typeDeclaration = this.referenceContext;
        SourceTypeBinding sourceTypeBinding = typeDeclaration.binding;
        if (sourceTypeBinding.f102482id == 1) {
            sourceTypeBinding.setSuperClass(null);
            sourceTypeBinding.setSuperInterfaces(Binding.NO_SUPERINTERFACES);
            if (!sourceTypeBinding.isClass()) {
                problemReporter().objectMustBeClass(sourceTypeBinding);
            }
            TypeDeclaration typeDeclaration2 = this.referenceContext;
            if (typeDeclaration2.superclass != null || ((typeReferenceArr = typeDeclaration2.superInterfaces) != null && typeReferenceArr.length > 0)) {
                problemReporter().objectCannotHaveSuperTypes(sourceTypeBinding);
            }
            return true;
        }
        TypeReference typeReference = typeDeclaration.superclass;
        if (typeReference == null) {
            if (sourceTypeBinding.isEnum() && compilerOptions().sourceLevel >= ClassFileConstants.JDK1_5) {
                return connectEnumSuperclass();
            }
            sourceTypeBinding.setSuperClass(getJavaLangObject());
            return !detectHierarchyCycle(sourceTypeBinding, sourceTypeBinding.superclass, null);
        }
        ReferenceBinding findSupertype = findSupertype(typeReference);
        if (findSupertype != null) {
            if (!findSupertype.isClass() && (findSupertype.tagBits & 128) == 0) {
                problemReporter().superclassMustBeAClass(sourceTypeBinding, typeReference, findSupertype);
            } else if (findSupertype.isFinal()) {
                problemReporter().classExtendFinalClass(sourceTypeBinding, typeReference, findSupertype);
            } else if ((findSupertype.tagBits & TagBits.HasDirectWildcard) != 0) {
                problemReporter().superTypeCannotUseWildcard(sourceTypeBinding, typeReference, findSupertype);
            } else {
                if (findSupertype.erasure().f102482id != 41) {
                    if ((findSupertype.tagBits & 131072) != 0 || !typeReference.resolvedType.isValidBinding()) {
                        sourceTypeBinding.setSuperClass(findSupertype);
                        sourceTypeBinding.tagBits |= 131072;
                        return typeReference.resolvedType.isValidBinding();
                    }
                    sourceTypeBinding.setSuperClass(findSupertype);
                    int i10 = sourceTypeBinding.typeBits | (findSupertype.typeBits & TypeIds.InheritableBits);
                    sourceTypeBinding.typeBits = i10;
                    if ((i10 & 3) != 0) {
                        sourceTypeBinding.typeBits = i10 | sourceTypeBinding.applyCloseableClassWhitelists();
                    }
                    return true;
                }
                problemReporter().cannotExtendEnum(sourceTypeBinding, typeReference, findSupertype);
            }
        }
        sourceTypeBinding.tagBits |= 131072;
        sourceTypeBinding.setSuperClass(getJavaLangObject());
        ReferenceBinding referenceBinding = sourceTypeBinding.superclass;
        if ((referenceBinding.tagBits & 256) != 0) {
            return false;
        }
        detectHierarchyCycle(sourceTypeBinding, referenceBinding, null);
        return false;
    }

    private void connectTypeHierarchyWithoutMembers() {
        Scope scope = this.parent;
        if (scope instanceof CompilationUnitScope) {
            if (((CompilationUnitScope) scope).imports == null) {
                ((CompilationUnitScope) scope).checkAndSetImports();
            }
        } else if (scope instanceof ClassScope) {
            ((ClassScope) scope).connectTypeHierarchyWithoutMembers();
        }
        SourceTypeBinding sourceTypeBinding = this.referenceContext.binding;
        if ((sourceTypeBinding.tagBits & 256) != 0) {
            return;
        }
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        boolean z10 = compilationUnitScope.connectingHierarchy;
        compilationUnitScope.connectingHierarchy = true;
        try {
            sourceTypeBinding.tagBits = 256 | sourceTypeBinding.tagBits;
            environment().typesBeingConnected.add(sourceTypeBinding);
            boolean connectSuperclass = connectSuperclass() & connectSuperInterfaces();
            environment().typesBeingConnected.remove(sourceTypeBinding);
            sourceTypeBinding.tagBits |= 512;
            boolean connectTypeVariables = connectSuperclass & connectTypeVariables(this.referenceContext.typeParameters, false);
            sourceTypeBinding.tagBits |= TagBits.TypeVariablesAreConnected;
            if (connectTypeVariables && sourceTypeBinding.isHierarchyInconsistent()) {
                problemReporter().hierarchyHasProblems(sourceTypeBinding);
            }
        } finally {
            compilationUnitScope.connectingHierarchy = z10;
        }
    }

    private ReferenceBinding findSupertype(TypeReference typeReference) {
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        LookupEnvironment lookupEnvironment = compilationUnitScope.environment;
        try {
            try {
                lookupEnvironment.missingClassFileLocation = typeReference;
                typeReference.aboutToResolve(this);
                compilationUnitScope.recordQualifiedReference(typeReference.getTypeName());
                this.superTypeReference = typeReference;
                return (ReferenceBinding) typeReference.resolveSuperType(this);
            } catch (AbortCompilation e10) {
                SourceTypeBinding sourceTypeBinding = this.referenceContext.binding;
                if (sourceTypeBinding.superInterfaces == null) {
                    sourceTypeBinding.setSuperInterfaces(Binding.NO_SUPERINTERFACES);
                }
                e10.updateContext(typeReference, referenceCompilationUnit().compilationResult);
                throw e10;
            }
        } finally {
            lookupEnvironment.missingClassFileLocation = null;
            this.superTypeReference = null;
        }
    }

    public void buildAnonymousTypeBinding(SourceTypeBinding sourceTypeBinding, ReferenceBinding referenceBinding) {
        AbstractMethodDeclaration[] abstractMethodDeclarationArr;
        LocalTypeBinding buildLocalType = buildLocalType(sourceTypeBinding, sourceTypeBinding.fPackage);
        buildLocalType.modifiers |= 134217728;
        int i10 = referenceBinding.typeBits;
        if ((i10 & 4) != 0 && (abstractMethodDeclarationArr = this.referenceContext.methods) != null) {
            int i11 = 0;
            while (true) {
                if (i11 >= abstractMethodDeclarationArr.length) {
                    break;
                }
                if (CharOperation.equals(TypeConstants.CLOSE, abstractMethodDeclarationArr[i11].selector) && abstractMethodDeclarationArr[i11].arguments == null) {
                    i10 &= TypeIds.InheritableBits;
                    break;
                }
                i11++;
            }
        }
        buildLocalType.typeBits = i10 | buildLocalType.typeBits;
        if (referenceBinding.isInterface()) {
            buildLocalType.setSuperClass(getJavaLangObject());
            buildLocalType.setSuperInterfaces(new ReferenceBinding[]{referenceBinding});
            TypeDeclaration typeDeclaration = this.referenceContext;
            TypeReference typeReference = typeDeclaration.allocation.type;
            if (typeReference != null) {
                typeDeclaration.superInterfaces = new TypeReference[]{typeReference};
                if ((TagBits.HasDirectWildcard & referenceBinding.tagBits) != 0) {
                    problemReporter().superTypeCannotUseWildcard(buildLocalType, typeReference, referenceBinding);
                    buildLocalType.tagBits |= 131072;
                    buildLocalType.setSuperInterfaces(Binding.NO_SUPERINTERFACES);
                }
            }
        } else {
            buildLocalType.setSuperClass(referenceBinding);
            buildLocalType.setSuperInterfaces(Binding.NO_SUPERINTERFACES);
            TypeDeclaration typeDeclaration2 = this.referenceContext;
            TypeReference typeReference2 = typeDeclaration2.allocation.type;
            if (typeReference2 != null) {
                typeDeclaration2.superclass = typeReference2;
                if (referenceBinding.erasure().f102482id == 41) {
                    problemReporter().cannotExtendEnum(buildLocalType, typeReference2, referenceBinding);
                    buildLocalType.tagBits |= 131072;
                    buildLocalType.setSuperClass(getJavaLangObject());
                } else if (referenceBinding.isFinal()) {
                    problemReporter().anonymousClassCannotExtendFinalClass(typeReference2, referenceBinding);
                    buildLocalType.tagBits |= 131072;
                    buildLocalType.setSuperClass(getJavaLangObject());
                } else if ((TagBits.HasDirectWildcard & referenceBinding.tagBits) != 0) {
                    problemReporter().superTypeCannotUseWildcard(buildLocalType, typeReference2, referenceBinding);
                    buildLocalType.tagBits |= 131072;
                    buildLocalType.setSuperClass(getJavaLangObject());
                }
            }
        }
        connectMemberTypes();
        buildFieldsAndMethods();
        buildLocalType.faultInTypesForFieldsAndMethods();
        buildLocalType.verifyMethods(environment().methodVerifier());
    }

    public void buildFields() {
        SourceTypeBinding sourceTypeBinding = this.referenceContext.binding;
        if (sourceTypeBinding.areFieldsInitialized()) {
            return;
        }
        FieldDeclaration[] fieldDeclarationArr = this.referenceContext.fields;
        if (fieldDeclarationArr == null) {
            sourceTypeBinding.setFields(Binding.NO_FIELDS);
            return;
        }
        int length = fieldDeclarationArr.length;
        int i10 = 0;
        for (FieldDeclaration fieldDeclaration : fieldDeclarationArr) {
            int kind = fieldDeclaration.getKind();
            if (kind == 1 || kind == 3) {
                i10++;
            }
        }
        FieldBinding[] fieldBindingArr = new FieldBinding[i10];
        HashtableOfObject hashtableOfObject = new HashtableOfObject(i10);
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            FieldDeclaration fieldDeclaration2 = fieldDeclarationArr[i12];
            if (fieldDeclaration2.getKind() != 2) {
                FieldBinding fieldBinding = new FieldBinding(fieldDeclaration2, null, fieldDeclaration2.modifiers | 33554432, sourceTypeBinding);
                fieldBinding.f102483id = i11;
                checkAndSetModifiersForField(fieldBinding, fieldDeclaration2);
                if (hashtableOfObject.containsKey(fieldDeclaration2.name)) {
                    FieldBinding fieldBinding2 = (FieldBinding) hashtableOfObject.get(fieldDeclaration2.name);
                    if (fieldBinding2 != null) {
                        int i13 = 0;
                        while (true) {
                            if (i13 >= i12) {
                                break;
                            }
                            FieldDeclaration fieldDeclaration3 = fieldDeclarationArr[i13];
                            if (fieldDeclaration3.binding == fieldBinding2) {
                                problemReporter().duplicateFieldInType(sourceTypeBinding, fieldDeclaration3);
                                break;
                            }
                            i13++;
                        }
                    }
                    hashtableOfObject.put(fieldDeclaration2.name, null);
                    problemReporter().duplicateFieldInType(sourceTypeBinding, fieldDeclaration2);
                    fieldDeclaration2.binding = null;
                } else {
                    hashtableOfObject.put(fieldDeclaration2.name, fieldBinding);
                    fieldBindingArr[i11] = fieldBinding;
                    i11++;
                }
            }
        }
        if (i11 != i10) {
            FieldBinding[] fieldBindingArr2 = new FieldBinding[i11];
            System.arraycopy(fieldBindingArr, 0, fieldBindingArr2, 0, i11);
            fieldBindingArr = fieldBindingArr2;
        }
        sourceTypeBinding.tagBits &= -12289;
        sourceTypeBinding.setFields(fieldBindingArr);
    }

    public void buildFieldsAndMethods() {
        buildFields();
        buildMethods();
        SourceTypeBinding sourceTypeBinding = this.referenceContext.binding;
        if (!sourceTypeBinding.isPrivate()) {
            ReferenceBinding referenceBinding = sourceTypeBinding.superclass;
            if ((referenceBinding instanceof SourceTypeBinding) && referenceBinding.isPrivate()) {
                ((SourceTypeBinding) sourceTypeBinding.superclass).tagIndirectlyAccessibleMembers();
            }
        }
        if (sourceTypeBinding.isMemberType() && !sourceTypeBinding.isLocalType()) {
            ((MemberTypeBinding) sourceTypeBinding).checkSyntheticArgsAndFields();
        }
        for (ReferenceBinding referenceBinding2 : sourceTypeBinding.memberTypes) {
            ((SourceTypeBinding) referenceBinding2).scope.buildFieldsAndMethods();
        }
    }

    public void buildLocalTypeBinding(SourceTypeBinding sourceTypeBinding) {
        LocalTypeBinding buildLocalType = buildLocalType(sourceTypeBinding, sourceTypeBinding.fPackage);
        connectTypeHierarchy();
        if (compilerOptions().sourceLevel >= ClassFileConstants.JDK1_5) {
            checkParameterizedTypeBounds();
            checkParameterizedSuperTypeCollisions();
        }
        buildFieldsAndMethods();
        buildLocalType.faultInTypesForFieldsAndMethods();
        this.referenceContext.binding.verifyMethods(environment().methodVerifier());
    }

    public void buildMethods() {
        int i10;
        boolean z10;
        MethodBinding createMethod;
        MethodBinding createMethod2;
        SourceTypeBinding sourceTypeBinding = this.referenceContext.binding;
        if (sourceTypeBinding.areMethodsInitialized()) {
            return;
        }
        boolean z11 = TypeDeclaration.kind(this.referenceContext.modifiers) == 3;
        TypeDeclaration typeDeclaration = this.referenceContext;
        AbstractMethodDeclaration[] abstractMethodDeclarationArr = typeDeclaration.methods;
        if (abstractMethodDeclarationArr == null && !z11) {
            typeDeclaration.binding.setMethods(Binding.NO_METHODS);
            return;
        }
        int length = abstractMethodDeclarationArr == null ? 0 : abstractMethodDeclarationArr.length;
        int i11 = 0;
        while (true) {
            if (i11 >= length) {
                i10 = -1;
                break;
            } else {
                if (abstractMethodDeclarationArr[i11].isClinit()) {
                    i10 = i11;
                    break;
                }
                i11++;
            }
        }
        int i12 = z11 ? 2 : 0;
        int i13 = (i10 == -1 ? length : length - 1) + i12;
        MethodBinding[] methodBindingArr = new MethodBinding[i13];
        if (z11) {
            methodBindingArr[0] = sourceTypeBinding.addSyntheticEnumMethod(TypeConstants.VALUES);
            methodBindingArr[1] = sourceTypeBinding.addSyntheticEnumMethod(TypeConstants.VALUEOF);
        }
        if (sourceTypeBinding.isAbstract()) {
            z10 = false;
            for (int i14 = 0; i14 < length; i14++) {
                if (i14 != i10 && (createMethod2 = new MethodScope(this, abstractMethodDeclarationArr[i14], false).createMethod(abstractMethodDeclarationArr[i14])) != null) {
                    int i15 = i12 + 1;
                    methodBindingArr[i12] = createMethod2;
                    z10 = z10 || createMethod2.isNative();
                    i12 = i15;
                }
            }
        } else {
            z10 = false;
            boolean z12 = false;
            for (int i16 = 0; i16 < length; i16++) {
                if (i16 != i10 && (createMethod = new MethodScope(this, abstractMethodDeclarationArr[i16], false).createMethod(abstractMethodDeclarationArr[i16])) != null) {
                    int i17 = i12 + 1;
                    methodBindingArr[i12] = createMethod;
                    z12 = z12 || createMethod.isAbstract();
                    z10 = z10 || createMethod.isNative();
                    i12 = i17;
                }
            }
            if (z12) {
                problemReporter().abstractMethodInConcreteClass(sourceTypeBinding);
            }
        }
        if (i12 != i13) {
            MethodBinding[] methodBindingArr2 = new MethodBinding[i12];
            System.arraycopy(methodBindingArr, 0, methodBindingArr2, 0, i12);
            methodBindingArr = methodBindingArr2;
        }
        sourceTypeBinding.tagBits &= -49153;
        sourceTypeBinding.setMethods(methodBindingArr);
        if (z10) {
            for (MethodBinding methodBinding : methodBindingArr) {
                methodBinding.modifiers = 134217728 | methodBinding.modifiers;
            }
            FieldBinding[] unResolvedFields = sourceTypeBinding.unResolvedFields();
            for (FieldBinding fieldBinding : unResolvedFields) {
                fieldBinding.modifiers |= 134217728;
            }
        }
        if (z11 && compilerOptions().isAnnotationBasedNullAnalysisEnabled) {
            LookupEnvironment environment = environment();
            ((SyntheticMethodBinding) methodBindingArr[0]).markNonNull(environment);
            ((SyntheticMethodBinding) methodBindingArr[1]).markNonNull(environment);
        }
    }

    public SourceTypeBinding buildType(SourceTypeBinding sourceTypeBinding, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        TypeDeclaration typeDeclaration = this.referenceContext;
        typeDeclaration.scope = this;
        typeDeclaration.staticInitializerScope = new MethodScope(this, this.referenceContext, true);
        this.referenceContext.initializerScope = new MethodScope(this, this.referenceContext, false);
        if (sourceTypeBinding == null) {
            this.referenceContext.binding = new SourceTypeBinding(CharOperation.arrayConcat(packageBinding.compoundName, this.referenceContext.name), packageBinding, this);
        } else {
            char[][] deepCopy = CharOperation.deepCopy(sourceTypeBinding.compoundName);
            deepCopy[deepCopy.length - 1] = CharOperation.concat(deepCopy[deepCopy.length - 1], this.referenceContext.name, '$');
            ReferenceBinding type0 = packageBinding.getType0(deepCopy[deepCopy.length - 1]);
            if (type0 != null && !(type0 instanceof UnresolvedReferenceBinding)) {
                this.parent.problemReporter().duplicateNestedType(this.referenceContext);
            }
            this.referenceContext.binding = new MemberTypeBinding(deepCopy, this, sourceTypeBinding);
        }
        SourceTypeBinding sourceTypeBinding2 = this.referenceContext.binding;
        sourceTypeBinding2.module = module();
        environment().setAccessRestriction(sourceTypeBinding2, accessRestriction);
        TypeParameter[] typeParameterArr = this.referenceContext.typeParameters;
        sourceTypeBinding2.typeVariables = (typeParameterArr == null || typeParameterArr.length == 0) ? Binding.NO_TYPE_VARIABLES : null;
        sourceTypeBinding2.fPackage.addType(sourceTypeBinding2);
        checkAndSetModifiers();
        buildTypeVariables();
        buildMemberTypes(accessRestriction);
        return sourceTypeBinding2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x00b3, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void checkParameterizedSuperTypeCollisions() {
        TypeReference[] typeReferenceArr;
        int i10;
        TypeBinding typeBinding;
        ASTNode aSTNode;
        SourceTypeBinding sourceTypeBinding = this.referenceContext.binding;
        TypeBinding[] typeBindingArr = sourceTypeBinding.superInterfaces;
        Map hashMap = new HashMap(2);
        TypeBinding typeBinding2 = sourceTypeBinding.isInterface() ? null : sourceTypeBinding.superclass;
        int length = typeBindingArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            TypeBinding typeBinding3 = typeBindingArr[i11];
            if (typeBinding3 != null && (typeBinding2 == null || !hasErasedCandidatesCollisions(typeBinding2, typeBinding3, hashMap, sourceTypeBinding, this.referenceContext))) {
                for (int i12 = 0; i12 < i11; i12++) {
                    TypeBinding typeBinding4 = typeBindingArr[i12];
                    if (typeBinding4 != null && hasErasedCandidatesCollisions(typeBinding3, typeBinding4, hashMap, sourceTypeBinding, this.referenceContext)) {
                        break;
                    }
                }
            }
        }
        TypeParameter[] typeParameterArr = this.referenceContext.typeParameters;
        int length2 = typeParameterArr == null ? 0 : typeParameterArr.length;
        for (int i13 = 0; i13 < length2; i13++) {
            TypeParameter typeParameter = typeParameterArr[i13];
            TypeVariableBinding typeVariableBinding = typeParameter.binding;
            if (typeVariableBinding != null && typeVariableBinding.isValidBinding() && (typeReferenceArr = typeParameter.bounds) != null) {
                boolean equalsEquals = TypeBinding.equalsEquals(typeVariableBinding.firstBound, typeVariableBinding.superclass);
                int length3 = typeReferenceArr.length;
                int i14 = 0;
                while (i14 < length3) {
                    TypeReference typeReference = typeReferenceArr[i14];
                    TypeBinding typeBinding5 = typeReference.resolvedType;
                    if (typeBinding5 == null || !typeBinding5.isValidBinding()) {
                        i10 = i14;
                    } else {
                        if (equalsEquals) {
                            typeBinding = typeBinding5;
                            aSTNode = typeReference;
                            i10 = i14;
                            if (hasErasedCandidatesCollisions(typeBinding5, typeVariableBinding.superclass, hashMap, typeVariableBinding, aSTNode)) {
                                break;
                            }
                        } else {
                            typeBinding = typeBinding5;
                            aSTNode = typeReference;
                            i10 = i14;
                        }
                        int length4 = typeVariableBinding.superInterfaces.length;
                        while (true) {
                            int i15 = length4 - 1;
                            if (i15 < 0) {
                                break;
                            } else if (hasErasedCandidatesCollisions(typeBinding, typeVariableBinding.superInterfaces[i15], hashMap, typeVariableBinding, aSTNode)) {
                                break;
                            } else {
                                length4 = i15;
                            }
                        }
                    }
                    i14 = i10 + 1;
                }
            }
        }
        ReferenceBinding[] referenceBindingArr = this.referenceContext.binding.memberTypes;
        if (referenceBindingArr == null || referenceBindingArr == Binding.NO_MEMBER_TYPES) {
            return;
        }
        for (ReferenceBinding referenceBinding : referenceBindingArr) {
            ((SourceTypeBinding) referenceBinding).scope.checkParameterizedSuperTypeCollisions();
        }
    }

    public void checkParameterizedTypeBounds() {
        ArrayList<Object> arrayList = this.deferredBoundChecks;
        int size = arrayList == null ? 0 : arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = this.deferredBoundChecks.get(i10);
            if (obj instanceof TypeReference) {
                ((TypeReference) obj).checkBounds(this);
            } else if (obj instanceof Runnable) {
                ((Runnable) obj).run();
            }
        }
        this.deferredBoundChecks = null;
        ReferenceBinding[] referenceBindingArr = this.referenceContext.binding.memberTypes;
        if (referenceBindingArr == null || referenceBindingArr == Binding.NO_MEMBER_TYPES) {
            return;
        }
        for (ReferenceBinding referenceBinding : referenceBindingArr) {
            ((SourceTypeBinding) referenceBinding).scope.checkParameterizedTypeBounds();
        }
    }

    @Override
    public Binding checkRedundantDefaultNullness(int i10, int i11) {
        int nullDefault;
        Binding localCheckRedundantDefaultNullness = localCheckRedundantDefaultNullness(i10, i11);
        if (localCheckRedundantDefaultNullness != null) {
            return localCheckRedundantDefaultNullness;
        }
        SourceTypeBinding sourceTypeBinding = this.referenceContext.binding;
        if (sourceTypeBinding == null || (nullDefault = sourceTypeBinding.getNullDefault()) == 0) {
            return this.parent.checkRedundantDefaultNullness(i10, i11);
        }
        if (nullDefault == i10) {
            return sourceTypeBinding;
        }
        return null;
    }

    public void connectTypeHierarchy() {
        SourceTypeBinding sourceTypeBinding = this.referenceContext.binding;
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        boolean z10 = compilationUnitScope.connectingHierarchy;
        compilationUnitScope.connectingHierarchy = true;
        try {
            long j10 = sourceTypeBinding.tagBits;
            if ((j10 & 256) == 0) {
                sourceTypeBinding.tagBits = j10 | 256;
                environment().typesBeingConnected.add(sourceTypeBinding);
                boolean connectSuperclass = connectSuperclass() & connectSuperInterfaces();
                environment().typesBeingConnected.remove(sourceTypeBinding);
                sourceTypeBinding.tagBits |= 512;
                boolean connectTypeVariables = connectSuperclass & connectTypeVariables(this.referenceContext.typeParameters, false);
                sourceTypeBinding.tagBits |= TagBits.TypeVariablesAreConnected;
                if (connectTypeVariables && sourceTypeBinding.isHierarchyInconsistent()) {
                    problemReporter().hierarchyHasProblems(sourceTypeBinding);
                }
            }
            connectMemberTypes();
            compilationUnitScope.connectingHierarchy = z10;
            LookupEnvironment environment = environment();
            try {
                try {
                    environment.missingClassFileLocation = this.referenceContext;
                    checkForInheritedMemberTypes(sourceTypeBinding);
                } catch (AbortCompilation e10) {
                    e10.updateContext(this.referenceContext, referenceCompilationUnit().compilationResult);
                    throw e10;
                }
            } finally {
                environment.missingClassFileLocation = null;
            }
        } catch (Throwable th2) {
            compilationUnitScope.connectingHierarchy = z10;
            throw th2;
        }
    }

    @Override
    public boolean deferCheck(Runnable runnable) {
        if (!compilationUnitScope().connectingHierarchy) {
            return false;
        }
        if (this.deferredBoundChecks == null) {
            this.deferredBoundChecks = new ArrayList<>();
        }
        this.deferredBoundChecks.add(runnable);
        return true;
    }

    public boolean detectHierarchyCycle(TypeBinding typeBinding, TypeReference typeReference) {
        if (!(typeBinding instanceof ReferenceBinding)) {
            return false;
        }
        if (typeReference != this.superTypeReference) {
            if ((typeBinding.tagBits & 256) == 0 && (typeBinding instanceof SourceTypeBinding)) {
                ((SourceTypeBinding) typeBinding).scope.connectTypeHierarchyWithoutMembers();
            }
            return false;
        }
        if (typeBinding.isTypeVariable()) {
            return false;
        }
        if (typeBinding.isParameterizedType()) {
            typeBinding = ((ParameterizedTypeBinding) typeBinding).genericType();
        }
        compilationUnitScope().recordSuperTypeReference(typeBinding);
        return detectHierarchyCycle(this.referenceContext.binding, (ReferenceBinding) typeBinding, typeReference);
    }

    @Override
    public boolean hasDefaultNullnessFor(int i10, int i11) {
        int nullDefault;
        int localNonNullByDefaultValue = localNonNullByDefaultValue(i11);
        if (localNonNullByDefaultValue != 0) {
            return (i10 & localNonNullByDefaultValue) != 0;
        }
        SourceTypeBinding sourceTypeBinding = this.referenceContext.binding;
        return (sourceTypeBinding == null || (nullDefault = sourceTypeBinding.getNullDefault()) == 0) ? this.parent.hasDefaultNullnessFor(i10, i11) : (i10 & nullDefault) != 0;
    }

    @Override
    public ProblemReporter problemReporter() {
        MethodScope outerMostMethodScope = outerMostMethodScope();
        if (outerMostMethodScope != null) {
            return outerMostMethodScope.problemReporter();
        }
        ProblemReporter problemReporter = referenceCompilationUnit().problemReporter;
        problemReporter.referenceContext = this.referenceContext;
        return problemReporter;
    }

    public TypeDeclaration referenceType() {
        return this.referenceContext;
    }

    @Override
    public void resolveTypeParameter(TypeParameter typeParameter) {
        typeParameter.resolve(this);
    }

    public String toString() {
        if (this.referenceContext == null) {
            return "--- Class Scope ---\n\n Binding not initialized";
        }
        return "--- Class Scope ---\n\n" + this.referenceContext.binding.toString();
    }

    private boolean detectHierarchyCycle(SourceTypeBinding sourceTypeBinding, ReferenceBinding referenceBinding, TypeReference typeReference) {
        TypeBinding typeBinding;
        boolean z10;
        if (referenceBinding.isRawType()) {
            referenceBinding = ((RawTypeBinding) referenceBinding).genericType();
        }
        if (TypeBinding.equalsEquals(sourceTypeBinding, referenceBinding)) {
            problemReporter().hierarchyCircularity(sourceTypeBinding, referenceBinding, typeReference);
            sourceTypeBinding.tagBits |= 131072;
            return true;
        }
        if (referenceBinding.isMemberType()) {
            ReferenceBinding enclosingType = referenceBinding.enclosingType();
            while (!enclosingType.isHierarchyBeingActivelyConnected()) {
                enclosingType = enclosingType.enclosingType();
                if (enclosingType == null) {
                }
            }
            problemReporter().hierarchyCircularity(sourceTypeBinding, enclosingType, typeReference);
            sourceTypeBinding.tagBits |= 131072;
            enclosingType.tagBits |= 131072;
            return true;
        }
        if (referenceBinding.isBinaryBinding()) {
            if (referenceBinding.problemId() != 1 && (referenceBinding.tagBits & 131072) != 0) {
                sourceTypeBinding.tagBits |= 131072;
                problemReporter().hierarchyHasProblems(sourceTypeBinding);
                return true;
            }
            ReferenceBinding superclass = referenceBinding.superclass();
            if (superclass == null) {
                z10 = false;
            } else {
                if (TypeBinding.equalsEquals(sourceTypeBinding, superclass)) {
                    problemReporter().hierarchyCircularity(sourceTypeBinding, referenceBinding, typeReference);
                    sourceTypeBinding.tagBits |= 131072;
                    referenceBinding.tagBits = 131072 | referenceBinding.tagBits;
                    return true;
                }
                if (superclass.isParameterizedType()) {
                    superclass = ((ParameterizedTypeBinding) superclass).genericType();
                }
                z10 = detectHierarchyCycle(sourceTypeBinding, superclass, typeReference);
                if ((superclass.tagBits & 131072) != 0) {
                    sourceTypeBinding.tagBits |= 131072;
                    superclass.tagBits |= 131072;
                }
            }
            ReferenceBinding[] superInterfaces = referenceBinding.superInterfaces();
            if (superInterfaces != null && superInterfaces != Binding.NO_SUPERINTERFACES) {
                for (ReferenceBinding referenceBinding2 : superInterfaces) {
                    if (TypeBinding.equalsEquals(sourceTypeBinding, referenceBinding2)) {
                        problemReporter().hierarchyCircularity(sourceTypeBinding, referenceBinding, typeReference);
                        sourceTypeBinding.tagBits |= 131072;
                        referenceBinding.tagBits = 131072 | referenceBinding.tagBits;
                        return true;
                    }
                    if (referenceBinding2.isParameterizedType()) {
                        referenceBinding2 = ((ParameterizedTypeBinding) referenceBinding2).genericType();
                    }
                    z10 |= detectHierarchyCycle(sourceTypeBinding, referenceBinding2, typeReference);
                    if ((referenceBinding2.tagBits & 131072) != 0) {
                        sourceTypeBinding.tagBits |= 131072;
                        referenceBinding.tagBits |= 131072;
                    }
                }
            }
            return z10;
        }
        if (referenceBinding.isHierarchyBeingActivelyConnected()) {
            TypeReference typeReference2 = ((SourceTypeBinding) referenceBinding).scope.superTypeReference;
            if (typeReference2 != null && (typeBinding = typeReference2.resolvedType) != null) {
                ReferenceBinding referenceBinding3 = (ReferenceBinding) typeBinding;
                while (!referenceBinding3.isHierarchyBeingActivelyConnected()) {
                    referenceBinding3 = referenceBinding3.enclosingType();
                    if (referenceBinding3 == null) {
                    }
                }
                problemReporter().hierarchyCircularity(sourceTypeBinding, referenceBinding, typeReference);
                sourceTypeBinding.tagBits |= 131072;
                referenceBinding.tagBits = 131072 | referenceBinding.tagBits;
                return true;
            }
            if (typeReference2 != null && typeReference2.resolvedType == null) {
                char[] lastToken = typeReference2.getLastToken();
                Iterator<SourceTypeBinding> it = environment().typesBeingConnected.iterator();
                while (it.hasNext()) {
                    if (CharOperation.equals(lastToken, it.next().sourceName())) {
                        problemReporter().hierarchyCircularity(sourceTypeBinding, referenceBinding, typeReference);
                        sourceTypeBinding.tagBits |= 131072;
                        referenceBinding.tagBits = 131072 | referenceBinding.tagBits;
                        return true;
                    }
                }
            }
        }
        if ((referenceBinding.tagBits & 256) == 0 && referenceBinding.isValidBinding() && !referenceBinding.isUnresolvedType()) {
            ((SourceTypeBinding) referenceBinding).scope.connectTypeHierarchyWithoutMembers();
        }
        if ((referenceBinding.tagBits & 131072) != 0) {
            sourceTypeBinding.tagBits |= 131072;
        }
        return false;
    }
}
