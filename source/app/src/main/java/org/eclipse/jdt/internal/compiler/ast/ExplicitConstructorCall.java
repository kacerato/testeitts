package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext18;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.RawTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;

public class ExplicitConstructorCall extends Statement implements Invocation {
    public static final int ImplicitSuper = 1;
    public static final int Super = 2;
    public static final int This = 3;
    public int accessMode;
    public Expression[] arguments;
    public MethodBinding binding;
    public TypeBinding[] genericTypeArguments;
    public VariableBinding[][] implicitArguments;
    public Expression qualification;
    MethodBinding syntheticAccessor;
    public TypeReference[] typeArguments;
    public int typeArgumentsSourceStart;

    public ExplicitConstructorCall(int i10) {
        this.accessMode = i10;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        try {
            ((MethodScope) blockScope).isConstructorCall = true;
            Expression expression = this.qualification;
            if (expression != null) {
                flowInfo = expression.analyseCode(blockScope, flowContext, flowInfo).unconditionalInits();
            }
            if (this.arguments != null) {
                boolean z10 = blockScope.compilerOptions().analyseResourceLeaks;
                int length = this.arguments.length;
                for (int i10 = 0; i10 < length; i10++) {
                    flowInfo = this.arguments[i10].analyseCode(blockScope, flowContext, flowInfo).unconditionalInits();
                    if (z10) {
                        flowInfo = FakedTrackingVariable.markPassedToOutside(blockScope, this.arguments[i10], flowInfo, flowContext, false);
                    }
                    this.arguments[i10].checkNPEbyUnboxing(blockScope, flowContext, flowInfo);
                }
                analyseArguments(blockScope, flowContext, flowInfo, this.binding, this.arguments);
            }
            ReferenceBinding[] referenceBindingArr = this.binding.thrownExceptions;
            if (referenceBindingArr != Binding.NO_EXCEPTIONS) {
                if ((this.bits & 65536) != 0 && this.genericTypeArguments == null) {
                    referenceBindingArr = blockScope.environment().convertToRawTypes(this.binding.thrownExceptions, true, true);
                }
                flowContext.checkExceptionHandlers(referenceBindingArr, this.accessMode == 1 ? (ASTNode) blockScope.methodScope().referenceContext : this, flowInfo, blockScope);
            }
            manageEnclosingInstanceAccessIfNecessary(blockScope, flowInfo);
            manageSyntheticAccessIfNecessary(blockScope, flowInfo);
            ((MethodScope) blockScope).isConstructorCall = false;
            return flowInfo;
        } catch (Throwable th2) {
            ((MethodScope) blockScope).isConstructorCall = false;
            throw th2;
        }
    }

    @Override
    public Expression[] arguments() {
        return this.arguments;
    }

    @Override
    public MethodBinding binding() {
        return this.binding;
    }

    @Override
    public void cleanUpInferenceContexts() {
    }

    @Override
    public InferenceContext18 freshInferenceContext(Scope scope) {
        return new InferenceContext18(scope, this.arguments, this, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003c A[Catch: all -> 0x002d, TryCatch #0 {all -> 0x002d, blocks: (B:7:0x0009, B:9:0x0026, B:12:0x0035, B:14:0x003c, B:17:0x0046, B:18:0x0044, B:19:0x0049, B:21:0x0056, B:22:0x0059, B:24:0x005f, B:28:0x0069, B:29:0x007c, B:26:0x0071, B:33:0x0077, B:34:0x002f), top: B:6:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0056 A[Catch: all -> 0x002d, TryCatch #0 {all -> 0x002d, blocks: (B:7:0x0009, B:9:0x0026, B:12:0x0035, B:14:0x003c, B:17:0x0046, B:18:0x0044, B:19:0x0049, B:21:0x0056, B:22:0x0059, B:24:0x005f, B:28:0x0069, B:29:0x007c, B:26:0x0071, B:33:0x0077, B:34:0x002f), top: B:6:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005f A[Catch: all -> 0x002d, TryCatch #0 {all -> 0x002d, blocks: (B:7:0x0009, B:9:0x0026, B:12:0x0035, B:14:0x003c, B:17:0x0046, B:18:0x0044, B:19:0x0049, B:21:0x0056, B:22:0x0059, B:24:0x005f, B:28:0x0069, B:29:0x007c, B:26:0x0071, B:33:0x0077, B:34:0x002f), top: B:6:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0077 A[Catch: all -> 0x002d, TryCatch #0 {all -> 0x002d, blocks: (B:7:0x0009, B:9:0x0026, B:12:0x0035, B:14:0x003c, B:17:0x0046, B:18:0x0044, B:19:0x0049, B:21:0x0056, B:22:0x0059, B:24:0x005f, B:28:0x0069, B:29:0x007c, B:26:0x0071, B:33:0x0077, B:34:0x002f), top: B:6:0x0009 }] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
        MethodBinding methodBinding;
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        try {
            ((MethodScope) blockScope).isConstructorCall = true;
            int i10 = codeStream.position;
            codeStream.aload_0();
            MethodBinding original = this.binding.original();
            ReferenceBinding referenceBinding = original.declaringClass;
            if (referenceBinding.erasure().f102482id != 41) {
                if (referenceBinding.isEnum()) {
                }
                if (referenceBinding.isNestedType()) {
                    codeStream.generateSyntheticEnclosingInstanceValues(blockScope, referenceBinding, (this.bits & 8192) != 0 ? null : this.qualification, this);
                }
                generateArguments(this.binding, this.arguments, blockScope, codeStream);
                if (referenceBinding.isNestedType()) {
                    codeStream.generateSyntheticOuterArgumentValues(blockScope, referenceBinding, this);
                }
                methodBinding = this.syntheticAccessor;
                if (methodBinding == null) {
                    int length = methodBinding.parameters.length - original.parameters.length;
                    for (int i11 = 0; i11 < length; i11++) {
                        codeStream.aconst_null();
                    }
                    codeStream.invoke(Opcodes.OPC_invokespecial, this.syntheticAccessor, null, this.typeArguments);
                } else {
                    codeStream.invoke(Opcodes.OPC_invokespecial, original, null, this.typeArguments);
                }
                codeStream.recordPositionsFrom(i10, this.sourceStart);
                ((MethodScope) blockScope).isConstructorCall = false;
            }
            codeStream.aload_1();
            codeStream.iload_2();
            if (referenceBinding.isNestedType()) {
            }
            generateArguments(this.binding, this.arguments, blockScope, codeStream);
            if (referenceBinding.isNestedType()) {
            }
            methodBinding = this.syntheticAccessor;
            if (methodBinding == null) {
            }
            codeStream.recordPositionsFrom(i10, this.sourceStart);
            ((MethodScope) blockScope).isConstructorCall = false;
        } catch (Throwable th2) {
            ((MethodScope) blockScope).isConstructorCall = false;
            throw th2;
        }
    }

    @Override
    public TypeBinding[] genericTypeArguments() {
        return this.genericTypeArguments;
    }

    @Override
    public InferenceContext18 getInferenceContext(ParameterizedMethodBinding parameterizedMethodBinding) {
        return null;
    }

    public boolean isImplicitSuper() {
        return this.accessMode == 1;
    }

    @Override
    public boolean isSuperAccess() {
        return this.accessMode != 3;
    }

    @Override
    public boolean isTypeAccess() {
        return true;
    }

    public void manageEnclosingInstanceAccessIfNecessary(BlockScope blockScope, FlowInfo flowInfo) {
        ReferenceBinding referenceBinding = (ReferenceBinding) this.binding.declaringClass.erasure();
        if ((flowInfo.tagBits & 1) == 0 && referenceBinding.isNestedType() && blockScope.enclosingSourceType().isLocalType()) {
            if (referenceBinding.isLocalType()) {
                ((LocalTypeBinding) referenceBinding).addInnerEmulationDependent(blockScope, this.qualification != null);
            } else {
                blockScope.propagateInnerEmulation(referenceBinding, this.qualification != null);
            }
        }
    }

    public void manageSyntheticAccessIfNecessary(BlockScope blockScope, FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 1) == 0) {
            MethodBinding original = this.binding.original();
            if (!this.binding.isPrivate() || blockScope.enclosingSourceType().isNestmateOf(this.binding.declaringClass) || this.accessMode == 3) {
                return;
            }
            ReferenceBinding referenceBinding = original.declaringClass;
            if ((referenceBinding.tagBits & 16) != 0 && blockScope.compilerOptions().complianceLevel >= ClassFileConstants.JDK1_4) {
                original.tagBits |= 512;
            } else {
                this.syntheticAccessor = ((SourceTypeBinding) referenceBinding).addSyntheticMethod(original, isSuperAccess());
                blockScope.problemReporter().needToEmulateMethodAccess(original, this);
            }
        }
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        Expression expression = this.qualification;
        if (expression != null) {
            expression.printExpression(0, stringBuffer).append('.');
        }
        if (this.typeArguments != null) {
            stringBuffer.append('<');
            int length = this.typeArguments.length - 1;
            for (int i11 = 0; i11 < length; i11++) {
                this.typeArguments[i11].print(0, stringBuffer);
                stringBuffer.append(", ");
            }
            this.typeArguments[length].print(0, stringBuffer);
            stringBuffer.append('>');
        }
        if (this.accessMode == 3) {
            stringBuffer.append("this(");
        } else {
            stringBuffer.append("super(");
        }
        if (this.arguments != null) {
            for (int i12 = 0; i12 < this.arguments.length; i12++) {
                if (i12 > 0) {
                    stringBuffer.append(", ");
                }
                this.arguments[i12].printExpression(0, stringBuffer);
            }
        }
        stringBuffer.append(");");
        return stringBuffer;
    }

    @Override
    public void registerInferenceContext(ParameterizedGenericMethodBinding parameterizedGenericMethodBinding, InferenceContext18 inferenceContext18) {
    }

    @Override
    public void registerResult(TypeBinding typeBinding, MethodBinding methodBinding) {
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x019b A[Catch: all -> 0x003f, TRY_ENTER, TryCatch #0 {all -> 0x003f, blocks: (B:3:0x0007, B:5:0x000d, B:7:0x0013, B:10:0x001b, B:12:0x0026, B:14:0x0032, B:16:0x0036, B:21:0x0048, B:23:0x004c, B:25:0x0054, B:26:0x0061, B:28:0x0065, B:30:0x0069, B:32:0x0074, B:34:0x007a, B:35:0x008a, B:36:0x0095, B:41:0x00a9, B:56:0x00b3, B:58:0x00b7, B:60:0x00bc, B:43:0x00c8, B:47:0x00d9, B:49:0x00dd, B:51:0x00e4, B:68:0x00e6, B:70:0x00ee, B:87:0x00fd, B:88:0x00ff, B:97:0x0103, B:99:0x0112, B:101:0x0118, B:103:0x0120, B:105:0x012a, B:106:0x0137, B:108:0x0143, B:110:0x0149, B:90:0x0151, B:92:0x0155, B:94:0x0157, B:117:0x019b, B:119:0x01a7, B:121:0x01b4, B:123:0x01be, B:124:0x01c7, B:127:0x01cf, B:129:0x01d5, B:130:0x01de, B:132:0x01eb, B:133:0x01f2, B:135:0x01fa, B:136:0x0205, B:138:0x0209, B:140:0x0215, B:144:0x0223, B:146:0x0229, B:150:0x0230, B:73:0x015d, B:75:0x0165, B:76:0x016c, B:80:0x017a, B:151:0x017d, B:153:0x0185, B:157:0x023c, B:159:0x0247, B:160:0x024a, B:162:0x024e, B:164:0x0253, B:167:0x025c, B:169:0x0260, B:171:0x0265), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x017d A[Catch: all -> 0x003f, TryCatch #0 {all -> 0x003f, blocks: (B:3:0x0007, B:5:0x000d, B:7:0x0013, B:10:0x001b, B:12:0x0026, B:14:0x0032, B:16:0x0036, B:21:0x0048, B:23:0x004c, B:25:0x0054, B:26:0x0061, B:28:0x0065, B:30:0x0069, B:32:0x0074, B:34:0x007a, B:35:0x008a, B:36:0x0095, B:41:0x00a9, B:56:0x00b3, B:58:0x00b7, B:60:0x00bc, B:43:0x00c8, B:47:0x00d9, B:49:0x00dd, B:51:0x00e4, B:68:0x00e6, B:70:0x00ee, B:87:0x00fd, B:88:0x00ff, B:97:0x0103, B:99:0x0112, B:101:0x0118, B:103:0x0120, B:105:0x012a, B:106:0x0137, B:108:0x0143, B:110:0x0149, B:90:0x0151, B:92:0x0155, B:94:0x0157, B:117:0x019b, B:119:0x01a7, B:121:0x01b4, B:123:0x01be, B:124:0x01c7, B:127:0x01cf, B:129:0x01d5, B:130:0x01de, B:132:0x01eb, B:133:0x01f2, B:135:0x01fa, B:136:0x0205, B:138:0x0209, B:140:0x0215, B:144:0x0223, B:146:0x0229, B:150:0x0230, B:73:0x015d, B:75:0x0165, B:76:0x016c, B:80:0x017a, B:151:0x017d, B:153:0x0185, B:157:0x023c, B:159:0x0247, B:160:0x024a, B:162:0x024e, B:164:0x0253, B:167:0x025c, B:169:0x0260, B:171:0x0265), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0048 A[Catch: all -> 0x003f, TryCatch #0 {all -> 0x003f, blocks: (B:3:0x0007, B:5:0x000d, B:7:0x0013, B:10:0x001b, B:12:0x0026, B:14:0x0032, B:16:0x0036, B:21:0x0048, B:23:0x004c, B:25:0x0054, B:26:0x0061, B:28:0x0065, B:30:0x0069, B:32:0x0074, B:34:0x007a, B:35:0x008a, B:36:0x0095, B:41:0x00a9, B:56:0x00b3, B:58:0x00b7, B:60:0x00bc, B:43:0x00c8, B:47:0x00d9, B:49:0x00dd, B:51:0x00e4, B:68:0x00e6, B:70:0x00ee, B:87:0x00fd, B:88:0x00ff, B:97:0x0103, B:99:0x0112, B:101:0x0118, B:103:0x0120, B:105:0x012a, B:106:0x0137, B:108:0x0143, B:110:0x0149, B:90:0x0151, B:92:0x0155, B:94:0x0157, B:117:0x019b, B:119:0x01a7, B:121:0x01b4, B:123:0x01be, B:124:0x01c7, B:127:0x01cf, B:129:0x01d5, B:130:0x01de, B:132:0x01eb, B:133:0x01f2, B:135:0x01fa, B:136:0x0205, B:138:0x0209, B:140:0x0215, B:144:0x0223, B:146:0x0229, B:150:0x0230, B:73:0x015d, B:75:0x0165, B:76:0x016c, B:80:0x017a, B:151:0x017d, B:153:0x0185, B:157:0x023c, B:159:0x0247, B:160:0x024a, B:162:0x024e, B:164:0x0253, B:167:0x025c, B:169:0x0260, B:171:0x0265), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00ee A[Catch: all -> 0x003f, TRY_LEAVE, TryCatch #0 {all -> 0x003f, blocks: (B:3:0x0007, B:5:0x000d, B:7:0x0013, B:10:0x001b, B:12:0x0026, B:14:0x0032, B:16:0x0036, B:21:0x0048, B:23:0x004c, B:25:0x0054, B:26:0x0061, B:28:0x0065, B:30:0x0069, B:32:0x0074, B:34:0x007a, B:35:0x008a, B:36:0x0095, B:41:0x00a9, B:56:0x00b3, B:58:0x00b7, B:60:0x00bc, B:43:0x00c8, B:47:0x00d9, B:49:0x00dd, B:51:0x00e4, B:68:0x00e6, B:70:0x00ee, B:87:0x00fd, B:88:0x00ff, B:97:0x0103, B:99:0x0112, B:101:0x0118, B:103:0x0120, B:105:0x012a, B:106:0x0137, B:108:0x0143, B:110:0x0149, B:90:0x0151, B:92:0x0155, B:94:0x0157, B:117:0x019b, B:119:0x01a7, B:121:0x01b4, B:123:0x01be, B:124:0x01c7, B:127:0x01cf, B:129:0x01d5, B:130:0x01de, B:132:0x01eb, B:133:0x01f2, B:135:0x01fa, B:136:0x0205, B:138:0x0209, B:140:0x0215, B:144:0x0223, B:146:0x0229, B:150:0x0230, B:73:0x015d, B:75:0x0165, B:76:0x016c, B:80:0x017a, B:151:0x017d, B:153:0x0185, B:157:0x023c, B:159:0x0247, B:160:0x024a, B:162:0x024e, B:164:0x0253, B:167:0x025c, B:169:0x0260, B:171:0x0265), top: B:2:0x0007 }] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void resolve(BlockScope blockScope) {
        ReferenceBinding referenceBinding;
        boolean z10;
        TypeReference[] typeReferenceArr;
        Expression[] expressionArr;
        boolean z11;
        TypeBinding[] typeBindingArr;
        MethodBinding methodBinding;
        TypeBinding typeBinding;
        boolean z12 = true;
        MethodScope methodScope = blockScope.methodScope();
        try {
            AbstractMethodDeclaration referenceMethod = methodScope.referenceMethod();
            if (referenceMethod != null && referenceMethod.isConstructor() && ((ConstructorDeclaration) referenceMethod).constructorCall == this) {
                methodScope.isConstructorCall = true;
                ReferenceBinding enclosingReceiverType = blockScope.enclosingReceiverType();
                if (this.accessMode != 3) {
                    enclosingReceiverType = enclosingReceiverType.superclass();
                    TypeReference typeReference = blockScope.referenceType().superclass;
                    if (typeReference != null && (typeBinding = typeReference.resolvedType) != null && !typeBinding.isValidBinding()) {
                        referenceBinding = enclosingReceiverType;
                        z10 = true;
                        if (referenceBinding != null) {
                            if (this.accessMode == 2 && referenceBinding.erasure().f102482id == 41) {
                                blockScope.problemReporter().cannotInvokeSuperConstructorInEnum(this, methodScope.referenceMethod().binding);
                            }
                            if (this.qualification != null) {
                                if (this.accessMode != 2) {
                                    blockScope.problemReporter().unnecessaryEnclosingInstanceSpecification(this.qualification, referenceBinding);
                                }
                                if (!z10) {
                                    ReferenceBinding enclosingType = referenceBinding.enclosingType();
                                    if (enclosingType == null) {
                                        blockScope.problemReporter().unnecessaryEnclosingInstanceSpecification(this.qualification, referenceBinding);
                                        this.bits |= 8192;
                                    } else {
                                        TypeBinding resolveTypeExpecting = this.qualification.resolveTypeExpecting(blockScope, enclosingType);
                                        this.qualification.computeConversion(blockScope, resolveTypeExpecting, resolveTypeExpecting);
                                    }
                                }
                            }
                        }
                        long j10 = blockScope.compilerOptions().sourceLevel;
                        typeReferenceArr = this.typeArguments;
                        if (typeReferenceArr != null) {
                            boolean z13 = j10 < ClassFileConstants.JDK1_5;
                            int length = typeReferenceArr.length;
                            this.genericTypeArguments = new TypeBinding[length];
                            for (int i10 = 0; i10 < length; i10++) {
                                TypeReference typeReference2 = this.typeArguments[i10];
                                TypeBinding[] typeBindingArr2 = this.genericTypeArguments;
                                TypeBinding resolveType = typeReference2.resolveType(blockScope, true);
                                typeBindingArr2[i10] = resolveType;
                                if (resolveType == null) {
                                    z13 = true;
                                }
                                if (z13 && (typeReference2 instanceof Wildcard)) {
                                    blockScope.problemReporter().illegalUsageOfWildcard(typeReference2);
                                }
                            }
                            if (z13) {
                                Expression[] expressionArr2 = this.arguments;
                                if (expressionArr2 != null) {
                                    int length2 = expressionArr2.length;
                                    for (int i11 = 0; i11 < length2; i11++) {
                                        this.arguments[i11].resolveType(blockScope);
                                    }
                                }
                                return;
                            }
                        }
                        TypeBinding[] typeBindingArr3 = Binding.NO_PARAMETERS;
                        expressionArr = this.arguments;
                        if (expressionArr == null) {
                            int length3 = expressionArr.length;
                            TypeBinding[] typeBindingArr4 = new TypeBinding[length3];
                            boolean z14 = false;
                            boolean z15 = false;
                            for (int i12 = 0; i12 < length3; i12++) {
                                Expression expression = this.arguments[i12];
                                if (expression instanceof CastExpression) {
                                    expression.bits |= 32;
                                    z15 = true;
                                }
                                expression.setExpressionContext(ExpressionContext.INVOCATION_CONTEXT);
                                TypeBinding resolveType2 = expression.resolveType(blockScope);
                                typeBindingArr4[i12] = resolveType2;
                                if (resolveType2 == null) {
                                    z14 = true;
                                }
                            }
                            if (z14) {
                                if (referenceBinding == null) {
                                    methodScope.isConstructorCall = false;
                                    return;
                                }
                                TypeBinding[] typeBindingArr5 = new TypeBinding[length3];
                                while (true) {
                                    length3--;
                                    if (length3 < 0) {
                                        break;
                                    }
                                    TypeBinding typeBinding2 = typeBindingArr4[length3];
                                    if (typeBinding2 == null) {
                                        typeBinding2 = TypeBinding.NULL;
                                    }
                                    typeBindingArr5[length3] = typeBinding2;
                                }
                                MethodBinding findMethod = blockScope.findMethod(referenceBinding, TypeConstants.INIT, typeBindingArr5, this, false);
                                this.binding = findMethod;
                                if (findMethod != null && !findMethod.isValidBinding() && (methodBinding = ((ProblemMethodBinding) this.binding).closestMatch) != null) {
                                    if (methodBinding.original().typeVariables != Binding.NO_TYPE_VARIABLES) {
                                        methodBinding = blockScope.environment().createParameterizedGenericMethod(methodBinding.original(), (RawTypeBinding) null);
                                    }
                                    this.binding = methodBinding;
                                    MethodBinding original = methodBinding.original();
                                    if (original.isOrEnclosedByPrivateType() && !blockScope.isDefinedInMethod(original)) {
                                        original.modifiers |= 134217728;
                                    }
                                }
                                methodScope.isConstructorCall = false;
                                return;
                            }
                            z11 = z15;
                            typeBindingArr = typeBindingArr4;
                        } else if (referenceBinding.erasure().f102482id == 41) {
                            typeBindingArr = new TypeBinding[]{blockScope.getJavaLangString(), TypeBinding.INT};
                            z11 = false;
                        } else {
                            z11 = false;
                            typeBindingArr = typeBindingArr3;
                        }
                        if (referenceBinding != null) {
                            methodScope.isConstructorCall = false;
                            return;
                        }
                        MethodBinding findConstructorBinding = findConstructorBinding(blockScope, this, referenceBinding, typeBindingArr);
                        this.binding = findConstructorBinding;
                        if (findConstructorBinding.isValidBinding()) {
                            if ((this.binding.tagBits & 128) != 0 && !methodScope.enclosingSourceType().isAnonymousType()) {
                                blockScope.problemReporter().missingTypeInConstructor(this, this.binding);
                            }
                            MethodBinding methodBinding2 = this.binding;
                            if (this.accessMode == 1) {
                                z12 = false;
                            }
                            if (isMethodUseDeprecated(methodBinding2, blockScope, z12, this)) {
                                blockScope.problemReporter().deprecatedMethod(this.binding, this);
                            }
                            if (ASTNode.checkInvocationArguments(blockScope, null, referenceBinding, this.binding, this.arguments, typeBindingArr, z11, this)) {
                                this.bits |= 65536;
                            }
                            if (this.binding.isOrEnclosedByPrivateType()) {
                                this.binding.original().modifiers |= 134217728;
                            }
                            if (this.typeArguments != null && this.binding.original().typeVariables == Binding.NO_TYPE_VARIABLES) {
                                blockScope.problemReporter().unnecessaryTypeArgumentsForMethodInvocation(this.binding, this.genericTypeArguments, this.typeArguments);
                            }
                        } else {
                            MethodBinding methodBinding3 = this.binding;
                            if (methodBinding3.declaringClass == null) {
                                methodBinding3.declaringClass = referenceBinding;
                            }
                            if (z10) {
                                methodScope.isConstructorCall = false;
                                return;
                            }
                            blockScope.problemReporter().invalidConstructor(this, this.binding);
                        }
                        methodScope.isConstructorCall = false;
                        return;
                    }
                }
                referenceBinding = enclosingReceiverType;
                z10 = false;
                if (referenceBinding != null) {
                }
                long j102 = blockScope.compilerOptions().sourceLevel;
                typeReferenceArr = this.typeArguments;
                if (typeReferenceArr != null) {
                }
                TypeBinding[] typeBindingArr32 = Binding.NO_PARAMETERS;
                expressionArr = this.arguments;
                if (expressionArr == null) {
                }
                if (referenceBinding != null) {
                }
            }
            blockScope.problemReporter().invalidExplicitConstructorCall(this);
            Expression expression2 = this.qualification;
            if (expression2 != null) {
                expression2.resolveType(blockScope);
            }
            TypeReference[] typeReferenceArr2 = this.typeArguments;
            if (typeReferenceArr2 != null) {
                int length4 = typeReferenceArr2.length;
                for (int i13 = 0; i13 < length4; i13++) {
                    this.typeArguments[i13].resolveType(blockScope, true);
                }
            }
            Expression[] expressionArr3 = this.arguments;
            if (expressionArr3 != null) {
                int length5 = expressionArr3.length;
                for (int i14 = 0; i14 < length5; i14++) {
                    this.arguments[i14].resolveType(blockScope);
                }
            }
            methodScope.isConstructorCall = false;
        } finally {
            methodScope.isConstructorCall = false;
        }
    }

    @Override
    public void setActualReceiverType(ReferenceBinding referenceBinding) {
    }

    @Override
    public void setDepth(int i10) {
    }

    @Override
    public void setFieldIndex(int i10) {
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            Expression expression = this.qualification;
            if (expression != null) {
                expression.traverse(aSTVisitor, blockScope);
            }
            TypeReference[] typeReferenceArr = this.typeArguments;
            if (typeReferenceArr != null) {
                int length = typeReferenceArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.typeArguments[i10].traverse(aSTVisitor, blockScope);
                }
            }
            Expression[] expressionArr = this.arguments;
            if (expressionArr != null) {
                int length2 = expressionArr.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    this.arguments[i11].traverse(aSTVisitor, blockScope);
                }
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }
}
