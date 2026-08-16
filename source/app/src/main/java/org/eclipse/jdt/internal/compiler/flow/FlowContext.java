package org.eclipse.jdt.internal.compiler.flow;

import java.util.ArrayList;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FakedTrackingVariable;
import org.eclipse.jdt.internal.compiler.ast.LabeledStatement;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.NullAnnotationMatching;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SubRoutineStatement;
import org.eclipse.jdt.internal.compiler.ast.ThrowStatement;
import org.eclipse.jdt.internal.compiler.ast.TryStatement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.CatchParameterBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;

public class FlowContext implements TypeConstants {
    public static final int ASSIGN_TO_NONNULL = 128;
    public static final int CAN_ONLY_NON_NULL = 2;
    public static final int CAN_ONLY_NULL = 1;
    public static final int CAN_ONLY_NULL_NON_NULL = 0;
    public static final int CHECK_MASK = 255;
    public static final int CONTEXT_MASK = -61696;
    public static final int DEFER_NULL_DIAGNOSTIC = 1;
    public static final int EXIT_RESOURCE = 2048;
    public static final int HIDE_NULL_COMPARISON_WARNING = 4096;
    public static final int HIDE_NULL_COMPARISON_WARNING_MASK = 61440;
    public static final int INSIDE_NEGATION = 4;
    public static final int IN_ASSIGNMENT = 768;
    public static final int IN_COMPARISON_NON_NULL = 512;
    public static final int IN_COMPARISON_NULL = 256;
    public static final int IN_INSTANCEOF = 1024;
    public static final int IN_UNBOXING = 16;
    public static final int MAY_NULL = 3;
    public static final FlowContext NotContinuableContext = new FlowContext(null, null, true);
    public static final int PREEMPT_NULL_DIAGNOSTIC = 2;
    public ASTNode associatedNode;
    public int conditionalLevel;
    public FlowInfo initsOnFinally;
    public FlowContext parent;
    public int tagBits;
    public TypeBinding[][] providedExpectedTypes = null;
    private Reference[] nullCheckedFieldReferences = null;
    private int[] timesToLiveForNullCheckInfo = null;

    public FlowContext(FlowContext flowContext, ASTNode aSTNode, boolean z10) {
        this.conditionalLevel = -1;
        this.parent = flowContext;
        this.associatedNode = aSTNode;
        if (flowContext != null) {
            if ((flowContext.tagBits & 3) != 0) {
                this.tagBits |= 1;
            }
            this.initsOnFinally = flowContext.initsOnFinally;
            this.conditionalLevel = flowContext.conditionalLevel;
            if (z10) {
                copyNullCheckedFieldsFrom(flowContext);
            }
        }
    }

    public BranchLabel breakLabel() {
        return null;
    }

    public void checkExceptionHandlers(TypeBinding typeBinding, ASTNode aSTNode, FlowInfo flowInfo, BlockScope blockScope) {
        checkExceptionHandlers(typeBinding, aSTNode, flowInfo, blockScope, false);
    }

    public void checkUnboxing(Scope scope, Expression expression, FlowInfo flowInfo) {
        FlowContext flowContext;
        int nullStatus = expression.nullStatus(flowInfo, this);
        if ((nullStatus & 2) != 0) {
            scope.problemReporter().nullUnboxing(expression, expression.resolvedType);
            return;
        }
        if ((nullStatus & 16) != 0) {
            scope.problemReporter().potentialNullUnboxing(expression, expression.resolvedType);
        } else if ((nullStatus & 4) == 0 && (flowContext = this.parent) != null) {
            flowContext.recordUnboxing(scope, expression, 1, flowInfo);
        }
    }

    public BranchLabel continueLabel() {
        return null;
    }

    public void copyNullCheckedFieldsFrom(FlowContext flowContext) {
        Reference[] referenceArr = flowContext.nullCheckedFieldReferences;
        if (referenceArr == null || referenceArr.length <= 0 || referenceArr[0] == null) {
            return;
        }
        this.nullCheckedFieldReferences = referenceArr;
        this.timesToLiveForNullCheckInfo = flowContext.timesToLiveForNullCheckInfo;
    }

    public void expireNullCheckedFieldInfo() {
        if (this.nullCheckedFieldReferences == null) {
            return;
        }
        int i10 = 0;
        while (true) {
            Reference[] referenceArr = this.nullCheckedFieldReferences;
            if (i10 >= referenceArr.length) {
                return;
            }
            int[] iArr = this.timesToLiveForNullCheckInfo;
            int i11 = iArr[i10] - 1;
            iArr[i10] = i11;
            if (i11 == 0) {
                referenceArr[i10] = null;
            }
            i10++;
        }
    }

    public void extendTimeToLiveForNullCheckedField(int i10) {
        if (this.timesToLiveForNullCheckInfo == null) {
            return;
        }
        int i11 = 0;
        while (true) {
            int[] iArr = this.timesToLiveForNullCheckInfo;
            if (i11 >= iArr.length) {
                return;
            }
            int i12 = iArr[i11];
            if (i12 > 0) {
                iArr[i11] = i12 + i10;
            }
            i11++;
        }
    }

    public FlowContext getInitializationContext() {
        return null;
    }

    public FlowInfo getInitsForFinalBlankInitializationCheck(TypeBinding typeBinding, FlowInfo flowInfo) {
        FlowContext flowContext = this;
        do {
            if (flowContext instanceof InitializationFlowContext) {
                InitializationFlowContext initializationFlowContext = (InitializationFlowContext) flowContext;
                if (TypeBinding.equalsEquals(((TypeDeclaration) initializationFlowContext.associatedNode).binding, typeBinding)) {
                    return flowInfo;
                }
                flowInfo = initializationFlowContext.initsBeforeContext;
                flowContext = initializationFlowContext.initializationParent;
            } else if (!(flowContext instanceof ExceptionHandlingFlowContext)) {
                flowContext = flowContext.getLocalParent();
            } else {
                if (flowContext instanceof FieldInitsFakingFlowContext) {
                    return FlowInfo.DEAD_END;
                }
                ExceptionHandlingFlowContext exceptionHandlingFlowContext = (ExceptionHandlingFlowContext) flowContext;
                FlowContext flowContext2 = exceptionHandlingFlowContext.initializationParent;
                if (flowContext2 == null) {
                    flowContext2 = exceptionHandlingFlowContext.parent;
                }
                flowContext = flowContext2;
            }
        } while (flowContext != null);
        throw new IllegalStateException(typeBinding.debugName());
    }

    public FlowContext getLocalParent() {
        ASTNode aSTNode = this.associatedNode;
        if ((aSTNode instanceof AbstractMethodDeclaration) || (aSTNode instanceof TypeDeclaration) || (aSTNode instanceof LambdaExpression)) {
            return null;
        }
        return this.parent;
    }

    public FlowContext getTargetContextForBreakLabel(char[] cArr) {
        FlowContext flowContext = null;
        for (FlowContext flowContext2 = this; flowContext2 != null; flowContext2 = flowContext2.getLocalParent()) {
            if (flowContext2.isNonReturningContext()) {
                flowContext = flowContext2;
            }
            char[] labelName = flowContext2.labelName();
            if (labelName != null && CharOperation.equals(labelName, cArr)) {
                ((LabeledStatement) flowContext2.associatedNode).bits |= 64;
                return flowContext == null ? flowContext2 : flowContext;
            }
        }
        return null;
    }

    public FlowContext getTargetContextForContinueLabel(char[] cArr) {
        FlowContext flowContext = null;
        FlowContext flowContext2 = null;
        for (FlowContext flowContext3 = this; flowContext3 != null; flowContext3 = flowContext3.getLocalParent()) {
            if (flowContext3.isNonReturningContext()) {
                flowContext2 = flowContext3;
            } else if (flowContext3.isContinuable()) {
                flowContext = flowContext3;
            }
            char[] labelName = flowContext3.labelName();
            if (labelName != null && CharOperation.equals(labelName, cArr)) {
                ASTNode aSTNode = flowContext3.associatedNode;
                ((LabeledStatement) aSTNode).bits |= 64;
                return (flowContext == null || aSTNode.concreteStatement() != flowContext.associatedNode) ? NotContinuableContext : flowContext2 == null ? flowContext : flowContext2;
            }
        }
        return null;
    }

    public FlowContext getTargetContextForDefaultBreak() {
        FlowContext flowContext = null;
        for (FlowContext flowContext2 = this; flowContext2 != null; flowContext2 = flowContext2.getLocalParent()) {
            if (flowContext2.isNonReturningContext()) {
                flowContext = flowContext2;
            }
            if (flowContext2.isBreakable() && flowContext2.labelName() == null) {
                return flowContext == null ? flowContext2 : flowContext;
            }
        }
        return null;
    }

    public FlowContext getTargetContextForDefaultContinue() {
        FlowContext flowContext = null;
        for (FlowContext flowContext2 = this; flowContext2 != null; flowContext2 = flowContext2.getLocalParent()) {
            if (flowContext2.isNonReturningContext()) {
                flowContext = flowContext2;
            }
            if (flowContext2.isContinuable()) {
                return flowContext == null ? flowContext2 : flowContext;
            }
        }
        return null;
    }

    public String individualToString() {
        return "Flow context";
    }

    public FlowInfo initsOnBreak() {
        return FlowInfo.DEAD_END;
    }

    public UnconditionalFlowInfo initsOnReturn() {
        return FlowInfo.DEAD_END;
    }

    public boolean internalRecordNullityMismatch(Expression expression, TypeBinding typeBinding, FlowInfo flowInfo, int i10, TypeBinding typeBinding2, int i11) {
        return false;
    }

    public boolean isBreakable() {
        return false;
    }

    public boolean isContinuable() {
        return false;
    }

    public boolean isNonReturningContext() {
        return false;
    }

    public boolean isNullcheckedFieldAccess(Reference reference) {
        Reference[] referenceArr = this.nullCheckedFieldReferences;
        if (referenceArr == null) {
            return false;
        }
        int length = referenceArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            Reference reference2 = this.nullCheckedFieldReferences[i10];
            if (reference2 != null && reference2.isEquivalent(reference)) {
                return true;
            }
        }
        return false;
    }

    public boolean isSubRoutine() {
        return false;
    }

    public char[] labelName() {
        return null;
    }

    public void markFinallyNullStatus(LocalVariableBinding localVariableBinding, int i10) {
        int i11;
        FlowInfo flowInfo = this.initsOnFinally;
        if (flowInfo == null || (i11 = this.conditionalLevel) == -1) {
            return;
        }
        if (i11 == 0) {
            flowInfo.markNullStatus(localVariableBinding, i10);
            return;
        }
        UnconditionalFlowInfo unconditionalCopy = flowInfo.unconditionalCopy();
        unconditionalCopy.markNullStatus(localVariableBinding, i10);
        this.initsOnFinally = this.initsOnFinally.mergedWith(unconditionalCopy);
    }

    public void mergeFinallyNullInfo(FlowInfo flowInfo) {
        int i10;
        FlowInfo flowInfo2 = this.initsOnFinally;
        if (flowInfo2 == null || (i10 = this.conditionalLevel) == -1) {
            return;
        }
        if (i10 == 0) {
            flowInfo2.addNullInfoFrom(flowInfo);
        } else {
            this.initsOnFinally = flowInfo2.mergedWith(flowInfo.unconditionalCopy());
        }
    }

    public void recordAbruptExit() {
        FlowContext flowContext;
        int i10 = this.conditionalLevel;
        if (i10 > -1) {
            this.conditionalLevel = i10 + 1;
            if ((this instanceof ExceptionHandlingFlowContext) || (flowContext = this.parent) == null) {
                return;
            }
            flowContext.recordAbruptExit();
        }
    }

    public void recordBreakFrom(FlowInfo flowInfo) {
    }

    public void recordBreakTo(FlowContext flowContext) {
    }

    public void recordContinueFrom(FlowContext flowContext, FlowInfo flowInfo) {
    }

    public boolean recordExitAgainstResource(BlockScope blockScope, FlowInfo flowInfo, FakedTrackingVariable fakedTrackingVariable, ASTNode aSTNode) {
        return false;
    }

    public boolean recordFinalAssignment(VariableBinding variableBinding, Reference reference) {
        return true;
    }

    public void recordNullCheckedFieldReference(Reference reference, int i10) {
        Reference[] referenceArr = this.nullCheckedFieldReferences;
        if (referenceArr == null) {
            Reference[] referenceArr2 = new Reference[2];
            referenceArr2[0] = reference;
            this.nullCheckedFieldReferences = referenceArr2;
            this.timesToLiveForNullCheckInfo = new int[]{i10, -1};
            return;
        }
        int length = referenceArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            Reference[] referenceArr3 = this.nullCheckedFieldReferences;
            if (referenceArr3[i11] == null) {
                referenceArr3[i11] = reference;
                this.timesToLiveForNullCheckInfo[i11] = i10;
                return;
            }
        }
        Reference[] referenceArr4 = this.nullCheckedFieldReferences;
        int i12 = length + 2;
        Reference[] referenceArr5 = new Reference[i12];
        this.nullCheckedFieldReferences = referenceArr5;
        System.arraycopy(referenceArr4, 0, referenceArr5, 0, length);
        int[] iArr = this.timesToLiveForNullCheckInfo;
        int[] iArr2 = new int[i12];
        this.timesToLiveForNullCheckInfo = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, length);
        this.nullCheckedFieldReferences[length] = reference;
        this.timesToLiveForNullCheckInfo[length] = i10;
    }

    public void recordNullReference(LocalVariableBinding localVariableBinding, ASTNode aSTNode, int i10, FlowInfo flowInfo) {
    }

    public void recordNullityMismatch(BlockScope blockScope, Expression expression, TypeBinding typeBinding, TypeBinding typeBinding2, FlowInfo flowInfo, int i10, NullAnnotationMatching nullAnnotationMatching) {
        if (typeBinding == null) {
            return;
        }
        if (expression.localVariableBinding() != null) {
            for (FlowContext flowContext = this; flowContext != null; flowContext = flowContext.parent) {
                if (flowContext.internalRecordNullityMismatch(expression, typeBinding, flowInfo, i10, typeBinding2, ((this.tagBits & 4096) == 0 ? 0 : 4096) | 128)) {
                    return;
                }
            }
        }
        if (nullAnnotationMatching != null) {
            blockScope.problemReporter().nullityMismatchingTypeAnnotation(expression, typeBinding, typeBinding2, nullAnnotationMatching);
        } else {
            blockScope.problemReporter().nullityMismatch(expression, typeBinding, typeBinding2, i10, blockScope.environment().getNonNullAnnotationName());
        }
    }

    public void recordProvidedExpectedTypes(TypeBinding typeBinding, TypeBinding typeBinding2, int i10) {
        int i11 = 5;
        if (i10 == 0) {
            this.providedExpectedTypes = new TypeBinding[5];
        } else {
            TypeBinding[][] typeBindingArr = this.providedExpectedTypes;
            if (typeBindingArr == null) {
                while (i11 <= i10) {
                    i11 *= 2;
                }
                this.providedExpectedTypes = new TypeBinding[i11];
            } else if (i10 >= typeBindingArr.length) {
                int length = typeBindingArr.length;
                TypeBinding[][] typeBindingArr2 = new TypeBinding[i10 * 2];
                this.providedExpectedTypes = typeBindingArr2;
                System.arraycopy(typeBindingArr, 0, typeBindingArr2, 0, length);
            }
        }
        this.providedExpectedTypes[i10] = new TypeBinding[]{typeBinding, typeBinding2};
    }

    public void recordReturnFrom(UnconditionalFlowInfo unconditionalFlowInfo) {
    }

    public void recordSettingFinal(VariableBinding variableBinding, Reference reference, FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 1) == 0) {
            for (FlowContext flowContext = this; flowContext != null && flowContext.recordFinalAssignment(variableBinding, reference); flowContext = flowContext.getLocalParent()) {
            }
        }
    }

    public void recordUnboxing(Scope scope, Expression expression, int i10, FlowInfo flowInfo) {
        checkUnboxing(scope, expression, flowInfo);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0031, code lost:
    
        if (r12 != 513) goto L97;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void recordUsingNullReference(Scope scope, LocalVariableBinding localVariableBinding, ASTNode aSTNode, int i10, FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 3) != 0 || flowInfo.isDefinitelyUnknown(localVariableBinding)) {
            return;
        }
        int i11 = i10 | (this.tagBits & 4096);
        int i12 = (-61441) & i11;
        if (i12 != 3) {
            if (i12 != 769 && i12 != 1025) {
                if (i12 != 256) {
                    if (i12 != 257) {
                        if (i12 != 512) {
                        }
                    }
                }
                if (flowInfo.isDefinitelyNonNull(localVariableBinding)) {
                    if (i12 != 512) {
                        scope.problemReporter().localVariableNonNullComparedToNull(localVariableBinding, aSTNode);
                        flowInfo.initsWhenTrue().setReachMode(2);
                        return;
                    } else {
                        if ((i11 & 4096) == 0) {
                            scope.problemReporter().localVariableRedundantCheckOnNonNull(localVariableBinding, aSTNode);
                        }
                        flowInfo.initsWhenFalse().setReachMode(2);
                        return;
                    }
                }
                if (flowInfo.cannotBeDefinitelyNullOrNonNull(localVariableBinding)) {
                    return;
                }
            }
            Expression expression = (Expression) aSTNode;
            if (flowInfo.isDefinitelyNull(localVariableBinding)) {
                int i13 = i11 & CONTEXT_MASK;
                if (i13 == 256) {
                    if ((i11 & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                        scope.problemReporter().localVariableNullReference(localVariableBinding, expression);
                        return;
                    }
                    if ((i11 & 4096) == 0) {
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
                int i14 = i11 & CONTEXT_MASK;
                if (i14 != 256) {
                    if (i14 == 512 && (i11 & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                        scope.problemReporter().localVariablePotentialNullReference(localVariableBinding, expression);
                        return;
                    }
                } else if ((i11 & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                    scope.problemReporter().localVariablePotentialNullReference(localVariableBinding, expression);
                    return;
                }
            } else if (flowInfo.cannotBeDefinitelyNullOrNonNull(localVariableBinding)) {
                return;
            }
        } else if (flowInfo.isDefinitelyNull(localVariableBinding)) {
            scope.problemReporter().localVariableNullReference(localVariableBinding, aSTNode);
            return;
        } else if (flowInfo.isPotentiallyNull(localVariableBinding)) {
            if (localVariableBinding.type.isFreeTypeVariable()) {
                scope.problemReporter().localVariableFreeTypeVariableReference(localVariableBinding, aSTNode);
                return;
            } else {
                scope.problemReporter().localVariablePotentialNullReference(localVariableBinding, aSTNode);
                return;
            }
        }
        FlowContext flowContext = this.parent;
        if (flowContext != null) {
            flowContext.recordUsingNullReference(scope, localVariableBinding, aSTNode, i11, flowInfo);
        }
    }

    public void removeFinalAssignmentIfAny(Reference reference) {
    }

    public SubRoutineStatement subroutine() {
        return null;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        FlowContext flowContext = this;
        int i10 = 0;
        while (true) {
            flowContext = flowContext.parent;
            if (flowContext == null) {
                break;
            }
            i10++;
        }
        int i11 = i10 + 1;
        FlowContext[] flowContextArr = new FlowContext[i11];
        FlowContext flowContext2 = this;
        for (int i12 = i10; i12 >= 0; i12--) {
            flowContextArr[i12] = flowContext2;
            flowContext2 = flowContext2.parent;
        }
        for (int i13 = 0; i13 < i10; i13++) {
            for (int i14 = 0; i14 < i13; i14++) {
                stringBuffer.append('\t');
            }
            stringBuffer.append(flowContextArr[i13].individualToString());
            stringBuffer.append('\n');
        }
        stringBuffer.append('*');
        for (int i15 = 0; i15 < i11; i15++) {
            stringBuffer.append('\t');
        }
        stringBuffer.append(individualToString());
        stringBuffer.append('\n');
        return stringBuffer.toString();
    }

    public void checkExceptionHandlers(TypeBinding typeBinding, ASTNode aSTNode, FlowInfo flowInfo, BlockScope blockScope, boolean z10) {
        FlowInfo flowInfo2;
        int i10;
        int i11;
        if (blockScope.compilerOptions().sourceLevel >= ClassFileConstants.JDK1_7 && (aSTNode instanceof ThrowStatement)) {
            Expression expression = ((ThrowStatement) aSTNode).exception;
            LocalVariableBinding localVariableBinding = expression.localVariableBinding();
            if ((expression instanceof SingleNameReference) && (localVariableBinding instanceof CatchParameterBinding) && localVariableBinding.isEffectivelyFinal()) {
                checkExceptionHandlers(((CatchParameterBinding) localVariableBinding).getPreciseTypes(), aSTNode, flowInfo, blockScope);
                return;
            }
        }
        ArrayList arrayList = null;
        FlowContext flowContext = this;
        while (true) {
            if (flowContext == null) {
                break;
            }
            SubRoutineStatement subroutine = flowContext.subroutine();
            if (subroutine != null && subroutine.isSubRoutineEscaping()) {
                return;
            }
            if (flowContext instanceof ExceptionHandlingFlowContext) {
                ExceptionHandlingFlowContext exceptionHandlingFlowContext = (ExceptionHandlingFlowContext) flowContext;
                ReferenceBinding[] referenceBindingArr = exceptionHandlingFlowContext.handledExceptions;
                if (referenceBindingArr != Binding.NO_EXCEPTIONS) {
                    int length = referenceBindingArr.length;
                    int i12 = 0;
                    boolean z11 = false;
                    while (i12 < length) {
                        ReferenceBinding referenceBinding = referenceBindingArr[i12];
                        int compareTypes = referenceBinding == null ? -1 : Scope.compareTypes(typeBinding, referenceBinding);
                        if (arrayList == null || referenceBinding == null || compareTypes == 0) {
                            flowInfo2 = flowInfo;
                        } else {
                            int size = arrayList.size();
                            for (int i13 = 0; i13 < size; i13++) {
                                ((LoopingFlowContext) arrayList.get(i13)).recordCatchContextOfEscapingException(exceptionHandlingFlowContext, referenceBinding, flowInfo);
                            }
                            flowInfo2 = FlowInfo.DEAD_END;
                        }
                        if (compareTypes == -1) {
                            i10 = i12;
                            i11 = length;
                            exceptionHandlingFlowContext.recordHandlingException(referenceBinding, flowInfo2.unconditionalInits(), typeBinding, typeBinding, aSTNode, z11);
                            z11 = true;
                        } else if (compareTypes != 1) {
                            i10 = i12;
                            i11 = length;
                        } else {
                            i10 = i12;
                            i11 = length;
                            exceptionHandlingFlowContext.recordHandlingException(referenceBinding, flowInfo2.unconditionalInits(), typeBinding, referenceBinding, aSTNode, false);
                        }
                        i12 = i10 + 1;
                        length = i11;
                    }
                    if (z11) {
                        return;
                    }
                }
                if (exceptionHandlingFlowContext.isMethodContext) {
                    if (typeBinding.isUncheckedException(false)) {
                        return;
                    }
                    boolean z12 = exceptionHandlingFlowContext instanceof ExceptionInferenceFlowContext;
                    ASTNode aSTNode2 = exceptionHandlingFlowContext.associatedNode;
                    if (aSTNode2 instanceof AbstractMethodDeclaration) {
                        AbstractMethodDeclaration abstractMethodDeclaration = (AbstractMethodDeclaration) aSTNode2;
                        if (abstractMethodDeclaration.isConstructor() && abstractMethodDeclaration.binding.declaringClass.isAnonymousType()) {
                            z12 = true;
                        }
                    }
                    if (z12) {
                        exceptionHandlingFlowContext.mergeUnhandledException(typeBinding);
                        return;
                    }
                }
            } else if (flowContext instanceof LoopingFlowContext) {
                if (arrayList == null) {
                    arrayList = new ArrayList(5);
                }
                arrayList.add(flowContext);
            }
            flowContext.recordReturnFrom(flowInfo.unconditionalInits());
            if (!z10 && (flowContext instanceof InsideSubRoutineFlowContext)) {
                ASTNode aSTNode3 = flowContext.associatedNode;
                if (aSTNode3 instanceof TryStatement) {
                    flowInfo.addInitializationsFrom(((TryStatement) aSTNode3).subRoutineInits);
                }
            }
            flowContext = flowContext.getLocalParent();
        }
        if (z10) {
            blockScope.problemReporter().unhandledExceptionFromAutoClose(typeBinding, aSTNode);
        } else {
            blockScope.problemReporter().unhandledException(typeBinding, aSTNode);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x0136, code lost:
    
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0137, code lost:
    
        if (r0 < r2) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x013a, code lost:
    
        r1 = r3[r0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x013c, code lost:
    
        if (r1 == null) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x013e, code lost:
    
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x013f, code lost:
    
        if (r4 < r0) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0153, code lost:
    
        if (org.eclipse.jdt.internal.compiler.lookup.TypeBinding.equalsEquals(r3[r4], r1) == false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0156, code lost:
    
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x015b, code lost:
    
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0141, code lost:
    
        r28.problemReporter().unhandledException(r1, r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0139, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void checkExceptionHandlers(TypeBinding[] typeBindingArr, ASTNode aSTNode, FlowInfo flowInfo, BlockScope blockScope) {
        int length;
        TypeBinding typeBinding;
        int i10;
        ReferenceBinding referenceBinding;
        int i11;
        boolean[] zArr;
        int i12;
        ReferenceBinding[] referenceBindingArr;
        int i13;
        FlowInfo flowInfo2;
        if (typeBindingArr != null && (length = typeBindingArr.length) != 0) {
            TypeBinding[] typeBindingArr2 = new TypeBinding[length];
            int i14 = 0;
            System.arraycopy(typeBindingArr, 0, typeBindingArr2, 0, length);
            TypeBinding typeBinding2 = null;
            FlowContext flowContext = this;
            ArrayList arrayList = null;
            int i15 = length;
            while (true) {
                if (flowContext == null) {
                    break;
                }
                SubRoutineStatement subroutine = flowContext.subroutine();
                if (subroutine != null && subroutine.isSubRoutineEscaping()) {
                    return;
                }
                if (flowContext instanceof ExceptionHandlingFlowContext) {
                    ExceptionHandlingFlowContext exceptionHandlingFlowContext = (ExceptionHandlingFlowContext) flowContext;
                    ReferenceBinding[] referenceBindingArr2 = exceptionHandlingFlowContext.handledExceptions;
                    if (referenceBindingArr2 != Binding.NO_EXCEPTIONS) {
                        int length2 = referenceBindingArr2.length;
                        boolean[] zArr2 = new boolean[length];
                        int i16 = i14;
                        while (i16 < length2) {
                            ReferenceBinding referenceBinding2 = referenceBindingArr2[i16];
                            int i17 = i14;
                            while (i17 < length) {
                                TypeBinding typeBinding3 = typeBindingArr2[i17];
                                if (typeBinding3 != null) {
                                    int compareTypes = referenceBinding2 == null ? -1 : Scope.compareTypes(typeBinding3, referenceBinding2);
                                    if (arrayList == null || referenceBinding2 == null || compareTypes == 0) {
                                        i13 = i17;
                                        flowInfo2 = flowInfo;
                                    } else {
                                        i13 = i17;
                                        int i18 = 0;
                                        for (int size = arrayList.size(); i18 < size; size = size) {
                                            ((LoopingFlowContext) arrayList.get(i18)).recordCatchContextOfEscapingException(exceptionHandlingFlowContext, referenceBinding2, flowInfo);
                                            i18++;
                                        }
                                        flowInfo2 = FlowInfo.DEAD_END;
                                    }
                                    if (compareTypes == -1) {
                                        i11 = i16;
                                        zArr = zArr2;
                                        i12 = length2;
                                        referenceBindingArr = referenceBindingArr2;
                                        i10 = i13;
                                        referenceBinding = referenceBinding2;
                                        exceptionHandlingFlowContext.recordHandlingException(referenceBinding2, flowInfo2.unconditionalInits(), typeBinding3, typeBinding3, aSTNode, zArr[i10]);
                                        if (!zArr[i10]) {
                                            zArr[i10] = true;
                                            i15--;
                                        }
                                    } else if (compareTypes != 1) {
                                        i11 = i16;
                                        zArr = zArr2;
                                        i12 = length2;
                                        referenceBindingArr = referenceBindingArr2;
                                        i10 = i13;
                                        referenceBinding = referenceBinding2;
                                    } else {
                                        i10 = i13;
                                        referenceBinding = referenceBinding2;
                                        i11 = i16;
                                        zArr = zArr2;
                                        i12 = length2;
                                        referenceBindingArr = referenceBindingArr2;
                                        exceptionHandlingFlowContext.recordHandlingException(referenceBinding2, flowInfo2.unconditionalInits(), typeBinding3, referenceBinding, aSTNode, false);
                                    }
                                } else {
                                    i10 = i17;
                                    referenceBinding = referenceBinding2;
                                    i11 = i16;
                                    zArr = zArr2;
                                    i12 = length2;
                                    referenceBindingArr = referenceBindingArr2;
                                }
                                i17 = i10 + 1;
                                referenceBinding2 = referenceBinding;
                                i16 = i11;
                                zArr2 = zArr;
                                length2 = i12;
                                referenceBindingArr2 = referenceBindingArr;
                                typeBinding2 = null;
                                i14 = 0;
                            }
                            i16++;
                        }
                        for (int i19 = i14; i19 < length; i19++) {
                            if (zArr2[i19]) {
                                typeBindingArr2[i19] = typeBinding2;
                            }
                        }
                    }
                    if (exceptionHandlingFlowContext.isMethodContext) {
                        for (int i20 = 0; i20 < length; i20++) {
                            TypeBinding typeBinding4 = typeBindingArr2[i20];
                            if (typeBinding4 != null && typeBinding4.isUncheckedException(false)) {
                                typeBindingArr2[i20] = null;
                            }
                        }
                        boolean z10 = exceptionHandlingFlowContext instanceof ExceptionInferenceFlowContext;
                        ASTNode aSTNode2 = exceptionHandlingFlowContext.associatedNode;
                        if (aSTNode2 instanceof AbstractMethodDeclaration) {
                            AbstractMethodDeclaration abstractMethodDeclaration = (AbstractMethodDeclaration) aSTNode2;
                            if (abstractMethodDeclaration.isConstructor() && abstractMethodDeclaration.binding.declaringClass.isAnonymousType()) {
                                z10 = true;
                            }
                        }
                        if (z10) {
                            for (int i21 = 0; i21 < length; i21++) {
                                TypeBinding typeBinding5 = typeBindingArr2[i21];
                                if (typeBinding5 != null) {
                                    exceptionHandlingFlowContext.mergeUnhandledException(typeBinding5);
                                }
                            }
                            return;
                        }
                    } else {
                        i14 = 0;
                        typeBinding = null;
                    }
                } else {
                    typeBinding = typeBinding2;
                    if (flowContext instanceof LoopingFlowContext) {
                        if (arrayList == null) {
                            arrayList = new ArrayList(5);
                        }
                        arrayList.add(flowContext);
                    }
                }
                if (i15 == 0) {
                    return;
                }
                flowContext.recordReturnFrom(flowInfo.unconditionalInits());
                if (flowContext instanceof InsideSubRoutineFlowContext) {
                    ASTNode aSTNode3 = flowContext.associatedNode;
                    if (aSTNode3 instanceof TryStatement) {
                        flowInfo.addInitializationsFrom(((TryStatement) aSTNode3).subRoutineInits);
                    }
                }
                flowContext = flowContext.getLocalParent();
                typeBinding2 = typeBinding;
            }
        }
    }
}
