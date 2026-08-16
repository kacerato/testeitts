package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.BooleanConstant;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.NullTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class EqualExpression extends BinaryExpression {
    public EqualExpression(Expression expression, Expression expression2, int i10) {
        super(expression, expression2, i10);
    }

    private void analyzeLocalVariable(Expression expression, FlowInfo flowInfo) {
        if (!(expression instanceof SingleNameReference) || (expression.bits & 2) == 0) {
            return;
        }
        LocalVariableBinding localVariableBinding = (LocalVariableBinding) ((SingleNameReference) expression).binding;
        if ((flowInfo.tagBits & 3) == 0) {
            localVariableBinding.useFlag = 1;
        } else if (localVariableBinding.useFlag == 0) {
            localVariableBinding.useFlag = 2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x011b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0125  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void checkNullComparison(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, FlowInfo flowInfo2, FlowInfo flowInfo3) {
        boolean z10;
        boolean z11;
        int i10;
        FieldBinding lastFieldBinding;
        FieldBinding lastFieldBinding2;
        int nullStatus = this.right.nullStatus(flowInfo, flowContext);
        int nullStatus2 = this.left.nullStatus(flowInfo, flowContext);
        boolean z12 = ((this.bits & ASTNode.OperatorMASK) >> 6) == 18;
        if ((flowContext.tagBits & 61440) == 0) {
            if (nullStatus2 == 4 && nullStatus == 2) {
                z10 = blockScope.problemReporter().expressionNonNullComparison(this.left, z12);
                z11 = false;
            } else if (nullStatus2 == 2 && nullStatus == 4) {
                z11 = blockScope.problemReporter().expressionNonNullComparison(this.right, z12);
                z10 = false;
            }
            boolean z13 = z12 ^ ((flowContext.tagBits & 4) != 0);
            if (!z10) {
                LocalVariableBinding localVariableBinding = this.left.localVariableBinding();
                if (localVariableBinding == null) {
                    i10 = 2;
                    if ((this.left instanceof Reference) && (((!z13 && nullStatus == 2) || (z13 && nullStatus == 4)) && blockScope.compilerOptions().enableSyntacticNullAnalysisForFields && (lastFieldBinding2 = ((Reference) this.left).lastFieldBinding()) != null && (lastFieldBinding2.type.tagBits & 2) == 0)) {
                        flowContext.recordNullCheckedFieldReference((Reference) this.left, 1);
                    }
                } else if ((localVariableBinding.type.tagBits & 2) == 0) {
                    i10 = 2;
                    checkVariableComparison(blockScope, flowContext, flowInfo, flowInfo2, flowInfo3, localVariableBinding, nullStatus, this.left);
                }
                if (!z11) {
                    LocalVariableBinding localVariableBinding2 = this.right.localVariableBinding();
                    if (localVariableBinding2 != null) {
                        if ((localVariableBinding2.type.tagBits & 2) == 0) {
                            checkVariableComparison(blockScope, flowContext, flowInfo, flowInfo2, flowInfo3, localVariableBinding2, nullStatus2, this.right);
                        }
                    } else if ((this.right instanceof Reference) && (((!z13 && nullStatus2 == i10) || (z13 && nullStatus2 == 4)) && blockScope.compilerOptions().enableSyntacticNullAnalysisForFields && (lastFieldBinding = ((Reference) this.right).lastFieldBinding()) != null && (lastFieldBinding.type.tagBits & 2) == 0)) {
                        flowContext.recordNullCheckedFieldReference((Reference) this.right, 1);
                    }
                }
                if (!z10 || z11) {
                    if (z12) {
                        flowInfo2.setReachMode(i10);
                        return;
                    } else {
                        flowInfo3.setReachMode(i10);
                        return;
                    }
                }
                return;
            }
            i10 = 2;
            if (!z11) {
            }
            if (z10) {
            }
            if (z12) {
            }
        }
        z10 = false;
        z11 = false;
        boolean z132 = z12 ^ ((flowContext.tagBits & 4) != 0);
        if (!z10) {
        }
        i10 = 2;
        if (!z11) {
        }
        if (z10) {
        }
        if (z12) {
        }
    }

    private void checkVariableComparison(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, FlowInfo flowInfo2, FlowInfo flowInfo3, LocalVariableBinding localVariableBinding, int i10, Expression expression) {
        if (i10 != 2) {
            if (i10 != 4) {
                return;
            }
            if (((this.bits & ASTNode.OperatorMASK) >> 6) != 18) {
                flowContext.recordUsingNullReference(blockScope, localVariableBinding, expression, 257, flowInfo);
                return;
            } else {
                flowContext.recordUsingNullReference(blockScope, localVariableBinding, expression, 513, flowInfo);
                flowInfo2.markAsComparedEqualToNonNull(localVariableBinding);
                return;
            }
        }
        if (((this.bits & ASTNode.OperatorMASK) >> 6) == 18) {
            flowContext.recordUsingNullReference(blockScope, localVariableBinding, expression, 256, flowInfo);
            flowInfo2.markAsComparedEqualToNull(localVariableBinding);
            flowInfo3.markAsComparedEqualToNonNull(localVariableBinding);
        } else {
            flowContext.recordUsingNullReference(blockScope, localVariableBinding, expression, 512, flowInfo);
            flowInfo2.markAsComparedEqualToNonNull(localVariableBinding);
            flowInfo3.markAsComparedEqualToNull(localVariableBinding);
        }
    }

    private boolean isCastNeeded(TypeBinding typeBinding, TypeBinding typeBinding2) {
        if (typeBinding.isParameterizedType()) {
            return typeBinding2.isBaseType();
        }
        if (typeBinding2.isParameterizedType()) {
            return typeBinding.isBaseType();
        }
        return false;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        FlowInfo unconditionalInits;
        FlowInfo analyseCode;
        if (((this.bits & ASTNode.OperatorMASK) >> 6) == 18) {
            Constant constant = this.left.constant;
            Constant constant2 = Constant.NotAConstant;
            if (constant == constant2 || constant.typeID() != 5) {
                Constant constant3 = this.right.constant;
                if (constant3 == constant2 || constant3.typeID() != 5) {
                    unconditionalInits = this.right.analyseCode(blockScope, flowContext, this.left.analyseCode(blockScope, flowContext, flowInfo).unconditionalInits()).unconditionalInits();
                } else if (this.right.constant.booleanValue()) {
                    unconditionalInits = this.left.analyseCode(blockScope, flowContext, flowInfo);
                } else {
                    analyseCode = this.left.analyseCode(blockScope, flowContext, flowInfo).asNegatedCondition();
                    analyzeLocalVariable(this.right, flowInfo);
                    unconditionalInits = analyseCode;
                }
            } else if (this.left.constant.booleanValue()) {
                unconditionalInits = this.right.analyseCode(blockScope, flowContext, flowInfo);
            } else {
                analyseCode = this.right.analyseCode(blockScope, flowContext, flowInfo).asNegatedCondition();
                analyzeLocalVariable(this.left, flowInfo);
                unconditionalInits = analyseCode;
            }
        } else {
            Constant constant4 = this.left.constant;
            Constant constant5 = Constant.NotAConstant;
            if (constant4 == constant5 || constant4.typeID() != 5) {
                Constant constant6 = this.right.constant;
                if (constant6 == constant5 || constant6.typeID() != 5) {
                    unconditionalInits = this.right.analyseCode(blockScope, flowContext, this.left.analyseCode(blockScope, flowContext, flowInfo).unconditionalInits()).unconditionalInits();
                } else if (this.right.constant.booleanValue()) {
                    unconditionalInits = this.left.analyseCode(blockScope, flowContext, flowInfo).asNegatedCondition();
                } else {
                    analyseCode = this.left.analyseCode(blockScope, flowContext, flowInfo);
                    analyzeLocalVariable(this.right, flowInfo);
                    unconditionalInits = analyseCode;
                }
            } else if (this.left.constant.booleanValue()) {
                unconditionalInits = this.right.analyseCode(blockScope, flowContext, flowInfo).asNegatedCondition();
            } else {
                analyseCode = this.right.analyseCode(blockScope, flowContext, flowInfo);
                analyzeLocalVariable(this.left, flowInfo);
                unconditionalInits = analyseCode;
            }
        }
        if ((unconditionalInits instanceof UnconditionalFlowInfo) && (unconditionalInits.tagBits & 3) == 0) {
            unconditionalInits = FlowInfo.conditional(unconditionalInits.copy(), unconditionalInits.copy());
        }
        checkNullComparison(blockScope, flowContext, unconditionalInits, unconditionalInits.initsWhenTrue(), unconditionalInits.initsWhenFalse());
        return unconditionalInits;
    }

    public final void computeConstant(TypeBinding typeBinding, TypeBinding typeBinding2) {
        Constant constant;
        Constant constant2 = this.left.constant;
        Constant constant3 = Constant.NotAConstant;
        if (constant2 == constant3 || (constant = this.right.constant) == constant3) {
            this.constant = constant3;
            return;
        }
        this.constant = Constant.computeConstantOperationEQUAL_EQUAL(constant2, typeBinding.f102482id, constant, typeBinding2.f102482id);
        if (((this.bits & ASTNode.OperatorMASK) >> 6) == 29) {
            this.constant = BooleanConstant.fromValue(!r4.booleanValue());
        }
    }

    public void generateBooleanEqual(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        boolean z11 = ((this.bits & ASTNode.OperatorMASK) >> 6) == 18;
        Constant optimizedBooleanConstant = this.left.optimizedBooleanConstant();
        Constant constant = Constant.NotAConstant;
        if (optimizedBooleanConstant != constant) {
            Constant optimizedBooleanConstant2 = this.right.optimizedBooleanConstant();
            if (optimizedBooleanConstant2 != constant) {
                this.left.generateCode(blockScope, codeStream, false);
                this.right.generateCode(blockScope, codeStream, false);
                if (z10) {
                    boolean booleanValue = optimizedBooleanConstant.booleanValue();
                    boolean booleanValue2 = optimizedBooleanConstant2.booleanValue();
                    if (z11) {
                        if (booleanValue == booleanValue2) {
                            codeStream.iconst_1();
                            return;
                        } else {
                            codeStream.iconst_0();
                            return;
                        }
                    }
                    if (booleanValue != booleanValue2) {
                        codeStream.iconst_1();
                        return;
                    } else {
                        codeStream.iconst_0();
                        return;
                    }
                }
                return;
            }
            if (optimizedBooleanConstant.booleanValue() == z11) {
                this.left.generateCode(blockScope, codeStream, false);
                this.right.generateCode(blockScope, codeStream, z10);
                return;
            }
            if (!z10) {
                this.left.generateCode(blockScope, codeStream, false);
                this.right.generateCode(blockScope, codeStream, false);
                return;
            }
            BranchLabel branchLabel = new BranchLabel(codeStream);
            this.left.generateCode(blockScope, codeStream, false);
            this.right.generateOptimizedBoolean(blockScope, codeStream, null, branchLabel, z10);
            codeStream.iconst_0();
            if ((this.bits & 16) != 0) {
                codeStream.generateImplicitConversion(this.implicitConversion);
                codeStream.generateReturnBytecode(this);
                branchLabel.place();
                codeStream.iconst_1();
                return;
            }
            BranchLabel branchLabel2 = new BranchLabel(codeStream);
            codeStream.goto_(branchLabel2);
            codeStream.decrStackSize(1);
            branchLabel.place();
            codeStream.iconst_1();
            branchLabel2.place();
            return;
        }
        Constant optimizedBooleanConstant3 = this.right.optimizedBooleanConstant();
        if (optimizedBooleanConstant3 == constant) {
            this.left.generateCode(blockScope, codeStream, z10);
            this.right.generateCode(blockScope, codeStream, z10);
            if (z10) {
                if (!z11) {
                    codeStream.ixor();
                    return;
                }
                BranchLabel branchLabel3 = new BranchLabel(codeStream);
                codeStream.if_icmpne(branchLabel3);
                codeStream.iconst_1();
                if ((this.bits & 16) != 0) {
                    codeStream.generateImplicitConversion(this.implicitConversion);
                    codeStream.generateReturnBytecode(this);
                    branchLabel3.place();
                    codeStream.iconst_0();
                    return;
                }
                BranchLabel branchLabel4 = new BranchLabel(codeStream);
                codeStream.goto_(branchLabel4);
                codeStream.decrStackSize(1);
                branchLabel3.place();
                codeStream.iconst_0();
                branchLabel4.place();
                return;
            }
            return;
        }
        if (optimizedBooleanConstant3.booleanValue() == z11) {
            this.left.generateCode(blockScope, codeStream, z10);
            this.right.generateCode(blockScope, codeStream, false);
            return;
        }
        if (!z10) {
            this.left.generateCode(blockScope, codeStream, false);
            this.right.generateCode(blockScope, codeStream, false);
            return;
        }
        BranchLabel branchLabel5 = new BranchLabel(codeStream);
        this.left.generateOptimizedBoolean(blockScope, codeStream, null, branchLabel5, z10);
        this.right.generateCode(blockScope, codeStream, false);
        codeStream.iconst_0();
        if ((this.bits & 16) != 0) {
            codeStream.generateImplicitConversion(this.implicitConversion);
            codeStream.generateReturnBytecode(this);
            branchLabel5.place();
            codeStream.iconst_1();
            return;
        }
        BranchLabel branchLabel6 = new BranchLabel(codeStream);
        codeStream.goto_(branchLabel6);
        codeStream.decrStackSize(1);
        branchLabel5.place();
        codeStream.iconst_1();
        branchLabel6.place();
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10 = codeStream.position;
        Constant constant = this.constant;
        if (constant != Constant.NotAConstant) {
            if (z10) {
                codeStream.generateConstant(constant, this.implicitConversion);
            }
            codeStream.recordPositionsFrom(i10, this.sourceStart);
        } else {
            if ((this.left.implicitConversion & 15) == 5) {
                generateBooleanEqual(blockScope, codeStream, z10);
            } else {
                generateNonBooleanEqual(blockScope, codeStream, z10);
            }
            if (z10) {
                codeStream.generateImplicitConversion(this.implicitConversion);
            }
            codeStream.recordPositionsFrom(i10, this.sourceStart);
        }
    }

    public void generateNonBooleanEqual(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        boolean z11 = ((this.bits & ASTNode.OperatorMASK) >> 6) == 18;
        Expression expression = this.left;
        if (((expression.implicitConversion & 255) >> 4) == 10) {
            Constant constant = expression.constant;
            Constant constant2 = Constant.NotAConstant;
            if (constant != constant2 && constant.intValue() == 0) {
                this.right.generateCode(blockScope, codeStream, z10);
                if (z10) {
                    BranchLabel branchLabel = new BranchLabel(codeStream);
                    if (z11) {
                        codeStream.ifne(branchLabel);
                    } else {
                        codeStream.ifeq(branchLabel);
                    }
                    codeStream.iconst_1();
                    if ((this.bits & 16) != 0) {
                        codeStream.generateImplicitConversion(this.implicitConversion);
                        codeStream.generateReturnBytecode(this);
                        branchLabel.place();
                        codeStream.iconst_0();
                        return;
                    }
                    BranchLabel branchLabel2 = new BranchLabel(codeStream);
                    codeStream.goto_(branchLabel2);
                    codeStream.decrStackSize(1);
                    branchLabel.place();
                    codeStream.iconst_0();
                    branchLabel2.place();
                    return;
                }
                return;
            }
            Constant constant3 = this.right.constant;
            if (constant3 != constant2 && constant3.intValue() == 0) {
                this.left.generateCode(blockScope, codeStream, z10);
                if (z10) {
                    BranchLabel branchLabel3 = new BranchLabel(codeStream);
                    if (z11) {
                        codeStream.ifne(branchLabel3);
                    } else {
                        codeStream.ifeq(branchLabel3);
                    }
                    codeStream.iconst_1();
                    if ((this.bits & 16) != 0) {
                        codeStream.generateImplicitConversion(this.implicitConversion);
                        codeStream.generateReturnBytecode(this);
                        branchLabel3.place();
                        codeStream.iconst_0();
                        return;
                    }
                    BranchLabel branchLabel4 = new BranchLabel(codeStream);
                    codeStream.goto_(branchLabel4);
                    codeStream.decrStackSize(1);
                    branchLabel3.place();
                    codeStream.iconst_0();
                    branchLabel4.place();
                    return;
                }
                return;
            }
        }
        Expression expression2 = this.right;
        if (expression2 instanceof NullLiteral) {
            Expression expression3 = this.left;
            if (expression3 instanceof NullLiteral) {
                if (z10) {
                    if (z11) {
                        codeStream.iconst_1();
                        return;
                    } else {
                        codeStream.iconst_0();
                        return;
                    }
                }
                return;
            }
            expression3.generateCode(blockScope, codeStream, z10);
            if (z10) {
                BranchLabel branchLabel5 = new BranchLabel(codeStream);
                if (z11) {
                    codeStream.ifnonnull(branchLabel5);
                } else {
                    codeStream.ifnull(branchLabel5);
                }
                codeStream.iconst_1();
                if ((this.bits & 16) != 0) {
                    codeStream.generateImplicitConversion(this.implicitConversion);
                    codeStream.generateReturnBytecode(this);
                    branchLabel5.place();
                    codeStream.iconst_0();
                    return;
                }
                BranchLabel branchLabel6 = new BranchLabel(codeStream);
                codeStream.goto_(branchLabel6);
                codeStream.decrStackSize(1);
                branchLabel5.place();
                codeStream.iconst_0();
                branchLabel6.place();
                return;
            }
            return;
        }
        Expression expression4 = this.left;
        if (expression4 instanceof NullLiteral) {
            expression2.generateCode(blockScope, codeStream, z10);
            if (z10) {
                BranchLabel branchLabel7 = new BranchLabel(codeStream);
                if (z11) {
                    codeStream.ifnonnull(branchLabel7);
                } else {
                    codeStream.ifnull(branchLabel7);
                }
                codeStream.iconst_1();
                if ((this.bits & 16) != 0) {
                    codeStream.generateImplicitConversion(this.implicitConversion);
                    codeStream.generateReturnBytecode(this);
                    branchLabel7.place();
                    codeStream.iconst_0();
                    return;
                }
                BranchLabel branchLabel8 = new BranchLabel(codeStream);
                codeStream.goto_(branchLabel8);
                codeStream.decrStackSize(1);
                branchLabel7.place();
                codeStream.iconst_0();
                branchLabel8.place();
                return;
            }
            return;
        }
        expression4.generateCode(blockScope, codeStream, z10);
        this.right.generateCode(blockScope, codeStream, z10);
        if (z10) {
            BranchLabel branchLabel9 = new BranchLabel(codeStream);
            if (!z11) {
                switch ((this.left.implicitConversion & 255) >> 4) {
                    case 7:
                        codeStream.lcmp();
                        codeStream.ifeq(branchLabel9);
                        break;
                    case 8:
                        codeStream.dcmpl();
                        codeStream.ifeq(branchLabel9);
                        break;
                    case 9:
                        codeStream.fcmpl();
                        codeStream.ifeq(branchLabel9);
                        break;
                    case 10:
                        codeStream.if_icmpeq(branchLabel9);
                        break;
                    default:
                        codeStream.if_acmpeq(branchLabel9);
                        break;
                }
            } else {
                switch ((this.left.implicitConversion & 255) >> 4) {
                    case 7:
                        codeStream.lcmp();
                        codeStream.ifne(branchLabel9);
                        break;
                    case 8:
                        codeStream.dcmpl();
                        codeStream.ifne(branchLabel9);
                        break;
                    case 9:
                        codeStream.fcmpl();
                        codeStream.ifne(branchLabel9);
                        break;
                    case 10:
                        codeStream.if_icmpne(branchLabel9);
                        break;
                    default:
                        codeStream.if_acmpne(branchLabel9);
                        break;
                }
            }
            codeStream.iconst_1();
            if ((this.bits & 16) != 0) {
                codeStream.generateImplicitConversion(this.implicitConversion);
                codeStream.generateReturnBytecode(this);
                branchLabel9.place();
                codeStream.iconst_0();
                return;
            }
            BranchLabel branchLabel10 = new BranchLabel(codeStream);
            codeStream.goto_(branchLabel10);
            codeStream.decrStackSize(1);
            branchLabel9.place();
            codeStream.iconst_0();
            branchLabel10.place();
        }
    }

    @Override
    public void generateOptimizedBoolean(BlockScope blockScope, CodeStream codeStream, BranchLabel branchLabel, BranchLabel branchLabel2, boolean z10) {
        if (this.constant != Constant.NotAConstant) {
            super.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, z10);
            return;
        }
        if (((this.bits & ASTNode.OperatorMASK) >> 6) == 18) {
            if ((this.left.implicitConversion & 15) == 5) {
                generateOptimizedBooleanEqual(blockScope, codeStream, branchLabel, branchLabel2, z10);
                return;
            } else {
                generateOptimizedNonBooleanEqual(blockScope, codeStream, branchLabel, branchLabel2, z10);
                return;
            }
        }
        if ((this.left.implicitConversion & 15) == 5) {
            generateOptimizedBooleanEqual(blockScope, codeStream, branchLabel2, branchLabel, z10);
        } else {
            generateOptimizedNonBooleanEqual(blockScope, codeStream, branchLabel2, branchLabel, z10);
        }
    }

    public void generateOptimizedBooleanEqual(BlockScope blockScope, CodeStream codeStream, BranchLabel branchLabel, BranchLabel branchLabel2, boolean z10) {
        Expression expression = this.left;
        Constant constant = expression.constant;
        Constant constant2 = Constant.NotAConstant;
        if (constant != constant2) {
            boolean booleanValue = constant.booleanValue();
            this.right.generateOptimizedBoolean(blockScope, codeStream, booleanValue ? branchLabel : branchLabel2, booleanValue ? branchLabel2 : branchLabel, z10);
            return;
        }
        Constant constant3 = this.right.constant;
        if (constant3 != constant2) {
            boolean booleanValue2 = constant3.booleanValue();
            this.left.generateOptimizedBoolean(blockScope, codeStream, booleanValue2 ? branchLabel : branchLabel2, booleanValue2 ? branchLabel2 : branchLabel, z10);
            return;
        }
        expression.generateCode(blockScope, codeStream, z10);
        this.right.generateCode(blockScope, codeStream, z10);
        int i10 = codeStream.position;
        if (z10) {
            if (branchLabel2 == null) {
                if (branchLabel != null) {
                    codeStream.if_icmpeq(branchLabel);
                }
            } else if (branchLabel == null) {
                codeStream.if_icmpne(branchLabel2);
            }
        }
        codeStream.recordPositionsFrom(i10, this.sourceEnd);
    }

    public void generateOptimizedNonBooleanEqual(BlockScope blockScope, CodeStream codeStream, BranchLabel branchLabel, BranchLabel branchLabel2, boolean z10) {
        int i10 = codeStream.position;
        Constant constant = this.right.constant;
        Constant constant2 = Constant.NotAConstant;
        if (constant != constant2 && ((this.left.implicitConversion & 255) >> 4) == 10 && constant.intValue() == 0) {
            this.left.generateCode(blockScope, codeStream, z10);
            if (z10) {
                if (branchLabel2 == null) {
                    if (branchLabel != null) {
                        codeStream.ifeq(branchLabel);
                    }
                } else if (branchLabel == null) {
                    codeStream.ifne(branchLabel2);
                }
            }
            codeStream.recordPositionsFrom(i10, this.sourceStart);
            return;
        }
        Expression expression = this.left;
        Constant constant3 = expression.constant;
        if (constant3 != constant2 && ((expression.implicitConversion & 255) >> 4) == 10 && constant3.intValue() == 0) {
            this.right.generateCode(blockScope, codeStream, z10);
            if (z10) {
                if (branchLabel2 == null) {
                    if (branchLabel != null) {
                        codeStream.ifeq(branchLabel);
                    }
                } else if (branchLabel == null) {
                    codeStream.ifne(branchLabel2);
                }
            }
            codeStream.recordPositionsFrom(i10, this.sourceStart);
            return;
        }
        Expression expression2 = this.right;
        if (expression2 instanceof NullLiteral) {
            Expression expression3 = this.left;
            if (!(expression3 instanceof NullLiteral)) {
                expression3.generateCode(blockScope, codeStream, z10);
                if (z10) {
                    if (branchLabel2 == null) {
                        if (branchLabel != null) {
                            codeStream.ifnull(branchLabel);
                        }
                    } else if (branchLabel == null) {
                        codeStream.ifnonnull(branchLabel2);
                    }
                }
            } else if (z10 && branchLabel2 == null && branchLabel != null) {
                codeStream.goto_(branchLabel);
            }
            codeStream.recordPositionsFrom(i10, this.sourceStart);
            return;
        }
        Expression expression4 = this.left;
        if (expression4 instanceof NullLiteral) {
            expression2.generateCode(blockScope, codeStream, z10);
            if (z10) {
                if (branchLabel2 == null) {
                    if (branchLabel != null) {
                        codeStream.ifnull(branchLabel);
                    }
                } else if (branchLabel == null) {
                    codeStream.ifnonnull(branchLabel2);
                }
            }
            codeStream.recordPositionsFrom(i10, this.sourceStart);
            return;
        }
        expression4.generateCode(blockScope, codeStream, z10);
        this.right.generateCode(blockScope, codeStream, z10);
        if (z10) {
            if (branchLabel2 != null) {
                if (branchLabel == null) {
                    switch ((this.left.implicitConversion & 255) >> 4) {
                        case 7:
                            codeStream.lcmp();
                            codeStream.ifne(branchLabel2);
                            break;
                        case 8:
                            codeStream.dcmpl();
                            codeStream.ifne(branchLabel2);
                            break;
                        case 9:
                            codeStream.fcmpl();
                            codeStream.ifne(branchLabel2);
                            break;
                        case 10:
                            codeStream.if_icmpne(branchLabel2);
                            break;
                        default:
                            codeStream.if_acmpne(branchLabel2);
                            break;
                    }
                }
            } else if (branchLabel != null) {
                switch ((this.left.implicitConversion & 255) >> 4) {
                    case 7:
                        codeStream.lcmp();
                        codeStream.ifeq(branchLabel);
                        break;
                    case 8:
                        codeStream.dcmpl();
                        codeStream.ifeq(branchLabel);
                        break;
                    case 9:
                        codeStream.fcmpl();
                        codeStream.ifeq(branchLabel);
                        break;
                    case 10:
                        codeStream.if_icmpeq(branchLabel);
                        break;
                    default:
                        codeStream.if_acmpeq(branchLabel);
                        break;
                }
            }
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public boolean isCompactableOperation() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01ab  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TypeBinding resolveType(BlockScope blockScope) {
        TypeBinding typeBinding;
        TypeBinding typeBinding2;
        boolean z10;
        boolean z11;
        Binding directBinding;
        int i10;
        int i11;
        Expression expression = this.left;
        boolean z12 = expression instanceof CastExpression;
        if (z12) {
            expression.bits |= 32;
        }
        TypeBinding resolveType = expression.resolveType(blockScope);
        Expression expression2 = this.right;
        boolean z13 = expression2 instanceof CastExpression;
        if (z13) {
            expression2.bits |= 32;
        }
        TypeBinding resolveType2 = expression2.resolveType(blockScope);
        if (resolveType == null || resolveType2 == null) {
            this.constant = Constant.NotAConstant;
            return null;
        }
        CompilerOptions compilerOptions = blockScope.compilerOptions();
        if (compilerOptions.complainOnUninternedIdentityComparison && resolveType2.hasTypeBit(16) && resolveType.hasTypeBit(16)) {
            blockScope.problemReporter().uninternedIdentityComparison(this, resolveType, resolveType2, blockScope.referenceCompilationUnit());
        }
        if (compilerOptions.sourceLevel >= ClassFileConstants.JDK1_5) {
            NullTypeBinding nullTypeBinding = TypeBinding.NULL;
            if (resolveType == nullTypeBinding || !resolveType.isBaseType()) {
                if (resolveType2 != nullTypeBinding && resolveType2.isBaseType()) {
                    typeBinding2 = resolveType2;
                    typeBinding = blockScope.environment().computeBoxingType(resolveType);
                }
            } else if (!resolveType2.isBaseType()) {
                typeBinding = resolveType;
                typeBinding2 = blockScope.environment().computeBoxingType(resolveType2);
            }
            if (!typeBinding.isBaseType() && typeBinding2.isBaseType()) {
                int i12 = typeBinding.f102482id;
                int i13 = OperatorExpression.OperatorSignatures[18][(i12 << 4) + typeBinding2.f102482id];
                this.left.computeConversion(blockScope, TypeBinding.wellKnownType(blockScope, (i13 >>> 16) & 15), resolveType);
                this.right.computeConversion(blockScope, TypeBinding.wellKnownType(blockScope, (i13 >>> 8) & 15), resolveType2);
                int i14 = i13 & 15;
                this.bits |= i14;
                if (i14 == 0) {
                    this.constant = Constant.NotAConstant;
                    blockScope.problemReporter().invalidOperator(this, typeBinding, typeBinding2);
                    return null;
                }
                if (z12 || z13) {
                    i10 = 18;
                    CastExpression.checkNeedForArgumentCasts(blockScope, 18, i13, this.left, typeBinding.f102482id, z12, this.right, typeBinding2.f102482id, z13);
                } else {
                    i10 = 18;
                }
                computeConstant(typeBinding, typeBinding2);
                Binding directBinding2 = Expression.getDirectBinding(this.left);
                if (directBinding2 == null || directBinding2 != Expression.getDirectBinding(this.right)) {
                    Constant constant = this.constant;
                    if (constant != Constant.NotAConstant && (((i11 = (this.bits & ASTNode.OperatorMASK) >> 6) == i10 && constant == BooleanConstant.fromValue(true)) || (i11 == 29 && this.constant == BooleanConstant.fromValue(false)))) {
                        blockScope.problemReporter().comparingIdenticalExpressions(this);
                    }
                } else if (i12 != 8 && i12 != 9 && !(this.right instanceof Assignment)) {
                    blockScope.problemReporter().comparingIdenticalExpressions(this);
                }
                BaseTypeBinding baseTypeBinding = TypeBinding.BOOLEAN;
                this.resolvedType = baseTypeBinding;
                return baseTypeBinding;
            }
            if ((!typeBinding.isBaseType() && typeBinding != TypeBinding.NULL) || ((typeBinding2.isBaseType() && typeBinding2 != TypeBinding.NULL) || (!checkCastTypesCompatibility(blockScope, typeBinding, typeBinding2, null) && !checkCastTypesCompatibility(blockScope, typeBinding2, typeBinding, null)))) {
                this.constant = Constant.NotAConstant;
                blockScope.problemReporter().notCompatibleTypesError(this, typeBinding, typeBinding2);
                return null;
            }
            if (typeBinding2.f102482id == 11 || typeBinding.f102482id != 11) {
                this.constant = Constant.NotAConstant;
            } else {
                computeConstant(typeBinding, typeBinding2);
            }
            ReferenceBinding javaLangObject = blockScope.getJavaLangObject();
            this.left.computeConversion(blockScope, javaLangObject, typeBinding);
            this.right.computeConversion(blockScope, javaLangObject, typeBinding2);
            Expression expression3 = this.left;
            z10 = (expression3.bits & 16384) == 0;
            Expression expression4 = this.right;
            z11 = (expression4.bits & 16384) == 0;
            if (!z10 || z11) {
                if (z10) {
                    typeBinding = ((CastExpression) expression3).expression.resolvedType;
                }
                if (z11) {
                    typeBinding2 = ((CastExpression) expression4).expression.resolvedType;
                }
                if (!isCastNeeded(typeBinding, typeBinding2) && (checkCastTypesCompatibility(blockScope, typeBinding, typeBinding2, null) || checkCastTypesCompatibility(blockScope, typeBinding2, typeBinding, null))) {
                    if (z10) {
                        blockScope.problemReporter().unnecessaryCast((CastExpression) this.left);
                    }
                    if (z11) {
                        blockScope.problemReporter().unnecessaryCast((CastExpression) this.right);
                    }
                }
            }
            directBinding = Expression.getDirectBinding(this.left);
            if (directBinding != null && directBinding == Expression.getDirectBinding(this.right) && !(this.right instanceof Assignment)) {
                blockScope.problemReporter().comparingIdenticalExpressions(this);
            }
            BaseTypeBinding baseTypeBinding2 = TypeBinding.BOOLEAN;
            this.resolvedType = baseTypeBinding2;
            return baseTypeBinding2;
        }
        typeBinding = resolveType;
        typeBinding2 = resolveType2;
        if (!typeBinding.isBaseType()) {
        }
        if (!typeBinding.isBaseType()) {
        }
        if (typeBinding2.f102482id == 11) {
        }
        this.constant = Constant.NotAConstant;
        ReferenceBinding javaLangObject2 = blockScope.getJavaLangObject();
        this.left.computeConversion(blockScope, javaLangObject2, typeBinding);
        this.right.computeConversion(blockScope, javaLangObject2, typeBinding2);
        Expression expression32 = this.left;
        if ((expression32.bits & 16384) == 0) {
        }
        Expression expression42 = this.right;
        if ((expression42.bits & 16384) == 0) {
        }
        if (!z10) {
        }
        if (z10) {
        }
        if (z11) {
        }
        if (!isCastNeeded(typeBinding, typeBinding2)) {
            if (z10) {
            }
            if (z11) {
            }
        }
        directBinding = Expression.getDirectBinding(this.left);
        if (directBinding != null) {
            blockScope.problemReporter().comparingIdenticalExpressions(this);
        }
        BaseTypeBinding baseTypeBinding22 = TypeBinding.BOOLEAN;
        this.resolvedType = baseTypeBinding22;
        return baseTypeBinding22;
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
