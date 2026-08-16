package org.eclipse.jdt.internal.compiler.flow;

import java.util.ArrayList;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FakedTrackingVariable;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.core.JavaElement;

public class LoopingFlowContext extends SwitchFlowContext {
    int assignCount;
    Scope associatedScope;
    private LabelFlowContext[] breakTargetContexts;
    private int breakTargetsCount;
    public BranchLabel continueLabel;
    private ArrayList escapingExceptionCatchSites;
    Reference[] finalAssignments;
    VariableBinding[] finalVariables;
    public UnconditionalFlowInfo initsOnContinue;
    private LoopingFlowContext[] innerFlowContexts;
    private int innerFlowContextsCount;
    private UnconditionalFlowInfo[] innerFlowInfos;
    int[] nullCheckTypes;
    int nullCount;
    UnconditionalFlowInfo[] nullInfos;
    LocalVariableBinding[] nullLocals;
    ASTNode[] nullReferences;
    private UnconditionalFlowInfo upstreamNullFlowInfo;

    public static class EscapingExceptionCatchSite {
        final ExceptionHandlingFlowContext catchingContext;
        final ReferenceBinding caughtException;
        final FlowInfo exceptionInfo;

        public EscapingExceptionCatchSite(ExceptionHandlingFlowContext exceptionHandlingFlowContext, ReferenceBinding referenceBinding, FlowInfo flowInfo) {
            this.catchingContext = exceptionHandlingFlowContext;
            this.caughtException = referenceBinding;
            this.exceptionInfo = flowInfo;
        }

        public void simulateThrowAfterLoopBack(FlowInfo flowInfo) {
            this.catchingContext.recordHandlingException(this.caughtException, flowInfo.unconditionalCopy().addNullInfoFrom(this.exceptionInfo).unconditionalInits(), null, null, null, true);
        }
    }

    public LoopingFlowContext(FlowContext flowContext, FlowInfo flowInfo, ASTNode aSTNode, BranchLabel branchLabel, BranchLabel branchLabel2, Scope scope, boolean z10) {
        super(flowContext, aSTNode, branchLabel, z10, false);
        this.initsOnContinue = FlowInfo.DEAD_END;
        this.innerFlowContexts = null;
        this.innerFlowInfos = null;
        this.innerFlowContextsCount = 0;
        this.breakTargetContexts = null;
        this.breakTargetsCount = 0;
        this.assignCount = 0;
        this.escapingExceptionCatchSites = null;
        this.tagBits |= 2;
        this.continueLabel = branchLabel2;
        this.associatedScope = scope;
        this.upstreamNullFlowInfo = flowInfo.unconditionalCopy();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004d A[LOOP:1: B:12:0x004a->B:13:0x004d, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void complainOnDeferredFinalChecks(BlockScope blockScope, FlowInfo flowInfo) {
        FlowContext localParent;
        for (int i10 = 0; i10 < this.assignCount; i10++) {
            VariableBinding variableBinding = this.finalVariables[i10];
            if (variableBinding != null) {
                if (variableBinding instanceof FieldBinding) {
                    FieldBinding fieldBinding = (FieldBinding) variableBinding;
                    if (flowInfo.isPotentiallyAssigned(fieldBinding)) {
                        blockScope.problemReporter().duplicateInitializationOfBlankFinalField(fieldBinding, this.finalAssignments[i10]);
                        for (localParent = getLocalParent(); localParent != null; localParent = localParent.getLocalParent()) {
                            localParent.removeFinalAssignmentIfAny(this.finalAssignments[i10]);
                        }
                    }
                } else {
                    LocalVariableBinding localVariableBinding = (LocalVariableBinding) variableBinding;
                    if (flowInfo.isPotentiallyAssigned(localVariableBinding)) {
                        variableBinding.tagBits &= -2049;
                        if (variableBinding.isFinal()) {
                            blockScope.problemReporter().duplicateInitializationOfFinalLocal(localVariableBinding, this.finalAssignments[i10]);
                            while (localParent != null) {
                            }
                        }
                    }
                }
            }
        }
    }

    public void complainOnDeferredNullChecks(BlockScope blockScope, FlowInfo flowInfo) {
        complainOnDeferredNullChecks(blockScope, flowInfo, true);
    }

    @Override
    public BranchLabel continueLabel() {
        return this.continueLabel;
    }

    public boolean hasEscapingExceptions() {
        return this.escapingExceptionCatchSites != null;
    }

    @Override
    public String individualToString() {
        StringBuffer stringBuffer = new StringBuffer("Looping flow context");
        stringBuffer.append("[initsOnBreak - ");
        stringBuffer.append(this.initsOnBreak.toString());
        stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        stringBuffer.append("[initsOnContinue - ");
        stringBuffer.append(this.initsOnContinue.toString());
        stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        stringBuffer.append("[finalAssignments count - ");
        stringBuffer.append(this.assignCount);
        stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        stringBuffer.append("[nullReferences count - ");
        stringBuffer.append(this.nullCount);
        stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        return stringBuffer.toString();
    }

    @Override
    public boolean internalRecordNullityMismatch(Expression expression, TypeBinding typeBinding, FlowInfo flowInfo, int i10, TypeBinding typeBinding2, int i11) {
        recordProvidedExpectedTypes(typeBinding, typeBinding2, this.nullCount);
        recordNullReference(expression.localVariableBinding(), expression, i11, flowInfo);
        return true;
    }

    @Override
    public boolean isContinuable() {
        return true;
    }

    public boolean isContinuedTo() {
        return this.initsOnContinue != FlowInfo.DEAD_END;
    }

    @Override
    public void recordBreakTo(FlowContext flowContext) {
        if (flowContext instanceof LabelFlowContext) {
            int i10 = this.breakTargetsCount;
            this.breakTargetsCount = i10 + 1;
            if (i10 == 0) {
                this.breakTargetContexts = new LabelFlowContext[2];
            } else {
                LabelFlowContext[] labelFlowContextArr = this.breakTargetContexts;
                if (i10 == labelFlowContextArr.length) {
                    LabelFlowContext[] labelFlowContextArr2 = new LabelFlowContext[i10 + 2];
                    this.breakTargetContexts = labelFlowContextArr2;
                    System.arraycopy(labelFlowContextArr, 0, labelFlowContextArr2, 0, i10);
                }
            }
            this.breakTargetContexts[i10] = (LabelFlowContext) flowContext;
        }
    }

    public void recordCatchContextOfEscapingException(ExceptionHandlingFlowContext exceptionHandlingFlowContext, ReferenceBinding referenceBinding, FlowInfo flowInfo) {
        if (this.escapingExceptionCatchSites == null) {
            this.escapingExceptionCatchSites = new ArrayList(5);
        }
        this.escapingExceptionCatchSites.add(new EscapingExceptionCatchSite(exceptionHandlingFlowContext, referenceBinding, flowInfo));
    }

    @Override
    public void recordContinueFrom(FlowContext flowContext, FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 1) == 0) {
            UnconditionalFlowInfo unconditionalFlowInfo = this.initsOnContinue;
            if ((unconditionalFlowInfo.tagBits & 1) == 0) {
                this.initsOnContinue = unconditionalFlowInfo.mergedWith(flowInfo.unconditionalInitsWithoutSideEffect());
            } else {
                this.initsOnContinue = flowInfo.unconditionalCopy();
            }
            while (flowContext != this && !(flowContext instanceof LoopingFlowContext)) {
                flowContext = flowContext.parent;
            }
            if (flowContext == this) {
                this.upstreamNullFlowInfo.addPotentialNullInfoFrom(flowInfo.unconditionalInitsWithoutSideEffect());
                return;
            }
            LoopingFlowContext[] loopingFlowContextArr = this.innerFlowContexts;
            if (loopingFlowContextArr == null) {
                this.innerFlowContexts = new LoopingFlowContext[5];
                this.innerFlowInfos = new UnconditionalFlowInfo[5];
            } else {
                int i10 = this.innerFlowContextsCount;
                int length = loopingFlowContextArr.length;
                if (i10 == length - 1) {
                    int i11 = length + 5;
                    LoopingFlowContext[] loopingFlowContextArr2 = new LoopingFlowContext[i11];
                    this.innerFlowContexts = loopingFlowContextArr2;
                    System.arraycopy(loopingFlowContextArr, 0, loopingFlowContextArr2, 0, length);
                    UnconditionalFlowInfo[] unconditionalFlowInfoArr = this.innerFlowInfos;
                    UnconditionalFlowInfo[] unconditionalFlowInfoArr2 = new UnconditionalFlowInfo[i11];
                    this.innerFlowInfos = unconditionalFlowInfoArr2;
                    System.arraycopy(unconditionalFlowInfoArr, 0, unconditionalFlowInfoArr2, 0, length);
                }
            }
            LoopingFlowContext[] loopingFlowContextArr3 = this.innerFlowContexts;
            int i12 = this.innerFlowContextsCount;
            loopingFlowContextArr3[i12] = (LoopingFlowContext) flowContext;
            UnconditionalFlowInfo[] unconditionalFlowInfoArr3 = this.innerFlowInfos;
            this.innerFlowContextsCount = i12 + 1;
            unconditionalFlowInfoArr3[i12] = flowInfo.unconditionalInitsWithoutSideEffect();
        }
    }

    @Override
    public boolean recordExitAgainstResource(BlockScope blockScope, FlowInfo flowInfo, FakedTrackingVariable fakedTrackingVariable, ASTNode aSTNode) {
        LocalVariableBinding localVariableBinding = fakedTrackingVariable.binding;
        if (flowInfo.isDefinitelyNonNull(localVariableBinding)) {
            return false;
        }
        if (flowInfo.isDefinitelyNull(localVariableBinding)) {
            blockScope.problemReporter().unclosedCloseable(fakedTrackingVariable, aSTNode);
            return true;
        }
        if (flowInfo.isPotentiallyNull(localVariableBinding)) {
            blockScope.problemReporter().potentiallyUnclosedCloseable(fakedTrackingVariable, aSTNode);
            return true;
        }
        recordNullReference(fakedTrackingVariable.binding, aSTNode, 2048, flowInfo);
        return true;
    }

    @Override
    public boolean recordFinalAssignment(VariableBinding variableBinding, Reference reference) {
        if (variableBinding instanceof LocalVariableBinding) {
            Scope scope = ((LocalVariableBinding) variableBinding).declaringScope;
            do {
                scope = scope.parent;
                if (scope == null) {
                }
            } while (scope != this.associatedScope);
            return false;
        }
        int i10 = this.assignCount;
        if (i10 == 0) {
            this.finalAssignments = new Reference[5];
            this.finalVariables = new VariableBinding[5];
        } else {
            Reference[] referenceArr = this.finalAssignments;
            if (i10 == referenceArr.length) {
                Reference[] referenceArr2 = new Reference[i10 * 2];
                this.finalAssignments = referenceArr2;
                System.arraycopy(referenceArr, 0, referenceArr2, 0, i10);
            }
            VariableBinding[] variableBindingArr = this.finalVariables;
            int i11 = this.assignCount;
            VariableBinding[] variableBindingArr2 = new VariableBinding[i11 * 2];
            this.finalVariables = variableBindingArr2;
            System.arraycopy(variableBindingArr, 0, variableBindingArr2, 0, i11);
        }
        Reference[] referenceArr3 = this.finalAssignments;
        int i12 = this.assignCount;
        referenceArr3[i12] = reference;
        VariableBinding[] variableBindingArr3 = this.finalVariables;
        this.assignCount = i12 + 1;
        variableBindingArr3[i12] = variableBinding;
        return true;
    }

    @Override
    public void recordNullReference(LocalVariableBinding localVariableBinding, ASTNode aSTNode, int i10, FlowInfo flowInfo) {
        int i11 = this.nullCount;
        if (i11 == 0) {
            this.nullLocals = new LocalVariableBinding[5];
            this.nullReferences = new ASTNode[5];
            this.nullCheckTypes = new int[5];
            this.nullInfos = new UnconditionalFlowInfo[5];
        } else {
            LocalVariableBinding[] localVariableBindingArr = this.nullLocals;
            if (i11 == localVariableBindingArr.length) {
                LocalVariableBinding[] localVariableBindingArr2 = new LocalVariableBinding[i11 * 2];
                this.nullLocals = localVariableBindingArr2;
                System.arraycopy(localVariableBindingArr, 0, localVariableBindingArr2, 0, i11);
                ASTNode[] aSTNodeArr = this.nullReferences;
                int i12 = this.nullCount;
                ASTNode[] aSTNodeArr2 = new ASTNode[i12 * 2];
                this.nullReferences = aSTNodeArr2;
                System.arraycopy(aSTNodeArr, 0, aSTNodeArr2, 0, i12);
                int[] iArr = this.nullCheckTypes;
                int i13 = this.nullCount;
                int[] iArr2 = new int[i13 * 2];
                this.nullCheckTypes = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, i13);
                UnconditionalFlowInfo[] unconditionalFlowInfoArr = this.nullInfos;
                int i14 = this.nullCount;
                UnconditionalFlowInfo[] unconditionalFlowInfoArr2 = new UnconditionalFlowInfo[i14 * 2];
                this.nullInfos = unconditionalFlowInfoArr2;
                System.arraycopy(unconditionalFlowInfoArr, 0, unconditionalFlowInfoArr2, 0, i14);
            }
        }
        LocalVariableBinding[] localVariableBindingArr3 = this.nullLocals;
        int i15 = this.nullCount;
        localVariableBindingArr3[i15] = localVariableBinding;
        this.nullReferences[i15] = aSTNode;
        this.nullCheckTypes[i15] = i10;
        UnconditionalFlowInfo[] unconditionalFlowInfoArr3 = this.nullInfos;
        this.nullCount = i15 + 1;
        unconditionalFlowInfoArr3[i15] = flowInfo != null ? flowInfo.unconditionalCopy() : null;
    }

    @Override
    public void recordUnboxing(Scope scope, Expression expression, int i10, FlowInfo flowInfo) {
        if (i10 == 2) {
            super.recordUnboxing(scope, expression, i10, flowInfo);
        } else {
            recordNullReference(null, expression, 16, flowInfo);
        }
    }

    @Override
    public void recordUsingNullReference(Scope scope, LocalVariableBinding localVariableBinding, ASTNode aSTNode, int i10, FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 3) != 0 || flowInfo.isDefinitelyUnknown(localVariableBinding)) {
            return;
        }
        int i11 = i10 | (this.tagBits & 4096);
        int i12 = (-61441) & i11;
        if (i12 == 3) {
            if (flowInfo.isDefinitelyNonNull(localVariableBinding)) {
                return;
            }
            if (flowInfo.isDefinitelyNull(localVariableBinding)) {
                scope.problemReporter().localVariableNullReference(localVariableBinding, aSTNode);
                return;
            } else if (flowInfo.isPotentiallyNull(localVariableBinding)) {
                scope.problemReporter().localVariablePotentialNullReference(localVariableBinding, aSTNode);
                return;
            } else {
                recordNullReference(localVariableBinding, aSTNode, i11, flowInfo);
                return;
            }
        }
        if (i12 != 769 && i12 != 1025) {
            if (i12 != 256) {
                if (i12 != 257) {
                    if (i12 != 512) {
                        if (i12 != 513) {
                            return;
                        }
                    }
                }
            }
            ASTNode aSTNode2 = (Expression) aSTNode;
            if (flowInfo.isDefinitelyNonNull(localVariableBinding)) {
                if (i12 != 512) {
                    scope.problemReporter().localVariableNonNullComparedToNull(localVariableBinding, aSTNode2);
                    flowInfo.initsWhenTrue().setReachMode(2);
                    return;
                } else {
                    if ((this.tagBits & 4096) == 0) {
                        scope.problemReporter().localVariableRedundantCheckOnNonNull(localVariableBinding, aSTNode2);
                    }
                    flowInfo.initsWhenFalse().setReachMode(2);
                    return;
                }
            }
            if (flowInfo.isDefinitelyNull(localVariableBinding)) {
                if (i12 != 256) {
                    scope.problemReporter().localVariableNullComparedToNonNull(localVariableBinding, aSTNode2);
                    flowInfo.initsWhenTrue().setReachMode(2);
                    return;
                } else {
                    if ((this.tagBits & 4096) == 0) {
                        scope.problemReporter().localVariableRedundantCheckOnNull(localVariableBinding, aSTNode2);
                    }
                    flowInfo.initsWhenFalse().setReachMode(2);
                    return;
                }
            }
            if (this.upstreamNullFlowInfo.isDefinitelyNonNull(localVariableBinding) && !flowInfo.isPotentiallyNull(localVariableBinding) && !flowInfo.isPotentiallyUnknown(localVariableBinding)) {
                recordNullReference(localVariableBinding, aSTNode2, i11, flowInfo);
                flowInfo.markAsDefinitelyNonNull(localVariableBinding);
                return;
            } else {
                if (flowInfo.cannotBeDefinitelyNullOrNonNull(localVariableBinding)) {
                    return;
                }
                if (flowInfo.isPotentiallyNonNull(localVariableBinding)) {
                    recordNullReference(localVariableBinding, aSTNode2, (i11 & (-256)) | 2, flowInfo);
                    return;
                } else if (flowInfo.isPotentiallyNull(localVariableBinding)) {
                    recordNullReference(localVariableBinding, aSTNode2, (i11 & (-256)) | 1, flowInfo);
                    return;
                } else {
                    recordNullReference(localVariableBinding, aSTNode2, i11, flowInfo);
                    return;
                }
            }
        }
        Expression expression = (Expression) aSTNode;
        if (flowInfo.isPotentiallyNonNull(localVariableBinding) || flowInfo.isPotentiallyUnknown(localVariableBinding) || flowInfo.isProtectedNonNull(localVariableBinding)) {
            return;
        }
        if (flowInfo.isDefinitelyNull(localVariableBinding)) {
            int i13 = i11 & FlowContext.CONTEXT_MASK;
            if (i13 == 256) {
                if ((i11 & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                    scope.problemReporter().localVariableNullReference(localVariableBinding, expression);
                    return;
                }
                if ((this.tagBits & 4096) == 0) {
                    scope.problemReporter().localVariableRedundantCheckOnNull(localVariableBinding, expression);
                }
                flowInfo.initsWhenFalse().setReachMode(2);
                return;
            }
            if (i13 == 512) {
                if ((i11 & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                    scope.problemReporter().localVariableNullReference(localVariableBinding, expression);
                    return;
                } else {
                    scope.problemReporter().localVariableNullComparedToNonNull(localVariableBinding, expression);
                    flowInfo.initsWhenTrue().setReachMode(2);
                    return;
                }
            }
            if (i13 == 768) {
                scope.problemReporter().localVariableRedundantNullAssignment(localVariableBinding, expression);
                return;
            } else if (i13 == 1024) {
                scope.problemReporter().localVariableNullInstanceof(localVariableBinding, expression);
                return;
            }
        } else if (flowInfo.isPotentiallyNull(localVariableBinding)) {
            int i14 = i11 & FlowContext.CONTEXT_MASK;
            if (i14 != 256) {
                if (i14 == 512 && (i11 & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                    scope.problemReporter().localVariablePotentialNullReference(localVariableBinding, expression);
                    return;
                }
            } else if ((i11 & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                scope.problemReporter().localVariablePotentialNullReference(localVariableBinding, expression);
                return;
            }
        }
        recordNullReference(localVariableBinding, expression, i11, flowInfo);
    }

    @Override
    public void removeFinalAssignmentIfAny(Reference reference) {
        for (int i10 = 0; i10 < this.assignCount; i10++) {
            Reference[] referenceArr = this.finalAssignments;
            if (referenceArr[i10] == reference) {
                referenceArr[i10] = null;
                this.finalVariables[i10] = null;
                return;
            }
        }
    }

    public void simulateThrowAfterLoopBack(FlowInfo flowInfo) {
        ArrayList arrayList = this.escapingExceptionCatchSites;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((EscapingExceptionCatchSite) this.escapingExceptionCatchSites.get(i10)).simulateThrowAfterLoopBack(flowInfo);
            }
            this.escapingExceptionCatchSites = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:160:0x02bd, code lost:
    
        if (r5 != 513) goto L155;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x006a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:22:0x006d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:170:0x033c  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x03ab  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void complainOnDeferredNullChecks(BlockScope blockScope, FlowInfo flowInfo, boolean z10) {
        int i10;
        boolean z11;
        char c10;
        FakedTrackingVariable fakedTrackingVariable;
        int i11;
        int i12;
        int i13;
        for (int i14 = 0; i14 < this.innerFlowContextsCount; i14++) {
            this.upstreamNullFlowInfo.addPotentialNullInfoFrom(this.innerFlowContexts[i14].upstreamNullFlowInfo).addPotentialNullInfoFrom(this.innerFlowInfos[i14]);
        }
        this.innerFlowContextsCount = 0;
        FlowInfo copy = this.upstreamNullFlowInfo.copy();
        UnconditionalFlowInfo addPotentialNullInfoFrom = this.upstreamNullFlowInfo.addPotentialNullInfoFrom(flowInfo.unconditionalInitsWithoutSideEffect());
        int i15 = 2048;
        int i16 = 1025;
        int i17 = 769;
        int i18 = 128;
        int i19 = 16;
        int i20 = 3;
        if ((this.tagBits & 1) != 0) {
            int i21 = 0;
            while (i21 < this.nullCount) {
                LocalVariableBinding localVariableBinding = this.nullLocals[i21];
                ASTNode aSTNode = this.nullReferences[i21];
                FlowInfo addNullInfoFrom = this.nullInfos[i21] != null ? addPotentialNullInfoFrom.copy().addNullInfoFrom(this.nullInfos[i21]) : addPotentialNullInfoFrom;
                int i22 = this.nullCheckTypes[i21] & (-61441);
                if (i22 != i20) {
                    if (i22 == i19) {
                        i11 = i21;
                        i12 = i20;
                        i13 = i18;
                        checkUnboxing(blockScope, (Expression) aSTNode, addNullInfoFrom);
                    } else if (i22 != i18) {
                        if (i22 != i17 && i22 != i16) {
                            if (i22 != i15) {
                                switch (i22) {
                                    case 256:
                                        if (addNullInfoFrom.isDefinitelyNonNull(localVariableBinding)) {
                                            this.nullReferences[i21] = null;
                                            int i23 = this.nullCheckTypes[i21];
                                            if ((i23 & (-61441)) != 512) {
                                                blockScope.problemReporter().localVariableNonNullComparedToNull(localVariableBinding, aSTNode);
                                            } else if ((i23 & 4096) == 0) {
                                                blockScope.problemReporter().localVariableRedundantCheckOnNonNull(localVariableBinding, aSTNode);
                                            }
                                        } else {
                                            if (addNullInfoFrom.isDefinitelyNull(localVariableBinding)) {
                                                this.nullReferences[i21] = null;
                                                int i24 = this.nullCheckTypes[i21];
                                                if ((i24 & (-61441)) != 256) {
                                                    blockScope.problemReporter().localVariableNullComparedToNonNull(localVariableBinding, aSTNode);
                                                } else if ((i24 & 4096) == 0) {
                                                    blockScope.problemReporter().localVariableRedundantCheckOnNull(localVariableBinding, aSTNode);
                                                }
                                            }
                                            i11 = i21;
                                            i13 = i18;
                                            i12 = 3;
                                            if (this.nullCheckTypes[i11] == i12 || !copy.isDefinitelyNonNull(localVariableBinding)) {
                                                this.parent.recordUsingNullReference(blockScope, localVariableBinding, aSTNode, this.nullCheckTypes[i11], addNullInfoFrom);
                                                break;
                                            } else {
                                                break;
                                            }
                                        }
                                        i11 = i21;
                                        i13 = i18;
                                        i12 = 3;
                                        break;
                                    case 257:
                                        break;
                                    case 258:
                                        if (addNullInfoFrom.isDefinitelyNonNull(localVariableBinding)) {
                                            this.nullReferences[i21] = null;
                                            int i25 = this.nullCheckTypes[i21];
                                            if ((i25 & (-61441)) != 514) {
                                                blockScope.problemReporter().localVariableNonNullComparedToNull(localVariableBinding, aSTNode);
                                            } else if ((i25 & 4096) == 0) {
                                                blockScope.problemReporter().localVariableRedundantCheckOnNonNull(localVariableBinding, aSTNode);
                                            }
                                            i11 = i21;
                                            i13 = i18;
                                            i12 = 3;
                                            break;
                                        }
                                        i11 = i21;
                                        i12 = i20;
                                        i13 = i18;
                                        if (this.nullCheckTypes[i11] == i12) {
                                            break;
                                        }
                                        this.parent.recordUsingNullReference(blockScope, localVariableBinding, aSTNode, this.nullCheckTypes[i11], addNullInfoFrom);
                                        break;
                                    default:
                                        switch (i22) {
                                            case 512:
                                                break;
                                            case 513:
                                                break;
                                            case 514:
                                                break;
                                            default:
                                                i11 = i21;
                                                i12 = i20;
                                                i13 = i18;
                                                if (this.nullCheckTypes[i11] == i12) {
                                                }
                                                this.parent.recordUsingNullReference(blockScope, localVariableBinding, aSTNode, this.nullCheckTypes[i11], addNullInfoFrom);
                                                break;
                                        }
                                }
                            } else {
                                FakedTrackingVariable fakedTrackingVariable2 = localVariableBinding.closeTracker;
                                if (fakedTrackingVariable2 != null) {
                                    if (!fakedTrackingVariable2.hasDefinitelyNoResource(addNullInfoFrom) && !fakedTrackingVariable2.isClosedInFinallyOfEnclosing(blockScope)) {
                                        if (this.parent.recordExitAgainstResource(blockScope, addNullInfoFrom, fakedTrackingVariable2, aSTNode)) {
                                            this.nullReferences[i21] = null;
                                        }
                                    }
                                    i11 = i21;
                                    i13 = i18;
                                    i12 = 3;
                                }
                                i11 = i21;
                                i13 = i18;
                                i12 = 3;
                                if (this.nullCheckTypes[i11] == i12) {
                                }
                                this.parent.recordUsingNullReference(blockScope, localVariableBinding, aSTNode, this.nullCheckTypes[i11], addNullInfoFrom);
                            }
                        }
                        Expression expression = (Expression) aSTNode;
                        if (addNullInfoFrom.isDefinitelyNull(localVariableBinding)) {
                            this.nullReferences[i21] = null;
                            int i26 = this.nullCheckTypes[i21];
                            int i27 = i26 & FlowContext.CONTEXT_MASK;
                            if (i27 != 256) {
                                if (i27 != 512) {
                                    if (i27 == 768) {
                                        blockScope.problemReporter().localVariableRedundantNullAssignment(localVariableBinding, expression);
                                    } else {
                                        if (i27 == 1024) {
                                            blockScope.problemReporter().localVariableNullInstanceof(localVariableBinding, expression);
                                        }
                                        i11 = i21;
                                        i13 = 128;
                                        i12 = 3;
                                        if (this.nullCheckTypes[i11] == i12) {
                                        }
                                        this.parent.recordUsingNullReference(blockScope, localVariableBinding, aSTNode, this.nullCheckTypes[i11], addNullInfoFrom);
                                    }
                                } else if ((i26 & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                                    blockScope.problemReporter().localVariableNullReference(localVariableBinding, expression);
                                } else {
                                    blockScope.problemReporter().localVariableNullComparedToNonNull(localVariableBinding, expression);
                                }
                            } else if ((i26 & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                                blockScope.problemReporter().localVariableNullReference(localVariableBinding, expression);
                            } else if ((i26 & 4096) == 0) {
                                blockScope.problemReporter().localVariableRedundantCheckOnNull(localVariableBinding, expression);
                            }
                            i11 = i21;
                            i13 = 128;
                            i12 = 3;
                        } else {
                            if (addNullInfoFrom.isPotentiallyNull(localVariableBinding)) {
                                int i28 = this.nullCheckTypes[i21];
                                int i29 = i28 & FlowContext.CONTEXT_MASK;
                                if (i29 == 256) {
                                    this.nullReferences[i21] = null;
                                    if ((i28 & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                                        blockScope.problemReporter().localVariablePotentialNullReference(localVariableBinding, expression);
                                        i11 = i21;
                                        i13 = 128;
                                        i12 = 3;
                                    }
                                } else if (i29 == 512) {
                                    this.nullReferences[i21] = null;
                                    if ((i28 & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                                        blockScope.problemReporter().localVariablePotentialNullReference(localVariableBinding, expression);
                                        i11 = i21;
                                        i13 = 128;
                                        i12 = 3;
                                    }
                                }
                            }
                            i11 = i21;
                            i13 = 128;
                            i12 = 3;
                            if (this.nullCheckTypes[i11] == i12) {
                            }
                            this.parent.recordUsingNullReference(blockScope, localVariableBinding, aSTNode, this.nullCheckTypes[i11], addNullInfoFrom);
                        }
                    } else {
                        int nullStatus = addNullInfoFrom.nullStatus(localVariableBinding);
                        if (nullStatus != 4) {
                            FlowContext flowContext = this.parent;
                            Expression expression2 = (Expression) aSTNode;
                            TypeBinding[] typeBindingArr = this.providedExpectedTypes[i21];
                            i11 = i21;
                            i12 = 3;
                            flowContext.recordNullityMismatch(blockScope, expression2, typeBindingArr[0], typeBindingArr[1], addNullInfoFrom, nullStatus, null);
                            i17 = i17;
                            i13 = 128;
                        } else {
                            i11 = i21;
                            i12 = 3;
                            i13 = 128;
                        }
                    }
                    i21 = i11 + 1;
                    i18 = i13;
                    i20 = i12;
                    i19 = 16;
                    i16 = 1025;
                    i15 = 2048;
                } else {
                    i11 = i21;
                    i12 = i20;
                    i13 = i18;
                    if (addNullInfoFrom.isDefinitelyNull(localVariableBinding)) {
                        this.nullReferences[i11] = null;
                        blockScope.problemReporter().localVariableNullReference(localVariableBinding, aSTNode);
                        i21 = i11 + 1;
                        i18 = i13;
                        i20 = i12;
                        i19 = 16;
                        i16 = 1025;
                        i15 = 2048;
                    }
                    if (this.nullCheckTypes[i11] == i12) {
                    }
                    this.parent.recordUsingNullReference(blockScope, localVariableBinding, aSTNode, this.nullCheckTypes[i11], addNullInfoFrom);
                    i21 = i11 + 1;
                    i18 = i13;
                    i20 = i12;
                    i19 = 16;
                    i16 = 1025;
                    i15 = 2048;
                }
            }
        } else {
            int i30 = 128;
            int i31 = 0;
            while (i31 < this.nullCount) {
                ASTNode aSTNode2 = this.nullReferences[i31];
                LocalVariableBinding localVariableBinding2 = this.nullLocals[i31];
                FlowInfo addNullInfoFrom2 = this.nullInfos[i31] != null ? addPotentialNullInfoFrom.copy().addNullInfoFrom(this.nullInfos[i31]) : addPotentialNullInfoFrom;
                int i32 = this.nullCheckTypes[i31] & (-61441);
                if (i32 != 3) {
                    if (i32 == 16) {
                        checkUnboxing(blockScope, (Expression) aSTNode2, addNullInfoFrom2);
                    } else if (i32 != i30) {
                        if (i32 != i17 && i32 != 1025) {
                            if (i32 != 2048) {
                                i10 = 256;
                                if (i32 != 256) {
                                    if (i32 != 257) {
                                        if (i32 != 512) {
                                        }
                                    }
                                    Expression expression3 = (Expression) aSTNode2;
                                    if (addNullInfoFrom2.isDefinitelyNull(localVariableBinding2)) {
                                        this.nullReferences[i31] = null;
                                        int i33 = this.nullCheckTypes[i31];
                                        int i34 = i33 & FlowContext.CONTEXT_MASK;
                                        if (i34 != i10) {
                                            if (i34 != 512) {
                                                if (i34 != 768) {
                                                    c10 = '\u0400';
                                                    if (i34 == 1024) {
                                                        blockScope.problemReporter().localVariableNullInstanceof(localVariableBinding2, expression3);
                                                    }
                                                } else {
                                                    c10 = '\u0400';
                                                    blockScope.problemReporter().localVariableRedundantNullAssignment(localVariableBinding2, expression3);
                                                }
                                            } else if ((i33 & 255) == 1 && (expression3.implicitConversion & 1024) != 0) {
                                                blockScope.problemReporter().localVariableNullReference(localVariableBinding2, expression3);
                                            } else {
                                                blockScope.problemReporter().localVariableNullComparedToNonNull(localVariableBinding2, expression3);
                                            }
                                        } else if ((i33 & 255) == 1 && (expression3.implicitConversion & 1024) != 0) {
                                            blockScope.problemReporter().localVariableNullReference(localVariableBinding2, expression3);
                                        } else if ((i33 & 4096) == 0) {
                                            blockScope.problemReporter().localVariableRedundantCheckOnNull(localVariableBinding2, expression3);
                                        }
                                    } else if (addNullInfoFrom2.isPotentiallyNull(localVariableBinding2)) {
                                        int i35 = this.nullCheckTypes[i31];
                                        int i36 = i35 & FlowContext.CONTEXT_MASK;
                                        if (i36 == i10) {
                                            this.nullReferences[i31] = null;
                                            z11 = true;
                                            if ((i35 & 255) == 1) {
                                                if ((expression3.implicitConversion & 1024) != 0) {
                                                    blockScope.problemReporter().localVariablePotentialNullReference(localVariableBinding2, expression3);
                                                }
                                            }
                                        } else if (i36 == 512) {
                                            this.nullReferences[i31] = null;
                                            z11 = true;
                                            if ((i35 & 255) == 1) {
                                                if ((expression3.implicitConversion & 1024) != 0) {
                                                    blockScope.problemReporter().localVariablePotentialNullReference(localVariableBinding2, expression3);
                                                }
                                            }
                                        }
                                    }
                                }
                                if (addNullInfoFrom2.isDefinitelyNonNull(localVariableBinding2)) {
                                    this.nullReferences[i31] = null;
                                    int i37 = this.nullCheckTypes[i31];
                                    if ((i37 & (-61441)) != 512) {
                                        blockScope.problemReporter().localVariableNonNullComparedToNull(localVariableBinding2, aSTNode2);
                                    } else if ((i37 & 4096) == 0) {
                                        blockScope.problemReporter().localVariableRedundantCheckOnNonNull(localVariableBinding2, aSTNode2);
                                    }
                                }
                                Expression expression32 = (Expression) aSTNode2;
                                if (addNullInfoFrom2.isDefinitelyNull(localVariableBinding2)) {
                                }
                            } else if (addNullInfoFrom2.nullStatus(localVariableBinding2) != 4 && (fakedTrackingVariable = localVariableBinding2.closeTracker) != null && !fakedTrackingVariable.hasDefinitelyNoResource(addNullInfoFrom2) && !fakedTrackingVariable.isClosedInFinallyOfEnclosing(blockScope)) {
                                int findMostSpecificStatus = fakedTrackingVariable.findMostSpecificStatus(addNullInfoFrom2, blockScope, null);
                                fakedTrackingVariable.recordErrorLocation(this.nullReferences[i31], findMostSpecificStatus);
                                fakedTrackingVariable.reportRecordedErrors(blockScope, findMostSpecificStatus, addNullInfoFrom2.reachMode() != 0);
                                this.nullReferences[i31] = null;
                            }
                        }
                        i10 = 256;
                        Expression expression322 = (Expression) aSTNode2;
                        if (addNullInfoFrom2.isDefinitelyNull(localVariableBinding2)) {
                        }
                    } else {
                        int nullStatus2 = addNullInfoFrom2.nullStatus(localVariableBinding2);
                        if (nullStatus2 != 4) {
                            char[][] nonNullAnnotationName = blockScope.environment().getNonNullAnnotationName();
                            ProblemReporter problemReporter = blockScope.problemReporter();
                            Expression expression4 = (Expression) aSTNode2;
                            TypeBinding[] typeBindingArr2 = this.providedExpectedTypes[i31];
                            problemReporter.nullityMismatch(expression4, typeBindingArr2[0], typeBindingArr2[1], nullStatus2, nonNullAnnotationName);
                        }
                    }
                } else if (addNullInfoFrom2.isDefinitelyNull(localVariableBinding2)) {
                    this.nullReferences[i31] = null;
                    blockScope.problemReporter().localVariableNullReference(localVariableBinding2, aSTNode2);
                } else if (addNullInfoFrom2.isPotentiallyNull(localVariableBinding2)) {
                    this.nullReferences[i31] = null;
                    blockScope.problemReporter().localVariablePotentialNullReference(localVariableBinding2, aSTNode2);
                }
                i31++;
                i17 = 769;
                i30 = 128;
            }
        }
        if (z10) {
            this.initsOnBreak.addPotentialNullInfoFrom(addPotentialNullInfoFrom);
            for (int i38 = 0; i38 < this.breakTargetsCount; i38++) {
                this.breakTargetContexts[i38].initsOnBreak.addPotentialNullInfoFrom(addPotentialNullInfoFrom);
            }
        }
    }
}
