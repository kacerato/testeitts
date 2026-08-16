package org.eclipse.jdt.internal.compiler.flow;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.core.JavaElement;

public class FinallyFlowContext extends TryFlowContext {
    int assignCount;
    Reference[] finalAssignments;
    VariableBinding[] finalVariables;
    int[] nullCheckTypes;
    int nullCount;
    LocalVariableBinding[] nullLocals;
    ASTNode[] nullReferences;
    public FlowContext tryContext;

    public FinallyFlowContext(FlowContext flowContext, ASTNode aSTNode, ExceptionHandlingFlowContext exceptionHandlingFlowContext) {
        super(flowContext, aSTNode);
        this.tryContext = exceptionHandlingFlowContext;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x01fd A[LOOP:1: B:12:0x01fa->B:13:0x01fd, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void complainOnDeferredChecks(FlowInfo flowInfo, BlockScope blockScope) {
        int i10;
        FlowContext localParent;
        for (int i11 = 0; i11 < this.assignCount; i11++) {
            VariableBinding variableBinding = this.finalVariables[i11];
            if (variableBinding != null) {
                if (variableBinding instanceof FieldBinding) {
                    FieldBinding fieldBinding = (FieldBinding) variableBinding;
                    if (flowInfo.isPotentiallyAssigned(fieldBinding)) {
                        blockScope.problemReporter().duplicateInitializationOfBlankFinalField(fieldBinding, this.finalAssignments[i11]);
                        for (localParent = getLocalParent(); localParent != null; localParent = localParent.getLocalParent()) {
                            localParent.removeFinalAssignmentIfAny(this.finalAssignments[i11]);
                        }
                    }
                } else {
                    LocalVariableBinding localVariableBinding = (LocalVariableBinding) variableBinding;
                    if (flowInfo.isPotentiallyAssigned(localVariableBinding)) {
                        variableBinding.tagBits &= -2049;
                        if (variableBinding.isFinal()) {
                            blockScope.problemReporter().duplicateInitializationOfFinalLocal(localVariableBinding, this.finalAssignments[i11]);
                            while (localParent != null) {
                            }
                        }
                    }
                }
            }
        }
        if ((this.tagBits & 1) != 0) {
            int i12 = 0;
            while (i12 < this.nullCount) {
                ASTNode aSTNode = this.nullReferences[i12];
                int i13 = this.nullCheckTypes[i12];
                int i14 = i13 & (-61441);
                if (i14 != 16) {
                    if (i14 != 128) {
                        this.parent.recordUsingNullReference(blockScope, this.nullLocals[i12], aSTNode, i13, flowInfo);
                    } else {
                        int nullStatus = flowInfo.nullStatus(this.nullLocals[i12]);
                        if (nullStatus != 4) {
                            TypeBinding[] typeBindingArr = this.providedExpectedTypes[i12];
                            i10 = i12;
                            this.parent.recordNullityMismatch(blockScope, (Expression) aSTNode, typeBindingArr[0], typeBindingArr[1], flowInfo, nullStatus, null);
                        }
                    }
                    i10 = i12;
                } else {
                    i10 = i12;
                    checkUnboxing(blockScope, (Expression) aSTNode, flowInfo);
                }
                i12 = i10 + 1;
            }
            return;
        }
        for (int i15 = 0; i15 < this.nullCount; i15++) {
            ASTNode aSTNode2 = this.nullReferences[i15];
            LocalVariableBinding localVariableBinding2 = this.nullLocals[i15];
            int i16 = this.nullCheckTypes[i15] & (-61441);
            if (i16 != 3) {
                if (i16 == 16) {
                    checkUnboxing(blockScope, (Expression) aSTNode2, flowInfo);
                } else if (i16 != 128) {
                    if (i16 != 769 && i16 != 1025) {
                        if (i16 != 256) {
                            if (i16 != 257) {
                                if (i16 != 512) {
                                    if (i16 != 513) {
                                    }
                                }
                            }
                        }
                        if (flowInfo.isDefinitelyNonNull(localVariableBinding2)) {
                            int i17 = this.nullCheckTypes[i15];
                            if ((i17 & (-61441)) != 512) {
                                blockScope.problemReporter().localVariableNonNullComparedToNull(localVariableBinding2, aSTNode2);
                            } else if ((i17 & 4096) == 0) {
                                blockScope.problemReporter().localVariableRedundantCheckOnNonNull(localVariableBinding2, aSTNode2);
                            }
                        }
                    }
                    Expression expression = (Expression) aSTNode2;
                    if (flowInfo.isDefinitelyNull(localVariableBinding2)) {
                        int i18 = this.nullCheckTypes[i15];
                        int i19 = (-61696) & i18;
                        if (i19 != 256) {
                            if (i19 != 512) {
                                if (i19 == 768) {
                                    blockScope.problemReporter().localVariableRedundantNullAssignment(localVariableBinding2, expression);
                                } else if (i19 == 1024) {
                                    blockScope.problemReporter().localVariableNullInstanceof(localVariableBinding2, expression);
                                }
                            } else if ((i18 & 255) != 1 || (expression.implicitConversion & 1024) == 0) {
                                blockScope.problemReporter().localVariableNullComparedToNonNull(localVariableBinding2, expression);
                            } else {
                                blockScope.problemReporter().localVariableNullReference(localVariableBinding2, expression);
                            }
                        } else if ((i18 & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                            blockScope.problemReporter().localVariableNullReference(localVariableBinding2, expression);
                        } else if ((i18 & 4096) == 0) {
                            blockScope.problemReporter().localVariableRedundantCheckOnNull(localVariableBinding2, expression);
                        }
                    } else if (flowInfo.isPotentiallyNull(localVariableBinding2)) {
                        int i20 = this.nullCheckTypes[i15];
                        int i21 = (-61696) & i20;
                        if (i21 == 256) {
                            this.nullReferences[i15] = null;
                            if ((i20 & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                                blockScope.problemReporter().localVariablePotentialNullReference(localVariableBinding2, expression);
                            }
                        } else if (i21 == 512) {
                            this.nullReferences[i15] = null;
                            if ((i20 & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                                blockScope.problemReporter().localVariablePotentialNullReference(localVariableBinding2, expression);
                            }
                        }
                    }
                } else {
                    int nullStatus2 = flowInfo.nullStatus(localVariableBinding2);
                    if (nullStatus2 != 4) {
                        char[][] nonNullAnnotationName = blockScope.environment().getNonNullAnnotationName();
                        ProblemReporter problemReporter = blockScope.problemReporter();
                        Expression expression2 = (Expression) aSTNode2;
                        TypeBinding[] typeBindingArr2 = this.providedExpectedTypes[i15];
                        problemReporter.nullityMismatch(expression2, typeBindingArr2[0], typeBindingArr2[1], nullStatus2, nonNullAnnotationName);
                    }
                }
            } else if (flowInfo.isDefinitelyNull(localVariableBinding2)) {
                blockScope.problemReporter().localVariableNullReference(localVariableBinding2, aSTNode2);
            } else if (flowInfo.isPotentiallyNull(localVariableBinding2)) {
                blockScope.problemReporter().localVariablePotentialNullReference(localVariableBinding2, aSTNode2);
            }
        }
    }

    @Override
    public String individualToString() {
        StringBuffer stringBuffer = new StringBuffer("Finally flow context");
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
        if (i10 != 1 && ((this.tagBits & 1) == 0 || i10 == 2)) {
            return false;
        }
        recordProvidedExpectedTypes(typeBinding, typeBinding2, this.nullCount);
        recordNullReference(expression.localVariableBinding(), expression, i11, flowInfo);
        return true;
    }

    @Override
    public boolean isSubRoutine() {
        return true;
    }

    @Override
    public boolean recordFinalAssignment(VariableBinding variableBinding, Reference reference) {
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
        } else {
            LocalVariableBinding[] localVariableBindingArr = this.nullLocals;
            if (i11 == localVariableBindingArr.length) {
                int i12 = i11 * 2;
                LocalVariableBinding[] localVariableBindingArr2 = new LocalVariableBinding[i12];
                this.nullLocals = localVariableBindingArr2;
                System.arraycopy(localVariableBindingArr, 0, localVariableBindingArr2, 0, i11);
                ASTNode[] aSTNodeArr = this.nullReferences;
                ASTNode[] aSTNodeArr2 = new ASTNode[i12];
                this.nullReferences = aSTNodeArr2;
                System.arraycopy(aSTNodeArr, 0, aSTNodeArr2, 0, this.nullCount);
                int[] iArr = this.nullCheckTypes;
                int[] iArr2 = new int[i12];
                this.nullCheckTypes = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, this.nullCount);
            }
        }
        LocalVariableBinding[] localVariableBindingArr3 = this.nullLocals;
        int i13 = this.nullCount;
        localVariableBindingArr3[i13] = localVariableBinding;
        this.nullReferences[i13] = aSTNode;
        int[] iArr3 = this.nullCheckTypes;
        this.nullCount = i13 + 1;
        iArr3[i13] = i10;
    }

    @Override
    public void recordUnboxing(Scope scope, Expression expression, int i10, FlowInfo flowInfo) {
        if (i10 == 2) {
            super.recordUnboxing(scope, expression, i10, flowInfo);
        } else {
            recordNullReference(null, expression, 16, flowInfo);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:90:0x0131, code lost:
    
        if (r7 != 513) goto L161;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void recordUsingNullReference(Scope scope, LocalVariableBinding localVariableBinding, ASTNode aSTNode, int i10, FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 3) != 0 || flowInfo.isDefinitelyUnknown(localVariableBinding)) {
            return;
        }
        int i11 = this.tagBits;
        int i12 = i10 | (i11 & 4096);
        int i13 = (-61441) & i12;
        if ((i11 & 1) != 0) {
            if (i13 != 3) {
                if (i13 == 769 || i13 == 1025 || i13 == 256 || i13 == 257 || i13 == 512 || i13 == 513) {
                    Expression expression = (Expression) aSTNode;
                    if (flowInfo.cannotBeNull(localVariableBinding)) {
                        if (i13 == 512) {
                            if ((i12 & 4096) == 0) {
                                scope.problemReporter().localVariableRedundantCheckOnNonNull(localVariableBinding, expression);
                            }
                            flowInfo.initsWhenFalse().setReachMode(2);
                            return;
                        } else {
                            if (i13 == 256) {
                                scope.problemReporter().localVariableNonNullComparedToNull(localVariableBinding, expression);
                                flowInfo.initsWhenTrue().setReachMode(2);
                                return;
                            }
                            return;
                        }
                    }
                    if (flowInfo.canOnlyBeNull(localVariableBinding)) {
                        int i14 = (-61696) & i12;
                        if (i14 == 256) {
                            if ((i12 & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                                scope.problemReporter().localVariableNullReference(localVariableBinding, expression);
                                return;
                            }
                            if ((i12 & 4096) == 0) {
                                scope.problemReporter().localVariableRedundantCheckOnNull(localVariableBinding, expression);
                            }
                            flowInfo.initsWhenFalse().setReachMode(2);
                            return;
                        }
                        if (i14 == 512) {
                            if ((i12 & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                                scope.problemReporter().localVariableNullReference(localVariableBinding, expression);
                                return;
                            } else {
                                scope.problemReporter().localVariableNullComparedToNonNull(localVariableBinding, expression);
                                flowInfo.initsWhenTrue().setReachMode(2);
                                return;
                            }
                        }
                        if (i14 == 768) {
                            scope.problemReporter().localVariableRedundantNullAssignment(localVariableBinding, expression);
                            return;
                        } else if (i14 == 1024) {
                            scope.problemReporter().localVariableNullInstanceof(localVariableBinding, expression);
                            return;
                        }
                    } else if (flowInfo.isPotentiallyNull(localVariableBinding)) {
                        int i15 = (-61696) & i12;
                        if (i15 != 256) {
                            if (i15 == 512 && (i12 & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                                scope.problemReporter().localVariablePotentialNullReference(localVariableBinding, expression);
                                return;
                            }
                        } else if ((i12 & 255) == 1 && (expression.implicitConversion & 1024) != 0) {
                            scope.problemReporter().localVariablePotentialNullReference(localVariableBinding, expression);
                            return;
                        }
                    }
                }
            } else {
                if (flowInfo.cannotBeNull(localVariableBinding)) {
                    return;
                }
                if (flowInfo.canOnlyBeNull(localVariableBinding)) {
                    scope.problemReporter().localVariableNullReference(localVariableBinding, aSTNode);
                    return;
                }
            }
        } else if (i13 != 3) {
            if (i13 != 769 && i13 != 1025) {
                if (i13 != 256) {
                    if (i13 != 257) {
                        if (i13 != 512) {
                        }
                    }
                }
                if (flowInfo.isDefinitelyNonNull(localVariableBinding)) {
                    if (i13 != 512) {
                        scope.problemReporter().localVariableNonNullComparedToNull(localVariableBinding, aSTNode);
                        flowInfo.initsWhenTrue().setReachMode(2);
                        return;
                    } else {
                        if ((i12 & 4096) == 0) {
                            scope.problemReporter().localVariableRedundantCheckOnNonNull(localVariableBinding, aSTNode);
                        }
                        flowInfo.initsWhenFalse().setReachMode(2);
                        return;
                    }
                }
            }
            Expression expression2 = (Expression) aSTNode;
            if (flowInfo.isDefinitelyNull(localVariableBinding)) {
                int i16 = (-61696) & i12;
                if (i16 == 256) {
                    if ((i12 & 255) == 1 && (expression2.implicitConversion & 1024) != 0) {
                        scope.problemReporter().localVariableNullReference(localVariableBinding, expression2);
                        return;
                    }
                    if ((i12 & 4096) == 0) {
                        scope.problemReporter().localVariableRedundantCheckOnNull(localVariableBinding, expression2);
                    }
                    flowInfo.initsWhenFalse().setReachMode(2);
                    return;
                }
                if (i16 == 512) {
                    if ((i12 & 255) == 1 && (expression2.implicitConversion & 1024) != 0) {
                        scope.problemReporter().localVariableNullReference(localVariableBinding, expression2);
                        return;
                    } else {
                        scope.problemReporter().localVariableNullComparedToNonNull(localVariableBinding, expression2);
                        flowInfo.initsWhenTrue().setReachMode(2);
                        return;
                    }
                }
                if (i16 == 768) {
                    scope.problemReporter().localVariableRedundantNullAssignment(localVariableBinding, expression2);
                    return;
                } else if (i16 == 1024) {
                    scope.problemReporter().localVariableNullInstanceof(localVariableBinding, expression2);
                    return;
                }
            } else if (flowInfo.isPotentiallyNull(localVariableBinding)) {
                int i17 = (-61696) & i12;
                if (i17 != 256) {
                    if (i17 == 512 && (i12 & 255) == 1 && (expression2.implicitConversion & 1024) != 0) {
                        scope.problemReporter().localVariablePotentialNullReference(localVariableBinding, expression2);
                        return;
                    }
                } else if ((i12 & 255) == 1 && (expression2.implicitConversion & 1024) != 0) {
                    scope.problemReporter().localVariablePotentialNullReference(localVariableBinding, expression2);
                    return;
                }
            }
        } else if (flowInfo.isDefinitelyNull(localVariableBinding)) {
            scope.problemReporter().localVariableNullReference(localVariableBinding, aSTNode);
            return;
        } else if (flowInfo.isPotentiallyNull(localVariableBinding)) {
            scope.problemReporter().localVariablePotentialNullReference(localVariableBinding, aSTNode);
            return;
        } else if (flowInfo.isDefinitelyNonNull(localVariableBinding)) {
            return;
        }
        recordNullReference(localVariableBinding, aSTNode, i12, flowInfo);
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
}
