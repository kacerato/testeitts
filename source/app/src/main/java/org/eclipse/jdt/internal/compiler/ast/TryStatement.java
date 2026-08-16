package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.ConstantPool;
import org.eclipse.jdt.internal.compiler.codegen.ExceptionLabel;
import org.eclipse.jdt.internal.compiler.codegen.MultiCatchExceptionLabel;
import org.eclipse.jdt.internal.compiler.codegen.StackMapFrameCodeStream;
import org.eclipse.jdt.internal.compiler.flow.ExceptionHandlingFlowContext;
import org.eclipse.jdt.internal.compiler.flow.FinallyFlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.InsideSubRoutineFlowContext;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;

public class TryStatement extends SubRoutineStatement {
    private static final int FINALLY_DOES_NOT_COMPLETE = 2;
    private static final int FINALLY_INLINE = 3;
    private static final int FINALLY_SUBROUTINE = 1;
    private static final int NO_FINALLY = 0;
    public LocalVariableBinding anyExceptionVariable;
    public Argument[] catchArguments;
    public Block[] catchBlocks;
    int[] catchExitInitStateIndexes;
    boolean[] catchExits;
    ReferenceBinding[] caughtExceptionTypes;
    private int[] caughtExceptionsCatchBlocks;
    private LocalVariableBinding caughtThrowableVariable;
    ExceptionLabel[] declaredExceptionLabels;
    public Block finallyBlock;
    int[] postResourcesInitStateIndexes;
    private LocalVariableBinding primaryExceptionVariable;
    private ExceptionLabel[] resourceExceptionLabels;
    public LocalVariableBinding returnAddressVariable;
    private BranchLabel[] reusableJSRSequenceStartLabels;
    private int[] reusableJSRStateIndexes;
    private Object[] reusableJSRTargets;
    BlockScope scope;
    public LocalVariableBinding secretReturnValue;
    public UnconditionalFlowInfo subRoutineInits;
    BranchLabel subRoutineStartLabel;
    public Block tryBlock;
    static final char[] SECRET_RETURN_ADDRESS_NAME = " returnAddress".toCharArray();
    static final char[] SECRET_ANY_HANDLER_NAME = " anyExceptionHandler".toCharArray();
    static final char[] SECRET_PRIMARY_EXCEPTION_VARIABLE_NAME = " primaryException".toCharArray();
    static final char[] SECRET_CAUGHT_THROWABLE_VARIABLE_NAME = " caughtThrowable".toCharArray();
    static final char[] SECRET_RETURN_VALUE_NAME = " returnValue".toCharArray();
    public Statement[] resources = new Statement[0];
    private int reusableJSRTargetsCount = 0;
    int mergedInitStateIndex = -1;
    int preTryInitStateIndex = -1;
    int postTryInitStateIndex = -1;
    int naturalExitMergeInitStateIndex = -1;

    private int finallyMode() {
        if (this.subRoutineStartLabel == null) {
            return 0;
        }
        if (isSubRoutineEscaping()) {
            return 2;
        }
        return this.scope.compilerOptions().inlineJsrBytecode ? 3 : 1;
    }

    private MethodBinding findCloseMethod(ASTNode aSTNode, TypeBinding typeBinding) {
        if (typeBinding == null || !typeBinding.isValidBinding() || !(typeBinding instanceof ReferenceBinding)) {
            return null;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding;
        char[] cArr = ConstantPool.Close;
        MethodBinding exactMethod = referenceBinding.getExactMethod(cArr, new TypeBinding[0], this.scope.compilationUnitScope());
        if (exactMethod != null) {
            return exactMethod;
        }
        return this.scope.compilationUnitScope().findMethod(referenceBinding, cArr, new TypeBinding[0], new InvocationSite.EmptyWithAstNode(aSTNode), false);
    }

    private void generateCodeSnippet(Statement statement, CodeStream codeStream, BranchLabel branchLabel, boolean z10, int... iArr) {
        int i10;
        int i11;
        if (z10) {
            int i12 = iArr[0];
            i11 = iArr[1];
            i10 = i12;
        } else {
            i10 = -1;
            i11 = -1;
        }
        if (statement instanceof LocalDeclaration) {
            generateCodeSnippet((LocalDeclaration) statement, codeStream, branchLabel, z10, i10, i11);
        } else if (statement instanceof Reference) {
            generateCodeSnippet((Reference) statement, codeStream, branchLabel, z10, i10, i11);
        }
    }

    private boolean isDuplicateResourceReference(int i10) {
        Statement[] statementArr = this.resources;
        if (i10 < statementArr.length) {
            Statement statement = statementArr[i10];
            if (statement instanceof Reference) {
                Reference reference = (Reference) statement;
                Binding binding = reference instanceof NameReference ? ((NameReference) reference).binding : reference instanceof FieldReference ? ((FieldReference) reference).binding : null;
                if (binding == null) {
                    return false;
                }
                for (int i11 = 0; i11 < i10; i11++) {
                    Statement statement2 = this.resources[i11];
                    if ((statement2 instanceof LocalDeclaration ? ((LocalDeclaration) statement2).binding : statement2 instanceof NameReference ? ((NameReference) statement2).binding : statement2 instanceof FieldReference ? ((FieldReference) statement2).binding : null) == binding) {
                        this.scope.problemReporter().duplicateResourceReference(reference);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private boolean isUncheckedCatchBlock(int i10) {
        int[] iArr = this.caughtExceptionsCatchBlocks;
        if (iArr == null) {
            return this.caughtExceptionTypes[i10].isUncheckedException(true);
        }
        int length = iArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (this.caughtExceptionsCatchBlocks[i11] == i10 && this.caughtExceptionTypes[i11].isUncheckedException(true)) {
                return true;
            }
        }
        return false;
    }

    private FlowInfo prepareCatchInfo(FlowInfo flowInfo, ExceptionHandlingFlowContext exceptionHandlingFlowContext, FlowInfo flowInfo2, int i10) {
        FlowInfo addPotentialInitializationsFrom;
        if (isUncheckedCatchBlock(i10)) {
            addPotentialInitializationsFrom = flowInfo.unconditionalCopy().addPotentialInitializationsFrom(exceptionHandlingFlowContext.initsOnException(i10)).addPotentialInitializationsFrom(flowInfo2).addPotentialInitializationsFrom(exceptionHandlingFlowContext.initsOnReturn).addNullInfoFrom(exceptionHandlingFlowContext.initsOnFinally);
        } else {
            UnconditionalFlowInfo initsOnException = exceptionHandlingFlowContext.initsOnException(i10);
            addPotentialInitializationsFrom = flowInfo.nullInfoLessUnconditionalCopy().addPotentialInitializationsFrom(initsOnException).addNullInfoFrom(initsOnException).addPotentialInitializationsFrom(flowInfo2.nullInfoLessUnconditionalCopy()).addPotentialInitializationsFrom(exceptionHandlingFlowContext.initsOnReturn.nullInfoLessUnconditionalCopy());
        }
        LocalVariableBinding localVariableBinding = this.catchArguments[i10].binding;
        addPotentialInitializationsFrom.markAsDefinitelyAssigned(localVariableBinding);
        addPotentialInitializationsFrom.markAsDefinitelyNonNull(localVariableBinding);
        if (this.tryBlock.statements == null && this.resources == null) {
            addPotentialInitializationsFrom.setReachMode(1);
        }
        return addPotentialInitializationsFrom;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0169 A[LOOP:1: B:37:0x0164->B:38:0x0169, LOOP_END] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        LocalVariableBinding localVariableBinding;
        TypeBinding typeBinding;
        FlowInfo flowInfo2;
        int i10;
        LocalVariableBinding localVariableBinding2;
        TypeBinding typeBinding2;
        Object obj;
        MethodBinding findCloseMethod;
        int length;
        int i11;
        this.preTryInitStateIndex = blockScope.methodScope().recordInitializationStates(flowInfo);
        LocalVariableBinding localVariableBinding3 = this.anyExceptionVariable;
        if (localVariableBinding3 != null) {
            localVariableBinding3.useFlag = 1;
        }
        LocalVariableBinding localVariableBinding4 = this.primaryExceptionVariable;
        if (localVariableBinding4 != null) {
            localVariableBinding4.useFlag = 1;
        }
        LocalVariableBinding localVariableBinding5 = this.caughtThrowableVariable;
        if (localVariableBinding5 != null) {
            localVariableBinding5.useFlag = 1;
        }
        LocalVariableBinding localVariableBinding6 = this.returnAddressVariable;
        if (localVariableBinding6 != null) {
            localVariableBinding6.useFlag = 1;
        }
        int length2 = this.resources.length;
        if (length2 > 0) {
            this.postResourcesInitStateIndexes = new int[length2];
        }
        if (this.subRoutineStartLabel == null) {
            if (flowContext instanceof FinallyFlowContext) {
                FinallyFlowContext finallyFlowContext = (FinallyFlowContext) flowContext;
                finallyFlowContext.outerTryContext = finallyFlowContext.tryContext;
            }
            ExceptionHandlingFlowContext exceptionHandlingFlowContext = new ExceptionHandlingFlowContext(flowContext, this, this.caughtExceptionTypes, this.caughtExceptionsCatchBlocks, null, this.scope, flowInfo);
            exceptionHandlingFlowContext.conditionalLevel = 0;
            FlowInfo copy = flowInfo.copy();
            int i12 = 0;
            while (i12 < length2) {
                Statement statement = this.resources[i12];
                FlowInfo analyseCode = statement.analyseCode(blockScope, exceptionHandlingFlowContext, copy);
                this.postResourcesInitStateIndexes[i12] = blockScope.methodScope().recordInitializationStates(analyseCode);
                if (statement instanceof LocalDeclaration) {
                    localVariableBinding2 = ((LocalDeclaration) statement).binding;
                    typeBinding2 = localVariableBinding2.type;
                } else {
                    if (statement instanceof NameReference) {
                        Binding binding = ((NameReference) statement).binding;
                        if (binding instanceof LocalVariableBinding) {
                            localVariableBinding2 = (LocalVariableBinding) binding;
                            typeBinding2 = ((Expression) statement).resolvedType;
                        }
                    }
                    localVariableBinding2 = null;
                    typeBinding2 = ((Expression) statement).resolvedType;
                }
                if (localVariableBinding2 != null) {
                    localVariableBinding2.useFlag = 1;
                    FakedTrackingVariable fakedTrackingVariable = localVariableBinding2.closeTracker;
                    if (fakedTrackingVariable != null) {
                        fakedTrackingVariable.withdraw();
                        obj = null;
                        localVariableBinding2.closeTracker = null;
                        findCloseMethod = findCloseMethod(statement, typeBinding2);
                        if (findCloseMethod != null && findCloseMethod.isValidBinding() && findCloseMethod.returnType.f102482id == 6) {
                            ReferenceBinding[] referenceBindingArr = findCloseMethod.thrownExceptions;
                            length = referenceBindingArr.length;
                            i11 = 0;
                            while (i11 < length) {
                                exceptionHandlingFlowContext.checkExceptionHandlers(referenceBindingArr[i11], this.resources[i12], analyseCode, blockScope, true);
                                i11++;
                                length = length;
                                referenceBindingArr = referenceBindingArr;
                                obj = obj;
                            }
                        }
                        i12++;
                        copy = analyseCode;
                    }
                }
                obj = null;
                findCloseMethod = findCloseMethod(statement, typeBinding2);
                if (findCloseMethod != null) {
                    ReferenceBinding[] referenceBindingArr2 = findCloseMethod.thrownExceptions;
                    length = referenceBindingArr2.length;
                    i11 = 0;
                    while (i11 < length) {
                    }
                }
                i12++;
                copy = analyseCode;
            }
            if (!this.tryBlock.isEmptyBlock()) {
                copy = this.tryBlock.analyseCode(blockScope, exceptionHandlingFlowContext, copy);
                if ((copy.tagBits & 1) != 0) {
                    this.bits |= 536870912;
                }
            }
            if (length2 > 0) {
                this.postTryInitStateIndex = blockScope.methodScope().recordInitializationStates(copy);
                for (int i13 = 0; i13 < length2; i13++) {
                    Statement statement2 = this.resources[i13];
                    if (statement2 instanceof LocalDeclaration) {
                        copy.resetAssignmentInfo(((LocalDeclaration) statement2).binding);
                    }
                }
            }
            exceptionHandlingFlowContext.complainIfUnusedExceptionHandlers(this.scope, this);
            if (this.catchArguments != null) {
                int length3 = this.catchBlocks.length;
                this.catchExits = new boolean[length3];
                this.catchExitInitStateIndexes = new int[length3];
                for (int i14 = 0; i14 < length3; i14++) {
                    FlowInfo prepareCatchInfo = prepareCatchInfo(flowInfo, exceptionHandlingFlowContext, copy, i14);
                    flowContext.conditionalLevel++;
                    FlowInfo analyseCode2 = this.catchBlocks[i14].analyseCode(blockScope, flowContext, prepareCatchInfo);
                    flowContext.conditionalLevel--;
                    this.catchExitInitStateIndexes[i14] = blockScope.methodScope().recordInitializationStates(analyseCode2);
                    this.catchExits[i14] = (analyseCode2.tagBits & 1) != 0;
                    copy = copy.mergedWith(analyseCode2.unconditionalInits());
                }
            }
            this.mergedInitStateIndex = blockScope.methodScope().recordInitializationStates(copy);
            flowContext.mergeFinallyNullInfo(exceptionHandlingFlowContext.initsOnFinally);
            return copy;
        }
        int i15 = 0;
        InsideSubRoutineFlowContext insideSubRoutineFlowContext = new InsideSubRoutineFlowContext(flowContext, this);
        if (flowContext instanceof FinallyFlowContext) {
            insideSubRoutineFlowContext.outerTryContext = ((FinallyFlowContext) flowContext).tryContext;
        }
        ExceptionHandlingFlowContext exceptionHandlingFlowContext2 = new ExceptionHandlingFlowContext(insideSubRoutineFlowContext, this, this.caughtExceptionTypes, this.caughtExceptionsCatchBlocks, null, this.scope, flowInfo);
        insideSubRoutineFlowContext.initsOnFinally = exceptionHandlingFlowContext2.initsOnFinally;
        Block block = this.finallyBlock;
        FinallyFlowContext finallyFlowContext2 = new FinallyFlowContext(flowContext, this.finallyBlock, exceptionHandlingFlowContext2);
        UnconditionalFlowInfo unconditionalInits = block.analyseCode(blockScope, finallyFlowContext2, flowInfo.nullInfoLessUnconditionalCopy()).unconditionalInits();
        exceptionHandlingFlowContext2.conditionalLevel = 0;
        if (unconditionalInits == FlowInfo.DEAD_END) {
            this.bits |= 16384;
            this.scope.problemReporter().finallyMustCompleteNormally(this.finallyBlock);
        } else {
            FlowInfo copy2 = unconditionalInits.copy();
            this.tryBlock.scope.finallyInfo = copy2;
            if (this.catchBlocks != null) {
                int i16 = 0;
                while (true) {
                    Block[] blockArr = this.catchBlocks;
                    if (i16 >= blockArr.length) {
                        break;
                    }
                    blockArr[i16].scope.finallyInfo = copy2;
                    i16++;
                }
            }
        }
        this.subRoutineInits = unconditionalInits;
        FlowInfo copy3 = flowInfo.copy();
        int i17 = 0;
        while (i17 < length2) {
            Statement statement3 = this.resources[i17];
            FlowInfo analyseCode3 = statement3.analyseCode(blockScope, exceptionHandlingFlowContext2, copy3);
            this.postResourcesInitStateIndexes[i17] = blockScope.methodScope().recordInitializationStates(analyseCode3);
            if (statement3 instanceof LocalDeclaration) {
                localVariableBinding = ((LocalDeclaration) this.resources[i17]).binding;
                typeBinding = localVariableBinding.type;
            } else {
                if (statement3 instanceof NameReference) {
                    Binding binding2 = ((NameReference) statement3).binding;
                    if (binding2 instanceof LocalVariableBinding) {
                        localVariableBinding = (LocalVariableBinding) binding2;
                        typeBinding = ((Expression) statement3).resolvedType;
                    }
                }
                localVariableBinding = null;
                typeBinding = ((Expression) statement3).resolvedType;
            }
            boolean z10 = true;
            if (localVariableBinding != null) {
                localVariableBinding.useFlag = 1;
                FakedTrackingVariable fakedTrackingVariable2 = localVariableBinding.closeTracker;
                if (fakedTrackingVariable2 != null) {
                    fakedTrackingVariable2.withdraw();
                }
            }
            MethodBinding findCloseMethod2 = findCloseMethod(statement3, typeBinding);
            if (findCloseMethod2 == null || !findCloseMethod2.isValidBinding()) {
                flowInfo2 = analyseCode3;
                i10 = i17;
            } else {
                char c10 = 6;
                if (findCloseMethod2.returnType.f102482id == 6) {
                    ReferenceBinding[] referenceBindingArr3 = findCloseMethod2.thrownExceptions;
                    int length4 = referenceBindingArr3.length;
                    while (i15 < length4) {
                        exceptionHandlingFlowContext2.checkExceptionHandlers(referenceBindingArr3[i15], this.resources[i17], analyseCode3, blockScope, true);
                        i15++;
                        c10 = 6;
                        z10 = z10;
                        length4 = length4;
                        referenceBindingArr3 = referenceBindingArr3;
                        analyseCode3 = analyseCode3;
                        i17 = i17;
                    }
                }
                flowInfo2 = analyseCode3;
                i10 = i17;
            }
            i17 = i10 + 1;
            copy3 = flowInfo2;
            i15 = 0;
        }
        if (!this.tryBlock.isEmptyBlock()) {
            copy3 = this.tryBlock.analyseCode(blockScope, exceptionHandlingFlowContext2, copy3);
            if ((copy3.tagBits & 1) != 0) {
                this.bits |= 536870912;
            }
        }
        if (length2 > 0) {
            this.postTryInitStateIndex = blockScope.methodScope().recordInitializationStates(copy3);
            for (int i18 = i15; i18 < length2; i18++) {
                Statement statement4 = this.resources[i18];
                if (statement4 instanceof LocalDeclaration) {
                    copy3.resetAssignmentInfo(((LocalDeclaration) statement4).binding);
                }
            }
        }
        exceptionHandlingFlowContext2.complainIfUnusedExceptionHandlers(this.scope, this);
        if (this.catchArguments != null) {
            int length5 = this.catchBlocks.length;
            this.catchExits = new boolean[length5];
            this.catchExitInitStateIndexes = new int[length5];
            for (int i19 = i15; i19 < length5; i19++) {
                FlowInfo prepareCatchInfo2 = prepareCatchInfo(flowInfo, exceptionHandlingFlowContext2, copy3, i19);
                insideSubRoutineFlowContext.conditionalLevel = 1;
                FlowInfo analyseCode4 = this.catchBlocks[i19].analyseCode(blockScope, insideSubRoutineFlowContext, prepareCatchInfo2);
                this.catchExitInitStateIndexes[i19] = blockScope.methodScope().recordInitializationStates(analyseCode4);
                this.catchExits[i19] = (analyseCode4.tagBits & 1) != 0 ? true : i15;
                copy3 = copy3.mergedWith(analyseCode4.unconditionalInits());
            }
        }
        finallyFlowContext2.complainOnDeferredChecks(((copy3.tagBits & 3) == 0 ? flowInfo.unconditionalCopy().addPotentialInitializationsFrom(copy3).addPotentialInitializationsFrom(insideSubRoutineFlowContext.initsOnReturn) : insideSubRoutineFlowContext.initsOnReturn).addNullInfoFrom(exceptionHandlingFlowContext2.initsOnFinally), blockScope);
        flowContext.mergeFinallyNullInfo(exceptionHandlingFlowContext2.initsOnFinally);
        this.naturalExitMergeInitStateIndex = blockScope.methodScope().recordInitializationStates(copy3);
        if (unconditionalInits == FlowInfo.DEAD_END) {
            this.mergedInitStateIndex = blockScope.methodScope().recordInitializationStates(unconditionalInits);
            return unconditionalInits;
        }
        FlowInfo addInitializationsFrom = copy3.addInitializationsFrom(unconditionalInits);
        this.mergedInitStateIndex = blockScope.methodScope().recordInitializationStates(addInitializationsFrom);
        return addInitializationsFrom;
    }

    @Override
    public boolean completesByContinue() {
        if (this.tryBlock.completesByContinue()) {
            Block block = this.finallyBlock;
            return block == null || !block.doesNotCompleteNormally() || this.finallyBlock.completesByContinue();
        }
        if (this.catchBlocks != null) {
            int i10 = 0;
            while (true) {
                Block[] blockArr = this.catchBlocks;
                if (i10 >= blockArr.length) {
                    break;
                }
                if (blockArr[i10].completesByContinue()) {
                    Block block2 = this.finallyBlock;
                    return block2 == null || !block2.doesNotCompleteNormally() || this.finallyBlock.completesByContinue();
                }
                i10++;
            }
        }
        Block block3 = this.finallyBlock;
        return block3 != null && block3.completesByContinue();
    }

    @Override
    public boolean doesNotCompleteNormally() {
        if (!this.tryBlock.doesNotCompleteNormally()) {
            Block block = this.finallyBlock;
            if (block != null) {
                return block.doesNotCompleteNormally();
            }
            return false;
        }
        if (this.catchBlocks == null) {
            return true;
        }
        int i10 = 0;
        while (true) {
            Block[] blockArr = this.catchBlocks;
            if (i10 >= blockArr.length) {
                return true;
            }
            if (!blockArr[i10].doesNotCompleteNormally()) {
                Block block2 = this.finallyBlock;
                if (block2 != null) {
                    return block2.doesNotCompleteNormally();
                }
                return false;
            }
            i10++;
        }
    }

    @Override
    public ExceptionLabel enterAnyExceptionHandler(CodeStream codeStream) {
        if (this.subRoutineStartLabel == null) {
            return null;
        }
        return super.enterAnyExceptionHandler(codeStream);
    }

    @Override
    public void enterDeclaredExceptionHandlers(CodeStream codeStream) {
        ExceptionLabel[] exceptionLabelArr = this.declaredExceptionLabels;
        int length = exceptionLabelArr == null ? 0 : exceptionLabelArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.declaredExceptionLabels[i10].placeStart();
        }
        int length2 = this.resources.length;
        if (length2 <= 0 || this.resourceExceptionLabels == null) {
            return;
        }
        while (length2 >= 0) {
            this.resourceExceptionLabels[length2].placeStart();
            length2--;
        }
    }

    @Override
    public void exitAnyExceptionHandler() {
        if (this.subRoutineStartLabel == null) {
            return;
        }
        super.exitAnyExceptionHandler();
    }

    @Override
    public void exitDeclaredExceptionHandlers(CodeStream codeStream) {
        ExceptionLabel[] exceptionLabelArr = this.declaredExceptionLabels;
        int length = exceptionLabelArr == null ? 0 : exceptionLabelArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.declaredExceptionLabels[i10].placeEnd();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:98:0x0247, code lost:
    
        if (r13 != 3) goto L98;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v54 */
    /* JADX WARN: Type inference failed for: r1v6, types: [org.eclipse.jdt.internal.compiler.codegen.ExceptionLabel[]] */
    /* JADX WARN: Type inference failed for: r1v64, types: [org.eclipse.jdt.internal.compiler.codegen.ExceptionLabel[]] */
    /* JADX WARN: Type inference failed for: r1v9, types: [org.eclipse.jdt.internal.compiler.codegen.ExceptionLabel[]] */
    /* JADX WARN: Type inference failed for: r5v12, types: [org.eclipse.jdt.internal.compiler.codegen.ExceptionLabel] */
    /* JADX WARN: Type inference failed for: r5v13, types: [org.eclipse.jdt.internal.compiler.codegen.ExceptionLabel] */
    /* JADX WARN: Type inference failed for: r5v14, types: [org.eclipse.jdt.internal.compiler.codegen.MultiCatchExceptionLabel] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
        ExceptionLabel[] exceptionLabelArr;
        ?? r12;
        boolean z10;
        BranchLabel branchLabel;
        BranchLabel branchLabel2;
        int i10;
        boolean z11;
        int i11;
        ?? exceptionLabel;
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        boolean z12 = codeStream instanceof StackMapFrameCodeStream;
        Statement statement = null;
        this.anyExceptionLabel = null;
        this.reusableJSRTargets = null;
        this.reusableJSRSequenceStartLabels = null;
        int i12 = 0;
        this.reusableJSRTargetsCount = 0;
        int i13 = codeStream.position;
        int finallyMode = finallyMode();
        Argument[] argumentArr = this.catchArguments;
        int length = argumentArr == null ? 0 : argumentArr.length;
        if (length > 0) {
            ?? r13 = new ExceptionLabel[length];
            for (int i14 = 0; i14 < length; i14++) {
                Argument argument = this.catchArguments[i14];
                LocalVariableBinding localVariableBinding = argument.binding;
                if ((localVariableBinding.tagBits & 4096) != 0) {
                    exceptionLabel = new MultiCatchExceptionLabel(codeStream, localVariableBinding.type);
                    exceptionLabel.initialize((UnionTypeReference) argument.type, argument.annotations);
                } else {
                    exceptionLabel = new ExceptionLabel(codeStream, localVariableBinding.type, argument.type, argument.annotations);
                }
                exceptionLabel.placeStart();
                r13[i14] = exceptionLabel;
            }
            exceptionLabelArr = r13;
        } else {
            exceptionLabelArr = null;
        }
        BranchLabel branchLabel3 = this.subRoutineStartLabel;
        if (branchLabel3 != null) {
            branchLabel3.initialize(codeStream);
            enterAnyExceptionHandler(codeStream);
        }
        try {
            this.declaredExceptionLabels = exceptionLabelArr;
            int length2 = this.resources.length;
            if (length2 > 0) {
                try {
                    this.resourceExceptionLabels = new ExceptionLabel[length2 + 1];
                    codeStream.aconst_null();
                    codeStream.store(this.primaryExceptionVariable, false);
                    codeStream.addVariable(this.primaryExceptionVariable);
                    codeStream.aconst_null();
                    codeStream.store(this.caughtThrowableVariable, false);
                    codeStream.addVariable(this.caughtThrowableVariable);
                    for (int i15 = 0; i15 <= length2; i15++) {
                        this.resourceExceptionLabels[i15] = new ExceptionLabel(codeStream, null);
                        this.resourceExceptionLabels[i15].placeStart();
                        if (i15 < length2) {
                            Statement statement2 = this.resources[i15];
                            if (statement2 instanceof NameReference) {
                                NameReference nameReference = (NameReference) statement2;
                                nameReference.bits |= 524288;
                                nameReference.checkEffectiveFinality((VariableBinding) nameReference.binding, this.scope);
                            } else if (statement2 instanceof FieldReference) {
                                FieldReference fieldReference = (FieldReference) statement2;
                                if (!fieldReference.binding.isFinal()) {
                                    this.scope.problemReporter().cannotReferToNonFinalField(fieldReference.binding, fieldReference);
                                }
                            }
                            statement2.generateCode(this.scope, codeStream);
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    r12 = statement;
                    this.declaredExceptionLabels = r12;
                    this.resourceExceptionLabels = r12;
                    throw th;
                }
            }
            this.tryBlock.generateCode(this.scope, codeStream);
            int i16 = -1;
            if (length2 > 0) {
                int i17 = length2;
                while (i17 >= 0) {
                    BranchLabel branchLabel4 = new BranchLabel(codeStream);
                    this.resourceExceptionLabels[i17].placeEnd();
                    Statement statement3 = i17 > 0 ? this.resources[i17 - 1] : statement;
                    if ((this.bits & 536870912) == 0) {
                        if (i17 > 0) {
                            int i18 = codeStream.position;
                            int i19 = this.postTryInitStateIndex;
                            if (i19 != i16) {
                                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i19);
                                codeStream.addDefinitelyAssignedVariables(blockScope, this.postTryInitStateIndex);
                            }
                            int[] iArr = new int[i12];
                            i10 = i17;
                            z11 = z12;
                            i11 = length2;
                            generateCodeSnippet(statement3, codeStream, branchLabel4, false, iArr);
                            codeStream.recordPositionsFrom(i18, this.tryBlock.sourceEnd);
                            branchLabel2 = branchLabel4;
                        } else {
                            i10 = i17;
                            z11 = z12;
                            i11 = length2;
                            branchLabel2 = branchLabel4;
                        }
                        codeStream.goto_(branchLabel2);
                    } else {
                        branchLabel2 = branchLabel4;
                        i10 = i17;
                        z11 = z12;
                        i11 = length2;
                    }
                    if (i10 > 0) {
                        int i20 = i10 - 1;
                        codeStream.removeNotDefinitelyAssignedVariables(blockScope, this.postResourcesInitStateIndexes[i20]);
                        codeStream.addDefinitelyAssignedVariables(blockScope, this.postResourcesInitStateIndexes[i20]);
                    } else {
                        codeStream.removeNotDefinitelyAssignedVariables(blockScope, this.preTryInitStateIndex);
                        codeStream.addDefinitelyAssignedVariables(blockScope, this.preTryInitStateIndex);
                    }
                    codeStream.pushExceptionOnStack(this.scope.getJavaLangThrowable());
                    this.resourceExceptionLabels[i10].place();
                    if (i10 == i11) {
                        codeStream.store(this.primaryExceptionVariable, false);
                    } else {
                        BranchLabel branchLabel5 = new BranchLabel(codeStream);
                        BranchLabel branchLabel6 = new BranchLabel(codeStream);
                        codeStream.store(this.caughtThrowableVariable, false);
                        codeStream.load(this.primaryExceptionVariable);
                        codeStream.ifnonnull(branchLabel5);
                        codeStream.load(this.caughtThrowableVariable);
                        codeStream.store(this.primaryExceptionVariable, false);
                        codeStream.goto_(branchLabel6);
                        branchLabel5.place();
                        codeStream.load(this.primaryExceptionVariable);
                        codeStream.load(this.caughtThrowableVariable);
                        codeStream.if_acmpeq(branchLabel6);
                        codeStream.load(this.primaryExceptionVariable);
                        codeStream.load(this.caughtThrowableVariable);
                        codeStream.invokeThrowableAddSuppressed();
                        branchLabel6.place();
                    }
                    if (i10 > 0) {
                        BranchLabel branchLabel7 = new BranchLabel(codeStream);
                        generateCodeSnippet(statement3, codeStream, branchLabel7, true, i10, codeStream.position);
                        branchLabel7.place();
                    }
                    codeStream.load(this.primaryExceptionVariable);
                    codeStream.athrow();
                    branchLabel2.place();
                    i17 = i10 - 1;
                    length2 = i11;
                    z12 = z11;
                    i16 = -1;
                    statement = null;
                    i12 = 0;
                }
                codeStream.removeVariable(this.primaryExceptionVariable);
                codeStream.removeVariable(this.caughtThrowableVariable);
            }
            boolean z13 = z12;
            ?? r14 = statement;
            this.declaredExceptionLabels = r14;
            this.resourceExceptionLabels = r14;
            if (codeStream.position != i13) {
                BranchLabel branchLabel8 = new BranchLabel(codeStream);
                for (int i21 = 0; i21 < length; i21++) {
                    exceptionLabelArr[i21].placeEnd();
                }
                if ((this.bits & 536870912) == 0) {
                    int i22 = codeStream.position;
                    if (finallyMode != 0) {
                        if (finallyMode != 1) {
                            if (finallyMode == 2) {
                                codeStream.goto_(this.subRoutineStartLabel);
                            }
                        }
                        int i23 = this.naturalExitMergeInitStateIndex;
                        if (i23 != -1) {
                            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i23);
                            codeStream.addDefinitelyAssignedVariables(blockScope, this.naturalExitMergeInitStateIndex);
                        }
                        codeStream.goto_(branchLabel8);
                        z10 = true;
                        codeStream.recordPositionsFrom(i22, this.tryBlock.sourceEnd);
                    } else {
                        int i24 = this.naturalExitMergeInitStateIndex;
                        if (i24 != -1) {
                            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i24);
                            codeStream.addDefinitelyAssignedVariables(blockScope, this.naturalExitMergeInitStateIndex);
                        }
                        codeStream.goto_(branchLabel8);
                    }
                    z10 = false;
                    codeStream.recordPositionsFrom(i22, this.tryBlock.sourceEnd);
                } else {
                    z10 = false;
                }
                exitAnyExceptionHandler();
                if (this.catchArguments != null) {
                    branchLabel = new BranchLabel(codeStream);
                    for (int i25 = 0; i25 < length; i25++) {
                        if (exceptionLabelArr[i25].getCount() != 0) {
                            enterAnyExceptionHandler(codeStream);
                            int i26 = this.preTryInitStateIndex;
                            if (i26 != -1) {
                                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i26);
                                codeStream.addDefinitelyAssignedVariables(blockScope, this.preTryInitStateIndex);
                            }
                            codeStream.pushExceptionOnStack(exceptionLabelArr[i25].exceptionType);
                            exceptionLabelArr[i25].place();
                            int i27 = codeStream.position;
                            LocalVariableBinding localVariableBinding2 = this.catchArguments[i25].binding;
                            if (localVariableBinding2.resolvedPosition != -1) {
                                codeStream.store(localVariableBinding2, false);
                                localVariableBinding2.recordInitializationStartPC(codeStream.position);
                                codeStream.addVisibleLocalVariable(localVariableBinding2);
                            } else {
                                codeStream.pop();
                            }
                            codeStream.recordPositionsFrom(i27, this.catchArguments[i25].sourceStart);
                            this.catchBlocks[i25].generateCode(this.scope, codeStream);
                            exitAnyExceptionHandler();
                            if (!this.catchExits[i25]) {
                                if (finallyMode != 0) {
                                    if (finallyMode == 1) {
                                        z10 = true;
                                    } else if (finallyMode == 2) {
                                        codeStream.goto_(this.subRoutineStartLabel);
                                    } else if (finallyMode == 3) {
                                        if (z13) {
                                            ((StackMapFrameCodeStream) codeStream).pushStateIndex(this.naturalExitMergeInitStateIndex);
                                        }
                                        int i28 = this.catchExitInitStateIndexes[i25];
                                        if (i28 != -1) {
                                            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i28);
                                            codeStream.addDefinitelyAssignedVariables(blockScope, this.catchExitInitStateIndexes[i25]);
                                        }
                                        this.finallyBlock.generateCode(this.scope, codeStream);
                                        codeStream.goto_(branchLabel);
                                        if (z13) {
                                            ((StackMapFrameCodeStream) codeStream).popStateIndex();
                                        }
                                    }
                                }
                                int i29 = this.naturalExitMergeInitStateIndex;
                                if (i29 != -1) {
                                    codeStream.removeNotDefinitelyAssignedVariables(blockScope, i29);
                                    codeStream.addDefinitelyAssignedVariables(blockScope, this.naturalExitMergeInitStateIndex);
                                }
                                codeStream.goto_(branchLabel8);
                            }
                        }
                    }
                } else {
                    branchLabel = null;
                }
                ExceptionLabel exceptionLabel2 = (z10 && finallyMode == 1) ? new ExceptionLabel(codeStream, null) : null;
                int i30 = codeStream.position;
                if (this.subRoutineStartLabel == null || this.anyExceptionLabel.getCount() == 0) {
                    branchLabel8.place();
                } else {
                    codeStream.pushExceptionOnStack(this.scope.getJavaLangThrowable());
                    int i31 = this.preTryInitStateIndex;
                    if (i31 != -1) {
                        codeStream.removeNotDefinitelyAssignedVariables(blockScope, i31);
                        codeStream.addDefinitelyAssignedVariables(blockScope, this.preTryInitStateIndex);
                    }
                    placeAllAnyExceptionHandler();
                    if (exceptionLabel2 != null) {
                        exceptionLabel2.place();
                    }
                    if (finallyMode == 1) {
                        codeStream.store(this.anyExceptionVariable, false);
                        codeStream.jsr(this.subRoutineStartLabel);
                        codeStream.recordPositionsFrom(i30, this.finallyBlock.sourceStart);
                        int i32 = codeStream.position;
                        codeStream.throwAnyException(this.anyExceptionVariable);
                        codeStream.recordPositionsFrom(i32, this.finallyBlock.sourceEnd);
                        this.subRoutineStartLabel.place();
                        codeStream.pushExceptionOnStack(this.scope.getJavaLangThrowable());
                        int i33 = codeStream.position;
                        codeStream.store(this.returnAddressVariable, false);
                        codeStream.recordPositionsFrom(i33, this.finallyBlock.sourceStart);
                        this.finallyBlock.generateCode(this.scope, codeStream);
                        int i34 = codeStream.position;
                        codeStream.ret(this.returnAddressVariable.resolvedPosition);
                        codeStream.recordPositionsFrom(i34, this.finallyBlock.sourceEnd);
                    } else if (finallyMode == 2) {
                        codeStream.pop();
                        this.subRoutineStartLabel.place();
                        codeStream.recordPositionsFrom(i30, this.finallyBlock.sourceStart);
                        this.finallyBlock.generateCode(this.scope, codeStream);
                    } else if (finallyMode == 3) {
                        codeStream.store(this.anyExceptionVariable, false);
                        codeStream.addVariable(this.anyExceptionVariable);
                        codeStream.recordPositionsFrom(i30, this.finallyBlock.sourceStart);
                        this.finallyBlock.generateCode(blockScope, codeStream);
                        int i35 = codeStream.position;
                        codeStream.throwAnyException(this.anyExceptionVariable);
                        codeStream.removeVariable(this.anyExceptionVariable);
                        int i36 = this.preTryInitStateIndex;
                        if (i36 != -1) {
                            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i36);
                        }
                        this.subRoutineStartLabel.place();
                        codeStream.recordPositionsFrom(i35, this.finallyBlock.sourceEnd);
                    }
                    if (z10) {
                        if (finallyMode == 1) {
                            branchLabel8.place();
                            int i37 = codeStream.position;
                            exceptionLabel2.placeStart();
                            codeStream.jsr(this.subRoutineStartLabel);
                            exceptionLabel2.placeEnd();
                            codeStream.recordPositionsFrom(i37, this.finallyBlock.sourceEnd);
                        } else if (finallyMode != 2) {
                            if (finallyMode != 3) {
                                branchLabel8.place();
                            } else {
                                if (z13) {
                                    ((StackMapFrameCodeStream) codeStream).pushStateIndex(this.naturalExitMergeInitStateIndex);
                                }
                                int i38 = this.naturalExitMergeInitStateIndex;
                                if (i38 != -1) {
                                    codeStream.removeNotDefinitelyAssignedVariables(blockScope, i38);
                                    codeStream.addDefinitelyAssignedVariables(blockScope, this.naturalExitMergeInitStateIndex);
                                }
                                branchLabel8.place();
                                this.finallyBlock.generateCode(this.scope, codeStream);
                                if (branchLabel != null) {
                                    int i39 = codeStream.position;
                                    codeStream.goto_(branchLabel);
                                    codeStream.recordPositionsFrom(i39, this.finallyBlock.sourceEnd);
                                }
                                if (z13) {
                                    ((StackMapFrameCodeStream) codeStream).popStateIndex();
                                }
                            }
                        }
                    }
                    if (branchLabel != null) {
                        branchLabel.place();
                    }
                }
            } else if (this.subRoutineStartLabel != null) {
                this.finallyBlock.generateCode(this.scope, codeStream);
            }
            int i40 = this.mergedInitStateIndex;
            if (i40 != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i40);
                codeStream.addDefinitelyAssignedVariables(blockScope, this.mergedInitStateIndex);
            }
            codeStream.recordPositionsFrom(i13, this.sourceStart);
        } catch (Throwable th3) {
            th = th3;
            r12 = 0;
        }
    }

    @Override
    public boolean generateSubRoutineInvocation(BlockScope blockScope, CodeStream codeStream, Object obj, int i10, LocalVariableBinding localVariableBinding) {
        int length = this.resources.length;
        if (length > 0 && this.resourceExceptionLabels != null) {
            while (length > 0) {
                this.resourceExceptionLabels[length].placeEnd();
                BranchLabel branchLabel = new BranchLabel(codeStream);
                int i11 = codeStream.position;
                generateCodeSnippet(this.resources[length - 1], codeStream, branchLabel, false, new int[0]);
                codeStream.recordPositionsFrom(i11, this.tryBlock.sourceEnd);
                branchLabel.place();
                length--;
            }
            this.resourceExceptionLabels[0].placeEnd();
        }
        boolean z10 = codeStream instanceof StackMapFrameCodeStream;
        int finallyMode = finallyMode();
        if (finallyMode == 0) {
            exitDeclaredExceptionHandlers(codeStream);
            return false;
        }
        if (finallyMode == 2) {
            codeStream.goto_(this.subRoutineStartLabel);
            return true;
        }
        if (this.scope.compilerOptions().shareCommonFinallyBlocks && obj != null) {
            int i12 = this.reusableJSRTargetsCount;
            if (i12 > 0) {
                for (int i13 = 0; i13 < i12; i13++) {
                    Object obj2 = this.reusableJSRTargets[i13];
                    if (obj == obj2 || ((obj instanceof Constant) && (obj2 instanceof Constant) && ((Constant) obj).hasSameValue((Constant) obj2))) {
                        if (this.reusableJSRStateIndexes[i13] == i10 || finallyMode != 3) {
                            codeStream.goto_(this.reusableJSRSequenceStartLabels[i13]);
                            return true;
                        }
                    }
                }
            } else {
                this.reusableJSRTargets = new Object[3];
                this.reusableJSRSequenceStartLabels = new BranchLabel[3];
                this.reusableJSRStateIndexes = new int[3];
            }
            int i14 = this.reusableJSRTargetsCount;
            Object[] objArr = this.reusableJSRTargets;
            if (i14 == objArr.length) {
                Object[] objArr2 = new Object[i14 * 2];
                this.reusableJSRTargets = objArr2;
                System.arraycopy(objArr, 0, objArr2, 0, i14);
                BranchLabel[] branchLabelArr = this.reusableJSRSequenceStartLabels;
                int i15 = this.reusableJSRTargetsCount;
                BranchLabel[] branchLabelArr2 = new BranchLabel[i15 * 2];
                this.reusableJSRSequenceStartLabels = branchLabelArr2;
                System.arraycopy(branchLabelArr, 0, branchLabelArr2, 0, i15);
                int[] iArr = this.reusableJSRStateIndexes;
                int i16 = this.reusableJSRTargetsCount;
                int[] iArr2 = new int[i16 * 2];
                this.reusableJSRStateIndexes = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, i16);
            }
            this.reusableJSRTargets[this.reusableJSRTargetsCount] = obj;
            BranchLabel branchLabel2 = new BranchLabel(codeStream);
            branchLabel2.place();
            int[] iArr3 = this.reusableJSRStateIndexes;
            int i17 = this.reusableJSRTargetsCount;
            iArr3[i17] = i10;
            BranchLabel[] branchLabelArr3 = this.reusableJSRSequenceStartLabels;
            this.reusableJSRTargetsCount = i17 + 1;
            branchLabelArr3[i17] = branchLabel2;
        }
        if (finallyMode == 3) {
            if (z10) {
                ((StackMapFrameCodeStream) codeStream).pushStateIndex(i10);
            }
            exitAnyExceptionHandler();
            exitDeclaredExceptionHandlers(codeStream);
            this.finallyBlock.generateCode(blockScope, codeStream);
            if (z10) {
                ((StackMapFrameCodeStream) codeStream).popStateIndex();
            }
        } else {
            codeStream.jsr(this.subRoutineStartLabel);
            exitAnyExceptionHandler();
            exitDeclaredExceptionHandlers(codeStream);
        }
        return false;
    }

    @Override
    public boolean isSubRoutineEscaping() {
        return (this.bits & 16384) != 0;
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        int length = this.resources.length;
        StringBuffer printIndent = ASTNode.printIndent(i10, stringBuffer);
        StringBuilder sb2 = new StringBuilder("try");
        sb2.append(length == 0 ? "\n" : " (");
        printIndent.append(sb2.toString());
        for (int i11 = 0; i11 < length; i11++) {
            Statement statement = this.resources[i11];
            if (statement instanceof LocalDeclaration) {
                ((LocalDeclaration) statement).printAsExpression(0, stringBuffer);
            } else if (statement instanceof Reference) {
                ((Reference) statement).printExpression(0, stringBuffer);
            }
            if (i11 != length - 1) {
                stringBuffer.append(";\n");
                ASTNode.printIndent(i10 + 2, stringBuffer);
            }
        }
        if (length > 0) {
            stringBuffer.append(")\n");
        }
        int i12 = i10 + 1;
        this.tryBlock.printStatement(i12, stringBuffer);
        if (this.catchBlocks != null) {
            for (int i13 = 0; i13 < this.catchBlocks.length; i13++) {
                stringBuffer.append('\n');
                ASTNode.printIndent(i10, stringBuffer).append("catch (");
                this.catchArguments[i13].print(0, stringBuffer).append(")\n");
                this.catchBlocks[i13].printStatement(i12, stringBuffer);
            }
        }
        if (this.finallyBlock != null) {
            stringBuffer.append('\n');
            ASTNode.printIndent(i10, stringBuffer).append("finally\n");
            this.finallyBlock.printStatement(i12, stringBuffer);
        }
        return stringBuffer;
    }

    @Override
    public void resolve(BlockScope blockScope) {
        BlockScope blockScope2;
        this.scope = new BlockScope(blockScope);
        int length = this.resources.length;
        BlockScope blockScope3 = null;
        blockScope3 = null;
        blockScope3 = null;
        MethodBinding methodBinding = null;
        if (length > 0) {
            blockScope2 = new BlockScope(this.scope);
            LocalVariableBinding localVariableBinding = new LocalVariableBinding(SECRET_PRIMARY_EXCEPTION_VARIABLE_NAME, (TypeBinding) this.scope.getJavaLangThrowable(), 0, false);
            this.primaryExceptionVariable = localVariableBinding;
            blockScope2.addLocalVariable(localVariableBinding);
            LocalVariableBinding localVariableBinding2 = this.primaryExceptionVariable;
            Constant constant = Constant.NotAConstant;
            localVariableBinding2.setConstant(constant);
            LocalVariableBinding localVariableBinding3 = new LocalVariableBinding(SECRET_CAUGHT_THROWABLE_VARIABLE_NAME, (TypeBinding) this.scope.getJavaLangThrowable(), 0, false);
            this.caughtThrowableVariable = localVariableBinding3;
            blockScope2.addLocalVariable(localVariableBinding3);
            this.caughtThrowableVariable.setConstant(constant);
        } else {
            blockScope2 = null;
        }
        for (int i10 = 0; i10 < length; i10++) {
            this.resources[i10].resolve(blockScope2);
            Statement statement = this.resources[i10];
            if (statement instanceof LocalDeclaration) {
                LocalDeclaration localDeclaration = (LocalDeclaration) statement;
                LocalVariableBinding localVariableBinding4 = localDeclaration.binding;
                if (localVariableBinding4 != null && localVariableBinding4.isValidBinding()) {
                    localVariableBinding4.modifiers |= 16;
                    localVariableBinding4.tagBits |= 8192;
                    TypeBinding typeBinding = localVariableBinding4.type;
                    if (typeBinding instanceof ReferenceBinding) {
                        if (typeBinding.findSuperTypeOriginatingFrom(62, false) == null && typeBinding.isValidBinding()) {
                            blockScope.problemReporter().resourceHasToImplementAutoCloseable(typeBinding, localDeclaration.type);
                            localVariableBinding4.type = new ProblemReferenceBinding(CharOperation.splitOn('.', typeBinding.shortReadableName()), null, 15);
                        }
                    } else if (typeBinding != null) {
                        blockScope.problemReporter().resourceHasToImplementAutoCloseable(typeBinding, localDeclaration.type);
                        localVariableBinding4.type = new ProblemReferenceBinding(CharOperation.splitOn('.', typeBinding.shortReadableName()), null, 15);
                    }
                }
            } else {
                Expression expression = (Expression) statement;
                TypeBinding typeBinding2 = expression.resolvedType;
                if (typeBinding2 instanceof ReferenceBinding) {
                    if (typeBinding2.findSuperTypeOriginatingFrom(62, false) == null && typeBinding2.isValidBinding()) {
                        blockScope.problemReporter().resourceHasToImplementAutoCloseable(typeBinding2, expression);
                        ((Expression) this.resources[i10]).resolvedType = new ProblemReferenceBinding(CharOperation.splitOn('.', typeBinding2.shortReadableName()), null, 15);
                    }
                } else if (typeBinding2 != null) {
                    blockScope.problemReporter().resourceHasToImplementAutoCloseable(typeBinding2, expression);
                    ((Expression) this.resources[i10]).resolvedType = new ProblemReferenceBinding(CharOperation.splitOn('.', typeBinding2.shortReadableName()), null, 15);
                }
            }
        }
        if (blockScope2 == null) {
            blockScope2 = this.scope;
        }
        BlockScope blockScope4 = new BlockScope(blockScope2);
        Block block = this.finallyBlock;
        if (block != null) {
            if (!block.isEmptyBlock()) {
                BlockScope blockScope5 = new BlockScope(this.scope, false);
                MethodScope methodScope = this.scope.methodScope();
                if (!blockScope.compilerOptions().inlineJsrBytecode) {
                    LocalVariableBinding localVariableBinding5 = new LocalVariableBinding(SECRET_RETURN_ADDRESS_NAME, (TypeBinding) blockScope.getJavaLangObject(), 0, false);
                    this.returnAddressVariable = localVariableBinding5;
                    blockScope5.addLocalVariable(localVariableBinding5);
                    this.returnAddressVariable.setConstant(Constant.NotAConstant);
                }
                this.subRoutineStartLabel = new BranchLabel();
                LocalVariableBinding localVariableBinding6 = new LocalVariableBinding(SECRET_ANY_HANDLER_NAME, (TypeBinding) this.scope.getJavaLangThrowable(), 0, false);
                this.anyExceptionVariable = localVariableBinding6;
                blockScope5.addLocalVariable(localVariableBinding6);
                LocalVariableBinding localVariableBinding7 = this.anyExceptionVariable;
                Constant constant2 = Constant.NotAConstant;
                localVariableBinding7.setConstant(constant2);
                if (!methodScope.isInsideInitializer()) {
                    ReferenceContext referenceContext = methodScope.referenceContext;
                    if (referenceContext instanceof AbstractMethodDeclaration) {
                        methodBinding = ((AbstractMethodDeclaration) referenceContext).binding;
                    } else if (referenceContext instanceof LambdaExpression) {
                        methodBinding = ((LambdaExpression) referenceContext).binding;
                    }
                    if (methodBinding != null) {
                        TypeBinding typeBinding3 = methodBinding.returnType;
                        if (typeBinding3.f102482id != 6) {
                            LocalVariableBinding localVariableBinding8 = new LocalVariableBinding(SECRET_RETURN_VALUE_NAME, typeBinding3, 0, false);
                            this.secretReturnValue = localVariableBinding8;
                            blockScope5.addLocalVariable(localVariableBinding8);
                            this.secretReturnValue.setConstant(constant2);
                        }
                    }
                }
                this.finallyBlock.resolveUsing(blockScope5);
                Argument[] argumentArr = this.catchArguments;
                BlockScope[] blockScopeArr = new BlockScope[argumentArr == null ? 1 : argumentArr.length + 1];
                blockScope5.shiftScopes = blockScopeArr;
                blockScopeArr[0] = blockScope4;
                blockScope3 = blockScope5;
            } else if ((this.finallyBlock.bits & 8) != 0) {
                ProblemReporter problemReporter = this.scope.problemReporter();
                Block block2 = this.finallyBlock;
                problemReporter.undocumentedEmptyBlock(block2.sourceStart, block2.sourceEnd);
            }
        }
        this.tryBlock.resolveUsing(blockScope4);
        if (this.catchBlocks != null) {
            int length2 = this.catchArguments.length;
            TypeBinding[] typeBindingArr = new TypeBinding[length2];
            int i11 = 0;
            boolean z10 = false;
            boolean z11 = false;
            while (i11 < length2) {
                BlockScope blockScope6 = new BlockScope(this.scope);
                if (blockScope3 != null) {
                    blockScope3.shiftScopes[i11 + 1] = blockScope6;
                }
                Argument argument = this.catchArguments[i11];
                z11 |= (argument.type.bits & 536870912) != 0;
                TypeBinding resolveForCatch = argument.resolveForCatch(blockScope6);
                typeBindingArr[i11] = resolveForCatch;
                if (resolveForCatch == null) {
                    z10 = true;
                }
                this.catchBlocks[i11].resolveUsing(blockScope6);
                i11++;
                z10 = z10;
            }
            if (z10) {
                return;
            } else {
                verifyDuplicationAndOrder(length2, typeBindingArr, z11);
            }
        } else {
            this.caughtExceptionTypes = new ReferenceBinding[0];
        }
        if (blockScope3 != null) {
            this.scope.addSubscope(blockScope3);
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            for (Statement statement : this.resources) {
                statement.traverse(aSTVisitor, this.scope);
            }
            this.tryBlock.traverse(aSTVisitor, this.scope);
            if (this.catchArguments != null) {
                int length = this.catchBlocks.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.catchArguments[i10].traverse(aSTVisitor, this.scope);
                    this.catchBlocks[i10].traverse(aSTVisitor, this.scope);
                }
            }
            Block block = this.finallyBlock;
            if (block != null) {
                block.traverse(aSTVisitor, this.scope);
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    public void verifyDuplicationAndOrder(int i10, TypeBinding[] typeBindingArr, boolean z10) {
        if (!z10) {
            this.caughtExceptionTypes = new ReferenceBinding[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                TypeBinding typeBinding = typeBindingArr[i11];
                if (!(typeBinding instanceof ArrayBinding)) {
                    this.caughtExceptionTypes[i11] = (ReferenceBinding) typeBinding;
                    for (int i12 = 0; i12 < i11; i12++) {
                        if (this.caughtExceptionTypes[i11].isCompatibleWith(typeBindingArr[i12])) {
                            this.scope.problemReporter().wrongSequenceOfExceptionTypesError(this.catchArguments[i11].type, this.caughtExceptionTypes[i11], typeBindingArr[i12]);
                        }
                    }
                }
            }
            return;
        }
        TypeBinding[][] typeBindingArr2 = new ReferenceBinding[i10];
        int i13 = 0;
        for (int i14 = 0; i14 < i10; i14++) {
            TypeBinding typeBinding2 = typeBindingArr[i14];
            if (!(typeBinding2 instanceof ArrayBinding)) {
                ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding2;
                TypeReference typeReference = this.catchArguments[i14].type;
                if ((536870912 & typeReference.bits) != 0) {
                    TypeReference[] typeReferenceArr = ((UnionTypeReference) typeReference).typeReferences;
                    int length = typeReferenceArr.length;
                    ReferenceBinding[] referenceBindingArr = new ReferenceBinding[length];
                    for (int i15 = 0; i15 < length; i15++) {
                        referenceBindingArr[i15] = (ReferenceBinding) typeReferenceArr[i15].resolvedType;
                    }
                    i13 += length;
                    typeBindingArr2[i14] = referenceBindingArr;
                } else {
                    typeBindingArr2[i14] = new ReferenceBinding[]{referenceBinding};
                    i13++;
                }
            }
        }
        this.caughtExceptionTypes = new ReferenceBinding[i13];
        this.caughtExceptionsCatchBlocks = new int[i13];
        int i16 = 0;
        for (int i17 = 0; i17 < i10; i17++) {
            ReferenceBinding[] referenceBindingArr2 = typeBindingArr2[i17];
            if (referenceBindingArr2 != null) {
                int length2 = referenceBindingArr2.length;
                int i18 = 0;
                while (true) {
                    if (i18 >= length2) {
                        break;
                    }
                    ReferenceBinding referenceBinding2 = referenceBindingArr2[i18];
                    this.caughtExceptionTypes[i16] = referenceBinding2;
                    int i19 = i16 + 1;
                    this.caughtExceptionsCatchBlocks[i16] = i17;
                    for (int i20 = 0; i20 < i17; i20++) {
                        TypeBinding[] typeBindingArr3 = typeBindingArr2[i20];
                        if (typeBindingArr3 != null) {
                            for (TypeBinding typeBinding3 : typeBindingArr3) {
                                if (referenceBinding2.isCompatibleWith(typeBinding3)) {
                                    TypeReference typeReference2 = this.catchArguments[i17].type;
                                    if ((typeReference2.bits & 536870912) != 0) {
                                        typeReference2 = ((UnionTypeReference) typeReference2).typeReferences[i18];
                                    }
                                    this.scope.problemReporter().wrongSequenceOfExceptionTypesError(typeReference2, referenceBinding2, typeBinding3);
                                    i16 = i19;
                                }
                            }
                        }
                    }
                    i18++;
                    i16 = i19;
                }
            }
        }
    }

    private void generateCodeSnippet(Reference reference, CodeStream codeStream, BranchLabel branchLabel, boolean z10, int i10, int i11) {
        reference.generateCode(this.scope, codeStream, true);
        codeStream.ifnull(branchLabel);
        reference.generateCode(this.scope, codeStream, true);
        codeStream.invokeAutoCloseableClose(reference.resolvedType);
        if (z10) {
            codeStream.recordPositionsFrom(i11, this.tryBlock.sourceEnd);
            isDuplicateResourceReference(i10);
        }
    }

    private void generateCodeSnippet(LocalDeclaration localDeclaration, CodeStream codeStream, BranchLabel branchLabel, boolean z10, int i10, int i11) {
        LocalVariableBinding localVariableBinding = localDeclaration.binding;
        codeStream.load(localVariableBinding);
        codeStream.ifnull(branchLabel);
        codeStream.load(localVariableBinding);
        codeStream.invokeAutoCloseableClose(localVariableBinding.type);
        if (z10) {
            codeStream.recordPositionsFrom(i11, this.tryBlock.sourceEnd);
            if (isDuplicateResourceReference(i10)) {
                return;
            }
            codeStream.removeVariable(localVariableBinding);
        }
    }
}
