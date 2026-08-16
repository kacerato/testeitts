package org.eclipse.jdt.internal.compiler.ast;

import android.provider.CallLog;
import java.util.HashMap;
import java.util.Iterator;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.ConstantPool;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.flow.FieldInitsFakingFlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.IrritantSet;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ImplicitNullAnnotationVerifier;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext18;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.PolyTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticArgumentBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.Scanner;

public class ReferenceExpression extends FunctionalExpression implements IPolyExpression, InvocationSite {
    private static final char[] ImplicitArgName = " arg".toCharArray();
    private static final String SecretReceiverVariableName = " rec_";
    private boolean checkingPotentialCompatibility;
    private HashMap<TypeBinding, ReferenceExpression> copiesPerTargetType;
    private int depth;
    private MethodBinding exactMethodBinding;
    private TypeBinding[] freeParameters;
    public boolean haveReceiver;
    private HashMap<ParameterizedGenericMethodBinding, InferenceContext18> inferenceContexts;
    public Expression lhs;
    public int nameSourceStart;
    public TypeBinding receiverType;
    public LocalVariableBinding receiverVariable;
    public TypeBinding[] resolvedTypeArguments;
    private Scanner scanner;
    public char[] selector;
    MethodBinding syntheticAccessor;
    public char[] text;
    public TypeReference[] typeArguments;
    private boolean typeArgumentsHaveErrors;
    private boolean receiverPrecedesParameters = false;
    private MethodBinding[] potentialMethods = Binding.NO_METHODS;
    protected ReferenceExpression original = this;

    public ReferenceExpression(Scanner scanner) {
        this.scanner = scanner;
    }

    private ReferenceExpression cachedResolvedCopy(TypeBinding typeBinding) {
        HashMap<TypeBinding, ReferenceExpression> hashMap = this.copiesPerTargetType;
        ReferenceExpression referenceExpression = hashMap != null ? hashMap.get(typeBinding) : null;
        if (referenceExpression != null) {
            return referenceExpression;
        }
        IErrorHandlingPolicy switchErrorHandlingPolicy = this.enclosingScope.problemReporter().switchErrorHandlingPolicy(FunctionalExpression.silentErrorHandlingPolicy);
        try {
            ReferenceExpression copy = copy();
            if (copy == null) {
                this.enclosingScope.problemReporter().switchErrorHandlingPolicy(switchErrorHandlingPolicy);
                return null;
            }
            copy.setExpressionContext(this.expressionContext);
            copy.setExpectedType(typeBinding);
            copy.resolveType(this.enclosingScope);
            if (this.copiesPerTargetType == null) {
                this.copiesPerTargetType = new HashMap<>();
            }
            this.copiesPerTargetType.put(typeBinding, copy);
            this.enclosingScope.problemReporter().switchErrorHandlingPolicy(switchErrorHandlingPolicy);
            return copy;
        } catch (Throwable th2) {
            this.enclosingScope.problemReporter().switchErrorHandlingPolicy(switchErrorHandlingPolicy);
            throw th2;
        }
    }

    private ReferenceExpression copy() {
        Parser parser = new Parser(this.enclosingScope.problemReporter(), false);
        ICompilationUnit compilationUnit = this.compilationResult.getCompilationUnit();
        char[] contents = compilationUnit != null ? compilationUnit.getContents() : this.text;
        parser.scanner = this.scanner;
        ReferenceExpression referenceExpression = (ReferenceExpression) parser.parseExpression(contents, compilationUnit != null ? this.sourceStart : 0, (this.sourceEnd - this.sourceStart) + 1, this.enclosingScope.referenceCompilationUnit(), false);
        referenceExpression.original = this;
        referenceExpression.sourceStart = this.sourceStart;
        referenceExpression.sourceEnd = this.sourceEnd;
        return referenceExpression;
    }

    private TypeBinding[] descriptorParametersAsArgumentExpressions() {
        TypeBinding[] typeBindingArr;
        MethodBinding methodBinding = this.descriptor;
        return (methodBinding == null || (typeBindingArr = methodBinding.parameters) == null || typeBindingArr.length == 0) ? Binding.NO_PARAMETERS : this.expectedType.isParameterizedType() ? ((ParameterizedTypeBinding) this.expectedType).getSingleAbstractMethod(this.enclosingScope, true, this.sourceStart, this.sourceEnd).parameters : this.descriptor.parameters;
    }

    private boolean isDirectCodeGenPossible() {
        if (this.binding != null) {
            if (isMethodReference() && this.syntheticAccessor == null && TypeBinding.notEquals(this.binding.declaringClass, this.lhs.resolvedType.erasure()) && !this.binding.declaringClass.canBeSeenBy(this.enclosingScope)) {
                return (this.binding.isFinal() || this.binding.isStatic()) ? false : true;
            }
            TypeBinding[] typeBindingArr = this.descriptor.parameters;
            TypeBinding[] typeBindingArr2 = this.binding.original().parameters;
            TypeBinding[] typeBindingArr3 = this.descriptor.original().parameters;
            boolean z10 = this.receiverPrecedesParameters;
            for (int i10 = 0; i10 < typeBindingArr.length - (z10 ? 1 : 0); i10++) {
                int i11 = i10 + (z10 ? 1 : 0);
                TypeBinding typeBinding = typeBindingArr[i11];
                TypeBinding typeBinding2 = typeBindingArr3[i11];
                if (typeBinding.isIntersectionType18() || (typeBinding.isTypeVariable() && ((TypeVariableBinding) typeBinding).boundsCount() > 1)) {
                    return CharOperation.equals(typeBinding2.signature(), typeBindingArr2[i10].signature());
                }
            }
        }
        return true;
    }

    private boolean shouldGenerateImplicitLambda(BlockScope blockScope) {
        if (this.binding.isVarargs()) {
            return true;
        }
        return (isConstructorReference() && this.receiverType.syntheticOuterLocalVariables() != null && this.shouldCaptureInstance) || requiresBridges() || !isDirectCodeGenPossible();
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [org.eclipse.jdt.internal.compiler.ast.ReferenceExpression$1] */
    private boolean shouldGenerateSecretReceiverVariable() {
        if (!isMethodReference() || !this.haveReceiver) {
            return false;
        }
        if (this.lhs instanceof Invocation) {
            return true;
        }
        return new ASTVisitor() {
            boolean accessesnonFinalOuterLocals;

            public boolean accessesnonFinalOuterLocals() {
                ReferenceExpression referenceExpression = ReferenceExpression.this;
                referenceExpression.lhs.traverse(this, referenceExpression.enclosingScope);
                return this.accessesnonFinalOuterLocals;
            }

            @Override
            public boolean visit(SingleNameReference singleNameReference, BlockScope blockScope) {
                Binding binding = blockScope.getBinding(singleNameReference.getName(), ReferenceExpression.this);
                if (!(binding instanceof LocalVariableBinding)) {
                    return false;
                }
                LocalVariableBinding localVariableBinding = (LocalVariableBinding) binding;
                if (localVariableBinding.isFinal() || localVariableBinding.isEffectivelyFinal()) {
                    return false;
                }
                this.accessesnonFinalOuterLocals = true;
                return false;
            }
        }.accessesnonFinalOuterLocals();
    }

    @Override
    public void acceptPotentiallyCompatibleMethods(MethodBinding[] methodBindingArr) {
        if (this.checkingPotentialCompatibility) {
            this.potentialMethods = methodBindingArr;
        }
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        MethodBinding methodBinding;
        TypeBinding[] typeBindingArr;
        if (this.haveReceiver) {
            this.lhs.analyseCode(blockScope, flowContext, flowInfo, true);
            this.lhs.checkNPE(blockScope, flowContext, flowInfo);
        } else if (isConstructorReference()) {
            TypeBinding leafComponentType = this.receiverType.leafComponentType();
            if (leafComponentType.isNestedType() && (leafComponentType instanceof ReferenceBinding)) {
                ReferenceBinding referenceBinding = (ReferenceBinding) leafComponentType;
                if (!referenceBinding.isStatic()) {
                    blockScope.tagAsAccessingEnclosingInstanceStateOf(referenceBinding, false);
                    this.shouldCaptureInstance = true;
                    ReferenceBinding referenceBinding2 = (ReferenceBinding) leafComponentType.erasure();
                    if (referenceBinding2.isLocalType()) {
                        ((LocalTypeBinding) referenceBinding2).addInnerEmulationDependent(blockScope, false);
                    }
                }
            }
        }
        if (blockScope.compilerOptions().isAnyEnabled(IrritantSet.UNLIKELY_ARGUMENT_TYPE) && this.binding.isValidBinding() && (methodBinding = this.binding) != null && (typeBindingArr = methodBinding.parameters) != null) {
            if (typeBindingArr.length == 1) {
                if (this.descriptor.parameters.length == (this.receiverPrecedesParameters ? 2 : 1) && !methodBinding.isStatic()) {
                    TypeBinding[] typeBindingArr2 = this.descriptor.parameters;
                    boolean z10 = this.receiverPrecedesParameters;
                    TypeBinding typeBinding = typeBindingArr2[z10 ? 1 : 0];
                    UnlikelyArgumentCheck determineCheckForNonStaticSingleArgumentMethod = UnlikelyArgumentCheck.determineCheckForNonStaticSingleArgumentMethod(typeBinding, blockScope, this.selector, z10 ? typeBindingArr2[0] : this.binding.declaringClass, this.binding.parameters);
                    if (determineCheckForNonStaticSingleArgumentMethod != null && determineCheckForNonStaticSingleArgumentMethod.isDangerous(blockScope)) {
                        blockScope.problemReporter().unlikelyArgumentType(this, this.binding, typeBinding, determineCheckForNonStaticSingleArgumentMethod.typeToReport, determineCheckForNonStaticSingleArgumentMethod.dangerousMethod);
                    }
                }
            }
            MethodBinding methodBinding2 = this.binding;
            if (methodBinding2.parameters.length == 2 && this.descriptor.parameters.length == 2 && methodBinding2.isStatic()) {
                TypeBinding[] typeBindingArr3 = this.descriptor.parameters;
                TypeBinding typeBinding2 = typeBindingArr3[0];
                TypeBinding typeBinding3 = typeBindingArr3[1];
                UnlikelyArgumentCheck determineCheckForStaticTwoArgumentMethod = UnlikelyArgumentCheck.determineCheckForStaticTwoArgumentMethod(typeBinding3, blockScope, this.selector, typeBinding2, this.binding.parameters, this.receiverType);
                if (determineCheckForStaticTwoArgumentMethod != null && determineCheckForStaticTwoArgumentMethod.isDangerous(blockScope)) {
                    blockScope.problemReporter().unlikelyArgumentType(this, this.binding, typeBinding3, determineCheckForStaticTwoArgumentMethod.typeToReport, determineCheckForStaticTwoArgumentMethod.dangerousMethod);
                }
            }
        }
        manageSyntheticAccessIfNecessary(blockScope, flowInfo);
        return flowInfo;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0076, code lost:
    
        if (r12.descriptor.parameters[r0].isCompatibleWith(r12.binding.parameters[r0]) != false) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void checkNullAnnotations(BlockScope blockScope) {
        boolean z10;
        TypeBinding typeBinding;
        if (!blockScope.compilerOptions().isAnnotationBasedNullAnalysisEnabled) {
            return;
        }
        TypeBinding typeBinding2 = this.expectedType;
        if (typeBinding2 != null && NullAnnotationMatching.hasContradictions(typeBinding2)) {
            return;
        }
        ImplicitNullAnnotationVerifier.ensureNullnessIsKnown(this.binding, blockScope);
        int length = this.binding.parameters.length;
        TypeBinding[] typeBindingArr = this.descriptor.parameters;
        int length2 = typeBindingArr.length;
        if (this.receiverPrecedesParameters) {
            length2--;
            TypeBinding typeBinding3 = typeBindingArr[0];
            if ((typeBinding3.tagBits & 36028797018963968L) != 0) {
                blockScope.problemReporter().referenceExpressionArgumentNullityMismatch(this, blockScope.environment().createAnnotatedType(this.binding.declaringClass, new AnnotationBinding[]{blockScope.environment().getNonNullAnnotation()}), typeBinding3, this.descriptor, -1, NullAnnotationMatching.NULL_ANNOTATIONS_MISMATCH);
            }
        }
        if (this.binding.isVarargs()) {
            if (length2 == length) {
                int i10 = length - 1;
            }
            z10 = true;
            for (int i11 = 0; i11 < length2; i11++) {
                TypeBinding typeBinding4 = this.descriptor.parameters[(this.receiverPrecedesParameters ? 1 : 0) + i11];
                TypeBinding parameter = InferenceContext18.getParameter(this.binding.parameters, i11, z10);
                NullAnnotationMatching analyse = NullAnnotationMatching.analyse((!parameter.isPrimitiveType() || typeBinding4.isPrimitiveType()) ? parameter : blockScope.environment().createAnnotatedType(blockScope.boxing(parameter), new AnnotationBinding[]{blockScope.environment().getNonNullAnnotation()}), typeBinding4, 1);
                if (analyse.isAnyMismatch()) {
                    blockScope.problemReporter().referenceExpressionArgumentNullityMismatch(this, parameter, typeBinding4, this.descriptor, i11, analyse);
                }
            }
            typeBinding = this.binding.returnType;
            if (typeBinding.isPrimitiveType()) {
                if (this.binding.isConstructor()) {
                    typeBinding = blockScope.environment().createAnnotatedType(this.receiverType, new AnnotationBinding[]{blockScope.environment().getNonNullAnnotation()});
                }
                NullAnnotationMatching analyse2 = NullAnnotationMatching.analyse(this.descriptor.returnType, typeBinding, 1);
                if (analyse2.isAnyMismatch()) {
                    blockScope.problemReporter().illegalReturnRedefinition(this, this.descriptor, analyse2.isUnchecked(), typeBinding);
                    return;
                }
                return;
            }
            return;
        }
        length2 = Math.min(length, length2);
        z10 = false;
        while (i11 < length2) {
        }
        typeBinding = this.binding.returnType;
        if (typeBinding.isPrimitiveType()) {
        }
    }

    @Override
    public boolean checkingPotentialCompatibility() {
        return this.checkingPotentialCompatibility;
    }

    @Override
    public void cleanUp() {
        HashMap<TypeBinding, ReferenceExpression> hashMap = this.copiesPerTargetType;
        if (hashMap != null) {
            Iterator<ReferenceExpression> it = hashMap.values().iterator();
            while (it.hasNext()) {
                it.next().scanner = null;
            }
        }
        ReferenceExpression referenceExpression = this.original;
        if (referenceExpression != null && referenceExpression != this) {
            referenceExpression.cleanUp();
        }
        this.scanner = null;
        this.receiverVariable = null;
    }

    public Expression[] createPseudoExpressions(TypeBinding[] typeBindingArr) {
        Expression[] expressionArr = new Expression[typeBindingArr.length];
        long j10 = (this.sourceStart << 32) + this.sourceEnd;
        for (int i10 = 0; i10 < typeBindingArr.length; i10++) {
            SingleNameReference singleNameReference = new SingleNameReference(("fakeArg" + i10).toCharArray(), j10);
            expressionArr[i10] = singleNameReference;
            singleNameReference.resolvedType = typeBindingArr[i10];
        }
        return expressionArr;
    }

    @Override
    public InferenceContext18 freshInferenceContext(Scope scope) {
        if (this.expressionContext != ExpressionContext.VANILLA_CONTEXT) {
            return new InferenceContext18(scope, createPseudoExpressions(this.freeParameters), this, null);
        }
        return null;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10;
        this.actualMethodBinding = this.binding;
        if (shouldGenerateImplicitLambda(blockScope)) {
            generateImplicitLambda(blockScope, codeStream, z10);
            return;
        }
        SourceTypeBinding enclosingSourceType = blockScope.enclosingSourceType();
        if (this.receiverType.isArrayType()) {
            char[] concat = CharOperation.concat(TypeConstants.ANONYMOUS_METHOD, Integer.toString(this.ordinal).toCharArray());
            if (isConstructorReference()) {
                SyntheticMethodBinding addSyntheticArrayMethod = enclosingSourceType.addSyntheticArrayMethod((ArrayBinding) this.receiverType, 14, concat);
                this.binding = addSyntheticArrayMethod;
                this.actualMethodBinding = addSyntheticArrayMethod;
            } else if (CharOperation.equals(this.selector, TypeConstants.CLONE)) {
                SyntheticMethodBinding addSyntheticArrayMethod2 = enclosingSourceType.addSyntheticArrayMethod((ArrayBinding) this.receiverType, 15, concat);
                this.binding = addSyntheticArrayMethod2;
                this.actualMethodBinding = addSyntheticArrayMethod2;
            }
        } else if (this.syntheticAccessor != null) {
            if (this.lhs.isSuper() || isMethodReference()) {
                this.binding = this.syntheticAccessor;
            }
        } else if (this.binding != null && isMethodReference() && TypeBinding.notEquals(this.binding.declaringClass, this.lhs.resolvedType.erasure()) && !this.binding.declaringClass.canBeSeenBy(blockScope)) {
            this.binding = new MethodBinding(this.binding.original(), (ReferenceBinding) this.lhs.resolvedType.erasure());
        }
        int i11 = codeStream.position;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('(');
        if (this.haveReceiver) {
            this.lhs.generateCode(blockScope, codeStream, true);
            if (isMethodReference() && !this.lhs.isThis() && !this.lhs.isSuper()) {
                MethodBinding exactMethod = blockScope.getJavaLangObject().getExactMethod(TypeConstants.GETCLASS, Binding.NO_PARAMETERS, blockScope.compilationUnitScope());
                codeStream.dup();
                codeStream.invoke(Opcodes.OPC_invokevirtual, exactMethod, exactMethod.declaringClass);
                codeStream.pop();
            }
            if (!this.lhs.isSuper() || this.actualMethodBinding.isPrivate()) {
                stringBuffer.append(this.receiverType.signature());
            } else {
                Expression expression = this.lhs;
                if (!(expression instanceof QualifiedSuperReference)) {
                    stringBuffer.append(enclosingSourceType.signature());
                } else if (((QualifiedSuperReference) expression).qualification.resolvedType.isInterface()) {
                    stringBuffer.append(enclosingSourceType.signature());
                } else {
                    stringBuffer.append(((QualifiedSuperReference) this.lhs).currentCompatibleType.signature());
                }
            }
            i10 = 1;
        } else {
            i10 = 0;
            if (isConstructorReference()) {
                ReferenceBinding[] referenceBindingArr = Binding.UNINITIALIZED_REFERENCE_TYPES;
                if (this.receiverType.isNestedType()) {
                    referenceBindingArr = ((ReferenceBinding) this.receiverType).syntheticEnclosingInstanceTypes();
                    if (referenceBindingArr != null) {
                        int length = referenceBindingArr.length;
                        for (ReferenceBinding referenceBinding : referenceBindingArr) {
                            stringBuffer.append(referenceBinding.signature());
                            codeStream.generateOuterAccess(blockScope.getEmulationPath(referenceBinding, false, true), this, referenceBinding, blockScope);
                        }
                        i10 = length;
                    } else {
                        referenceBindingArr = Binding.NO_REFERENCE_TYPES;
                    }
                }
                if (this.syntheticAccessor != null) {
                    this.binding = enclosingSourceType.addSyntheticFactoryMethod(this.binding, this.syntheticAccessor, referenceBindingArr, CharOperation.concat(TypeConstants.ANONYMOUS_METHOD, Integer.toString(this.ordinal).toCharArray()));
                    this.syntheticAccessor = null;
                }
            }
        }
        stringBuffer.append(')');
        stringBuffer.append('L');
        if (this.resolvedType.isIntersectionType18()) {
            stringBuffer.append(this.descriptor.declaringClass.constantPoolName());
        } else {
            stringBuffer.append(this.resolvedType.constantPoolName());
        }
        stringBuffer.append(';');
        if (this.isSerializable) {
            enclosingSourceType.addSyntheticMethod(this);
        }
        int recordBootstrapMethod = codeStream.classFile.recordBootstrapMethod(this);
        char[] cArr = this.descriptor.selector;
        char[] charArray = stringBuffer.toString().toCharArray();
        boolean isConstructorReference = isConstructorReference();
        Expression expression2 = this.lhs;
        codeStream.invokeDynamic(recordBootstrapMethod, i10, 1, cArr, charArray, isConstructorReference, expression2 instanceof TypeReference ? (TypeReference) expression2 : null, this.typeArguments);
        if (!z10) {
            codeStream.pop();
        }
        codeStream.recordPositionsFrom(i11, this.sourceStart);
    }

    public void generateImplicitLambda(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        BlockScope blockScope2;
        ReferenceExpression copy = copy();
        int length = this.descriptor.parameters.length;
        LambdaExpression lambdaExpression = new LambdaExpression(this.compilationResult, false, (this.binding.modifiers & 1073741824) != 0);
        Argument[] argumentArr = new Argument[length];
        for (int i10 = 0; i10 < length; i10++) {
            argumentArr[i10] = new Argument(CharOperation.append(ImplicitArgName, Integer.toString(i10).toCharArray()), 0L, null, 0, true);
        }
        lambdaExpression.setArguments(argumentArr);
        lambdaExpression.setExpressionContext(this.expressionContext);
        lambdaExpression.setExpectedType(this.expectedType);
        boolean z11 = this.receiverPrecedesParameters;
        int i11 = length - (z11 ? 1 : 0);
        SingleNameReference[] singleNameReferenceArr = new SingleNameReference[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            singleNameReferenceArr[i12] = new SingleNameReference(CharOperation.append(ImplicitArgName, Integer.toString(i12 + (z11 ? 1 : 0)).toCharArray()), 0L);
        }
        boolean shouldGenerateSecretReceiverVariable = shouldGenerateSecretReceiverVariable();
        if (isMethodReference()) {
            if (shouldGenerateSecretReceiverVariable) {
                blockScope2 = blockScope;
                this.lhs.generateCode(blockScope2, codeStream, true);
                codeStream.store(this.receiverVariable, false);
                codeStream.addVariable(this.receiverVariable);
            } else {
                blockScope2 = blockScope;
            }
            MessageSend messageSend = new MessageSend();
            messageSend.selector = this.selector;
            Expression singleNameReference = shouldGenerateSecretReceiverVariable ? new SingleNameReference(this.receiverVariable.name, 0L) : copy.lhs;
            if (this.receiverPrecedesParameters) {
                singleNameReference = new SingleNameReference(CharOperation.append(ImplicitArgName, Integer.toString(0).toCharArray()), 0L);
            }
            messageSend.receiver = singleNameReference;
            messageSend.typeArguments = copy.typeArguments;
            messageSend.arguments = singleNameReferenceArr;
            lambdaExpression.setBody(messageSend);
        } else {
            blockScope2 = blockScope;
            if (isArrayConstructorReference()) {
                ArrayAllocationExpression arrayAllocationExpression = new ArrayAllocationExpression();
                arrayAllocationExpression.dimensions = new Expression[]{singleNameReferenceArr[0]};
                Expression expression = this.lhs;
                if (expression instanceof ArrayTypeReference) {
                    ArrayTypeReference arrayTypeReference = (ArrayTypeReference) expression;
                    arrayAllocationExpression.type = arrayTypeReference.dimensions == 1 ? new SingleTypeReference(arrayTypeReference.token, 0L) : new ArrayTypeReference(arrayTypeReference.token, arrayTypeReference.dimensions - 1, 0L);
                } else {
                    ArrayQualifiedTypeReference arrayQualifiedTypeReference = (ArrayQualifiedTypeReference) expression;
                    arrayAllocationExpression.type = arrayQualifiedTypeReference.dimensions == 1 ? new QualifiedTypeReference(arrayQualifiedTypeReference.tokens, arrayQualifiedTypeReference.sourcePositions) : new ArrayQualifiedTypeReference(arrayQualifiedTypeReference.tokens, arrayQualifiedTypeReference.dimensions - 1, arrayQualifiedTypeReference.sourcePositions);
                }
                lambdaExpression.setBody(arrayAllocationExpression);
            } else {
                AllocationExpression allocationExpression = new AllocationExpression();
                Expression expression2 = this.lhs;
                if (expression2 instanceof TypeReference) {
                    allocationExpression.type = (TypeReference) expression2;
                } else if (expression2 instanceof SingleNameReference) {
                    allocationExpression.type = new SingleTypeReference(((SingleNameReference) this.lhs).token, 0L);
                } else {
                    if (!(expression2 instanceof QualifiedNameReference)) {
                        throw new IllegalStateException("Unexpected node type");
                    }
                    Expression expression3 = this.lhs;
                    allocationExpression.type = new QualifiedTypeReference(((QualifiedNameReference) expression3).tokens, new long[((QualifiedNameReference) expression3).tokens.length]);
                }
                allocationExpression.typeArguments = copy.typeArguments;
                allocationExpression.arguments = singleNameReferenceArr;
                lambdaExpression.setBody(allocationExpression);
            }
        }
        LocalVariableBinding localVariableBinding = this.receiverVariable;
        if (localVariableBinding != null) {
            blockScope2 = localVariableBinding.declaringScope;
        }
        IErrorHandlingPolicy switchErrorHandlingPolicy = blockScope2.problemReporter().switchErrorHandlingPolicy(FunctionalExpression.silentErrorHandlingPolicy);
        try {
            lambdaExpression.resolveType(blockScope2, true);
            lambdaExpression.analyseCode(blockScope2, new FieldInitsFakingFlowContext(null, this, Binding.NO_EXCEPTIONS, null, blockScope2, FlowInfo.DEAD_END), UnconditionalFlowInfo.fakeInitializedFlowInfo(blockScope2.outerMostMethodScope().analysisIndex, blockScope2.referenceType().maxFieldCount));
            blockScope2.problemReporter().switchErrorHandlingPolicy(switchErrorHandlingPolicy);
            SyntheticArgumentBinding[] syntheticOuterLocalVariables = this.receiverType.syntheticOuterLocalVariables();
            int length2 = syntheticOuterLocalVariables == null ? 0 : syntheticOuterLocalVariables.length;
            for (int i13 = 0; i13 < length2; i13++) {
                lambdaExpression.addSyntheticArgument(syntheticOuterLocalVariables[i13].actualOuterLocalVariable);
            }
            lambdaExpression.generateCode(blockScope2, codeStream, z10);
            if (shouldGenerateSecretReceiverVariable) {
                codeStream.removeVariable(this.receiverVariable);
            }
        } catch (Throwable th2) {
            blockScope2.problemReporter().switchErrorHandlingPolicy(switchErrorHandlingPolicy);
            throw th2;
        }
    }

    @Override
    public TypeBinding[] genericTypeArguments() {
        return this.resolvedTypeArguments;
    }

    public MethodBinding getCompileTimeDeclaration(Scope scope, boolean z10, TypeBinding[] typeBindingArr) {
        MethodBinding methodBinding = this.exactMethodBinding;
        return methodBinding != null ? methodBinding : this.receiverType.isArrayType() ? scope.findMethodForArray((ArrayBinding) this.receiverType, this.selector, Binding.NO_PARAMETERS, this) : z10 ? scope.getConstructor((ReferenceBinding) this.receiverType, typeBindingArr, this) : scope.getMethod(this.receiverType, this.selector, typeBindingArr, this);
    }

    public MethodBinding getExactMethod() {
        return this.exactMethodBinding;
    }

    public InferenceContext18 getInferenceContext(ParameterizedMethodBinding parameterizedMethodBinding) {
        HashMap<ParameterizedGenericMethodBinding, InferenceContext18> hashMap = this.inferenceContexts;
        if (hashMap == null) {
            return null;
        }
        return hashMap.get(parameterizedMethodBinding);
    }

    @Override
    public MethodBinding getMethodBinding() {
        if (this.actualMethodBinding == null) {
            this.actualMethodBinding = this.binding;
        }
        return this.actualMethodBinding;
    }

    public void initialize(CompilationResult compilationResult, Expression expression, TypeReference[] typeReferenceArr, char[] cArr, int i10) {
        super.setCompilationResult(compilationResult);
        this.lhs = expression;
        this.typeArguments = typeReferenceArr;
        this.selector = cArr;
        this.sourceStart = expression.sourceStart;
        this.sourceEnd = i10;
    }

    public boolean isArrayConstructorReference() {
        TypeBinding typeBinding;
        return isConstructorReference() && (typeBinding = this.lhs.resolvedType) != null && typeBinding.isArrayType();
    }

    @Override
    public boolean isCompatibleWith(TypeBinding typeBinding, Scope scope) {
        TypeBinding typeBinding2;
        MethodBinding methodBinding;
        ReferenceExpression cachedResolvedCopy = cachedResolvedCopy(typeBinding);
        return (cachedResolvedCopy == null || (typeBinding2 = cachedResolvedCopy.resolvedType) == null || !typeBinding2.isValidBinding() || (methodBinding = cachedResolvedCopy.binding) == null || !methodBinding.isValidBinding()) ? false : true;
    }

    public boolean isConstructorReference() {
        return CharOperation.equals(this.selector, ConstantPool.Init);
    }

    @Override
    public boolean isExactMethodReference() {
        return this.exactMethodBinding != null;
    }

    public boolean isMethodReference() {
        return !CharOperation.equals(this.selector, ConstantPool.Init);
    }

    @Override
    public boolean isPertinentToApplicability(TypeBinding typeBinding, MethodBinding methodBinding) {
        if (isExactMethodReference()) {
            return super.isPertinentToApplicability(typeBinding, methodBinding);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x0072, code lost:
    
        if (r7.haveReceiver != false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0074, code lost:
    
        if (r8 != 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0077, code lost:
    
        r8 = r8 - 1;
        r0 = new org.eclipse.jdt.internal.compiler.lookup.TypeBinding[r8];
        java.lang.System.arraycopy(r3, 1, r0, 0, r8);
        r7.freeParameters = r0;
        r7.potentialMethods = org.eclipse.jdt.internal.compiler.lookup.Binding.NO_METHODS;
        r8 = getCompileTimeDeclaration(r9, false, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0087, code lost:
    
        if (r8 == null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x008d, code lost:
    
        if (r8.isValidBinding() == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x008f, code lost:
    
        r7.potentialMethods = new org.eclipse.jdt.internal.compiler.lookup.MethodBinding[]{r8};
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0095, code lost:
    
        r8 = r7.potentialMethods.length;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0098, code lost:
    
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0099, code lost:
    
        if (r9 < r8) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00ac, code lost:
    
        if (r7.potentialMethods[r9].isStatic() != false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00b6, code lost:
    
        if (r7.potentialMethods[r9].isConstructor() != false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00b8, code lost:
    
        r7.checkingPotentialCompatibility = false;
        r7.potentialMethods = org.eclipse.jdt.internal.compiler.lookup.Binding.NO_METHODS;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00c1, code lost:
    
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x009b, code lost:
    
        r7.checkingPotentialCompatibility = false;
        r7.potentialMethods = org.eclipse.jdt.internal.compiler.lookup.Binding.NO_METHODS;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00a1, code lost:
    
        r7.freeParameters = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00a3, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00c4, code lost:
    
        r7.checkingPotentialCompatibility = false;
        r7.potentialMethods = org.eclipse.jdt.internal.compiler.lookup.Binding.NO_METHODS;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isPotentiallyCompatibleWith(TypeBinding typeBinding, Scope scope) {
        TypeBinding typeBinding2;
        boolean isConstructorReference = isConstructorReference();
        if (isConstructorReference) {
            TypeBinding typeBinding3 = this.receiverType;
            if (typeBinding3 == null) {
                return false;
            }
            if (typeBinding3.isArrayType() && !this.receiverType.leafComponentType().isReifiable()) {
                return false;
            }
        }
        if (!super.isPertinentToApplicability(typeBinding, null)) {
            return true;
        }
        MethodBinding singleAbstractMethod = typeBinding.getSingleAbstractMethod(this.enclosingScope, true);
        if (singleAbstractMethod == null || !singleAbstractMethod.isValidBinding() || this.typeArgumentsHaveErrors || (typeBinding2 = this.receiverType) == null || !typeBinding2.isValidBinding()) {
            return false;
        }
        int length = singleAbstractMethod.parameters.length;
        TypeBinding[] typeBindingArr = new TypeBinding[length];
        for (int i10 = 0; i10 < length; i10++) {
            typeBindingArr[i10] = new ReferenceBinding() {
                {
                    this.compoundName = CharOperation.NO_CHAR_CHAR;
                }

                @Override
                public TypeBinding findSuperTypeOriginatingFrom(TypeBinding typeBinding4) {
                    return typeBinding4;
                }

                @Override
                public boolean isCompatibleWith(TypeBinding typeBinding4, Scope scope2) {
                    return true;
                }

                public String toString() {
                    return "(wildcard)";
                }
            };
        }
        this.freeParameters = typeBindingArr;
        this.checkingPotentialCompatibility = true;
        try {
            MethodBinding compileTimeDeclaration = getCompileTimeDeclaration(scope, isConstructorReference, typeBindingArr);
            if (compileTimeDeclaration != null && compileTimeDeclaration.isValidBinding()) {
                this.potentialMethods = new MethodBinding[]{compileTimeDeclaration};
            }
            int length2 = this.potentialMethods.length;
            int i11 = 0;
            while (true) {
                if (i11 >= length2) {
                    break;
                }
                if (!this.potentialMethods[i11].isStatic() && !this.potentialMethods[i11].isConstructor()) {
                    if (this.haveReceiver) {
                        this.checkingPotentialCompatibility = false;
                        this.potentialMethods = Binding.NO_METHODS;
                        break;
                    }
                    i11++;
                }
                if (!this.haveReceiver) {
                    this.checkingPotentialCompatibility = false;
                    this.potentialMethods = Binding.NO_METHODS;
                    break;
                }
                i11++;
            }
            this.freeParameters = null;
            return true;
        } catch (Throwable th2) {
            this.checkingPotentialCompatibility = false;
            this.potentialMethods = Binding.NO_METHODS;
            this.freeParameters = null;
            throw th2;
        }
    }

    @Override
    public boolean isSuperAccess() {
        return this.lhs.isSuper();
    }

    @Override
    public boolean isTypeAccess() {
        return !this.haveReceiver;
    }

    public void manageSyntheticAccessIfNecessary(BlockScope blockScope, FlowInfo flowInfo) {
        MethodBinding methodBinding;
        if ((flowInfo.tagBits & 1) == 0 && (methodBinding = this.binding) != null && methodBinding.isValidBinding()) {
            MethodBinding original = this.binding.original();
            if (original.isVarargs()) {
                return;
            }
            SourceTypeBinding enclosingSourceType = blockScope.enclosingSourceType();
            if (isConstructorReference()) {
                if (original.isPrivate()) {
                    ReferenceBinding referenceBinding = original.declaringClass;
                    if (TypeBinding.notEquals(enclosingSourceType, referenceBinding)) {
                        if ((referenceBinding.tagBits & 16) != 0) {
                            original.tagBits |= 512;
                            return;
                        } else if (blockScope.enclosingSourceType().isNestmateOf(this.binding.declaringClass)) {
                            this.syntheticAccessor = original;
                            return;
                        } else {
                            this.syntheticAccessor = ((SourceTypeBinding) referenceBinding).addSyntheticMethod(original, false);
                            blockScope.problemReporter().needToEmulateMethodAccess(original, this);
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            if (this.binding.isPrivate()) {
                if (TypeBinding.notEquals(enclosingSourceType, original.declaringClass)) {
                    this.syntheticAccessor = ((SourceTypeBinding) original.declaringClass).addSyntheticMethod(original, false);
                    blockScope.problemReporter().needToEmulateMethodAccess(original, this);
                    return;
                }
                return;
            }
            if (!this.lhs.isSuper()) {
                if (!this.binding.isProtected() || (this.bits & ASTNode.DepthMASK) == 0 || original.declaringClass.getPackage() == enclosingSourceType.getPackage()) {
                    return;
                }
                this.syntheticAccessor = ((SourceTypeBinding) enclosingSourceType.enclosingTypeAt((this.bits & ASTNode.DepthMASK) >> 5)).addSyntheticMethod(original, isSuperAccess());
                blockScope.problemReporter().needToEmulateMethodAccess(original, this);
                return;
            }
            Expression expression = this.lhs;
            if (expression instanceof QualifiedSuperReference) {
                QualifiedSuperReference qualifiedSuperReference = (QualifiedSuperReference) expression;
                if (!qualifiedSuperReference.qualification.resolvedType.isInterface()) {
                    enclosingSourceType = (SourceTypeBinding) qualifiedSuperReference.currentCompatibleType;
                }
            }
            this.syntheticAccessor = enclosingSourceType.addSyntheticMethod(original, true);
            blockScope.problemReporter().needToEmulateMethodAccess(original, this);
        }
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        this.lhs.print(0, stringBuffer);
        stringBuffer.append("::");
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
        if (isConstructorReference()) {
            stringBuffer.append(CallLog.Calls.NEW);
        } else {
            stringBuffer.append(this.selector);
        }
        return stringBuffer;
    }

    public void registerInferenceContext(ParameterizedGenericMethodBinding parameterizedGenericMethodBinding, InferenceContext18 inferenceContext18) {
        if (this.inferenceContexts == null) {
            this.inferenceContexts = new HashMap<>();
        }
        this.inferenceContexts.put(parameterizedGenericMethodBinding, inferenceContext18);
    }

    /* JADX WARN: Removed duplicated region for block: B:204:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x03f4  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TypeBinding resolveType(BlockScope blockScope) {
        TypeBinding typeBinding;
        MethodBinding inferDiamondConstructor;
        int i10;
        MethodBinding methodBinding;
        MethodBinding methodBinding2;
        TypeBinding typeBinding2;
        TypeBinding findSuperTypeOriginatingFrom;
        MethodBinding methodBinding3;
        CompilerOptions compilerOptions = blockScope.compilerOptions();
        Constant constant = this.constant;
        Constant constant2 = Constant.NotAConstant;
        if (constant != constant2) {
            this.constant = constant2;
            this.enclosingScope = blockScope;
            if (this.original == this) {
                this.ordinal = recordFunctionalType(blockScope);
            }
            Expression expression = this.lhs;
            expression.bits |= 1073741824;
            typeBinding = expression.resolveType(blockScope);
            this.lhs.computeConversion(blockScope, typeBinding, typeBinding);
            TypeReference[] typeReferenceArr = this.typeArguments;
            if (typeReferenceArr != null) {
                int length = typeReferenceArr.length;
                this.typeArgumentsHaveErrors = compilerOptions.sourceLevel < ClassFileConstants.JDK1_5;
                this.resolvedTypeArguments = new TypeBinding[length];
                for (int i11 = 0; i11 < length; i11++) {
                    TypeReference typeReference = this.typeArguments[i11];
                    TypeBinding[] typeBindingArr = this.resolvedTypeArguments;
                    TypeBinding resolveType = typeReference.resolveType(blockScope, true);
                    typeBindingArr[i11] = resolveType;
                    if (resolveType == null) {
                        this.typeArgumentsHaveErrors = true;
                    }
                    if (this.typeArgumentsHaveErrors && (typeReference instanceof Wildcard)) {
                        blockScope.problemReporter().illegalUsageOfWildcard(typeReference);
                    }
                }
                if (this.typeArgumentsHaveErrors || typeBinding == null) {
                    this.resolvedType = null;
                    return null;
                }
                if (isConstructorReference() && typeBinding.isRawType()) {
                    blockScope.problemReporter().rawConstructorReferenceNotWithExplicitTypeArguments(this.typeArguments);
                    this.resolvedType = null;
                    return null;
                }
            }
            if (this.typeArgumentsHaveErrors || typeBinding == null) {
                this.resolvedType = null;
                return null;
            }
            if (typeBinding.problemId() == 21) {
                typeBinding = typeBinding.closestMatch();
            }
            if (typeBinding == null || !typeBinding.isValidBinding()) {
                this.resolvedType = null;
                return null;
            }
            this.receiverType = typeBinding;
            this.haveReceiver = true;
            Expression expression2 = this.lhs;
            if (expression2 instanceof NameReference) {
                if ((expression2.bits & 7) == 4) {
                    this.haveReceiver = false;
                } else if (isConstructorReference()) {
                    blockScope.problemReporter().invalidType(this.lhs, new ProblemReferenceBinding(((NameReference) this.lhs).getName(), null, 1));
                    this.resolvedType = null;
                    return null;
                }
            } else if (expression2 instanceof TypeReference) {
                this.haveReceiver = false;
            }
            if (!this.haveReceiver && !this.lhs.isSuper() && !isArrayConstructorReference()) {
                this.receiverType = typeBinding.capture(blockScope, this.sourceStart, this.sourceEnd);
            }
            if (!typeBinding.isRawType()) {
                MethodBinding exactMethod = isMethodReference() ? blockScope.getExactMethod(typeBinding, this.selector, this) : blockScope.getExactConstructor(typeBinding, this);
                this.exactMethodBinding = exactMethod;
                this.binding = exactMethod;
            }
            if (isConstructorReference() && !typeBinding.canBeInstantiated()) {
                blockScope.problemReporter().cannotInstantiate(this.lhs, typeBinding);
                this.resolvedType = null;
                return null;
            }
            Expression expression3 = this.lhs;
            if ((expression3 instanceof TypeReference) && ((TypeReference) expression3).hasNullTypeAnnotation(TypeReference.AnnotationPosition.ANY)) {
                blockScope.problemReporter().nullAnnotationUnsupportedLocation((TypeReference) this.lhs);
            }
            if (isConstructorReference() && typeBinding.isArrayType()) {
                TypeBinding leafComponentType = typeBinding.leafComponentType();
                if (!leafComponentType.isReifiable()) {
                    blockScope.problemReporter().illegalGenericArray(leafComponentType, this);
                    this.resolvedType = null;
                    return null;
                }
                if (this.typeArguments != null) {
                    blockScope.problemReporter().invalidTypeArguments(this.typeArguments);
                    this.resolvedType = null;
                    return null;
                }
                MethodBinding exactConstructor = blockScope.getExactConstructor(typeBinding, this);
                this.exactMethodBinding = exactConstructor;
                this.binding = exactConstructor;
            }
            if (isMethodReference() && this.haveReceiver && this.original == this) {
                LocalVariableBinding localVariableBinding = new LocalVariableBinding((SecretReceiverVariableName + this.nameSourceStart).toCharArray(), this.lhs.resolvedType, 0, false);
                this.receiverVariable = localVariableBinding;
                blockScope.addLocalVariable(localVariableBinding);
                this.receiverVariable.setConstant(Constant.NotAConstant);
                this.receiverVariable.useFlag = 1;
            }
            if (this.expectedType == null && this.expressionContext == ExpressionContext.INVOCATION_CONTEXT) {
                if (compilerOptions.isAnnotationBasedNullAnalysisEnabled && (methodBinding3 = this.binding) != null) {
                    ImplicitNullAnnotationVerifier.ensureNullnessIsKnown(methodBinding3, blockScope);
                }
                return new PolyTypeBinding(this);
            }
        } else {
            typeBinding = this.lhs.resolvedType;
            if (this.typeArgumentsHaveErrors || typeBinding == null) {
                this.resolvedType = null;
                return null;
            }
        }
        super.resolveType(blockScope);
        MethodBinding methodBinding4 = this.descriptor;
        if (methodBinding4 == null || !methodBinding4.isValidBinding()) {
            this.resolvedType = null;
            return null;
        }
        TypeBinding[] descriptorParametersAsArgumentExpressions = descriptorParametersAsArgumentExpressions();
        if (typeBinding.isBaseType()) {
            blockScope.problemReporter().errorNoMethodFor(this.lhs, typeBinding, this.selector, descriptorParametersAsArgumentExpressions);
            this.resolvedType = null;
            return null;
        }
        int length2 = descriptorParametersAsArgumentExpressions.length;
        if (isConstructorReference() && typeBinding.isArrayType()) {
            if (length2 != 1 || blockScope.parameterCompatibilityLevel(descriptorParametersAsArgumentExpressions[0], TypeBinding.INT) == -1) {
                blockScope.problemReporter().invalidArrayConstructorReference(this, typeBinding, descriptorParametersAsArgumentExpressions);
                this.resolvedType = null;
                return null;
            }
            if (!this.descriptor.returnType.isProperType(true) || typeBinding.isCompatibleWith(this.descriptor.returnType) || this.descriptor.returnType.f102482id == 6) {
                checkNullAnnotations(blockScope);
                return this.resolvedType;
            }
            blockScope.problemReporter().constructedArrayIncompatible(this, typeBinding, this.descriptor.returnType);
            this.resolvedType = null;
            return null;
        }
        boolean isMethodReference = isMethodReference();
        this.depth = 0;
        this.freeParameters = descriptorParametersAsArgumentExpressions;
        if (isMethodReference) {
            inferDiamondConstructor = blockScope.getMethod(this.receiverType, this.selector, descriptorParametersAsArgumentExpressions, this);
        } else {
            inferDiamondConstructor = (argumentsTypeElided() && this.receiverType.isRawType()) ? AllocationExpression.inferDiamondConstructor(blockScope, this, this.receiverType, this.descriptor.parameters, new boolean[1]) : null;
            if (inferDiamondConstructor == null) {
                inferDiamondConstructor = blockScope.getConstructor((ReferenceBinding) this.receiverType, descriptorParametersAsArgumentExpressions, this);
            }
        }
        int i12 = this.depth;
        if (inferDiamondConstructor != null && inferDiamondConstructor.isValidBinding() && inferDiamondConstructor.isStatic() && (this.haveReceiver || this.receiverType.isParameterizedTypeWithActualArguments())) {
            blockScope.problemReporter().methodMustBeAccessedStatically(this, inferDiamondConstructor);
            this.resolvedType = null;
            return null;
        }
        if (this.lhs.isSuper() && this.lhs.resolvedType.isInterface()) {
            blockScope.checkAppropriateMethodAgainstSupers(this.selector, inferDiamondConstructor, this.descriptor.parameters, this);
        }
        this.receiverPrecedesParameters = false;
        if (!this.haveReceiver && isMethodReference && length2 > 0) {
            TypeBinding typeBinding3 = descriptorParametersAsArgumentExpressions[0];
            if (typeBinding3.isCompatibleWith(this.receiverType, blockScope)) {
                TypeBinding typeBinding4 = this.receiverType;
                if (typeBinding4.isRawType() && (findSuperTypeOriginatingFrom = typeBinding3.findSuperTypeOriginatingFrom(this.receiverType)) != null) {
                    typeBinding4 = findSuperTypeOriginatingFrom.capture(blockScope, this.sourceStart, this.sourceEnd);
                }
                TypeBinding[] typeBindingArr2 = Binding.NO_PARAMETERS;
                if (length2 > 1) {
                    int i13 = length2 - 1;
                    typeBindingArr2 = new TypeBinding[i13];
                    System.arraycopy(descriptorParametersAsArgumentExpressions, 1, typeBindingArr2, 0, i13);
                }
                this.depth = 0;
                this.freeParameters = typeBindingArr2;
                methodBinding = blockScope.getMethod(typeBinding4, this.selector, typeBindingArr2, this);
                i10 = this.depth;
                this.depth = 0;
                if (inferDiamondConstructor == null && inferDiamondConstructor.isValidBinding() && inferDiamondConstructor.isStatic() && methodBinding != null && methodBinding.isValidBinding() && !methodBinding.isStatic()) {
                    blockScope.problemReporter().methodReferenceSwingsBothWays(this, methodBinding, inferDiamondConstructor);
                    this.resolvedType = null;
                    return null;
                }
                if (inferDiamondConstructor == null && inferDiamondConstructor.isValidBinding() && (methodBinding == null || !methodBinding.isValidBinding() || methodBinding.isStatic())) {
                    this.binding = inferDiamondConstructor;
                    int i14 = this.bits & (-8161);
                    this.bits = i14;
                    if (i12 > 0) {
                        this.bits = i14 | ((i12 & 255) << 5);
                    }
                    if (!this.haveReceiver && !inferDiamondConstructor.isStatic() && !inferDiamondConstructor.isConstructor()) {
                        blockScope.problemReporter().methodMustBeAccessedWithInstance(this, inferDiamondConstructor);
                        this.resolvedType = null;
                        return null;
                    }
                } else if (methodBinding == null && methodBinding.isValidBinding() && !(inferDiamondConstructor != null && inferDiamondConstructor.isValidBinding() && inferDiamondConstructor.isStatic())) {
                    this.binding = methodBinding;
                    this.receiverPrecedesParameters = true;
                    int i15 = this.bits & (-8161);
                    this.bits = i15;
                    if (i10 > 0) {
                        this.bits = ((i10 & 255) << 5) | i15;
                    }
                    if (methodBinding.isStatic()) {
                        blockScope.problemReporter().methodMustBeAccessedStatically(this, methodBinding);
                        this.resolvedType = null;
                        return null;
                    }
                } else {
                    this.binding = null;
                    this.bits &= -8161;
                }
                methodBinding2 = this.binding;
                if (methodBinding2 != null) {
                    blockScope.problemReporter().danglingReference(this, this.receiverType, isConstructorReference() ? this.receiverType.sourceName() : this.selector, descriptorParametersAsArgumentExpressions);
                    this.resolvedType = null;
                    return null;
                }
                if (methodBinding2.isAbstract() && this.lhs.isSuper()) {
                    blockScope.problemReporter().cannotDireclyInvokeAbstractMethod(this, this.binding);
                }
                if (!this.binding.isStatic()) {
                    AbstractMethodDeclaration sourceMethod = this.binding.sourceMethod();
                    if (sourceMethod != null && sourceMethod.isMethod()) {
                        sourceMethod.bits &= -257;
                    }
                } else if (TypeBinding.notEquals(this.binding.declaringClass, this.receiverType)) {
                    blockScope.problemReporter().indirectAccessToStaticMethod(this, this.binding);
                }
                if (isMethodUseDeprecated(this.binding, blockScope, true, this)) {
                    blockScope.problemReporter().deprecatedMethod(this.binding, this);
                }
                if (this.typeArguments != null && this.binding.original().typeVariables == Binding.NO_TYPE_VARIABLES) {
                    blockScope.problemReporter().unnecessaryTypeArgumentsForMethodInvocation(this.binding, this.resolvedTypeArguments, this.typeArguments);
                }
                if ((this.binding.tagBits & 128) != 0) {
                    blockScope.problemReporter().missingTypeInMethod(this, this.binding);
                }
                ReferenceBinding[] referenceBindingArr = this.binding.thrownExceptions;
                ReferenceBinding[] referenceBindingArr2 = this.descriptor.thrownExceptions;
                int length3 = referenceBindingArr.length;
                for (int i16 = 0; i16 < length3; i16++) {
                    if (!referenceBindingArr[i16].isUncheckedException(false)) {
                        int length4 = referenceBindingArr2.length;
                        int i17 = 0;
                        while (true) {
                            if (i17 >= length4) {
                                blockScope.problemReporter().unhandledException((TypeBinding) referenceBindingArr[i16], this);
                                break;
                            }
                            if (referenceBindingArr[i16].isCompatibleWith(referenceBindingArr2[i17], blockScope)) {
                                break;
                            }
                            i17++;
                        }
                    }
                }
                checkNullAnnotations(blockScope);
                this.freeParameters = null;
                if (ASTNode.checkInvocationArguments(blockScope, null, this.receiverType, this.binding, null, descriptorParametersAsArgumentExpressions, false, this)) {
                    this.bits |= 65536;
                }
                if (this.descriptor.returnType.f102482id != 6) {
                    if (this.binding.isConstructor()) {
                        typeBinding2 = this.receiverType;
                    } else if ((this.bits & 65536) == 0 || this.resolvedTypeArguments != null) {
                        typeBinding2 = this.binding.returnType;
                        if (typeBinding2 != null) {
                            typeBinding2 = typeBinding2.capture(blockScope, this.sourceStart, this.sourceEnd);
                        }
                    } else {
                        typeBinding2 = this.binding.returnType;
                        if (typeBinding2 != null) {
                            typeBinding2 = blockScope.environment().convertToRawType(typeBinding2.erasure(), true);
                        }
                    }
                    if (this.descriptor.returnType.isProperType(true) && !typeBinding2.isCompatibleWith(this.descriptor.returnType, blockScope) && !isBoxingCompatible(typeBinding2, this.descriptor.returnType, this, blockScope)) {
                        blockScope.problemReporter().incompatibleReturnType(this, this.binding, this.descriptor.returnType);
                        this.binding = null;
                        this.resolvedType = null;
                    }
                }
                return this.resolvedType;
            }
        }
        i10 = 0;
        methodBinding = null;
        if (inferDiamondConstructor == null) {
        }
        if (inferDiamondConstructor == null) {
        }
        if (methodBinding == null) {
        }
        this.binding = null;
        this.bits &= -8161;
        methodBinding2 = this.binding;
        if (methodBinding2 != null) {
        }
    }

    @Override
    public boolean sIsMoreSpecific(TypeBinding typeBinding, TypeBinding typeBinding2, Scope scope) {
        MethodBinding singleAbstractMethod;
        if (super.sIsMoreSpecific(typeBinding, typeBinding2, scope)) {
            return true;
        }
        if (this.exactMethodBinding != null && typeBinding2.findSuperTypeOriginatingFrom(typeBinding) == null && (singleAbstractMethod = typeBinding.capture(this.enclosingScope, this.sourceStart, this.sourceEnd).getSingleAbstractMethod(this.enclosingScope, true)) != null && singleAbstractMethod.isValidBinding()) {
            TypeBinding typeBinding3 = singleAbstractMethod.returnType;
            MethodBinding singleAbstractMethod2 = typeBinding2.getSingleAbstractMethod(this.enclosingScope, true);
            if (singleAbstractMethod2 != null && singleAbstractMethod2.isValidBinding()) {
                TypeBinding typeBinding4 = singleAbstractMethod2.returnType;
                TypeBinding[] typeBindingArr = singleAbstractMethod.parameters;
                TypeBinding[] typeBindingArr2 = singleAbstractMethod2.parameters;
                for (int i10 = 0; i10 < typeBindingArr.length; i10++) {
                    if (TypeBinding.notEquals(typeBindingArr[i10], typeBindingArr2[i10])) {
                        return false;
                    }
                }
                if (typeBinding4.f102482id == 6) {
                    return true;
                }
                if (typeBinding3.f102482id == 6) {
                    return false;
                }
                if (typeBinding3.isCompatibleWith(typeBinding4, scope)) {
                    return true;
                }
                return typeBinding3.isBaseType() != typeBinding4.isBaseType() && typeBinding3.isBaseType() == this.exactMethodBinding.returnType.isBaseType();
            }
        }
        return false;
    }

    @Override
    public void setActualReceiverType(ReferenceBinding referenceBinding) {
    }

    @Override
    public void setDepth(int i10) {
        this.depth = i10;
    }

    @Override
    public void setFieldIndex(int i10) {
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            this.lhs.traverse(aSTVisitor, blockScope);
            TypeReference[] typeReferenceArr = this.typeArguments;
            int length = typeReferenceArr == null ? 0 : typeReferenceArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.typeArguments[i10].traverse(aSTVisitor, blockScope);
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public ReferenceExpression resolveExpressionExpecting(TypeBinding typeBinding, Scope scope, InferenceContext18 inferenceContext18) {
        TypeBinding typeBinding2;
        MethodBinding methodBinding;
        if (this.exactMethodBinding != null) {
            MethodBinding singleAbstractMethod = typeBinding.getSingleAbstractMethod(scope, true);
            if (singleAbstractMethod == null || singleAbstractMethod.problemId() == 17) {
                return null;
            }
            int length = singleAbstractMethod.parameters.length;
            int length2 = this.exactMethodBinding.parameters.length;
            if (!this.haveReceiver && isMethodReference() && !this.exactMethodBinding.isStatic()) {
                length2++;
            }
            if (length == length2) {
                return this;
            }
            return null;
        }
        ReferenceExpression cachedResolvedCopy = cachedResolvedCopy(typeBinding);
        if (cachedResolvedCopy == null || (typeBinding2 = cachedResolvedCopy.resolvedType) == null || !typeBinding2.isValidBinding() || (methodBinding = cachedResolvedCopy.binding) == null || !methodBinding.isValidBinding()) {
            return null;
        }
        return cachedResolvedCopy;
    }
}
