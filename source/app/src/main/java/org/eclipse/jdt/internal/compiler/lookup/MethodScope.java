package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.ConstantPool;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;

public class MethodScope extends BlockScope {
    public int analysisIndex;
    public long[] definiteInits;
    public long[][] extraDefiniteInits;
    public SyntheticArgumentBinding[] extraSyntheticArguments;
    public boolean hasMissingSwitchDefault;
    public FieldBinding initializedField;
    public boolean isConstructorCall;
    public boolean isPropagatingInnerClassEmulation;
    public boolean isStatic;
    public int lastIndex;
    public int lastVisibleFieldID;
    public ReferenceContext referenceContext;

    public MethodScope(Scope scope, ReferenceContext referenceContext, boolean z10) {
        super(2, scope);
        this.isConstructorCall = false;
        this.lastVisibleFieldID = -1;
        this.lastIndex = 0;
        this.definiteInits = new long[4];
        this.extraDefiniteInits = new long[4];
        this.locals = new LocalVariableBinding[5];
        this.referenceContext = referenceContext;
        this.isStatic = z10;
        this.startIndex = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b8, code lost:
    
        if ((r0 & 2) != 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00ba, code lost:
    
        r2 = r2 & (-3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c3, code lost:
    
        if ((r0 & 2) != 0) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void checkAndSetModifiersForConstructor(MethodBinding methodBinding) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15 = methodBinding.modifiers;
        ReferenceBinding referenceBinding = methodBinding.declaringClass;
        if ((4194304 & i15) != 0) {
            problemReporter().duplicateModifierForMethod(referenceBinding, (AbstractMethodDeclaration) this.referenceContext);
        }
        if ((((ConstructorDeclaration) this.referenceContext).bits & 128) != 0 && (i14 = (i13 = referenceBinding.modifiers) & 16389) != 0) {
            i15 = (i13 & 16384) != 0 ? (i15 & (-8)) | 2 : (i15 & (-8)) | i14;
        }
        if (referenceBinding.isEnum()) {
            ReferenceContext referenceContext = this.referenceContext;
            if ((((ConstructorDeclaration) referenceContext).bits & 128) == 0) {
                if ((63485 & i15) != 0) {
                    problemReporter().illegalModifierForEnumConstructor((AbstractMethodDeclaration) this.referenceContext);
                    i12 = (-63486) & i15;
                } else {
                    if ((((AbstractMethodDeclaration) referenceContext).modifiers & 2048) != 0) {
                        problemReporter().illegalModifierForMethod((AbstractMethodDeclaration) this.referenceContext);
                    }
                    i12 = i15;
                }
                i10 = i12 | 2;
                i11 = i15 & 7;
                if ((i11 & (i11 - 1)) != 0) {
                    problemReporter().illegalVisibilityModifierCombinationForMethod(referenceBinding, (AbstractMethodDeclaration) this.referenceContext);
                    if ((i15 & 1) != 0) {
                        if ((i15 & 4) != 0) {
                            i10 &= -5;
                        }
                    } else if ((i15 & 4) != 0) {
                    }
                }
                methodBinding.modifiers = i10;
            }
        }
        if ((63480 & i15) != 0) {
            problemReporter().illegalModifierForMethod((AbstractMethodDeclaration) this.referenceContext);
            i10 = (-63481) & i15;
        } else {
            if ((((AbstractMethodDeclaration) this.referenceContext).modifiers & 2048) != 0) {
                problemReporter().illegalModifierForMethod((AbstractMethodDeclaration) this.referenceContext);
            }
            i10 = i15;
        }
        i11 = i15 & 7;
        if ((i11 & (i11 - 1)) != 0) {
        }
        methodBinding.modifiers = i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:77:0x012f, code lost:
    
        if ((r0 & 2) != 0) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0131, code lost:
    
        r2 = r2 & (-3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x013a, code lost:
    
        if ((r0 & 2) != 0) goto L79;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void checkAndSetModifiersForMethod(MethodBinding methodBinding) {
        int i10;
        TypeReference typeReference;
        int i11;
        int i12 = methodBinding.modifiers;
        ReferenceBinding referenceBinding = methodBinding.declaringClass;
        if ((4194304 & i12) != 0) {
            problemReporter().duplicateModifierForMethod(referenceBinding, (AbstractMethodDeclaration) this.referenceContext);
        }
        int i13 = 65535 & i12;
        long j10 = compilerOptions().sourceLevel;
        if (referenceBinding.isInterface()) {
            boolean z10 = (i12 & 65536) != 0;
            if (j10 < ClassFileConstants.JDK1_8 || referenceBinding.isAnnotationType()) {
                i11 = 1025;
            } else {
                i11 = (j10 >= ClassFileConstants.JDK9 ? 2 : 0) | 68617;
                if (methodBinding.isAbstract()) {
                    r9 = z10 || methodBinding.isStatic();
                    if (methodBinding.isStrictfp()) {
                        problemReporter().illegalAbstractModifierCombinationForMethod((AbstractMethodDeclaration) this.referenceContext);
                    }
                } else if (z10 && methodBinding.isStatic()) {
                    r9 = true;
                }
                if (r9) {
                    problemReporter().illegalModifierCombinationForInterfaceMethod((AbstractMethodDeclaration) this.referenceContext);
                }
                if (j10 >= ClassFileConstants.JDK9 && (methodBinding.modifiers & 2) != 0 && ((~i11) & i13) == 0) {
                    int i14 = i12 & 63477;
                    if (z10 || i14 != 0) {
                        problemReporter().illegalModifierCombinationForPrivateInterfaceMethod((AbstractMethodDeclaration) this.referenceContext);
                    }
                }
                if (z10) {
                    i13 |= 65536;
                }
            }
            if (((~i11) & i13) != 0) {
                if ((referenceBinding.modifiers & 8192) != 0) {
                    problemReporter().illegalModifierForAnnotationMember((AbstractMethodDeclaration) this.referenceContext);
                } else {
                    problemReporter().illegalModifierForInterfaceMethod((AbstractMethodDeclaration) this.referenceContext, j10);
                }
                methodBinding.modifiers &= (-65536) | i11;
                return;
            }
            return;
        }
        if (referenceBinding.isAnonymousType() && j10 >= ClassFileConstants.JDK9 && (typeReference = ((LocalTypeBinding) referenceBinding).scope.referenceContext.allocation.type) != null && (typeReference.bits & 524288) != 0 && (i12 & 10) == 0) {
            methodBinding.tagBits |= 562949953421312L;
        }
        if ((62144 & i12) != 0) {
            problemReporter().illegalModifierForMethod((AbstractMethodDeclaration) this.referenceContext);
            i10 = (-62145) & i12;
        } else {
            i10 = i12;
        }
        int i15 = i12 & 7;
        if ((i15 & (i15 - 1)) != 0) {
            problemReporter().illegalVisibilityModifierCombinationForMethod(referenceBinding, (AbstractMethodDeclaration) this.referenceContext);
            if ((i12 & 1) != 0) {
                if ((i12 & 4) != 0) {
                    i10 &= -5;
                }
            } else if ((i12 & 4) != 0) {
            }
        }
        if ((i10 & 1024) != 0) {
            if ((i10 & 2362) != 0) {
                problemReporter().illegalAbstractModifierCombinationForMethod(referenceBinding, (AbstractMethodDeclaration) this.referenceContext);
            }
            if (!methodBinding.declaringClass.isAbstract()) {
                problemReporter().abstractMethodInAbstractClass((SourceTypeBinding) referenceBinding, (AbstractMethodDeclaration) this.referenceContext);
            }
        }
        if ((i10 & 256) != 0 && (i10 & 2048) != 0) {
            problemReporter().nativeMethodsCannotBeStrictfp(referenceBinding, (AbstractMethodDeclaration) this.referenceContext);
        }
        if ((i12 & 8) != 0 && referenceBinding.isNestedType() && !referenceBinding.isStatic()) {
            problemReporter().unexpectedStaticModifierForMethod(referenceBinding, (AbstractMethodDeclaration) this.referenceContext);
        }
        methodBinding.modifiers = i10;
    }

    @Override
    public String basicToString(int i10) {
        String str = "\n";
        while (true) {
            i10--;
            if (i10 < 0) {
                break;
            }
            str = String.valueOf(str) + "\t";
        }
        String str2 = String.valueOf(str) + "--- Method Scope ---";
        String str3 = String.valueOf(str) + "\t";
        String str4 = String.valueOf(str2) + str3 + "locals:";
        for (int i11 = 0; i11 < this.localIndex; i11++) {
            str4 = String.valueOf(str4) + str3 + "\t" + this.locals[i11].toString();
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(String.valueOf(str4) + str3 + "startIndex = " + this.startIndex));
        sb2.append(str3);
        sb2.append("isConstructorCall = ");
        sb2.append(this.isConstructorCall);
        StringBuilder sb3 = new StringBuilder(String.valueOf(String.valueOf(sb2.toString()) + str3 + "initializedField = " + ((Object) this.initializedField)));
        sb3.append(str3);
        sb3.append("lastVisibleFieldID = ");
        sb3.append(this.lastVisibleFieldID);
        return String.valueOf(sb3.toString()) + str3 + "referenceContext = " + ((Object) this.referenceContext);
    }

    @Override
    public Binding checkRedundantDefaultNullness(int i10, int i11) {
        MethodBinding methodBinding;
        int i12;
        Binding localCheckRedundantDefaultNullness = localCheckRedundantDefaultNullness(i10, i11);
        if (localCheckRedundantDefaultNullness != null) {
            return localCheckRedundantDefaultNullness;
        }
        AbstractMethodDeclaration referenceMethod = referenceMethod();
        if (referenceMethod == null || (methodBinding = referenceMethod.binding) == null || (i12 = methodBinding.defaultNullness) == 0) {
            return this.parent.checkRedundantDefaultNullness(i10, i11);
        }
        if (i12 == i10) {
            return methodBinding;
        }
        return null;
    }

    public void checkUnusedParameters(MethodBinding methodBinding) {
        if (methodBinding.isAbstract()) {
            return;
        }
        if (!methodBinding.isImplementing() || compilerOptions().reportUnusedParameterWhenImplementingAbstract) {
            if ((!methodBinding.isOverriding() || methodBinding.isImplementing() || compilerOptions().reportUnusedParameterWhenOverridingConcrete) && !methodBinding.isMain()) {
                int i10 = this.localIndex;
                for (int i11 = 0; i11 < i10; i11++) {
                    LocalVariableBinding localVariableBinding = this.locals[i11];
                    if (localVariableBinding == null || (localVariableBinding.tagBits & 1024) == 0) {
                        return;
                    }
                    if (localVariableBinding.useFlag == 0 && (localVariableBinding.declaration.bits & 1073741824) != 0) {
                        problemReporter().unusedArgument(localVariableBinding.declaration);
                    }
                }
            }
        }
    }

    public void computeLocalVariablePositions(int i10, CodeStream codeStream) {
        LocalVariableBinding localVariableBinding;
        this.offset = i10;
        this.maxOffset = i10;
        int i11 = this.localIndex;
        int i12 = 0;
        while (i12 < i11 && (localVariableBinding = this.locals[i12]) != null && (localVariableBinding.tagBits & 1024) != 0) {
            codeStream.record(localVariableBinding);
            localVariableBinding.resolvedPosition = this.offset;
            if (TypeBinding.equalsEquals(localVariableBinding.type, TypeBinding.LONG) || TypeBinding.equalsEquals(localVariableBinding.type, TypeBinding.DOUBLE)) {
                this.offset += 2;
            } else {
                this.offset++;
            }
            if (this.offset > 255) {
                problemReporter().noMoreAvailableSpaceForArgument(localVariableBinding, localVariableBinding.declaration);
            }
            i12++;
        }
        SyntheticArgumentBinding[] syntheticArgumentBindingArr = this.extraSyntheticArguments;
        if (syntheticArgumentBindingArr != null) {
            int length = syntheticArgumentBindingArr.length;
            for (int i13 = 0; i13 < length; i13++) {
                SyntheticArgumentBinding syntheticArgumentBinding = this.extraSyntheticArguments[i13];
                syntheticArgumentBinding.resolvedPosition = this.offset;
                if (TypeBinding.equalsEquals(syntheticArgumentBinding.type, TypeBinding.LONG) || TypeBinding.equalsEquals(syntheticArgumentBinding.type, TypeBinding.DOUBLE)) {
                    this.offset += 2;
                } else {
                    this.offset++;
                }
                if (this.offset > 255) {
                    problemReporter().noMoreAvailableSpaceForArgument(syntheticArgumentBinding, (ASTNode) this.referenceContext);
                }
            }
        }
        computeLocalVariablePositions(i12, this.offset, codeStream);
    }

    public MethodBinding createMethod(AbstractMethodDeclaration abstractMethodDeclaration) {
        int i10;
        this.referenceContext = abstractMethodDeclaration;
        abstractMethodDeclaration.scope = this;
        long j10 = compilerOptions().sourceLevel;
        SourceTypeBinding sourceTypeBinding = referenceType().binding;
        int i11 = abstractMethodDeclaration.modifiers;
        int i12 = 33554432 | i11;
        if (abstractMethodDeclaration.isConstructor()) {
            if (abstractMethodDeclaration.isDefaultConstructor()) {
                i12 = 100663296 | i11;
            }
            MethodBinding methodBinding = new MethodBinding(i12, null, null, sourceTypeBinding);
            abstractMethodDeclaration.binding = methodBinding;
            checkAndSetModifiersForConstructor(methodBinding);
        } else {
            if (!sourceTypeBinding.isInterface() || (j10 >= ClassFileConstants.JDK9 && (abstractMethodDeclaration.modifiers & 2) != 0)) {
                i10 = i12;
            } else {
                i10 = i11 | ((abstractMethodDeclaration.isDefaultMethod() || abstractMethodDeclaration.isStatic()) ? 33554433 : 33555457);
            }
            MethodBinding methodBinding2 = new MethodBinding(i10, abstractMethodDeclaration.selector, null, null, null, sourceTypeBinding);
            abstractMethodDeclaration.binding = methodBinding2;
            checkAndSetModifiersForMethod(methodBinding2);
        }
        this.isStatic = abstractMethodDeclaration.binding.isStatic();
        Argument[] argumentArr = abstractMethodDeclaration.arguments;
        int length = argumentArr == null ? 0 : argumentArr.length;
        if (length > 0) {
            int i13 = length - 1;
            Argument argument = argumentArr[i13];
            if (argument.isVarArgs() && j10 >= ClassFileConstants.JDK1_5) {
                abstractMethodDeclaration.binding.modifiers |= 128;
            }
            if (CharOperation.equals(argument.name, ConstantPool.This)) {
                problemReporter().illegalThisDeclaration(argument);
            }
            while (true) {
                i13--;
                if (i13 < 0) {
                    break;
                }
                Argument argument2 = argumentArr[i13];
                if (argument2.isVarArgs() && j10 >= ClassFileConstants.JDK1_5) {
                    problemReporter().illegalVararg(argument2, abstractMethodDeclaration);
                }
                if (CharOperation.equals(argument2.name, ConstantPool.This)) {
                    problemReporter().illegalThisDeclaration(argument2);
                }
            }
        }
        if (abstractMethodDeclaration.receiver != null) {
            if (j10 <= ClassFileConstants.JDK1_7) {
                problemReporter().illegalSourceLevelForThis(abstractMethodDeclaration.receiver);
            }
            if (abstractMethodDeclaration.receiver.annotations != null) {
                abstractMethodDeclaration.bits |= 1048576;
            }
        }
        TypeParameter[] typeParameters = abstractMethodDeclaration.typeParameters();
        if (typeParameters == null || typeParameters.length == 0) {
            abstractMethodDeclaration.binding.typeVariables = Binding.NO_TYPE_VARIABLES;
        } else {
            MethodBinding methodBinding3 = abstractMethodDeclaration.binding;
            methodBinding3.typeVariables = createTypeVariables(typeParameters, methodBinding3);
            abstractMethodDeclaration.binding.modifiers |= 1073741824;
        }
        return abstractMethodDeclaration.binding;
    }

    public void detectAPILeaks(ASTNode aSTNode, TypeBinding typeBinding) {
        if (environment().useModuleSystem) {
            aSTNode.traverse(new ASTVisitor() {
                private void checkType(ReferenceBinding referenceBinding, int i10, int i11) {
                    if (referenceBinding.isValidBinding()) {
                        ModuleBinding module = referenceBinding.module();
                        if (module == module.environment.javaBaseModule()) {
                            return;
                        }
                        if (!isFullyPublic(referenceBinding)) {
                            MethodScope.this.problemReporter().nonPublicTypeInAPI(referenceBinding, i10, i11);
                        } else if (!referenceBinding.fPackage.isExported()) {
                            MethodScope.this.problemReporter().notExportedTypeInAPI(referenceBinding, i10, i11);
                        } else if (isUnrelatedModule(referenceBinding.fPackage)) {
                            MethodScope.this.problemReporter().missingRequiresTransitiveForTypeInAPI(referenceBinding, i10, i11);
                        }
                    }
                }

                private boolean isFullyPublic(ReferenceBinding referenceBinding) {
                    if (!referenceBinding.isPublic()) {
                        return false;
                    }
                    if (referenceBinding instanceof NestedTypeBinding) {
                        return isFullyPublic(((NestedTypeBinding) referenceBinding).enclosingType);
                    }
                    return true;
                }

                private boolean isUnrelatedModule(PackageBinding packageBinding) {
                    ModuleBinding moduleBinding = packageBinding.enclosingModule;
                    if (MethodScope.this.module() != moduleBinding) {
                        return !r0.isTransitivelyRequired(moduleBinding);
                    }
                    return false;
                }

                @Override
                public boolean visit(SingleTypeReference singleTypeReference, BlockScope blockScope) {
                    TypeBinding typeBinding2 = singleTypeReference.resolvedType;
                    if (!(typeBinding2 instanceof ReferenceBinding)) {
                        return true;
                    }
                    checkType((ReferenceBinding) typeBinding2, singleTypeReference.sourceStart, singleTypeReference.sourceEnd);
                    return true;
                }

                @Override
                public boolean visit(QualifiedTypeReference qualifiedTypeReference, BlockScope blockScope) {
                    TypeBinding typeBinding2 = qualifiedTypeReference.resolvedType;
                    if (!(typeBinding2 instanceof ReferenceBinding)) {
                        return true;
                    }
                    checkType((ReferenceBinding) typeBinding2, qualifiedTypeReference.sourceStart, qualifiedTypeReference.sourceEnd);
                    return true;
                }

                @Override
                public boolean visit(ArrayTypeReference arrayTypeReference, BlockScope blockScope) {
                    TypeBinding leafComponentType = arrayTypeReference.resolvedType.leafComponentType();
                    if (!(leafComponentType instanceof ReferenceBinding)) {
                        return true;
                    }
                    checkType((ReferenceBinding) leafComponentType, arrayTypeReference.sourceStart, arrayTypeReference.originalSourceEnd);
                    return true;
                }
            }, this);
        }
    }

    @Override
    public FieldBinding findField(TypeBinding typeBinding, char[] cArr, InvocationSite invocationSite, boolean z10) {
        FieldBinding findField = super.findField(typeBinding, cArr, invocationSite, z10);
        if (findField == null) {
            return null;
        }
        if (!findField.isValidBinding()) {
            return findField;
        }
        if (typeBinding.isInterface() && invocationSite.isQualifiedSuper()) {
            return new ProblemFieldBinding(findField, findField.declaringClass, cArr, 28);
        }
        if (!findField.isStatic() && this.isConstructorCall && !TypeBinding.notEquals(typeBinding, enclosingSourceType())) {
            if (invocationSite instanceof SingleNameReference) {
                return new ProblemFieldBinding(findField, findField.declaringClass, cArr, 6);
            }
            if ((invocationSite instanceof QualifiedNameReference) && ((QualifiedNameReference) invocationSite).binding == null) {
                return new ProblemFieldBinding(findField, findField.declaringClass, cArr, 6);
            }
        }
        return findField;
    }

    @Override
    public boolean hasDefaultNullnessFor(int i10, int i11) {
        MethodBinding methodBinding;
        int i12;
        int localNonNullByDefaultValue = localNonNullByDefaultValue(i11);
        if (localNonNullByDefaultValue != 0) {
            return (i10 & localNonNullByDefaultValue) != 0;
        }
        AbstractMethodDeclaration referenceMethod = referenceMethod();
        return (referenceMethod == null || (methodBinding = referenceMethod.binding) == null || (i12 = methodBinding.defaultNullness) == 0) ? this.parent.hasDefaultNullnessFor(i10, i11) : (i10 & i12) != 0;
    }

    public boolean isInsideConstructor() {
        return this.referenceContext instanceof ConstructorDeclaration;
    }

    public boolean isInsideInitializer() {
        return this.referenceContext instanceof TypeDeclaration;
    }

    public boolean isInsideInitializerOrConstructor() {
        ReferenceContext referenceContext = this.referenceContext;
        return (referenceContext instanceof TypeDeclaration) || (referenceContext instanceof ConstructorDeclaration);
    }

    @Override
    public boolean isLambdaScope() {
        return this.referenceContext instanceof LambdaExpression;
    }

    @Override
    public ProblemReporter problemReporter() {
        ProblemReporter problemReporter = referenceCompilationUnit().problemReporter;
        problemReporter.referenceContext = this.referenceContext;
        return problemReporter;
    }

    public final int recordInitializationStates(FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 1) != 0) {
            return -1;
        }
        UnconditionalFlowInfo unconditionalInitsWithoutSideEffect = flowInfo.unconditionalInitsWithoutSideEffect();
        long[][] jArr = unconditionalInitsWithoutSideEffect.extra;
        long[] jArr2 = jArr == null ? null : jArr[0];
        long j10 = unconditionalInitsWithoutSideEffect.definiteInits;
        int i10 = this.lastIndex;
        while (true) {
            i10--;
            if (i10 < 0) {
                long[] jArr3 = this.definiteInits;
                int length = jArr3.length;
                int i11 = this.lastIndex;
                if (length == i11) {
                    long[] jArr4 = new long[i11 + 20];
                    this.definiteInits = jArr4;
                    System.arraycopy(jArr3, 0, jArr4, 0, i11);
                    long[][] jArr5 = this.extraDefiniteInits;
                    int i12 = this.lastIndex;
                    long[][] jArr6 = new long[i12 + 20];
                    this.extraDefiniteInits = jArr6;
                    System.arraycopy(jArr5, 0, jArr6, 0, i12);
                }
                long[] jArr7 = this.definiteInits;
                int i13 = this.lastIndex;
                jArr7[i13] = j10;
                if (jArr2 != null) {
                    long[][] jArr8 = this.extraDefiniteInits;
                    long[] jArr9 = new long[jArr2.length];
                    jArr8[i13] = jArr9;
                    System.arraycopy(jArr2, 0, jArr9, 0, jArr2.length);
                }
                int i14 = this.lastIndex;
                this.lastIndex = i14 + 1;
                return i14;
            }
            if (this.definiteInits[i10] == j10) {
                long[] jArr10 = this.extraDefiniteInits[i10];
                if (jArr2 != null && jArr10 != null) {
                    if (jArr2.length == jArr10.length) {
                        int length2 = jArr2.length;
                        for (int i15 = 0; i15 < length2; i15++) {
                            if (jArr2[i15] != jArr10[i15]) {
                                break;
                            }
                        }
                        return i10;
                    }
                    continue;
                } else if (jArr2 == null && jArr10 == null) {
                    return i10;
                }
            }
        }
    }

    public AbstractMethodDeclaration referenceMethod() {
        ReferenceContext referenceContext = this.referenceContext;
        if (referenceContext instanceof AbstractMethodDeclaration) {
            return (AbstractMethodDeclaration) referenceContext;
        }
        return null;
    }

    public MethodBinding referenceMethodBinding() {
        ReferenceContext referenceContext = this.referenceContext;
        if (referenceContext instanceof LambdaExpression) {
            return ((LambdaExpression) referenceContext).binding;
        }
        if (referenceContext instanceof AbstractMethodDeclaration) {
            return ((AbstractMethodDeclaration) referenceContext).binding;
        }
        return null;
    }

    @Override
    public TypeDeclaration referenceType() {
        ClassScope enclosingClassScope = enclosingClassScope();
        if (enclosingClassScope == null) {
            return null;
        }
        return enclosingClassScope.referenceContext;
    }

    @Override
    public void resolveTypeParameter(TypeParameter typeParameter) {
        typeParameter.resolve(this);
    }

    public boolean shouldCheckAPILeaks(ReferenceBinding referenceBinding, boolean z10) {
        return environment().useModuleSystem && z10 && referenceBinding.isPublic() && referenceBinding.fPackage.isExported();
    }

    public MethodScope(Scope scope, ReferenceContext referenceContext, boolean z10, int i10) {
        this(scope, referenceContext, z10);
        this.lastVisibleFieldID = i10;
    }
}
