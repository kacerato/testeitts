package org.eclipse.jdt.internal.compiler.ast;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBindingVisitor;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.VoidTypeBinding;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScanner;

public class LocalDeclaration extends AbstractVariableDeclaration {
    public LocalVariableBinding binding;

    public LocalDeclaration(char[] cArr, int i10, int i11) {
        this.name = cArr;
        this.sourceStart = i10;
        this.sourceEnd = i11;
        this.declarationEnd = i11;
    }

    private TypeBinding checkInferredLocalVariableInitializer(BlockScope blockScope) {
        TypeBinding typeBinding;
        Expression expression = this.initialization;
        if (expression instanceof ArrayInitializer) {
            blockScope.problemReporter().varLocalCannotBeArrayInitalizers(this);
            typeBinding = blockScope.createArrayType(blockScope.getJavaLangObject(), 1);
        } else {
            Expression findPolyExpression = findPolyExpression(expression);
            if (findPolyExpression instanceof ReferenceExpression) {
                blockScope.problemReporter().varLocalCannotBeMethodReference(this);
                typeBinding = TypeBinding.NULL;
            } else if (findPolyExpression != null) {
                blockScope.problemReporter().varLocalCannotBeLambda(this);
                typeBinding = TypeBinding.NULL;
            } else {
                typeBinding = null;
            }
        }
        if (this.type.dimensions() > 0 || this.type.extraDimensions() > 0) {
            blockScope.problemReporter().varLocalCannotBeArray(this);
            typeBinding = blockScope.createArrayType(blockScope.getJavaLangObject(), 1);
        }
        if ((this.bits & 4194304) == 0) {
            return typeBinding;
        }
        blockScope.problemReporter().varLocalMultipleDeclarators(this);
        return this.initialization.resolveType(blockScope);
    }

    private TypeVariableBinding[] findCapturedTypeVariables(TypeBinding typeBinding) {
        final HashSet hashSet = new HashSet();
        TypeBindingVisitor.visit(new TypeBindingVisitor() {
            @Override
            public boolean visit(TypeVariableBinding typeVariableBinding) {
                if (typeVariableBinding.isCapture()) {
                    hashSet.add(typeVariableBinding);
                }
                return super.visit(typeVariableBinding);
            }
        }, typeBinding);
        if (hashSet.isEmpty()) {
            return null;
        }
        return (TypeVariableBinding[]) hashSet.toArray(new TypeVariableBinding[hashSet.size()]);
    }

    private static Expression findPolyExpression(Expression expression) {
        if (expression instanceof FunctionalExpression) {
            return expression;
        }
        if (expression instanceof ConditionalExpression) {
            ConditionalExpression conditionalExpression = (ConditionalExpression) expression;
            Expression findPolyExpression = findPolyExpression(conditionalExpression.valueIfTrue);
            if (findPolyExpression == null) {
                findPolyExpression = findPolyExpression(conditionalExpression.valueIfFalse);
            }
            if (findPolyExpression != null) {
                return findPolyExpression;
            }
        }
        if (!(expression instanceof SwitchExpression)) {
            return null;
        }
        Iterator<Expression> it = ((SwitchExpression) expression).resultExpressions.iterator();
        while (it.hasNext()) {
            Expression findPolyExpression2 = findPolyExpression(it.next());
            if (findPolyExpression2 != null) {
                return findPolyExpression2;
            }
        }
        return null;
    }

    private void traverseWithoutInitializer(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            Annotation[] annotationArr = this.annotations;
            if (annotationArr != null) {
                int length = annotationArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.annotations[i10].traverse(aSTVisitor, blockScope);
                }
            }
            this.type.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        UnconditionalFlowInfo unconditionalFlowInfo;
        if ((flowInfo.tagBits & 1) == 0) {
            this.bits |= 1073741824;
        }
        Expression expression = this.initialization;
        if (expression == null) {
            return flowInfo;
        }
        expression.checkNPEbyUnboxing(blockScope, flowContext, flowInfo);
        boolean z10 = this.binding != null && flowInfo.reachMode() == 0 && blockScope.compilerOptions().analyseResourceLeaks && FakedTrackingVariable.isAnyCloseable(this.initialization.resolvedType);
        if (z10) {
            unconditionalFlowInfo = flowInfo.unconditionalCopy();
            FakedTrackingVariable.preConnectTrackerAcrossAssignment(this, this.binding, this.initialization, flowInfo);
        } else {
            unconditionalFlowInfo = null;
        }
        UnconditionalFlowInfo unconditionalFlowInfo2 = unconditionalFlowInfo;
        UnconditionalFlowInfo unconditionalInits = this.initialization.analyseCode(blockScope, flowContext, flowInfo).unconditionalInits();
        if (z10) {
            FakedTrackingVariable.handleResourceAssignment(blockScope, unconditionalFlowInfo2, unconditionalInits, flowContext, this, this.initialization, this.binding);
        } else {
            FakedTrackingVariable.cleanUpAfterAssignment(blockScope, 2, this.initialization);
        }
        int nullStatus = this.initialization.nullStatus(unconditionalInits, flowContext);
        if (unconditionalInits.isDefinitelyAssigned(this.binding)) {
            this.bits &= -9;
        } else {
            this.bits |= 8;
        }
        unconditionalInits.markAsDefinitelyAssigned(this.binding);
        if (blockScope.compilerOptions().isAnnotationBasedNullAnalysisEnabled) {
            LocalVariableBinding localVariableBinding = this.binding;
            Expression expression2 = this.initialization;
            nullStatus = NullAnnotationMatching.checkAssignment(blockScope, flowContext, localVariableBinding, unconditionalInits, nullStatus, expression2, expression2.resolvedType);
        }
        LocalVariableBinding localVariableBinding2 = this.binding;
        if ((localVariableBinding2.type.tagBits & 2) == 0) {
            unconditionalInits.markNullStatus(localVariableBinding2, nullStatus);
        }
        return unconditionalInits;
    }

    public void checkModifiers() {
        int i10 = this.modifiers;
        if ((65519 & i10) != 0) {
            this.modifiers = (i10 & (-4194305)) | 8388608;
        }
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
        LocalVariableBinding localVariableBinding = this.binding;
        if (localVariableBinding.resolvedPosition != -1) {
            codeStream.addVisibleLocalVariable(localVariableBinding);
        }
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        int i10 = codeStream.position;
        Expression expression = this.initialization;
        if (expression != null) {
            if (this.binding.resolvedPosition >= 0) {
                expression.generateCode(blockScope, codeStream, true);
                if (this.binding.type.isArrayType()) {
                    Expression expression2 = this.initialization;
                    if ((expression2 instanceof CastExpression) && ((CastExpression) expression2).innermostCastedExpression().resolvedType == TypeBinding.NULL) {
                        codeStream.checkcast(this.binding.type);
                    }
                }
                codeStream.store(this.binding, false);
                if ((this.bits & 8) != 0) {
                    this.binding.recordInitializationStartPC(codeStream.position);
                }
            } else if (expression.constant == Constant.NotAConstant) {
                expression.generateCode(blockScope, codeStream, false);
            }
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    public void getAllAnnotationContexts(int i10, LocalVariableBinding localVariableBinding, List list) {
        traverseWithoutInitializer(new TypeReference.AnnotationCollector(this, i10, localVariableBinding, list), null);
    }

    @Override
    public int getKind() {
        return 4;
    }

    public boolean isArgument() {
        return false;
    }

    public boolean isReceiver() {
        return false;
    }

    public boolean isRecoveredFromLoneIdentifier() {
        if (this.name != RecoveryScanner.FAKE_IDENTIFIER) {
            return false;
        }
        TypeReference typeReference = this.type;
        return ((typeReference instanceof SingleTypeReference) || ((typeReference instanceof QualifiedTypeReference) && !(typeReference instanceof ArrayQualifiedTypeReference))) && this.initialization == null && !typeReference.isBaseTypeReference();
    }

    public boolean isTypeNameVar(Scope scope) {
        TypeReference typeReference = this.type;
        return typeReference != null && typeReference.isTypeNameVar(scope);
    }

    public TypeBinding patchType(TypeBinding typeBinding) {
        TypeVariableBinding[] findCapturedTypeVariables = findCapturedTypeVariables(typeBinding);
        if (findCapturedTypeVariables != null && findCapturedTypeVariables.length > 0) {
            typeBinding = typeBinding.upwardsProjection(this.binding.declaringScope, findCapturedTypeVariables);
        }
        this.type.resolvedType = typeBinding;
        LocalVariableBinding localVariableBinding = this.binding;
        if (localVariableBinding != null) {
            localVariableBinding.type = typeBinding;
            localVariableBinding.markInitialized();
        }
        return this.type.resolvedType;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001c, code lost:
    
        if (r4 != null) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x012e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x012f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void resolve(final BlockScope blockScope) {
        TypeBinding resolveType;
        boolean z10;
        Binding binding;
        int i10;
        Expression expression;
        TypeBinding typeBinding;
        boolean z11;
        ASTNode.handleNonNullByDefault(blockScope, this.annotations, this);
        boolean isTypeNameVar = isTypeNameVar(blockScope);
        boolean z12 = false;
        if (!isTypeNameVar) {
            resolveType = this.type.resolveType(blockScope, true);
        } else {
            if ((this.bits & 16) == 0) {
                if (this.initialization != null) {
                    resolveType = checkInferredLocalVariableInitializer(blockScope);
                } else {
                    blockScope.problemReporter().varLocalWithoutInitizalier(this);
                    resolveType = blockScope.getJavaLangObject();
                }
                z10 = true;
                this.bits |= this.type.bits & 1048576;
                checkModifiers();
                if (resolveType != null) {
                    VoidTypeBinding voidTypeBinding = TypeBinding.VOID;
                    if (resolveType == voidTypeBinding) {
                        blockScope.problemReporter().variableTypeCannotBeVoid(this);
                        return;
                    } else if (resolveType.isArrayType() && ((ArrayBinding) resolveType).leafComponentType == voidTypeBinding) {
                        blockScope.problemReporter().variableTypeCannotBeVoidArray(this);
                        return;
                    }
                }
                binding = blockScope.getBinding(this.name, 3, (InvocationSite) this, false);
                if (binding != null && binding.isValidBinding()) {
                    z11 = binding instanceof LocalVariableBinding;
                    if (!z11 && (this.bits & 2097152) != 0 && blockScope.isLambdaSubscope() && this.hiddenVariableDepth == 0) {
                        blockScope.problemReporter().lambdaRedeclaresLocal(this);
                    } else if (z11 || this.hiddenVariableDepth != 0) {
                        blockScope.problemReporter().localVariableHiding(this, binding, false);
                    } else {
                        blockScope.problemReporter().redefineLocal(this);
                    }
                }
                i10 = this.modifiers;
                if ((i10 & 16) != 0 && this.initialization == null) {
                    this.modifiers = i10 | 67108864;
                }
                if (isTypeNameVar) {
                    this.binding = new LocalVariableBinding(this, resolveType, this.modifiers, false);
                } else {
                    this.binding = new LocalVariableBinding(this, resolveType != null ? resolveType : blockScope.getJavaLangObject(), this.modifiers, false) {
                        private boolean isInitialized = false;

                        @Override
                        public void markInitialized() {
                            this.isInitialized = true;
                        }

                        @Override
                        public void markReferenced() {
                            if (this.isInitialized) {
                                return;
                            }
                            blockScope.problemReporter().varLocalReferencesItself(LocalDeclaration.this);
                            this.type = null;
                            this.isInitialized = true;
                        }
                    };
                }
                blockScope.addLocalVariable(this.binding);
                LocalVariableBinding localVariableBinding = this.binding;
                Constant constant = Constant.NotAConstant;
                localVariableBinding.setConstant(constant);
                if (resolveType == null && (expression = this.initialization) != null) {
                    expression.resolveType(blockScope);
                    if (isTypeNameVar || (typeBinding = this.initialization.resolvedType) == null) {
                        z10 = true;
                    } else {
                        if (TypeBinding.equalsEquals(TypeBinding.NULL, typeBinding)) {
                            blockScope.problemReporter().varLocalInitializedToNull(this);
                        } else {
                            if (TypeBinding.equalsEquals(TypeBinding.VOID, this.initialization.resolvedType)) {
                                blockScope.problemReporter().varLocalInitializedToVoid(this);
                            }
                            resolveType = patchType(this.initialization.resolvedType);
                        }
                        z10 = true;
                        resolveType = patchType(this.initialization.resolvedType);
                    }
                }
                this.binding.markInitialized();
                if (z10) {
                    if (blockScope.environment().usesNullTypeAnnotations() && !isTypeNameVar && resolveType != null && resolveType.isValidBinding()) {
                        Expression expression2 = this.initialization;
                        if ((expression2 instanceof Invocation) || (expression2 instanceof ConditionalExpression) || (expression2 instanceof SwitchExpression) || (expression2 instanceof ArrayInitializer)) {
                            z12 = true;
                        }
                    }
                    if (z12) {
                        ASTNode.resolveAnnotations(blockScope, this.annotations, this.binding, true);
                        resolveType = this.type.resolvedType;
                    }
                    Expression expression3 = this.initialization;
                    if (expression3 != null) {
                        if (expression3 instanceof ArrayInitializer) {
                            TypeBinding resolveTypeExpecting = expression3.resolveTypeExpecting(blockScope, resolveType);
                            if (resolveTypeExpecting != null) {
                                Expression expression4 = this.initialization;
                                ((ArrayInitializer) expression4).binding = (ArrayBinding) resolveTypeExpecting;
                                expression4.computeConversion(blockScope, resolveType, resolveTypeExpecting);
                            }
                        } else {
                            expression3.setExpressionContext(isTypeNameVar ? ExpressionContext.VANILLA_CONTEXT : ExpressionContext.ASSIGNMENT_CONTEXT);
                            this.initialization.setExpectedType(resolveType);
                            Expression expression5 = this.initialization;
                            TypeBinding typeBinding2 = expression5.resolvedType;
                            if (typeBinding2 == null) {
                                typeBinding2 = expression5.resolveType(blockScope);
                            }
                            if (typeBinding2 != null) {
                                if (TypeBinding.notEquals(resolveType, typeBinding2)) {
                                    blockScope.compilationUnitScope().recordTypeConversion(resolveType, typeBinding2);
                                }
                                if (this.initialization.isConstantValueOfTypeAssignableToType(typeBinding2, resolveType) || typeBinding2.isCompatibleWith(resolveType, blockScope)) {
                                    this.initialization.computeConversion(blockScope, resolveType, typeBinding2);
                                    if (typeBinding2.needsUncheckedConversion(resolveType)) {
                                        blockScope.problemReporter().unsafeTypeConversion(this.initialization, typeBinding2, resolveType);
                                    }
                                    Expression expression6 = this.initialization;
                                    if ((expression6 instanceof CastExpression) && (expression6.bits & 16384) == 0) {
                                        CastExpression.checkNeedForAssignedCast(blockScope, resolveType, (CastExpression) expression6);
                                    }
                                } else if (isBoxingCompatible(typeBinding2, resolveType, this.initialization, blockScope)) {
                                    this.initialization.computeConversion(blockScope, resolveType, typeBinding2);
                                    Expression expression7 = this.initialization;
                                    if ((expression7 instanceof CastExpression) && (expression7.bits & 16384) == 0) {
                                        CastExpression.checkNeedForAssignedCast(blockScope, resolveType, (CastExpression) expression7);
                                    }
                                } else if ((resolveType.tagBits & 128) == 0) {
                                    blockScope.problemReporter().typeMismatchError(typeBinding2, resolveType, this.initialization, (ASTNode) null);
                                }
                            }
                        }
                        if (this.binding == Expression.getDirectBinding(this.initialization)) {
                            blockScope.problemReporter().assignmentHasNoEffect(this, this.name);
                        }
                        LocalVariableBinding localVariableBinding2 = this.binding;
                        if (localVariableBinding2.isFinal()) {
                            Constant constant2 = this.initialization.constant;
                            constant = constant2.castTo((resolveType.f102482id << 4) + constant2.typeID());
                        }
                        localVariableBinding2.setConstant(constant);
                    }
                    if (!z12) {
                        ASTNode.resolveAnnotations(blockScope, this.annotations, this.binding, true);
                    }
                    Annotation.isTypeUseCompatible(this.type, blockScope, this.annotations);
                    validateNullAnnotations(blockScope);
                    return;
                }
                return;
            }
            resolveType = null;
        }
        z10 = false;
        this.bits |= this.type.bits & 1048576;
        checkModifiers();
        if (resolveType != null) {
        }
        binding = blockScope.getBinding(this.name, 3, (InvocationSite) this, false);
        if (binding != null) {
            z11 = binding instanceof LocalVariableBinding;
            if (!z11) {
            }
            if (z11) {
            }
            blockScope.problemReporter().localVariableHiding(this, binding, false);
        }
        i10 = this.modifiers;
        if ((i10 & 16) != 0) {
            this.modifiers = i10 | 67108864;
        }
        if (isTypeNameVar) {
        }
        blockScope.addLocalVariable(this.binding);
        LocalVariableBinding localVariableBinding3 = this.binding;
        Constant constant3 = Constant.NotAConstant;
        localVariableBinding3.setConstant(constant3);
        if (resolveType == null) {
            expression.resolveType(blockScope);
            if (isTypeNameVar) {
            }
            z10 = true;
        }
        this.binding.markInitialized();
        if (z10) {
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            Annotation[] annotationArr = this.annotations;
            if (annotationArr != null) {
                int length = annotationArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.annotations[i10].traverse(aSTVisitor, blockScope);
                }
            }
            this.type.traverse(aSTVisitor, blockScope);
            Expression expression = this.initialization;
            if (expression != null) {
                expression.traverse(aSTVisitor, blockScope);
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    public void validateNullAnnotations(BlockScope blockScope) {
        if (blockScope.validateNullAnnotation(this.binding.tagBits, this.type, this.annotations)) {
            return;
        }
        this.binding.tagBits &= -108086391056891905L;
    }

    public void getAllAnnotationContexts(int i10, int i11, List list) {
        traverse(new TypeReference.AnnotationCollector(this, i10, i11, list), null);
    }
}
