package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class OR_OR_Expression extends BinaryExpression {
    int mergedInitStateIndex;
    int rightInitStateIndex;

    public OR_OR_Expression(Expression expression, Expression expression2, int i10) {
        super(expression, expression2, i10);
        this.rightInitStateIndex = -1;
        this.mergedInitStateIndex = -1;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        Constant optimizedBooleanConstant = this.left.optimizedBooleanConstant();
        Constant constant = Constant.NotAConstant;
        boolean z10 = optimizedBooleanConstant != constant && optimizedBooleanConstant.booleanValue();
        if (optimizedBooleanConstant != constant && !optimizedBooleanConstant.booleanValue()) {
            UnconditionalFlowInfo unconditionalInits = this.left.analyseCode(blockScope, flowContext, flowInfo).unconditionalInits();
            flowContext.expireNullCheckedFieldInfo();
            FlowInfo analyseCode = this.right.analyseCode(blockScope, flowContext, unconditionalInits);
            flowContext.expireNullCheckedFieldInfo();
            this.mergedInitStateIndex = blockScope.methodScope().recordInitializationStates(analyseCode);
            return analyseCode;
        }
        FlowInfo analyseCode2 = this.left.analyseCode(blockScope, flowContext, flowInfo);
        if ((flowContext.tagBits & 4) == 0) {
            flowContext.expireNullCheckedFieldInfo();
        }
        UnconditionalFlowInfo unconditionalCopy = analyseCode2.initsWhenFalse().unconditionalCopy();
        this.rightInitStateIndex = blockScope.methodScope().recordInitializationStates(unconditionalCopy);
        int reachMode = unconditionalCopy.reachMode();
        if (z10 && (unconditionalCopy.reachMode() & 3) == 0) {
            blockScope.problemReporter().fakeReachable(this.right);
            unconditionalCopy.setReachMode(1);
        }
        FlowInfo analyseCode3 = this.right.analyseCode(blockScope, flowContext, unconditionalCopy);
        if ((flowContext.tagBits & 4) == 0) {
            flowContext.expireNullCheckedFieldInfo();
        }
        this.left.checkNPEbyUnboxing(blockScope, flowContext, flowInfo);
        this.right.checkNPEbyUnboxing(blockScope, flowContext, analyseCode2.initsWhenFalse());
        FlowInfo conditional = FlowInfo.conditional(analyseCode2.initsWhenTrue().unconditionalCopy().addPotentialInitializationsFrom(analyseCode3.unconditionalInitsWithoutSideEffect()).unconditionalInits().mergedWith(analyseCode3.safeInitsWhenTrue().setReachMode(reachMode).unconditionalInits()), analyseCode3.initsWhenFalse());
        this.mergedInitStateIndex = blockScope.methodScope().recordInitializationStates(conditional);
        return conditional;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x008a, code lost:
    
        if (r15 != false) goto L50;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10 = codeStream.position;
        Constant constant = this.constant;
        Constant constant2 = Constant.NotAConstant;
        if (constant != constant2) {
            if (z10) {
                codeStream.generateConstant(constant, this.implicitConversion);
            }
            codeStream.recordPositionsFrom(i10, this.sourceStart);
            return;
        }
        Constant constant3 = this.right.constant;
        if (constant3 != constant2) {
            if (constant3.booleanValue()) {
                this.left.generateCode(blockScope, codeStream, false);
                if (z10) {
                    codeStream.iconst_1();
                }
            } else {
                this.left.generateCode(blockScope, codeStream, z10);
            }
            int i11 = this.mergedInitStateIndex;
            if (i11 != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i11);
            }
            codeStream.generateImplicitConversion(this.implicitConversion);
            codeStream.recordPositionsFrom(i10, this.sourceStart);
            return;
        }
        BranchLabel branchLabel = new BranchLabel(codeStream);
        Constant optimizedBooleanConstant = this.left.optimizedBooleanConstant();
        boolean z11 = optimizedBooleanConstant != constant2;
        boolean z12 = z11 && optimizedBooleanConstant.booleanValue();
        Constant optimizedBooleanConstant2 = this.right.optimizedBooleanConstant();
        boolean z13 = optimizedBooleanConstant2 != constant2;
        boolean z14 = z13 && optimizedBooleanConstant2.booleanValue();
        if (z11) {
            this.left.generateCode(blockScope, codeStream, false);
        } else {
            this.left.generateOptimizedBoolean(blockScope, codeStream, branchLabel, null, true);
        }
        int i12 = this.rightInitStateIndex;
        if (i12 != -1) {
            codeStream.addDefinitelyAssignedVariables(blockScope, i12);
        }
        if (z13) {
            this.right.generateCode(blockScope, codeStream, false);
        } else {
            this.right.generateOptimizedBoolean(blockScope, codeStream, branchLabel, null, z10);
        }
        int i13 = this.mergedInitStateIndex;
        if (i13 != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i13);
        }
        if (!z10) {
            branchLabel.place();
            return;
        }
        if (z11 && z12) {
            codeStream.iconst_1();
            codeStream.recordPositionsFrom(codeStream.position, this.left.sourceEnd);
        } else {
            if (z13 && z14) {
                codeStream.iconst_1();
                codeStream.recordPositionsFrom(codeStream.position, this.left.sourceEnd);
            } else {
                codeStream.iconst_0();
            }
            if (branchLabel.forwardReferenceCount() <= 0) {
                branchLabel.place();
            } else if ((this.bits & 16) != 0) {
                codeStream.generateImplicitConversion(this.implicitConversion);
                codeStream.generateReturnBytecode(this);
                branchLabel.place();
                codeStream.iconst_1();
            } else {
                BranchLabel branchLabel2 = new BranchLabel(codeStream);
                codeStream.goto_(branchLabel2);
                codeStream.decrStackSize(1);
                branchLabel.place();
                codeStream.iconst_1();
                branchLabel2.place();
            }
        }
        codeStream.generateImplicitConversion(this.implicitConversion);
        codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
    }

    @Override
    public void generateOptimizedBoolean(BlockScope blockScope, CodeStream codeStream, BranchLabel branchLabel, BranchLabel branchLabel2, boolean z10) {
        Constant constant = this.constant;
        Constant constant2 = Constant.NotAConstant;
        if (constant != constant2) {
            super.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, z10);
            return;
        }
        Constant constant3 = this.right.constant;
        if (constant3 != constant2 && !constant3.booleanValue()) {
            int i10 = codeStream.position;
            this.left.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, z10);
            int i11 = this.mergedInitStateIndex;
            if (i11 != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i11);
            }
            codeStream.recordPositionsFrom(i10, this.sourceStart);
            return;
        }
        Constant optimizedBooleanConstant = this.left.optimizedBooleanConstant();
        boolean z11 = optimizedBooleanConstant != constant2;
        boolean z12 = z11 && optimizedBooleanConstant.booleanValue();
        Constant optimizedBooleanConstant2 = this.right.optimizedBooleanConstant();
        boolean z13 = optimizedBooleanConstant2 != constant2;
        boolean z14 = z13 && optimizedBooleanConstant2.booleanValue();
        if (branchLabel2 == null) {
            if (branchLabel != null) {
                this.left.generateOptimizedBoolean(blockScope, codeStream, branchLabel, null, !z11);
                if (z12) {
                    if (z10) {
                        codeStream.goto_(branchLabel);
                    }
                    codeStream.recordPositionsFrom(codeStream.position, this.left.sourceEnd);
                } else {
                    int i12 = this.rightInitStateIndex;
                    if (i12 != -1) {
                        codeStream.addDefinitelyAssignedVariables(blockScope, i12);
                    }
                    this.right.generateOptimizedBoolean(blockScope, codeStream, branchLabel, null, z10 && !z13);
                    if (z10 && z14) {
                        codeStream.goto_(branchLabel);
                        codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                    }
                }
            }
        } else if (branchLabel == null) {
            BranchLabel branchLabel3 = new BranchLabel(codeStream);
            this.left.generateOptimizedBoolean(blockScope, codeStream, branchLabel3, null, !z11);
            if (z12) {
                branchLabel3.place();
            } else {
                int i13 = this.rightInitStateIndex;
                if (i13 != -1) {
                    codeStream.addDefinitelyAssignedVariables(blockScope, i13);
                }
                this.right.generateOptimizedBoolean(blockScope, codeStream, null, branchLabel2, z10 && !z13);
                int i14 = codeStream.position;
                if (z10 && z13 && !z14) {
                    codeStream.goto_(branchLabel2);
                    codeStream.recordPositionsFrom(i14, this.sourceEnd);
                }
                branchLabel3.place();
            }
        }
        int i15 = this.mergedInitStateIndex;
        if (i15 != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i15);
        }
    }

    @Override
    public boolean isCompactableOperation() {
        return false;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        TypeBinding resolveType = super.resolveType(blockScope);
        Binding directBinding = Expression.getDirectBinding(this.left);
        if (directBinding != null && directBinding == Expression.getDirectBinding(this.right) && !(this.right instanceof Assignment)) {
            blockScope.problemReporter().comparingIdenticalExpressions(this);
        }
        return resolveType;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            this.left.traverse(aSTVisitor, blockScope);
            this.right.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }
}
