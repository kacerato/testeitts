package org.eclipse.jdt.internal.compiler.ast;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FinallyFlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.Util;

public class FakedTrackingVariable extends LocalDeclaration {
    private static final int CLOSED_IN_NESTED_METHOD = 8;
    private static final int CLOSE_SEEN = 1;
    private static final int FOREACH_ELEMENT_VAR = 128;
    private static final int OWNED_BY_OUTSIDE = 4;
    private static final int REPORTED_DEFINITIVE_LEAK = 64;
    private static final int REPORTED_EXPLICIT_CLOSE = 16;
    private static final int REPORTED_POTENTIAL_LEAK = 32;
    private static final int SHARED_WITH_OUTSIDE = 2;
    private ASTNode currentAssignment;
    private int globalClosingState;
    public FakedTrackingVariable innerTracker;
    MethodScope methodScope;
    public LocalVariableBinding originalBinding;
    public FakedTrackingVariable outerTracker;
    private HashMap recordedLocations;
    private FlowContext tryContext;
    private static final char[] UNASSIGNED_CLOSEABLE_NAME = "<unassigned Closeable value>".toCharArray();
    private static final char[] UNASSIGNED_CLOSEABLE_NAME_TEMPLATE = "<unassigned Closeable value from line {0}>".toCharArray();
    private static final char[] TEMPLATE_ARGUMENT = "{0}".toCharArray();
    public static boolean TEST_372319 = false;

    public static class IteratorForReporting implements Iterator<FakedTrackingVariable> {
        private static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$FakedTrackingVariable$IteratorForReporting$Stage;
        private final boolean atExit;
        private Iterator<FakedTrackingVariable> iterator;
        private FakedTrackingVariable next;
        private final Scope scope;
        private Stage stage;
        private final Set<FakedTrackingVariable> varSet;

        public enum Stage {
            OuterLess,
            InnerOfProcessed,
            InnerOfNotEnclosing,
            AtExit;

            public static Stage[] valuesCustom() {
                Stage[] valuesCustom = values();
                int length = valuesCustom.length;
                Stage[] stageArr = new Stage[length];
                System.arraycopy(valuesCustom, 0, stageArr, 0, length);
                return stageArr;
            }
        }

        public static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$FakedTrackingVariable$IteratorForReporting$Stage() {
            int[] iArr = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$FakedTrackingVariable$IteratorForReporting$Stage;
            if (iArr != null) {
                return iArr;
            }
            int[] iArr2 = new int[Stage.valuesCustom().length];
            try {
                iArr2[Stage.AtExit.ordinal()] = 4;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr2[Stage.InnerOfNotEnclosing.ordinal()] = 3;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr2[Stage.InnerOfProcessed.ordinal()] = 2;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[Stage.OuterLess.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$FakedTrackingVariable$IteratorForReporting$Stage = iArr2;
            return iArr2;
        }

        public IteratorForReporting(List<FakedTrackingVariable> list, Scope scope, boolean z10) {
            this.varSet = new HashSet(list);
            this.scope = scope;
            this.atExit = z10;
            setUpForStage(Stage.OuterLess);
        }

        private boolean found(FakedTrackingVariable fakedTrackingVariable) {
            this.iterator.remove();
            this.next = fakedTrackingVariable;
            return true;
        }

        private void setUpForStage(Stage stage) {
            this.iterator = this.varSet.iterator();
            this.stage = stage;
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0080  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0095 A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0052  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0077 A[EDGE_INSN: B:37:0x0077->B:31:0x0077 BREAK  A[LOOP:0: B:21:0x0049->B:36:?], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0097  */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean hasNext() {
            int i10 = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$FakedTrackingVariable$IteratorForReporting$Stage()[this.stage.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            throw new IllegalStateException("Unexpected Stage " + ((Object) this.stage));
                        }
                        if (!this.atExit && this.iterator.hasNext()) {
                            return found(this.iterator.next());
                        }
                    }
                    while (true) {
                        if (!this.iterator.hasNext()) {
                            break;
                        }
                        FakedTrackingVariable next = this.iterator.next();
                        FakedTrackingVariable fakedTrackingVariable = next.outerTracker;
                        if (!this.varSet.contains(fakedTrackingVariable)) {
                            BlockScope blockScope = fakedTrackingVariable.binding.declaringScope;
                            Scope scope = this.scope;
                            do {
                                scope = scope.parent;
                                if (!(scope instanceof BlockScope)) {
                                    return found(next);
                                }
                            } while (blockScope != scope);
                        }
                    }
                    setUpForStage(Stage.AtExit);
                    return !this.atExit ? false : false;
                }
                while (this.iterator.hasNext()) {
                    FakedTrackingVariable next2 = this.iterator.next();
                    FakedTrackingVariable fakedTrackingVariable2 = next2.outerTracker;
                    if (fakedTrackingVariable2.binding.declaringScope == this.scope && !this.varSet.contains(fakedTrackingVariable2)) {
                        return found(next2);
                    }
                }
                setUpForStage(Stage.InnerOfNotEnclosing);
                while (true) {
                    if (!this.iterator.hasNext()) {
                    }
                }
                setUpForStage(Stage.AtExit);
                if (!this.atExit) {
                }
            }
            while (this.iterator.hasNext()) {
                FakedTrackingVariable next3 = this.iterator.next();
                if (next3.outerTracker == null) {
                    return found(next3);
                }
            }
            setUpForStage(Stage.InnerOfProcessed);
            while (this.iterator.hasNext()) {
            }
            setUpForStage(Stage.InnerOfNotEnclosing);
            while (true) {
                if (!this.iterator.hasNext()) {
                }
            }
            setUpForStage(Stage.AtExit);
            if (!this.atExit) {
            }
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public FakedTrackingVariable next() {
            return this.next;
        }
    }

    public FakedTrackingVariable(LocalVariableBinding localVariableBinding, ASTNode aSTNode, FlowInfo flowInfo, FlowContext flowContext, int i10) {
        super(localVariableBinding.name, aSTNode.sourceStart, aSTNode.sourceEnd);
        this.globalClosingState = 0;
        this.type = new SingleTypeReference(TypeConstants.OBJECT, (this.sourceStart << 32) + this.sourceEnd);
        this.methodScope = localVariableBinding.declaringScope.methodScope();
        this.originalBinding = localVariableBinding;
        while (true) {
            if (flowContext == null) {
                break;
            }
            if (flowContext instanceof FinallyFlowContext) {
                this.tryContext = ((FinallyFlowContext) flowContext).tryContext;
                break;
            }
            flowContext = flowContext.parent;
        }
        resolve(localVariableBinding.declaringScope);
        if (i10 != 0) {
            flowInfo.markNullStatus(this.binding, i10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0053, code lost:
    
        if (r2 != 1) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void analyseCloseableAllocation(BlockScope blockScope, FlowInfo flowInfo, AllocationExpression allocationExpression) {
        FakedTrackingVariable fakedTrackingVariable;
        int nullStatus;
        if (((ReferenceBinding) allocationExpression.resolvedType).hasTypeBit(8)) {
            FakedTrackingVariable fakedTrackingVariable2 = allocationExpression.closeTracker;
            if (fakedTrackingVariable2 != null) {
                fakedTrackingVariable2.withdraw();
                allocationExpression.closeTracker = null;
                return;
            }
            return;
        }
        if (!((ReferenceBinding) allocationExpression.resolvedType).hasTypeBit(4)) {
            handleRegularResource(blockScope, flowInfo, allocationExpression);
            return;
        }
        Expression[] expressionArr = allocationExpression.arguments;
        if (expressionArr != null && expressionArr.length > 0) {
            FakedTrackingVariable findCloseTracker = findCloseTracker(blockScope, flowInfo, expressionArr[0]);
            if (findCloseTracker != null) {
                FakedTrackingVariable fakedTrackingVariable3 = findCloseTracker;
                do {
                    fakedTrackingVariable = allocationExpression.closeTracker;
                    if (fakedTrackingVariable3 == fakedTrackingVariable) {
                        return;
                    } else {
                        fakedTrackingVariable3 = fakedTrackingVariable3.innerTracker;
                    }
                } while (fakedTrackingVariable3 != null);
                if (fakedTrackingVariable == null) {
                    allocationExpression.closeTracker = new FakedTrackingVariable(blockScope, allocationExpression, flowInfo, 1);
                } else {
                    FlowInfo flowInfo2 = blockScope.finallyInfo;
                    if (flowInfo2 != null) {
                        nullStatus = flowInfo2.nullStatus(fakedTrackingVariable.binding);
                    }
                }
                nullStatus = 2;
                FakedTrackingVariable fakedTrackingVariable4 = allocationExpression.closeTracker.innerTracker;
                if (fakedTrackingVariable4 != null) {
                    findCloseTracker = pickMoreUnsafe(fakedTrackingVariable4, findCloseTracker, blockScope, flowInfo);
                }
                FakedTrackingVariable fakedTrackingVariable5 = allocationExpression.closeTracker;
                fakedTrackingVariable5.innerTracker = findCloseTracker;
                findCloseTracker.outerTracker = fakedTrackingVariable5;
                flowInfo.markNullStatus(fakedTrackingVariable5.binding, nullStatus);
                if (nullStatus != 2) {
                    while (findCloseTracker != null) {
                        flowInfo.markNullStatus(findCloseTracker.binding, nullStatus);
                        findCloseTracker.globalClosingState |= allocationExpression.closeTracker.globalClosingState;
                        findCloseTracker = findCloseTracker.innerTracker;
                    }
                    return;
                }
                return;
            }
            if (isAnyCloseable(allocationExpression.arguments[0].resolvedType)) {
                FakedTrackingVariable fakedTrackingVariable6 = allocationExpression.closeTracker;
                if (fakedTrackingVariable6 != null) {
                    fakedTrackingVariable6.withdraw();
                    allocationExpression.closeTracker = null;
                    return;
                }
                return;
            }
        }
        handleRegularResource(blockScope, flowInfo, allocationExpression);
    }

    private static FakedTrackingVariable analyseCloseableExpression(FlowInfo flowInfo, FlowContext flowContext, LocalVariableBinding localVariableBinding, ASTNode aSTNode, Expression expression, FakedTrackingVariable fakedTrackingVariable) {
        boolean z10;
        while (true) {
            if (!(expression instanceof Assignment)) {
                if (!(expression instanceof CastExpression)) {
                    break;
                }
                expression = ((CastExpression) expression).expression;
            } else {
                expression = ((Assignment) expression).expression;
            }
        }
        TypeBinding typeBinding = expression.resolvedType;
        if (!(typeBinding instanceof ReferenceBinding) || !((ReferenceBinding) typeBinding).hasTypeBit(8)) {
            z10 = false;
        } else {
            if (!isBlacklistedMethod(expression)) {
                return null;
            }
            z10 = true;
        }
        if (expression instanceof AllocationExpression) {
            FakedTrackingVariable fakedTrackingVariable2 = ((AllocationExpression) expression).closeTracker;
            if (fakedTrackingVariable2 == null || fakedTrackingVariable2.originalBinding != null) {
                return fakedTrackingVariable2;
            }
            return null;
        }
        if ((expression instanceof MessageSend) || (expression instanceof ArrayReference)) {
            FakedTrackingVariable fakedTrackingVariable3 = new FakedTrackingVariable(localVariableBinding, aSTNode, flowInfo, flowContext, 16);
            if (!z10) {
                fakedTrackingVariable3.globalClosingState |= 2;
            }
            return fakedTrackingVariable3;
        }
        if ((expression.bits & 7) == 1 || ((expression instanceof QualifiedNameReference) && ((QualifiedNameReference) expression).isFieldAccess())) {
            FakedTrackingVariable fakedTrackingVariable4 = new FakedTrackingVariable(localVariableBinding, aSTNode, flowInfo, flowContext, 1);
            fakedTrackingVariable4.globalClosingState |= 4;
            return fakedTrackingVariable4;
        }
        FakedTrackingVariable fakedTrackingVariable5 = localVariableBinding.closeTracker;
        if (fakedTrackingVariable5 != null) {
            return fakedTrackingVariable5;
        }
        FakedTrackingVariable fakedTrackingVariable6 = new FakedTrackingVariable(localVariableBinding, aSTNode, flowInfo, flowContext, 1);
        LocalVariableBinding localVariableBinding2 = expression.localVariableBinding();
        if (localVariableBinding2 != null && localVariableBinding2.isParameter()) {
            fakedTrackingVariable6.globalClosingState |= 4;
        }
        return fakedTrackingVariable6;
    }

    public static void cleanUpAfterAssignment(BlockScope blockScope, int i10, Expression expression) {
        FakedTrackingVariable fakedTrackingVariable;
        while (true) {
            if (!(expression instanceof Assignment)) {
                if (!(expression instanceof CastExpression)) {
                    break;
                } else {
                    expression = ((CastExpression) expression).expression;
                }
            } else {
                expression = ((Assignment) expression).expression;
            }
        }
        if (!(expression instanceof AllocationExpression)) {
            LocalVariableBinding localVariableBinding = expression.localVariableBinding();
            if (localVariableBinding == null || (fakedTrackingVariable = localVariableBinding.closeTracker) == null || (i10 & 1) == 0) {
                return;
            }
            fakedTrackingVariable.withdraw();
            return;
        }
        AllocationExpression allocationExpression = (AllocationExpression) expression;
        FakedTrackingVariable fakedTrackingVariable2 = allocationExpression.closeTracker;
        if (fakedTrackingVariable2 == null || fakedTrackingVariable2.originalBinding != null) {
            return;
        }
        fakedTrackingVariable2.withdraw();
        allocationExpression.closeTracker = null;
    }

    private static boolean containsAllocation(SwitchExpression switchExpression) {
        Iterator<Expression> it = switchExpression.resultExpressions.iterator();
        while (it.hasNext()) {
            if (containsAllocation(it.next())) {
                return true;
            }
        }
        return false;
    }

    private static FakedTrackingVariable findCloseTracker(BlockScope blockScope, FlowInfo flowInfo, Expression expression) {
        while (expression instanceof Assignment) {
            Assignment assignment = (Assignment) expression;
            LocalVariableBinding localVariableBinding = assignment.localVariableBinding();
            if (localVariableBinding != null) {
                return localVariableBinding.closeTracker;
            }
            expression = assignment.expression;
        }
        if (!(expression instanceof SingleNameReference)) {
            if (expression instanceof AllocationExpression) {
                return ((AllocationExpression) expression).closeTracker;
            }
            return null;
        }
        LocalVariableBinding localVariableBinding2 = expression.localVariableBinding();
        if (localVariableBinding2 != null) {
            return localVariableBinding2.closeTracker;
        }
        return null;
    }

    public static FakedTrackingVariable getCloseTrackingVariable(Expression expression, FlowInfo flowInfo, FlowContext flowContext) {
        while (true) {
            if (!(expression instanceof CastExpression)) {
                if (!(expression instanceof Assignment)) {
                    break;
                }
                expression = ((Assignment) expression).expression;
            } else {
                expression = ((CastExpression) expression).expression;
            }
        }
        if (expression instanceof ConditionalExpression) {
            ConditionalExpression conditionalExpression = (ConditionalExpression) expression;
            FakedTrackingVariable closeTrackingVariable = getCloseTrackingVariable(conditionalExpression.valueIfFalse, flowInfo, flowContext);
            return closeTrackingVariable != null ? closeTrackingVariable : getCloseTrackingVariable(conditionalExpression.valueIfTrue, flowInfo, flowContext);
        }
        if (expression instanceof SwitchExpression) {
            Iterator<Expression> it = ((SwitchExpression) expression).resultExpressions.iterator();
            while (it.hasNext()) {
                FakedTrackingVariable closeTrackingVariable2 = getCloseTrackingVariable(it.next(), flowInfo, flowContext);
                if (closeTrackingVariable2 != null) {
                    return closeTrackingVariable2;
                }
            }
            return null;
        }
        if (expression instanceof SingleNameReference) {
            Binding binding = ((SingleNameReference) expression).binding;
            if (binding instanceof LocalVariableBinding) {
                LocalVariableBinding localVariableBinding = (LocalVariableBinding) binding;
                FakedTrackingVariable fakedTrackingVariable = localVariableBinding.closeTracker;
                if (fakedTrackingVariable != null) {
                    return fakedTrackingVariable;
                }
                if (!isAnyCloseable(expression.resolvedType) || (localVariableBinding.tagBits & 8192) != 0) {
                    return null;
                }
                localVariableBinding.closeTracker = new FakedTrackingVariable(localVariableBinding, localVariableBinding.declaration, flowInfo, flowContext, 1);
                if (localVariableBinding.isParameter()) {
                    localVariableBinding.closeTracker.globalClosingState |= 4;
                }
                return localVariableBinding.closeTracker;
            }
        } else if (expression instanceof AllocationExpression) {
            return ((AllocationExpression) expression).closeTracker;
        }
        return null;
    }

    private int getNullStatusAggressively(LocalVariableBinding localVariableBinding, FlowInfo flowInfo) {
        if (flowInfo == FlowInfo.DEAD_END) {
            return 1;
        }
        int reachMode = flowInfo.reachMode();
        if (reachMode != 0) {
            try {
                flowInfo.tagBits &= -4;
            } catch (Throwable th2) {
                flowInfo.tagBits = reachMode | flowInfo.tagBits;
                throw th2;
            }
        }
        int nullStatus = flowInfo.nullStatus(localVariableBinding);
        if (TEST_372319) {
            try {
                Thread.sleep(5L);
            } catch (InterruptedException unused) {
            }
        }
        flowInfo.tagBits = reachMode | flowInfo.tagBits;
        if ((nullStatus & 2) != 0) {
            return (nullStatus & 36) != 0 ? 16 : 2;
        }
        if ((nullStatus & 4) != 0) {
            return (nullStatus & 16) != 0 ? 16 : 4;
        }
        if ((nullStatus & 16) != 0) {
            return 16;
        }
        return nullStatus;
    }

    private static void handleRegularResource(BlockScope blockScope, FlowInfo flowInfo, AllocationExpression allocationExpression) {
        FakedTrackingVariable fakedTrackingVariable = allocationExpression.closeTracker;
        if (fakedTrackingVariable == null || fakedTrackingVariable.originalBinding == null) {
            allocationExpression.closeTracker = new FakedTrackingVariable(blockScope, allocationExpression, flowInfo, 1);
        } else {
            int nullStatus = flowInfo.nullStatus(fakedTrackingVariable.binding);
            if (nullStatus != 4 && nullStatus != 1 && !flowInfo.isDefinitelyNull(fakedTrackingVariable.originalBinding)) {
                ASTNode aSTNode = fakedTrackingVariable.currentAssignment;
                if (!(aSTNode instanceof LocalDeclaration)) {
                    allocationExpression.closeTracker.recordErrorLocation(aSTNode, nullStatus);
                }
            }
        }
        flowInfo.markAsDefinitelyNull(allocationExpression.closeTracker.binding);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:68:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void handleResourceAssignment(BlockScope blockScope, FlowInfo flowInfo, FlowInfo flowInfo2, FlowContext flowContext, ASTNode aSTNode, Expression expression, LocalVariableBinding localVariableBinding) {
        FakedTrackingVariable fakedTrackingVariable;
        FakedTrackingVariable fakedTrackingVariable2;
        FakedTrackingVariable fakedTrackingVariable3 = localVariableBinding.closeTracker;
        if (fakedTrackingVariable3 != null) {
            int nullStatus = flowInfo.nullStatus(localVariableBinding);
            if (nullStatus == 2 || nullStatus == 1) {
                fakedTrackingVariable = fakedTrackingVariable3;
                fakedTrackingVariable2 = null;
                if (expression.resolvedType != TypeBinding.NULL) {
                    FakedTrackingVariable closeTrackingVariable = getCloseTrackingVariable(expression, flowInfo2, flowContext);
                    if (closeTrackingVariable != null) {
                        FakedTrackingVariable fakedTrackingVariable4 = localVariableBinding.closeTracker;
                        if (fakedTrackingVariable4 == null) {
                            if (closeTrackingVariable.originalBinding != null) {
                                localVariableBinding.closeTracker = closeTrackingVariable;
                            }
                            if (closeTrackingVariable.currentAssignment == aSTNode) {
                                closeTrackingVariable.globalClosingState &= -135;
                            }
                        } else {
                            if ((expression instanceof AllocationExpression) || (expression instanceof ConditionalExpression) || (expression instanceof SwitchExpression)) {
                                if (closeTrackingVariable == fakedTrackingVariable2) {
                                    return;
                                }
                                if (fakedTrackingVariable4 == closeTrackingVariable && (closeTrackingVariable.globalClosingState & 4) != 0) {
                                    localVariableBinding.closeTracker = new FakedTrackingVariable(localVariableBinding, aSTNode, flowInfo2, flowContext, 2);
                                }
                            }
                            localVariableBinding.closeTracker = closeTrackingVariable;
                        }
                    } else if (fakedTrackingVariable != null) {
                        if (fakedTrackingVariable.tryContext != null) {
                            for (FlowContext flowContext2 = flowContext; flowContext2 != null; flowContext2 = flowContext2.parent) {
                                if (fakedTrackingVariable.tryContext == flowContext2) {
                                    break;
                                }
                            }
                        }
                        if ((fakedTrackingVariable.globalClosingState & 134) == 0 && flowInfo2.hasNullInfoFor(fakedTrackingVariable.binding)) {
                            flowInfo2.markAsDefinitelyNull(fakedTrackingVariable.binding);
                        }
                        localVariableBinding.closeTracker = analyseCloseableExpression(flowInfo2, flowContext, localVariableBinding, aSTNode, expression, fakedTrackingVariable);
                    } else {
                        FakedTrackingVariable analyseCloseableExpression = analyseCloseableExpression(flowInfo2, flowContext, localVariableBinding, aSTNode, expression, null);
                        if (analyseCloseableExpression != null) {
                            localVariableBinding.closeTracker = analyseCloseableExpression;
                            if ((analyseCloseableExpression.globalClosingState & 134) == 0) {
                                flowInfo2.markAsDefinitelyNull(analyseCloseableExpression.binding);
                            }
                        }
                    }
                }
                if (fakedTrackingVariable2 == null) {
                    FakedTrackingVariable fakedTrackingVariable5 = fakedTrackingVariable2.innerTracker;
                    if (fakedTrackingVariable5 != null && fakedTrackingVariable5.binding.declaringScope == blockScope) {
                        fakedTrackingVariable5.outerTracker = null;
                        blockScope.pruneWrapperTrackingVar(fakedTrackingVariable2);
                        return;
                    } else {
                        int nullStatus2 = flowInfo.nullStatus(fakedTrackingVariable2.binding);
                        if (nullStatus2 != 4) {
                            fakedTrackingVariable2.recordErrorLocation(aSTNode, nullStatus2);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            fakedTrackingVariable = fakedTrackingVariable3;
        } else {
            fakedTrackingVariable = null;
        }
        fakedTrackingVariable2 = fakedTrackingVariable;
        if (expression.resolvedType != TypeBinding.NULL) {
        }
        if (fakedTrackingVariable2 == null) {
        }
    }

    public static boolean isAnyCloseable(TypeBinding typeBinding) {
        return (typeBinding instanceof ReferenceBinding) && ((ReferenceBinding) typeBinding).hasTypeBit(3);
    }

    private static boolean isBlacklistedMethod(Expression expression) {
        MethodBinding methodBinding;
        if ((expression instanceof MessageSend) && (methodBinding = ((MessageSend) expression).binding) != null && methodBinding.isValidBinding()) {
            return CharOperation.equals(methodBinding.declaringClass.compoundName, TypeConstants.JAVA_NIO_FILE_FILES);
        }
        return false;
    }

    public static void markForeachElementVar(LocalDeclaration localDeclaration) {
        FakedTrackingVariable fakedTrackingVariable;
        LocalVariableBinding localVariableBinding = localDeclaration.binding;
        if (localVariableBinding == null || (fakedTrackingVariable = localVariableBinding.closeTracker) == null) {
            return;
        }
        fakedTrackingVariable.globalClosingState |= 128;
    }

    public static FlowInfo markPassedToOutside(BlockScope blockScope, Expression expression, FlowInfo flowInfo, FlowContext flowContext, boolean z10) {
        FakedTrackingVariable closeTrackingVariable = getCloseTrackingVariable(expression, flowInfo, flowContext);
        if (closeTrackingVariable == null) {
            return flowInfo;
        }
        FlowInfo copy = z10 ? flowInfo : flowInfo.copy();
        int i10 = z10 ? 4 : 2;
        do {
            closeTrackingVariable.globalClosingState |= i10;
            if (blockScope.methodScope() != closeTrackingVariable.methodScope) {
                closeTrackingVariable.globalClosingState |= 8;
            }
            copy.markAsDefinitelyNonNull(closeTrackingVariable.binding);
            closeTrackingVariable = closeTrackingVariable.innerTracker;
        } while (closeTrackingVariable != null);
        return z10 ? copy : FlowInfo.conditional(flowInfo, copy);
    }

    private boolean neverClosedAtLocations() {
        HashMap hashMap = this.recordedLocations;
        if (hashMap == null) {
            return true;
        }
        Iterator it = hashMap.values().iterator();
        while (it.hasNext()) {
            if (!it.next().equals(2)) {
                return false;
            }
        }
        return true;
    }

    private static FakedTrackingVariable pick(FakedTrackingVariable fakedTrackingVariable, FakedTrackingVariable fakedTrackingVariable2, BlockScope blockScope) {
        fakedTrackingVariable2.withdraw();
        return fakedTrackingVariable;
    }

    private static FakedTrackingVariable pickMoreUnsafe(FakedTrackingVariable fakedTrackingVariable, FakedTrackingVariable fakedTrackingVariable2, BlockScope blockScope, FlowInfo flowInfo) {
        int nullStatus = flowInfo.nullStatus(fakedTrackingVariable.binding);
        int nullStatus2 = flowInfo.nullStatus(fakedTrackingVariable2.binding);
        if (nullStatus == 2 || nullStatus2 == 4) {
            return pick(fakedTrackingVariable, fakedTrackingVariable2, blockScope);
        }
        if (nullStatus == 4 || nullStatus2 == 2) {
            return pick(fakedTrackingVariable2, fakedTrackingVariable, blockScope);
        }
        if ((nullStatus & 16) == 0 && (nullStatus2 & 16) != 0) {
            return pick(fakedTrackingVariable2, fakedTrackingVariable, blockScope);
        }
        return pick(fakedTrackingVariable, fakedTrackingVariable2, blockScope);
    }

    public static void preConnectTrackerAcrossAssignment(ASTNode aSTNode, LocalVariableBinding localVariableBinding, Expression expression, FlowInfo flowInfo) {
        if (containsAllocation(expression)) {
            FakedTrackingVariable fakedTrackingVariable = localVariableBinding.closeTracker;
            if (fakedTrackingVariable == null && expression.resolvedType != TypeBinding.NULL) {
                fakedTrackingVariable = new FakedTrackingVariable(localVariableBinding, aSTNode, flowInfo, null, 1);
                if (localVariableBinding.isParameter()) {
                    fakedTrackingVariable.globalClosingState |= 4;
                }
            }
            if (fakedTrackingVariable != null) {
                fakedTrackingVariable.currentAssignment = aSTNode;
                preConnectTrackerAcrossAssignment(aSTNode, localVariableBinding, flowInfo, fakedTrackingVariable, expression);
            }
        }
    }

    public int findMostSpecificStatus(FlowInfo flowInfo, BlockScope blockScope, BlockScope blockScope2) {
        int i10 = 1;
        for (FakedTrackingVariable fakedTrackingVariable = this; fakedTrackingVariable != null; fakedTrackingVariable = fakedTrackingVariable.innerTracker) {
            LocalVariableBinding localVariableBinding = fakedTrackingVariable.binding;
            int nullStatusAggressively = getNullStatusAggressively(localVariableBinding, flowInfo);
            if (blockScope2 != null) {
                nullStatusAggressively = mergeCloseStatus(blockScope2, nullStatusAggressively, localVariableBinding, blockScope);
            }
            if (nullStatusAggressively == 4) {
                return nullStatusAggressively;
            }
            if (i10 == 2 || i10 == 1) {
                i10 = nullStatusAggressively;
            }
        }
        return i10;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
    }

    public boolean hasDefinitelyNoResource(FlowInfo flowInfo) {
        LocalVariableBinding localVariableBinding = this.originalBinding;
        if (localVariableBinding == null) {
            return false;
        }
        if (flowInfo.isDefinitelyNull(localVariableBinding)) {
            return true;
        }
        return (flowInfo.isDefinitelyAssigned(this.originalBinding) || flowInfo.isPotentiallyAssigned(this.originalBinding)) ? false : true;
    }

    public boolean isClosedInFinallyOfEnclosing(BlockScope blockScope) {
        while (true) {
            FlowInfo flowInfo = blockScope.finallyInfo;
            if (flowInfo != null && flowInfo.isDefinitelyNonNull(this.binding)) {
                return true;
            }
            Scope scope = blockScope.parent;
            if (!(scope instanceof BlockScope)) {
                return false;
            }
            blockScope = (BlockScope) scope;
        }
    }

    public boolean isResourceBeingReturned(FakedTrackingVariable fakedTrackingVariable) {
        FakedTrackingVariable fakedTrackingVariable2 = this;
        while (fakedTrackingVariable2 != fakedTrackingVariable) {
            fakedTrackingVariable2 = fakedTrackingVariable2.innerTracker;
            if (fakedTrackingVariable2 == null) {
                return false;
            }
        }
        this.globalClosingState |= 64;
        return true;
    }

    public void markClose(FlowInfo flowInfo, FlowContext flowContext) {
        FakedTrackingVariable fakedTrackingVariable = this;
        do {
            flowInfo.markAsDefinitelyNonNull(fakedTrackingVariable.binding);
            fakedTrackingVariable.globalClosingState |= 1;
            flowContext.markFinallyNullStatus(fakedTrackingVariable.binding, 4);
            fakedTrackingVariable = fakedTrackingVariable.innerTracker;
        } while (fakedTrackingVariable != null);
    }

    public void markClosedInNestedMethod() {
        this.globalClosingState |= 8;
    }

    public int mergeCloseStatus(BlockScope blockScope, int i10, LocalVariableBinding localVariableBinding, BlockScope blockScope2) {
        if (i10 != 4) {
            FlowInfo flowInfo = blockScope.finallyInfo;
            if (flowInfo != null) {
                int nullStatus = flowInfo.nullStatus(localVariableBinding);
                if (nullStatus == 4) {
                    return nullStatus;
                }
                if (nullStatus != 2 && blockScope.finallyInfo.hasNullInfoFor(localVariableBinding)) {
                    i10 = 16;
                }
            }
            if (blockScope != blockScope2) {
                Scope scope = blockScope.parent;
                if (scope instanceof BlockScope) {
                    return mergeCloseStatus((BlockScope) scope, i10, localVariableBinding, blockScope2);
                }
            }
        }
        return i10;
    }

    public String nameForReporting(ASTNode aSTNode, ReferenceContext referenceContext) {
        CompilationResult compilationResult;
        if (this.name == UNASSIGNED_CLOSEABLE_NAME && aSTNode != null && referenceContext != null && (compilationResult = referenceContext.compilationResult()) != null) {
            int[] lineSeparatorPositions = compilationResult.getLineSeparatorPositions();
            int lineNumber = Util.getLineNumber(this.sourceStart, lineSeparatorPositions, 0, lineSeparatorPositions.length - 1);
            if (lineNumber != Util.getLineNumber(aSTNode.sourceStart, lineSeparatorPositions, 0, lineSeparatorPositions.length - 1)) {
                return String.valueOf(CharOperation.replace(UNASSIGNED_CLOSEABLE_NAME_TEMPLATE, TEMPLATE_ARGUMENT, Integer.toString(lineNumber).toCharArray()));
            }
        }
        return String.valueOf(this.name);
    }

    public void recordErrorLocation(ASTNode aSTNode, int i10) {
        if ((this.globalClosingState & 4) != 0) {
            return;
        }
        if (this.recordedLocations == null) {
            this.recordedLocations = new HashMap();
        }
        this.recordedLocations.put(aSTNode, Integer.valueOf(i10));
    }

    public int reportError(ProblemReporter problemReporter, ASTNode aSTNode, int i10) {
        int i11 = this.globalClosingState;
        if ((i11 & 4) != 0) {
            return 0;
        }
        boolean z10 = true;
        if (i10 != 2 ? (i10 & 48) == 0 : (i11 & 8) == 0) {
            z10 = false;
        }
        if (z10) {
            if ((i11 & 96) != 0) {
                return 0;
            }
            problemReporter.potentiallyUnclosedCloseable(this, aSTNode);
        } else {
            if ((i11 & 64) != 0) {
                return 0;
            }
            problemReporter.unclosedCloseable(this, aSTNode);
        }
        int i12 = z10 ? 32 : 64;
        if (aSTNode == null) {
            FakedTrackingVariable fakedTrackingVariable = this;
            do {
                fakedTrackingVariable.globalClosingState |= i12;
                fakedTrackingVariable = fakedTrackingVariable.innerTracker;
            } while (fakedTrackingVariable != null);
        }
        return i12;
    }

    public void reportExplicitClosing(ProblemReporter problemReporter) {
        int i10 = this.globalClosingState;
        if ((i10 & 148) == 0) {
            this.globalClosingState = i10 | 16;
            problemReporter.explicitlyClosedAutoCloseable(this);
        }
    }

    public boolean reportRecordedErrors(Scope scope, int i10, boolean z10) {
        FakedTrackingVariable fakedTrackingVariable = this;
        while (true) {
            if (fakedTrackingVariable.globalClosingState != 0) {
                break;
            }
            fakedTrackingVariable = fakedTrackingVariable.innerTracker;
            if (fakedTrackingVariable == null) {
                if (z10 && neverClosedAtLocations()) {
                    i10 = 2;
                }
                if ((i10 & 50) != 0) {
                    reportError(scope.problemReporter(), null, i10);
                    return true;
                }
            }
        }
        HashMap hashMap = this.recordedLocations;
        int i11 = 0;
        if (hashMap == null) {
            return false;
        }
        boolean z11 = false;
        for (Map.Entry entry : hashMap.entrySet()) {
            i11 |= reportError(scope.problemReporter(), (ASTNode) entry.getKey(), ((Integer) entry.getValue()).intValue());
            z11 = true;
        }
        if (i11 != 0) {
            FakedTrackingVariable fakedTrackingVariable2 = this;
            do {
                fakedTrackingVariable2.globalClosingState |= i11;
                fakedTrackingVariable2 = fakedTrackingVariable2.innerTracker;
            } while (fakedTrackingVariable2 != null);
        }
        return z11;
    }

    @Override
    public void resolve(BlockScope blockScope) {
        LocalVariableBinding localVariableBinding = new LocalVariableBinding(this.name, (TypeBinding) blockScope.getJavaLangObject(), 0, false);
        this.binding = localVariableBinding;
        localVariableBinding.closeTracker = this;
        localVariableBinding.declaringScope = blockScope;
        localVariableBinding.setConstant(Constant.NotAConstant);
        LocalVariableBinding localVariableBinding2 = this.binding;
        localVariableBinding2.useFlag = 1;
        localVariableBinding2.f102483id = blockScope.registerTrackingVariable(this);
    }

    public void withdraw() {
        this.binding.declaringScope.removeTrackingVar(this);
    }

    private static boolean containsAllocation(ASTNode aSTNode) {
        if (aSTNode instanceof AllocationExpression) {
            return true;
        }
        if (aSTNode instanceof ConditionalExpression) {
            ConditionalExpression conditionalExpression = (ConditionalExpression) aSTNode;
            return containsAllocation(conditionalExpression.valueIfTrue) || containsAllocation(conditionalExpression.valueIfFalse);
        }
        if (aSTNode instanceof SwitchExpression) {
            return containsAllocation((SwitchExpression) aSTNode);
        }
        if (aSTNode instanceof CastExpression) {
            return containsAllocation(((CastExpression) aSTNode).expression);
        }
        return false;
    }

    private static void preConnectTrackerAcrossAssignment(ASTNode aSTNode, LocalVariableBinding localVariableBinding, FlowInfo flowInfo, FakedTrackingVariable fakedTrackingVariable, Expression expression) {
        if (expression instanceof AllocationExpression) {
            preConnectTrackerAcrossAssignment(aSTNode, localVariableBinding, flowInfo, (AllocationExpression) expression, fakedTrackingVariable);
            return;
        }
        if (expression instanceof ConditionalExpression) {
            preConnectTrackerAcrossAssignment(aSTNode, localVariableBinding, flowInfo, (ConditionalExpression) expression, fakedTrackingVariable);
        } else if (expression instanceof SwitchExpression) {
            preConnectTrackerAcrossAssignment(aSTNode, localVariableBinding, flowInfo, (SwitchExpression) expression, fakedTrackingVariable);
        } else if (expression instanceof CastExpression) {
            preConnectTrackerAcrossAssignment(aSTNode, localVariableBinding, ((CastExpression) expression).expression, flowInfo);
        }
    }

    private FakedTrackingVariable(BlockScope blockScope, ASTNode aSTNode, FlowInfo flowInfo, int i10) {
        super(UNASSIGNED_CLOSEABLE_NAME, aSTNode.sourceStart, aSTNode.sourceEnd);
        this.globalClosingState = 0;
        this.type = new SingleTypeReference(TypeConstants.OBJECT, (this.sourceStart << 32) + this.sourceEnd);
        this.methodScope = blockScope.methodScope();
        this.originalBinding = null;
        resolve(blockScope);
        if (i10 != 0) {
            flowInfo.markNullStatus(this.binding, i10);
        }
    }

    private static void preConnectTrackerAcrossAssignment(ASTNode aSTNode, LocalVariableBinding localVariableBinding, FlowInfo flowInfo, ConditionalExpression conditionalExpression, FakedTrackingVariable fakedTrackingVariable) {
        preConnectTrackerAcrossAssignment(aSTNode, localVariableBinding, flowInfo, fakedTrackingVariable, conditionalExpression.valueIfFalse);
        preConnectTrackerAcrossAssignment(aSTNode, localVariableBinding, flowInfo, fakedTrackingVariable, conditionalExpression.valueIfTrue);
    }

    private static void preConnectTrackerAcrossAssignment(ASTNode aSTNode, LocalVariableBinding localVariableBinding, FlowInfo flowInfo, SwitchExpression switchExpression, FakedTrackingVariable fakedTrackingVariable) {
        Iterator<Expression> it = switchExpression.resultExpressions.iterator();
        while (it.hasNext()) {
            preConnectTrackerAcrossAssignment(aSTNode, localVariableBinding, flowInfo, fakedTrackingVariable, it.next());
        }
    }

    private static void preConnectTrackerAcrossAssignment(ASTNode aSTNode, LocalVariableBinding localVariableBinding, FlowInfo flowInfo, AllocationExpression allocationExpression, FakedTrackingVariable fakedTrackingVariable) {
        allocationExpression.closeTracker = fakedTrackingVariable;
        Expression[] expressionArr = allocationExpression.arguments;
        if (expressionArr == null || expressionArr.length <= 0) {
            return;
        }
        preConnectTrackerAcrossAssignment(aSTNode, localVariableBinding, expressionArr[0], flowInfo);
    }
}
