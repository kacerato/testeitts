package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.LoopingFlowContext;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.CaptureBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class ForeachStatement extends Statement {
    private static final int ARRAY = 0;
    private static final int GENERIC_ITERABLE = 2;
    private static final int RAW_ITERABLE = 1;
    public Statement action;
    private BranchLabel breakLabel;
    public Expression collection;
    private TypeBinding collectionElementType;
    public LocalVariableBinding collectionVariable;
    private BranchLabel continueLabel;
    public LocalDeclaration elementVariable;
    public LocalVariableBinding indexVariable;
    private TypeBinding iteratorReceiverType;
    private int kind;
    public LocalVariableBinding maxVariable;
    public BlockScope scope;
    private static final char[] SecretIteratorVariableName = " iterator".toCharArray();
    private static final char[] SecretIndexVariableName = " index".toCharArray();
    private static final char[] SecretCollectionVariableName = " collection".toCharArray();
    private static final char[] SecretMaxVariableName = " max".toCharArray();
    public int elementVariableImplicitWidening = -1;
    int postCollectionInitStateIndex = -1;
    int mergedInitStateIndex = -1;

    public ForeachStatement(LocalDeclaration localDeclaration, int i10) {
        this.elementVariable = localDeclaration;
        this.sourceStart = i10;
        this.kind = -1;
    }

    public static TypeBinding getCollectionElementType(BlockScope blockScope, TypeBinding typeBinding) {
        TypeBinding[] typeBindingArr;
        TypeBinding typeBinding2;
        if (typeBinding == null) {
            return null;
        }
        boolean z10 = blockScope.compilerOptions().targetJDK == ClassFileConstants.JDK1_4;
        if (typeBinding.isCapture() && (typeBinding2 = ((CaptureBinding) typeBinding).firstBound) != null && typeBinding2.isArrayType()) {
            typeBinding = typeBinding2;
        }
        if (typeBinding.isArrayType()) {
            return ((ArrayBinding) typeBinding).elementsType();
        }
        if (!(typeBinding instanceof ReferenceBinding)) {
            return null;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding;
        ReferenceBinding findSuperTypeOriginatingFrom = referenceBinding.findSuperTypeOriginatingFrom(38, false);
        if (findSuperTypeOriginatingFrom == null && z10) {
            findSuperTypeOriginatingFrom = referenceBinding.findSuperTypeOriginatingFrom(59, false);
        }
        if (findSuperTypeOriginatingFrom == null) {
            return null;
        }
        int kind = findSuperTypeOriginatingFrom.kind();
        if (kind == 260) {
            typeBindingArr = ((ParameterizedTypeBinding) findSuperTypeOriginatingFrom).arguments;
        } else {
            if (kind == 1028) {
                return blockScope.getJavaLangObject();
            }
            if (kind != 2052) {
                return null;
            }
            typeBindingArr = findSuperTypeOriginatingFrom.typeVariables();
        }
        if (typeBindingArr.length != 1) {
            return null;
        }
        return typeBindingArr[0];
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0140  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        FlowInfo initsWhenFalse;
        int i10;
        int i11;
        int i12;
        FlowInfo flowInfo2;
        this.breakLabel = new BranchLabel();
        this.continueLabel = new BranchLabel();
        int i13 = (flowInfo.reachMode() & 3) != 0 ? 1 : 0;
        FlowInfo analyseCode = this.elementVariable.analyseCode(this.scope, flowContext, flowInfo);
        FlowInfo analyseCode2 = this.collection.analyseCode(this.scope, flowContext, analyseCode.copy());
        this.collection.checkNPE(blockScope, flowContext, analyseCode2.copy(), 1);
        LocalVariableBinding localVariableBinding = this.elementVariable.binding;
        analyseCode2.markAsDefinitelyAssigned(localVariableBinding);
        this.postCollectionInitStateIndex = blockScope.methodScope().recordInitializationStates(analyseCode2);
        LoopingFlowContext loopingFlowContext = new LoopingFlowContext(flowContext, analyseCode, this, this.breakLabel, this.continueLabel, this.scope, true);
        UnconditionalFlowInfo nullInfoLessUnconditionalCopy = analyseCode2.nullInfoLessUnconditionalCopy();
        nullInfoLessUnconditionalCopy.markAsDefinitelyUnknown(localVariableBinding);
        if (blockScope.compilerOptions().isAnnotationBasedNullAnalysisEnabled) {
            int checkAssignment = NullAnnotationMatching.checkAssignment(blockScope, flowContext, localVariableBinding, null, NullAnnotationMatching.nullStatusFromExpressionType(this.collectionElementType), this.collection, this.collectionElementType);
            if ((localVariableBinding.type.tagBits & 2) == 0) {
                nullInfoLessUnconditionalCopy.markNullStatus(localVariableBinding, checkAssignment);
            }
        }
        Statement statement = this.action;
        if (statement == null || (statement.isEmptyBlock() && blockScope.compilerOptions().complianceLevel <= ClassFileConstants.JDK1_3)) {
            initsWhenFalse = analyseCode2.initsWhenFalse();
            Statement statement2 = this.action;
            if ((statement2 instanceof Block) && !statement2.isEmptyBlock()) {
                this.scope.checkUnclosedCloseables(nullInfoLessUnconditionalCopy, loopingFlowContext, null, null);
            }
        } else {
            if (this.action.complainIfUnreachable(nullInfoLessUnconditionalCopy, this.scope, i13, true) < 2) {
                nullInfoLessUnconditionalCopy = this.action.analyseCode(this.scope, loopingFlowContext, nullInfoLessUnconditionalCopy).unconditionalCopy();
                if (this.action instanceof Block) {
                    FakedTrackingVariable.markForeachElementVar(this.elementVariable);
                    this.scope.checkUnclosedCloseables(nullInfoLessUnconditionalCopy, loopingFlowContext, null, null);
                }
            }
            initsWhenFalse = analyseCode.unconditionalCopy().addInitializationsFrom(analyseCode2.initsWhenFalse());
            int i14 = nullInfoLessUnconditionalCopy.tagBits;
            UnconditionalFlowInfo unconditionalFlowInfo = loopingFlowContext.initsOnContinue;
            if ((i14 & unconditionalFlowInfo.tagBits & 1) != 0) {
                this.continueLabel = null;
            } else {
                nullInfoLessUnconditionalCopy = nullInfoLessUnconditionalCopy.mergedWith(unconditionalFlowInfo);
                loopingFlowContext.complainOnDeferredFinalChecks(this.scope, nullInfoLessUnconditionalCopy);
                initsWhenFalse.addPotentialInitializationsFrom(nullInfoLessUnconditionalCopy);
            }
        }
        Statement statement3 = this.action;
        if (statement3 == null || statement3.isEmptyBlock()) {
            i10 = 1;
        } else {
            i10 = 1;
            if ((this.action.bits & 1) == 0) {
                i11 = 0;
                i12 = this.kind;
                if (i12 == 0) {
                    if (i12 == i10 || i12 == 2) {
                        this.indexVariable.useFlag = i10;
                    }
                } else if (i11 == 0 || localVariableBinding.resolvedPosition != -1) {
                    this.collectionVariable.useFlag = i10;
                    if (this.continueLabel != null) {
                        this.indexVariable.useFlag = i10;
                        this.maxVariable.useFlag = i10;
                    }
                }
                loopingFlowContext.complainOnDeferredNullChecks(blockScope, nullInfoLessUnconditionalCopy);
                if (loopingFlowContext.hasEscapingExceptions()) {
                    FlowInfo copy = analyseCode.copy();
                    if (this.continueLabel != null) {
                        copy = copy.mergedWith(copy.unconditionalCopy().addNullInfoFrom(nullInfoLessUnconditionalCopy).unconditionalInits());
                    }
                    loopingFlowContext.simulateThrowAfterLoopBack(copy);
                }
                flowInfo2 = loopingFlowContext.initsOnBreak;
                if ((flowInfo2.tagBits & 3) == 0) {
                    flowInfo2 = analyseCode.addInitializationsFrom(flowInfo2);
                }
                UnconditionalFlowInfo mergedOptimizedBranches = FlowInfo.mergedOptimizedBranches(flowInfo2, false, initsWhenFalse, false, true);
                mergedOptimizedBranches.resetAssignmentInfo(this.elementVariable.binding);
                this.mergedInitStateIndex = blockScope.methodScope().recordInitializationStates(mergedOptimizedBranches);
                return mergedOptimizedBranches;
            }
        }
        i11 = i10;
        i12 = this.kind;
        if (i12 == 0) {
        }
        loopingFlowContext.complainOnDeferredNullChecks(blockScope, nullInfoLessUnconditionalCopy);
        if (loopingFlowContext.hasEscapingExceptions()) {
        }
        flowInfo2 = loopingFlowContext.initsOnBreak;
        if ((flowInfo2.tagBits & 3) == 0) {
        }
        UnconditionalFlowInfo mergedOptimizedBranches2 = FlowInfo.mergedOptimizedBranches(flowInfo2, false, initsWhenFalse, false, true);
        mergedOptimizedBranches2.resetAssignmentInfo(this.elementVariable.binding);
        this.mergedInitStateIndex = blockScope.methodScope().recordInitializationStates(mergedOptimizedBranches2);
        return mergedOptimizedBranches2;
    }

    @Override
    public boolean doesNotCompleteNormally() {
        return false;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        int i10 = codeStream.position;
        Statement statement = this.action;
        boolean z10 = statement == null || statement.isEmptyBlock() || (this.action.bits & 1) != 0;
        if (z10 && this.elementVariable.binding.resolvedPosition == -1 && this.kind == 0) {
            this.collection.generateCode(this.scope, codeStream, false);
            codeStream.exitUserScope(this.scope);
            int i11 = this.mergedInitStateIndex;
            if (i11 != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i11);
                codeStream.addDefinitelyAssignedVariables(blockScope, this.mergedInitStateIndex);
            }
            codeStream.recordPositionsFrom(i10, this.sourceStart);
            return;
        }
        int i12 = this.kind;
        if (i12 == 0) {
            this.collection.generateCode(this.scope, codeStream, true);
            codeStream.store(this.collectionVariable, true);
            codeStream.addVariable(this.collectionVariable);
            if (this.continueLabel != null) {
                codeStream.arraylength();
                codeStream.store(this.maxVariable, false);
                codeStream.addVariable(this.maxVariable);
                codeStream.iconst_0();
                codeStream.store(this.indexVariable, false);
                codeStream.addVariable(this.indexVariable);
            }
        } else if (i12 == 1 || i12 == 2) {
            this.collection.generateCode(this.scope, codeStream, true);
            codeStream.invokeIterableIterator(this.iteratorReceiverType);
            codeStream.store(this.indexVariable, false);
            codeStream.addVariable(this.indexVariable);
        }
        BranchLabel branchLabel = new BranchLabel(codeStream);
        branchLabel.tagBits |= 2;
        BranchLabel branchLabel2 = new BranchLabel(codeStream);
        branchLabel2.tagBits |= 2;
        this.breakLabel.initialize(codeStream);
        BranchLabel branchLabel3 = this.continueLabel;
        if (branchLabel3 == null) {
            branchLabel2.place();
            int i13 = codeStream.position;
            int i14 = this.kind;
            if (i14 == 0) {
                codeStream.arraylength();
                codeStream.ifeq(this.breakLabel);
            } else if (i14 == 1 || i14 == 2) {
                codeStream.load(this.indexVariable);
                codeStream.invokeJavaUtilIteratorHasNext();
                codeStream.ifeq(this.breakLabel);
            }
            codeStream.recordPositionsFrom(i13, this.elementVariable.sourceStart);
        } else {
            branchLabel3.initialize(codeStream);
            this.continueLabel.tagBits |= 2;
            codeStream.goto_(branchLabel2);
        }
        branchLabel.place();
        int i15 = this.kind;
        if (i15 != 0) {
            if (i15 == 1 || i15 == 2) {
                codeStream.load(this.indexVariable);
                codeStream.invokeJavaUtilIteratorNext();
                TypeBinding typeBinding = this.elementVariable.binding.type;
                if (typeBinding.f102482id != 1) {
                    if (this.elementVariableImplicitWidening != -1) {
                        codeStream.checkcast(this.collectionElementType);
                        codeStream.generateImplicitConversion(this.elementVariableImplicitWidening);
                    } else {
                        codeStream.checkcast(typeBinding);
                    }
                }
                LocalVariableBinding localVariableBinding = this.elementVariable.binding;
                if (localVariableBinding.resolvedPosition == -1) {
                    int i16 = localVariableBinding.type.f102482id;
                    if (i16 == 7 || i16 == 8) {
                        codeStream.pop2();
                    } else {
                        codeStream.pop();
                    }
                } else {
                    codeStream.store(localVariableBinding, false);
                    codeStream.addVisibleLocalVariable(this.elementVariable.binding);
                    int i17 = this.postCollectionInitStateIndex;
                    if (i17 != -1) {
                        codeStream.addDefinitelyAssignedVariables(blockScope, i17);
                    }
                }
            }
        } else if (this.elementVariable.binding.resolvedPosition != -1) {
            codeStream.load(this.collectionVariable);
            if (this.continueLabel == null) {
                codeStream.iconst_0();
            } else {
                codeStream.load(this.indexVariable);
            }
            codeStream.arrayAt(this.collectionElementType.f102482id);
            int i18 = this.elementVariableImplicitWidening;
            if (i18 != -1) {
                codeStream.generateImplicitConversion(i18);
            }
            codeStream.store(this.elementVariable.binding, false);
            codeStream.addVisibleLocalVariable(this.elementVariable.binding);
            int i19 = this.postCollectionInitStateIndex;
            if (i19 != -1) {
                codeStream.addDefinitelyAssignedVariables(blockScope, i19);
            }
        }
        if (!z10) {
            this.action.generateCode(this.scope, codeStream);
        }
        codeStream.removeVariable(this.elementVariable.binding);
        int i20 = this.postCollectionInitStateIndex;
        if (i20 != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i20);
        }
        BranchLabel branchLabel4 = this.continueLabel;
        if (branchLabel4 != null) {
            branchLabel4.place();
            int i21 = codeStream.position;
            int i22 = this.kind;
            if (i22 == 0) {
                if (!z10 || this.elementVariable.binding.resolvedPosition >= 0) {
                    codeStream.iinc(this.indexVariable.resolvedPosition, 1);
                }
                branchLabel2.place();
                codeStream.load(this.indexVariable);
                codeStream.load(this.maxVariable);
                codeStream.if_icmplt(branchLabel);
            } else if (i22 == 1 || i22 == 2) {
                branchLabel2.place();
                codeStream.load(this.indexVariable);
                codeStream.invokeJavaUtilIteratorHasNext();
                codeStream.ifne(branchLabel);
            }
            codeStream.recordPositionsFrom(i21, this.elementVariable.sourceStart);
        }
        int i23 = this.kind;
        if (i23 == 0) {
            codeStream.removeVariable(this.indexVariable);
            codeStream.removeVariable(this.maxVariable);
            codeStream.removeVariable(this.collectionVariable);
        } else if (i23 == 1 || i23 == 2) {
            codeStream.removeVariable(this.indexVariable);
        }
        codeStream.exitUserScope(this.scope);
        int i24 = this.mergedInitStateIndex;
        if (i24 != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i24);
            codeStream.addDefinitelyAssignedVariables(blockScope, this.mergedInitStateIndex);
        }
        this.breakLabel.place();
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer).append("for (");
        this.elementVariable.printAsExpression(0, stringBuffer);
        stringBuffer.append(" : ");
        Expression expression = this.collection;
        if (expression != null) {
            expression.print(0, stringBuffer).append(") ");
        } else {
            stringBuffer.append(')');
        }
        if (this.action == null) {
            stringBuffer.append(';');
        } else {
            stringBuffer.append('\n');
            this.action.printStatement(i10 + 1, stringBuffer);
        }
        return stringBuffer;
    }

    @Override
    public void resolve(BlockScope blockScope) {
        TypeBinding[] typeBindingArr;
        TypeBinding typeBinding;
        BlockScope blockScope2 = new BlockScope(blockScope);
        this.scope = blockScope2;
        blockScope2.blockStatement = this;
        this.elementVariable.resolve(blockScope2);
        TypeBinding typeBinding2 = this.elementVariable.type.resolvedType;
        Expression expression = this.collection;
        ArrayBinding arrayBinding = null;
        TypeBinding resolveType = expression == null ? null : expression.resolveType(blockScope);
        if (this.elementVariable.isTypeNameVar(blockScope)) {
            if (this.elementVariable.type.dimensions() > 0 || this.elementVariable.type.extraDimensions() > 0) {
                blockScope.problemReporter().varLocalCannotBeArray(this.elementVariable);
            }
            if (TypeBinding.equalsEquals(TypeBinding.NULL, resolveType)) {
                blockScope.problemReporter().varLocalInitializedToNull(this.elementVariable);
            } else if (TypeBinding.equalsEquals(TypeBinding.VOID, resolveType)) {
                blockScope.problemReporter().varLocalInitializedToVoid(this.elementVariable);
            }
            TypeBinding collectionElementType = getCollectionElementType(this.scope, resolveType);
            typeBinding2 = collectionElementType == null ? resolveType : this.elementVariable.patchType(collectionElementType);
            LocalVariableBinding localVariableBinding = this.elementVariable.binding;
            if (localVariableBinding != null && localVariableBinding.isValidBinding()) {
                this.elementVariable.validateNullAnnotations(this.scope);
            }
        }
        if (typeBinding2 != null && resolveType != null) {
            boolean z10 = this.scope.compilerOptions().targetJDK == ClassFileConstants.JDK1_4;
            if (resolveType.isCapture() && (typeBinding = ((CaptureBinding) resolveType).firstBound) != null && typeBinding.isArrayType()) {
                resolveType = typeBinding;
            }
            if (resolveType.isArrayType()) {
                this.kind = 0;
                TypeBinding elementsType = ((ArrayBinding) resolveType).elementsType();
                this.collectionElementType = elementsType;
                if (!elementsType.isCompatibleWith(typeBinding2) && !this.scope.isBoxingCompatibleWith(this.collectionElementType, typeBinding2)) {
                    this.scope.problemReporter().notCompatibleTypesErrorInForeach(this.collection, this.collectionElementType, typeBinding2);
                } else if (this.collectionElementType.needsUncheckedConversion(typeBinding2)) {
                    this.scope.problemReporter().unsafeElementTypeConversion(this.collection, this.collectionElementType, typeBinding2);
                }
                int i10 = this.collectionElementType.f102482id;
                if (typeBinding2.isBaseType()) {
                    this.collection.computeConversion(this.scope, resolveType, resolveType);
                    if (this.collectionElementType.isBaseType()) {
                        this.elementVariableImplicitWidening = (typeBinding2.f102482id << 4) + i10;
                    } else {
                        int i11 = this.scope.environment().computeBoxingType(this.collectionElementType).f102482id;
                        this.elementVariableImplicitWidening = 1024;
                        if (typeBinding2.isBaseType()) {
                            this.elementVariableImplicitWidening |= (typeBinding2.f102482id << 4) + i11;
                            this.scope.problemReporter().autoboxing(this.collection, this.collectionElementType, typeBinding2);
                        }
                    }
                } else if (this.collectionElementType.isBaseType()) {
                    this.collection.computeConversion(this.scope, resolveType, resolveType);
                    int i12 = this.scope.environment().computeBoxingType(this.collectionElementType).f102482id;
                    this.elementVariableImplicitWidening = (i10 << 4) | 512 | i10;
                    this.scope.problemReporter().autoboxing(this.collection, this.collectionElementType, typeBinding2);
                } else {
                    arrayBinding = blockScope.createArrayType(typeBinding2, 1);
                    this.collection.computeConversion(this.scope, arrayBinding, resolveType);
                }
            } else if (resolveType instanceof ReferenceBinding) {
                ReferenceBinding referenceBinding = (ReferenceBinding) resolveType;
                ReferenceBinding findSuperTypeOriginatingFrom = referenceBinding.findSuperTypeOriginatingFrom(38, false);
                if (findSuperTypeOriginatingFrom == null && z10) {
                    findSuperTypeOriginatingFrom = referenceBinding.findSuperTypeOriginatingFrom(59, false);
                }
                if (findSuperTypeOriginatingFrom != null) {
                    TypeBinding erasure = resolveType.erasure();
                    this.iteratorReceiverType = erasure;
                    if (z10) {
                        if (((ReferenceBinding) erasure).findSuperTypeOriginatingFrom(59, false) == null) {
                            this.iteratorReceiverType = findSuperTypeOriginatingFrom;
                            this.collection.computeConversion(this.scope, findSuperTypeOriginatingFrom, resolveType);
                        } else {
                            this.collection.computeConversion(this.scope, resolveType, resolveType);
                        }
                    } else if (((ReferenceBinding) erasure).findSuperTypeOriginatingFrom(38, false) == null) {
                        this.iteratorReceiverType = findSuperTypeOriginatingFrom;
                        this.collection.computeConversion(this.scope, findSuperTypeOriginatingFrom, resolveType);
                    } else {
                        this.collection.computeConversion(this.scope, resolveType, resolveType);
                    }
                    int kind = findSuperTypeOriginatingFrom.kind();
                    if (kind == 260) {
                        typeBindingArr = ((ParameterizedTypeBinding) findSuperTypeOriginatingFrom).arguments;
                    } else if (kind == 1028) {
                        this.kind = 1;
                        ReferenceBinding javaLangObject = this.scope.getJavaLangObject();
                        this.collectionElementType = javaLangObject;
                        if (!javaLangObject.isCompatibleWith(typeBinding2) && !this.scope.isBoxingCompatibleWith(this.collectionElementType, typeBinding2)) {
                            this.scope.problemReporter().notCompatibleTypesErrorInForeach(this.collection, this.collectionElementType, typeBinding2);
                        }
                    } else if (kind == 2052) {
                        typeBindingArr = findSuperTypeOriginatingFrom.typeVariables();
                    }
                    if (typeBindingArr.length == 1) {
                        this.kind = 2;
                        TypeBinding typeBinding3 = typeBindingArr[0];
                        this.collectionElementType = typeBinding3;
                        if (!typeBinding3.isCompatibleWith(typeBinding2) && !this.scope.isBoxingCompatibleWith(this.collectionElementType, typeBinding2)) {
                            this.scope.problemReporter().notCompatibleTypesErrorInForeach(this.collection, this.collectionElementType, typeBinding2);
                        } else if (this.collectionElementType.needsUncheckedConversion(typeBinding2)) {
                            this.scope.problemReporter().unsafeElementTypeConversion(this.collection, this.collectionElementType, typeBinding2);
                        }
                        int i13 = this.collectionElementType.f102482id;
                        if (typeBinding2.isBaseType()) {
                            if (this.collectionElementType.isBaseType()) {
                                this.elementVariableImplicitWidening = (typeBinding2.f102482id << 4) + i13;
                            } else {
                                int i14 = this.scope.environment().computeBoxingType(this.collectionElementType).f102482id;
                                this.elementVariableImplicitWidening = 1024;
                                if (typeBinding2.isBaseType()) {
                                    this.elementVariableImplicitWidening |= (typeBinding2.f102482id << 4) + i14;
                                }
                            }
                        } else if (this.collectionElementType.isBaseType()) {
                            this.elementVariableImplicitWidening = i13 | (i13 << 4) | 512;
                        }
                    }
                }
            }
            int i15 = this.kind;
            if (i15 == 0) {
                char[] cArr = SecretIndexVariableName;
                BaseTypeBinding baseTypeBinding = TypeBinding.INT;
                LocalVariableBinding localVariableBinding2 = new LocalVariableBinding(cArr, (TypeBinding) baseTypeBinding, 0, false);
                this.indexVariable = localVariableBinding2;
                this.scope.addLocalVariable(localVariableBinding2);
                LocalVariableBinding localVariableBinding3 = this.indexVariable;
                Constant constant = Constant.NotAConstant;
                localVariableBinding3.setConstant(constant);
                LocalVariableBinding localVariableBinding4 = new LocalVariableBinding(SecretMaxVariableName, (TypeBinding) baseTypeBinding, 0, false);
                this.maxVariable = localVariableBinding4;
                this.scope.addLocalVariable(localVariableBinding4);
                this.maxVariable.setConstant(constant);
                if (arrayBinding == null) {
                    this.collectionVariable = new LocalVariableBinding(SecretCollectionVariableName, resolveType, 0, false);
                } else {
                    this.collectionVariable = new LocalVariableBinding(SecretCollectionVariableName, (TypeBinding) arrayBinding, 0, false);
                }
                this.scope.addLocalVariable(this.collectionVariable);
                this.collectionVariable.setConstant(constant);
            } else if (i15 == 1 || i15 == 2) {
                LocalVariableBinding localVariableBinding5 = new LocalVariableBinding(SecretIteratorVariableName, (TypeBinding) this.scope.getJavaUtilIterator(), 0, false);
                this.indexVariable = localVariableBinding5;
                this.scope.addLocalVariable(localVariableBinding5);
                this.indexVariable.setConstant(Constant.NotAConstant);
            } else if (z10) {
                this.scope.problemReporter().invalidTypeForCollectionTarget14(this.collection);
            } else {
                this.scope.problemReporter().invalidTypeForCollection(this.collection);
            }
        }
        Statement statement = this.action;
        if (statement != null) {
            statement.resolve(this.scope);
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            this.elementVariable.traverse(aSTVisitor, this.scope);
            Expression expression = this.collection;
            if (expression != null) {
                expression.traverse(aSTVisitor, this.scope);
            }
            Statement statement = this.action;
            if (statement != null) {
                statement.traverse(aSTVisitor, this.scope);
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }
}
