package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.IrritantSet;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext18;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.PolymorphicMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CastExpression extends Expression {
    public TypeBinding expectedType;
    public Expression expression;
    public TypeReference type;

    public CastExpression(Expression expression, TypeReference typeReference) {
        this.expression = expression;
        this.type = typeReference;
        typeReference.bits |= 1073741824;
    }

    private static void checkAlternateBinding(BlockScope blockScope, Expression expression, TypeBinding typeBinding, MethodBinding methodBinding, Expression[] expressionArr, TypeBinding[] typeBindingArr, TypeBinding[] typeBindingArr2, final InvocationSite invocationSite) {
        TypeBinding[] typeBindingArr3;
        int length;
        InvocationSite invocationSite2 = new InvocationSite() {
            @Override
            public void acceptPotentiallyCompatibleMethods(MethodBinding[] methodBindingArr) {
            }

            @Override
            public boolean checkingPotentialCompatibility() {
                return false;
            }

            @Override
            public InferenceContext18 freshInferenceContext(Scope scope) {
                return InvocationSite.this.freshInferenceContext(scope);
            }

            @Override
            public TypeBinding[] genericTypeArguments() {
                return null;
            }

            @Override
            public ExpressionContext getExpressionContext() {
                return InvocationSite.this.getExpressionContext();
            }

            @Override
            public TypeBinding invocationTargetType() {
                return InvocationSite.this.invocationTargetType();
            }

            @Override
            public boolean isQualifiedSuper() {
                return InvocationSite.this.isQualifiedSuper();
            }

            @Override
            public boolean isSuperAccess() {
                return InvocationSite.this.isSuperAccess();
            }

            @Override
            public boolean isTypeAccess() {
                return InvocationSite.this.isTypeAccess();
            }

            @Override
            public boolean receiverIsImplicitThis() {
                return InvocationSite.this.receiverIsImplicitThis();
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
            public int sourceEnd() {
                return 0;
            }

            @Override
            public int sourceStart() {
                return 0;
            }
        };
        if ((methodBinding.isConstructor() ? blockScope.getConstructor((ReferenceBinding) typeBinding, typeBindingArr2, invocationSite2) : expression.isImplicitThis() ? blockScope.getImplicitMethod(methodBinding.selector, typeBindingArr2, invocationSite2) : blockScope.getMethod(typeBinding, methodBinding.selector, typeBindingArr2, invocationSite2)) == methodBinding) {
            int length2 = typeBindingArr.length;
            if (methodBinding.isVarargs() && (length = (typeBindingArr3 = methodBinding.parameters).length) == length2) {
                int i10 = length - 1;
                ArrayBinding arrayBinding = (ArrayBinding) typeBindingArr3[i10];
                TypeBinding typeBinding2 = typeBindingArr2[i10];
                if (arrayBinding.dimensions != typeBinding2.dimensions()) {
                    return;
                }
                if (typeBinding2.isCompatibleWith(arrayBinding.elementsType()) && typeBinding2.isCompatibleWith(arrayBinding)) {
                    return;
                }
            }
            for (int i11 = 0; i11 < length2; i11++) {
                if (TypeBinding.notEquals(typeBindingArr[i11], typeBindingArr2[i11]) && !preventsUnlikelyTypeWarning(typeBindingArr[i11], typeBindingArr2[i11], typeBinding, methodBinding, blockScope)) {
                    blockScope.problemReporter().unnecessaryCast((CastExpression) expressionArr[i11]);
                }
            }
        }
    }

    public static void checkNeedForArgumentCast(BlockScope blockScope, int i10, int i11, Expression expression, int i12) {
        if (blockScope.compilerOptions().getSeverity(67108864) == 256) {
            return;
        }
        if ((expression.bits & 16384) == 0 && expression.resolvedType.isBaseType()) {
            return;
        }
        CastExpression castExpression = (CastExpression) expression;
        TypeBinding typeBinding = castExpression.expression.resolvedType;
        if (typeBinding != null && typeBinding.f102482id == i12) {
            blockScope.problemReporter().unnecessaryCast(castExpression);
        }
    }

    public static void checkNeedForArgumentCasts(BlockScope blockScope, Expression expression, TypeBinding typeBinding, MethodBinding methodBinding, Expression[] expressionArr, TypeBinding[] typeBindingArr, InvocationSite invocationSite) {
        if (blockScope.compilerOptions().getSeverity(67108864) == 256) {
            return;
        }
        int length = typeBindingArr.length;
        TypeBinding[] typeBindingArr2 = typeBindingArr;
        for (int i10 = 0; i10 < length; i10++) {
            Expression expression2 = expressionArr[i10];
            if ((expression2 instanceof CastExpression) && ((expression2.bits & 16384) != 0 || !expression2.resolvedType.isBaseType())) {
                CastExpression castExpression = (CastExpression) expression2;
                TypeBinding typeBinding2 = castExpression.expression.resolvedType;
                if (typeBinding2 == null) {
                    return;
                }
                if (TypeBinding.equalsEquals(typeBinding2, typeBindingArr[i10])) {
                    blockScope.problemReporter().unnecessaryCast(castExpression);
                } else if (typeBinding2 != TypeBinding.NULL && (expression2.implicitConversion & 512) == 0) {
                    if (typeBindingArr2 == typeBindingArr) {
                        TypeBinding[] typeBindingArr3 = new TypeBinding[length];
                        System.arraycopy(typeBindingArr2, 0, typeBindingArr3, 0, length);
                        typeBindingArr2 = typeBindingArr3;
                    }
                    typeBindingArr2[i10] = typeBinding2;
                }
            }
        }
        if (typeBindingArr2 != typeBindingArr) {
            checkAlternateBinding(blockScope, expression, typeBinding, methodBinding, expressionArr, typeBindingArr, typeBindingArr2, invocationSite);
        }
    }

    public static void checkNeedForAssignedCast(BlockScope blockScope, TypeBinding typeBinding, CastExpression castExpression) {
        TypeBinding typeBinding2;
        if (blockScope.compilerOptions().getSeverity(67108864) == 256 || (typeBinding2 = castExpression.expression.resolvedType) == null || castExpression.resolvedType.isBaseType() || !typeBinding2.isCompatibleWith(typeBinding, blockScope)) {
            return;
        }
        if (blockScope.environment().usesNullTypeAnnotations() && NullAnnotationMatching.analyse(typeBinding, typeBinding2, -1).isAnyMismatch()) {
            return;
        }
        blockScope.problemReporter().unnecessaryCast(castExpression);
    }

    public static void checkNeedForCastCast(BlockScope blockScope, CastExpression castExpression) {
        if (blockScope.compilerOptions().getSeverity(67108864) == 256) {
            return;
        }
        CastExpression castExpression2 = (CastExpression) castExpression.expression;
        if ((castExpression2.bits & 16384) == 0) {
            return;
        }
        CastExpression castExpression3 = new CastExpression(null, castExpression.type);
        castExpression3.resolvedType = castExpression.resolvedType;
        if (castExpression3.checkCastTypesCompatibility(blockScope, castExpression.resolvedType, castExpression2.expression.resolvedType, null)) {
            blockScope.problemReporter().unnecessaryCast(castExpression2);
        }
    }

    public static void checkNeedForEnclosingInstanceCast(BlockScope blockScope, Expression expression, TypeBinding typeBinding, TypeBinding typeBinding2) {
        if (blockScope.compilerOptions().getSeverity(67108864) == 256) {
            return;
        }
        CastExpression castExpression = (CastExpression) expression;
        TypeBinding typeBinding3 = castExpression.expression.resolvedType;
        if (typeBinding3 == null) {
            return;
        }
        if (TypeBinding.equalsEquals(typeBinding3, typeBinding)) {
            blockScope.problemReporter().unnecessaryCast(castExpression);
        } else {
            if (typeBinding3 == TypeBinding.NULL || typeBinding3.isBaseType() || typeBinding3.isArrayType() || !TypeBinding.equalsEquals(typeBinding2, blockScope.getMemberType(typeBinding2.sourceName(), (ReferenceBinding) typeBinding3))) {
                return;
            }
            blockScope.problemReporter().unnecessaryCast(castExpression);
        }
    }

    private boolean isIndirectlyUsed() {
        TypeBinding typeBinding;
        Expression expression = this.expression;
        if (expression instanceof MessageSend) {
            MethodBinding methodBinding = ((MessageSend) expression).binding;
            if ((methodBinding instanceof ParameterizedGenericMethodBinding) && ((ParameterizedGenericMethodBinding) methodBinding).inferredReturnType && ((typeBinding = this.expectedType) == null || TypeBinding.notEquals(this.resolvedType, typeBinding))) {
                return true;
            }
        }
        return (this.expectedType == null || !this.resolvedType.isBaseType() || this.resolvedType.isCompatibleWith(this.expectedType)) ? false : true;
    }

    private static boolean preventsUnlikelyTypeWarning(TypeBinding typeBinding, TypeBinding typeBinding2, TypeBinding typeBinding3, MethodBinding methodBinding, BlockScope blockScope) {
        UnlikelyArgumentCheck determineCheckForNonStaticSingleArgumentMethod;
        UnlikelyArgumentCheck determineCheckForNonStaticSingleArgumentMethod2;
        if (blockScope.compilerOptions().isAnyEnabled(IrritantSet.UNLIKELY_ARGUMENT_TYPE) && !methodBinding.isStatic()) {
            TypeBinding[] typeBindingArr = methodBinding.parameters;
            if (typeBindingArr.length == 1 && (determineCheckForNonStaticSingleArgumentMethod = UnlikelyArgumentCheck.determineCheckForNonStaticSingleArgumentMethod(typeBinding2, blockScope, methodBinding.selector, typeBinding3, typeBindingArr)) != null && determineCheckForNonStaticSingleArgumentMethod.isDangerous(blockScope) && ((determineCheckForNonStaticSingleArgumentMethod2 = UnlikelyArgumentCheck.determineCheckForNonStaticSingleArgumentMethod(typeBinding, blockScope, methodBinding.selector, typeBinding3, methodBinding.parameters)) == null || !determineCheckForNonStaticSingleArgumentMethod2.isDangerous(blockScope))) {
                return true;
            }
        }
        return false;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        UnconditionalFlowInfo unconditionalInits = this.expression.analyseCode(blockScope, flowContext, flowInfo).unconditionalInits();
        this.expression.checkNPEbyUnboxing(blockScope, flowContext, flowInfo);
        flowContext.recordAbruptExit();
        return unconditionalInits;
    }

    @Override
    public boolean checkNPE(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, int i10) {
        if ((this.resolvedType.tagBits & 72057594037927936L) != 0) {
            return true;
        }
        checkNPEbyUnboxing(blockScope, flowContext, flowInfo);
        return this.expression.checkNPE(blockScope, flowContext, flowInfo, i10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0037, code lost:
    
        return false;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean checkUnsafeCast(Scope scope, TypeBinding typeBinding, TypeBinding typeBinding2, TypeBinding typeBinding3, boolean z10) {
        if (TypeBinding.equalsEquals(typeBinding3, typeBinding)) {
            if (!z10 && TypeBinding.equalsEquals(typeBinding3, this.resolvedType.leafComponentType()) && (!typeBinding2.isParameterizedType() || !typeBinding2.isProvablyDistinct(typeBinding))) {
                tagAsUnnecessaryCast(scope, typeBinding);
            }
            return true;
        }
        if (typeBinding3 != null) {
            if (z10) {
            }
        }
        int kind = typeBinding.kind();
        if (kind == 68) {
            TypeBinding leafComponentType = typeBinding.leafComponentType();
            if (z10 && (!leafComponentType.isReifiable() || leafComponentType.isTypeVariable())) {
                this.bits |= 128;
                return true;
            }
        } else if (kind != 260) {
            if (kind == 4100) {
                this.bits |= 128;
                return true;
            }
        } else if (!typeBinding.isReifiable()) {
            if (typeBinding3 == null) {
                this.bits |= 128;
                return true;
            }
            int kind2 = typeBinding3.kind();
            if (kind2 != 260) {
                if (kind2 == 1028) {
                    this.bits |= 128;
                    return true;
                }
                if (z10) {
                    this.bits |= 128;
                    return true;
                }
            } else {
                if (z10) {
                    if (typeBinding2.isRawType() || !typeBinding2.isEquivalentTo(typeBinding3)) {
                        this.bits |= 128;
                        return true;
                    }
                    ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) typeBinding;
                    ParameterizedTypeBinding parameterizedTypeBinding2 = (ParameterizedTypeBinding) typeBinding3;
                    TypeBinding[] typeBindingArr = parameterizedTypeBinding.arguments;
                    int length = typeBindingArr == null ? 0 : typeBindingArr.length;
                    TypeBinding[] typeBindingArr2 = parameterizedTypeBinding2.arguments;
                    if (typeBindingArr2 == null || length > typeBindingArr2.length) {
                        this.bits |= 128;
                    } else if ((parameterizedTypeBinding.tagBits & 1610612736) != 0) {
                        int i10 = 0;
                        while (true) {
                            if (i10 >= length) {
                                break;
                            }
                            int kind3 = typeBindingArr[i10].kind();
                            if (kind3 == 516 || kind3 == 4100) {
                                TypeBinding[] typeBindingArr3 = new TypeBinding[length];
                                System.arraycopy(parameterizedTypeBinding.arguments, 0, typeBindingArr3, 0, length);
                                typeBindingArr3[i10] = scope.getJavaLangObject();
                                if (TypeBinding.equalsEquals(scope.environment().createParameterizedType((ReferenceBinding) typeBinding.erasure(), typeBindingArr3, typeBinding.enclosingType()).findSuperTypeOriginatingFrom(typeBinding2), typeBinding3)) {
                                    this.bits |= 128;
                                    break;
                                }
                            }
                            i10++;
                        }
                    }
                    return true;
                }
                if (!typeBinding3.isEquivalentTo(typeBinding)) {
                    this.bits |= 128;
                    return true;
                }
            }
        }
        if (!z10 && TypeBinding.equalsEquals(typeBinding3, this.resolvedType.leafComponentType())) {
            tagAsUnnecessaryCast(scope, typeBinding);
        }
        return true;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10 = codeStream.position;
        boolean z11 = (this.type.bits & 1048576) != 0;
        boolean z12 = (this.bits & 64) != 0;
        Constant constant = this.constant;
        if (constant != Constant.NotAConstant) {
            if (z10 || z12 || z11) {
                codeStream.generateConstant(constant, this.implicitConversion);
                if (z12 || z11) {
                    codeStream.checkcast(this.type, this.resolvedType, i10);
                }
                if (!z10) {
                    codeStream.pop();
                }
            }
            codeStream.recordPositionsFrom(i10, this.sourceStart);
            return;
        }
        this.expression.generateCode(blockScope, codeStream, z11 || z10 || z12);
        if (z11 || (z12 && TypeBinding.notEquals(this.expression.postConversionType(blockScope), this.resolvedType.erasure()))) {
            codeStream.checkcast(this.type, this.resolvedType, i10);
        }
        if (z10) {
            codeStream.generateImplicitConversion(this.implicitConversion);
        } else if (z11 || z12) {
            int i11 = this.resolvedType.f102482id;
            if (i11 == 7 || i11 == 8) {
                codeStream.pop2();
            } else {
                codeStream.pop();
            }
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    public Expression innermostCastedExpression() {
        Expression expression = this.expression;
        while (expression instanceof CastExpression) {
            expression = ((CastExpression) expression).expression;
        }
        return expression;
    }

    @Override
    public LocalVariableBinding localVariableBinding() {
        return this.expression.localVariableBinding();
    }

    @Override
    public int nullStatus(FlowInfo flowInfo, FlowContext flowContext) {
        if ((this.implicitConversion & 512) != 0) {
            return 4;
        }
        return this.expression.nullStatus(flowInfo, flowContext);
    }

    @Override
    public Constant optimizedBooleanConstant() {
        int i10 = this.resolvedType.f102482id;
        return (i10 == 5 || i10 == 33) ? this.expression.optimizedBooleanConstant() : Constant.NotAConstant;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        int i11 = (this.bits & ASTNode.ParenthesizedMASK) >> 21;
        String str = "";
        for (int i12 = 0; i12 < i11; i12++) {
            stringBuffer.append('(');
            str = String.valueOf(str) + ')';
        }
        stringBuffer.append('(');
        this.type.print(0, stringBuffer).append(") ");
        StringBuffer printExpression = this.expression.printExpression(0, stringBuffer);
        printExpression.append(str);
        return printExpression;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        boolean z10;
        MessageSend messageSend;
        MethodBinding methodBinding;
        this.constant = Constant.NotAConstant;
        boolean z11 = false;
        this.implicitConversion = 0;
        TypeBinding resolveType = this.type.resolveType(blockScope);
        this.resolvedType = resolveType;
        if (blockScope.compilerOptions().sourceLevel >= ClassFileConstants.JDK1_8) {
            this.expression.setExpressionContext(ExpressionContext.CASTING_CONTEXT);
            Expression expression = this.expression;
            if (expression instanceof FunctionalExpression) {
                expression.setExpectedType(this.resolvedType);
                this.bits |= 32;
            }
        }
        Expression expression2 = this.expression;
        if (expression2 instanceof CastExpression) {
            expression2.bits |= 32;
            z10 = true;
        } else {
            z10 = false;
        }
        TypeBinding resolveType2 = expression2.resolveType(blockScope);
        Expression expression3 = this.expression;
        if ((expression3 instanceof MessageSend) && (methodBinding = (messageSend = (MessageSend) expression3).binding) != null && methodBinding.isPolymorphic()) {
            messageSend.binding = blockScope.environment().updatePolymorphicMethodReturnType((PolymorphicMethodBinding) methodBinding, resolveType);
            if (TypeBinding.notEquals(resolveType2, resolveType)) {
                this.bits |= 32;
                resolveType2 = resolveType;
            }
        }
        if (resolveType != null) {
            if (resolveType2 != null) {
                if (blockScope.compilerOptions().isAnnotationBasedNullAnalysisEnabled && NullAnnotationMatching.analyse(resolveType, resolveType2, -1).isAnyMismatch()) {
                    z11 = true;
                }
                if (checkCastTypesCompatibility(blockScope, resolveType, resolveType2, this.expression)) {
                    this.expression.computeConversion(blockScope, resolveType, resolveType2);
                    if ((this.bits & 128) != 0) {
                        if (blockScope.compilerOptions().reportUnavoidableGenericTypeProblems || !resolveType2.isRawType() || !this.expression.forcedToBeRaw(blockScope.referenceContext())) {
                            blockScope.problemReporter().unsafeCast(this, blockScope);
                        }
                    } else if (z11) {
                        blockScope.problemReporter().unsafeNullnessCast(this, blockScope);
                    } else {
                        if (resolveType.isRawType() && blockScope.compilerOptions().getSeverity(CompilerOptions.RawTypeReference) != 256) {
                            blockScope.problemReporter().rawTypeReference(this.type, resolveType);
                        }
                        if ((this.bits & 16416) == 16384 && !isIndirectlyUsed()) {
                            blockScope.problemReporter().unnecessaryCast(this);
                        }
                    }
                } else {
                    if ((resolveType.tagBits & 128) == 0) {
                        blockScope.problemReporter().typeCastError(this, resolveType, resolveType2);
                    }
                    this.bits |= 32;
                }
            }
            TypeReference typeReference = this.type;
            this.resolvedType = resolveType.capture(blockScope, typeReference.sourceStart, typeReference.sourceEnd);
            if (z10) {
                checkNeedForCastCast(blockScope, this);
            }
        }
        return this.resolvedType;
    }

    @Override
    public void setExpectedType(TypeBinding typeBinding) {
        this.expectedType = typeBinding;
    }

    @Override
    public void tagAsNeedCheckCast() {
        this.bits |= 64;
    }

    @Override
    public void tagAsUnnecessaryCast(Scope scope, TypeBinding typeBinding) {
        this.bits |= 16384;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            this.type.traverse(aSTVisitor, blockScope);
            this.expression.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x003f, code lost:
    
        if (r4 == 12) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007a, code lost:
    
        if (r4 == 12) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void checkNeedForArgumentCasts(BlockScope blockScope, int i10, int i11, Expression expression, int i12, boolean z10, Expression expression2, int i13, boolean z11) {
        if (blockScope.compilerOptions().getSeverity(67108864) == 256) {
            return;
        }
        if (z10) {
            if ((expression.bits & 16384) != 0 || !expression.resolvedType.isBaseType()) {
                CastExpression castExpression = (CastExpression) expression;
                TypeBinding typeBinding = castExpression.expression.resolvedType;
                if (typeBinding == null) {
                    return;
                }
                int i14 = typeBinding.f102482id;
                if (i14 == i12 || blockScope.environment().computeBoxingType(typeBinding).f102482id == i12) {
                    blockScope.problemReporter().unnecessaryCast(castExpression);
                    z10 = false;
                }
                i12 = i14;
            }
            z10 = false;
        }
        if (z11) {
            if ((expression2.bits & 16384) != 0 || !expression2.resolvedType.isBaseType()) {
                CastExpression castExpression2 = (CastExpression) expression2;
                TypeBinding typeBinding2 = castExpression2.expression.resolvedType;
                if (typeBinding2 == null) {
                    return;
                }
                int i15 = typeBinding2.f102482id;
                if (i15 == i13 || blockScope.environment().computeBoxingType(typeBinding2).f102482id == i13) {
                    blockScope.problemReporter().unnecessaryCast(castExpression2);
                    z11 = false;
                }
                i13 = i15;
            }
            z11 = false;
        }
        if (z10 || z11) {
            if (i12 > 15 || i13 > 15) {
                if (i12 == 11) {
                    i13 = 1;
                } else if (i13 != 11) {
                    return;
                } else {
                    i12 = 1;
                }
            }
            if ((i11 & 986895) == (OperatorExpression.OperatorSignatures[i10][(i12 << 4) + i13] & 986895)) {
                if (z10) {
                    blockScope.problemReporter().unnecessaryCast((CastExpression) expression);
                }
                if (z11) {
                    blockScope.problemReporter().unnecessaryCast((CastExpression) expression2);
                }
            }
        }
    }
}
