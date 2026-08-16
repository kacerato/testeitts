package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import w2.C15883c;

public class BinaryExpression extends OperatorExpression {
    public Expression left;
    public Constant optimizedBooleanConstant;
    public Expression right;

    public BinaryExpression(Expression expression, Expression expression2, int i10) {
        this.left = expression;
        this.right = expression2;
        this.bits = (i10 << 6) | this.bits;
        this.sourceStart = expression.sourceStart;
        this.sourceEnd = expression2.sourceEnd;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        try {
            if (this.resolvedType.f102482id == 11) {
                return this.right.analyseCode(blockScope, flowContext, this.left.analyseCode(blockScope, flowContext, flowInfo).unconditionalInits()).unconditionalInits();
            }
            UnconditionalFlowInfo unconditionalInits = this.left.analyseCode(blockScope, flowContext, flowInfo).unconditionalInits();
            this.left.checkNPE(blockScope, flowContext, unconditionalInits);
            if (((this.bits & ASTNode.OperatorMASK) >> 6) != 2) {
                flowContext.expireNullCheckedFieldInfo();
            }
            UnconditionalFlowInfo unconditionalInits2 = this.right.analyseCode(blockScope, flowContext, unconditionalInits).unconditionalInits();
            this.right.checkNPE(blockScope, flowContext, unconditionalInits2);
            if (((this.bits & ASTNode.OperatorMASK) >> 6) != 2) {
                flowContext.expireNullCheckedFieldInfo();
            }
            return unconditionalInits2;
        } finally {
            flowContext.recordAbruptExit();
        }
    }

    public void computeConstant(BlockScope blockScope, int i10, int i11) {
        Constant constant;
        Constant constant2 = this.left.constant;
        Constant constant3 = Constant.NotAConstant;
        if (constant2 == constant3 || (constant = this.right.constant) == constant3) {
            this.constant = constant3;
            optimizedBooleanConstant(i10, (this.bits & ASTNode.OperatorMASK) >> 6, i11);
        } else {
            try {
                this.constant = Constant.computeConstantOperation(constant2, i10, (this.bits & ASTNode.OperatorMASK) >> 6, constant, i11);
            } catch (ArithmeticException unused) {
                this.constant = Constant.NotAConstant;
            }
        }
    }

    @Override
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
        int i11 = this.bits;
        switch ((i11 & ASTNode.OperatorMASK) >> 6) {
            case 2:
                int i12 = i11 & 15;
                if (i12 == 5) {
                    generateLogicalAnd(blockScope, codeStream, z10);
                    break;
                } else if (i12 == 7) {
                    Constant constant3 = this.left.constant;
                    if (constant3 == constant2 || constant3.typeID() != 7 || this.left.constant.longValue() != 0) {
                        Constant constant4 = this.right.constant;
                        if (constant4 == constant2 || constant4.typeID() != 7 || this.right.constant.longValue() != 0) {
                            this.left.generateCode(blockScope, codeStream, z10);
                            this.right.generateCode(blockScope, codeStream, z10);
                            if (z10) {
                                codeStream.land();
                                break;
                            }
                        } else {
                            this.left.generateCode(blockScope, codeStream, false);
                            if (z10) {
                                codeStream.lconst_0();
                                break;
                            }
                        }
                    } else {
                        this.right.generateCode(blockScope, codeStream, false);
                        if (z10) {
                            codeStream.lconst_0();
                            break;
                        }
                    }
                } else if (i12 == 10) {
                    Constant constant5 = this.left.constant;
                    if (constant5 == constant2 || constant5.typeID() != 10 || this.left.constant.intValue() != 0) {
                        Constant constant6 = this.right.constant;
                        if (constant6 == constant2 || constant6.typeID() != 10 || this.right.constant.intValue() != 0) {
                            this.left.generateCode(blockScope, codeStream, z10);
                            this.right.generateCode(blockScope, codeStream, z10);
                            if (z10) {
                                codeStream.iand();
                                break;
                            }
                        } else {
                            this.left.generateCode(blockScope, codeStream, false);
                            if (z10) {
                                codeStream.iconst_0();
                                break;
                            }
                        }
                    } else {
                        this.right.generateCode(blockScope, codeStream, false);
                        if (z10) {
                            codeStream.iconst_0();
                            break;
                        }
                    }
                }
                break;
            case 3:
                int i13 = i11 & 15;
                if (i13 == 5) {
                    generateLogicalOr(blockScope, codeStream, z10);
                    break;
                } else if (i13 == 7) {
                    Constant constant7 = this.left.constant;
                    if (constant7 == constant2 || constant7.typeID() != 7 || this.left.constant.longValue() != 0) {
                        Constant constant8 = this.right.constant;
                        if (constant8 == constant2 || constant8.typeID() != 7 || this.right.constant.longValue() != 0) {
                            this.left.generateCode(blockScope, codeStream, z10);
                            this.right.generateCode(blockScope, codeStream, z10);
                            if (z10) {
                                codeStream.lor();
                                break;
                            }
                        } else {
                            this.left.generateCode(blockScope, codeStream, z10);
                            break;
                        }
                    } else {
                        this.right.generateCode(blockScope, codeStream, z10);
                        break;
                    }
                } else if (i13 == 10) {
                    Constant constant9 = this.left.constant;
                    if (constant9 == constant2 || constant9.typeID() != 10 || this.left.constant.intValue() != 0) {
                        Constant constant10 = this.right.constant;
                        if (constant10 == constant2 || constant10.typeID() != 10 || this.right.constant.intValue() != 0) {
                            this.left.generateCode(blockScope, codeStream, z10);
                            this.right.generateCode(blockScope, codeStream, z10);
                            if (z10) {
                                codeStream.ior();
                                break;
                            }
                        } else {
                            this.left.generateCode(blockScope, codeStream, z10);
                            break;
                        }
                    } else {
                        this.right.generateCode(blockScope, codeStream, z10);
                        break;
                    }
                }
                break;
            case 4:
                BranchLabel branchLabel = new BranchLabel(codeStream);
                generateOptimizedLessThan(blockScope, codeStream, null, branchLabel, z10);
                if (z10) {
                    codeStream.iconst_1();
                    if ((this.bits & 16) == 0) {
                        BranchLabel branchLabel2 = new BranchLabel(codeStream);
                        codeStream.goto_(branchLabel2);
                        codeStream.decrStackSize(1);
                        branchLabel.place();
                        codeStream.iconst_0();
                        branchLabel2.place();
                        break;
                    } else {
                        codeStream.generateImplicitConversion(this.implicitConversion);
                        codeStream.generateReturnBytecode(this);
                        branchLabel.place();
                        codeStream.iconst_0();
                        break;
                    }
                }
                break;
            case 5:
                BranchLabel branchLabel3 = new BranchLabel(codeStream);
                generateOptimizedLessThanOrEqual(blockScope, codeStream, null, branchLabel3, z10);
                if (z10) {
                    codeStream.iconst_1();
                    if ((this.bits & 16) == 0) {
                        BranchLabel branchLabel4 = new BranchLabel(codeStream);
                        codeStream.goto_(branchLabel4);
                        codeStream.decrStackSize(1);
                        branchLabel3.place();
                        codeStream.iconst_0();
                        branchLabel4.place();
                        break;
                    } else {
                        codeStream.generateImplicitConversion(this.implicitConversion);
                        codeStream.generateReturnBytecode(this);
                        branchLabel3.place();
                        codeStream.iconst_0();
                        break;
                    }
                }
                break;
            case 6:
                BranchLabel branchLabel5 = new BranchLabel(codeStream);
                generateOptimizedGreaterThan(blockScope, codeStream, null, branchLabel5, z10);
                if (z10) {
                    codeStream.iconst_1();
                    if ((this.bits & 16) == 0) {
                        BranchLabel branchLabel6 = new BranchLabel(codeStream);
                        codeStream.goto_(branchLabel6);
                        codeStream.decrStackSize(1);
                        branchLabel5.place();
                        codeStream.iconst_0();
                        branchLabel6.place();
                        break;
                    } else {
                        codeStream.generateImplicitConversion(this.implicitConversion);
                        codeStream.generateReturnBytecode(this);
                        branchLabel5.place();
                        codeStream.iconst_0();
                        break;
                    }
                }
                break;
            case 7:
                BranchLabel branchLabel7 = new BranchLabel(codeStream);
                generateOptimizedGreaterThanOrEqual(blockScope, codeStream, null, branchLabel7, z10);
                if (z10) {
                    codeStream.iconst_1();
                    if ((this.bits & 16) == 0) {
                        BranchLabel branchLabel8 = new BranchLabel(codeStream);
                        codeStream.goto_(branchLabel8);
                        codeStream.decrStackSize(1);
                        branchLabel7.place();
                        codeStream.iconst_0();
                        branchLabel8.place();
                        break;
                    } else {
                        codeStream.generateImplicitConversion(this.implicitConversion);
                        codeStream.generateReturnBytecode(this);
                        branchLabel7.place();
                        codeStream.iconst_0();
                        break;
                    }
                }
                break;
            case 8:
                int i14 = i11 & 15;
                if (i14 == 5) {
                    generateLogicalXor(blockScope, codeStream, z10);
                    break;
                } else if (i14 == 7) {
                    Constant constant11 = this.left.constant;
                    if (constant11 == constant2 || constant11.typeID() != 7 || this.left.constant.longValue() != 0) {
                        Constant constant12 = this.right.constant;
                        if (constant12 == constant2 || constant12.typeID() != 7 || this.right.constant.longValue() != 0) {
                            this.left.generateCode(blockScope, codeStream, z10);
                            this.right.generateCode(blockScope, codeStream, z10);
                            if (z10) {
                                codeStream.lxor();
                                break;
                            }
                        } else {
                            this.left.generateCode(blockScope, codeStream, z10);
                            break;
                        }
                    } else {
                        this.right.generateCode(blockScope, codeStream, z10);
                        break;
                    }
                } else if (i14 == 10) {
                    Constant constant13 = this.left.constant;
                    if (constant13 == constant2 || constant13.typeID() != 10 || this.left.constant.intValue() != 0) {
                        Constant constant14 = this.right.constant;
                        if (constant14 == constant2 || constant14.typeID() != 10 || this.right.constant.intValue() != 0) {
                            this.left.generateCode(blockScope, codeStream, z10);
                            this.right.generateCode(blockScope, codeStream, z10);
                            if (z10) {
                                codeStream.ixor();
                                break;
                            }
                        } else {
                            this.left.generateCode(blockScope, codeStream, z10);
                            break;
                        }
                    } else {
                        this.right.generateCode(blockScope, codeStream, z10);
                        break;
                    }
                }
                break;
            case 9:
                switch (i11 & 15) {
                    case 7:
                        this.left.generateCode(blockScope, codeStream, true);
                        this.right.generateCode(blockScope, codeStream, true);
                        codeStream.ldiv();
                        if (!z10) {
                            codeStream.pop2();
                            break;
                        }
                        break;
                    case 8:
                        this.left.generateCode(blockScope, codeStream, z10);
                        this.right.generateCode(blockScope, codeStream, z10);
                        if (z10) {
                            codeStream.ddiv();
                            break;
                        }
                        break;
                    case 9:
                        this.left.generateCode(blockScope, codeStream, z10);
                        this.right.generateCode(blockScope, codeStream, z10);
                        if (z10) {
                            codeStream.fdiv();
                            break;
                        }
                        break;
                    case 10:
                        this.left.generateCode(blockScope, codeStream, true);
                        this.right.generateCode(blockScope, codeStream, true);
                        codeStream.idiv();
                        if (!z10) {
                            codeStream.pop();
                            break;
                        }
                        break;
                }
            case 10:
                int i15 = i11 & 15;
                if (i15 == 7) {
                    this.left.generateCode(blockScope, codeStream, z10);
                    this.right.generateCode(blockScope, codeStream, z10);
                    if (z10) {
                        codeStream.lshl();
                        break;
                    }
                } else if (i15 == 10) {
                    this.left.generateCode(blockScope, codeStream, z10);
                    this.right.generateCode(blockScope, codeStream, z10);
                    if (z10) {
                        codeStream.ishl();
                        break;
                    }
                }
                break;
            case 13:
                switch (i11 & 15) {
                    case 7:
                        this.left.generateCode(blockScope, codeStream, z10);
                        this.right.generateCode(blockScope, codeStream, z10);
                        if (z10) {
                            codeStream.lsub();
                            break;
                        }
                        break;
                    case 8:
                        this.left.generateCode(blockScope, codeStream, z10);
                        this.right.generateCode(blockScope, codeStream, z10);
                        if (z10) {
                            codeStream.dsub();
                            break;
                        }
                        break;
                    case 9:
                        this.left.generateCode(blockScope, codeStream, z10);
                        this.right.generateCode(blockScope, codeStream, z10);
                        if (z10) {
                            codeStream.fsub();
                            break;
                        }
                        break;
                    case 10:
                        this.left.generateCode(blockScope, codeStream, z10);
                        this.right.generateCode(blockScope, codeStream, z10);
                        if (z10) {
                            codeStream.isub();
                            break;
                        }
                        break;
                }
            case 14:
                switch (i11 & 15) {
                    case 7:
                        this.left.generateCode(blockScope, codeStream, z10);
                        this.right.generateCode(blockScope, codeStream, z10);
                        if (z10) {
                            codeStream.ladd();
                            break;
                        }
                        break;
                    case 8:
                        this.left.generateCode(blockScope, codeStream, z10);
                        this.right.generateCode(blockScope, codeStream, z10);
                        if (z10) {
                            codeStream.dadd();
                            break;
                        }
                        break;
                    case 9:
                        this.left.generateCode(blockScope, codeStream, z10);
                        this.right.generateCode(blockScope, codeStream, z10);
                        if (z10) {
                            codeStream.fadd();
                            break;
                        }
                        break;
                    case 10:
                        this.left.generateCode(blockScope, codeStream, z10);
                        this.right.generateCode(blockScope, codeStream, z10);
                        if (z10) {
                            codeStream.iadd();
                            break;
                        }
                        break;
                    case 11:
                        codeStream.generateStringConcatenationAppend(blockScope, this.left, this.right);
                        if (!z10) {
                            codeStream.pop();
                            break;
                        }
                        break;
                }
            case 15:
                switch (i11 & 15) {
                    case 7:
                        this.left.generateCode(blockScope, codeStream, z10);
                        this.right.generateCode(blockScope, codeStream, z10);
                        if (z10) {
                            codeStream.lmul();
                            break;
                        }
                        break;
                    case 8:
                        this.left.generateCode(blockScope, codeStream, z10);
                        this.right.generateCode(blockScope, codeStream, z10);
                        if (z10) {
                            codeStream.dmul();
                            break;
                        }
                        break;
                    case 9:
                        this.left.generateCode(blockScope, codeStream, z10);
                        this.right.generateCode(blockScope, codeStream, z10);
                        if (z10) {
                            codeStream.fmul();
                            break;
                        }
                        break;
                    case 10:
                        this.left.generateCode(blockScope, codeStream, z10);
                        this.right.generateCode(blockScope, codeStream, z10);
                        if (z10) {
                            codeStream.imul();
                            break;
                        }
                        break;
                }
            case 16:
                switch (i11 & 15) {
                    case 7:
                        this.left.generateCode(blockScope, codeStream, true);
                        this.right.generateCode(blockScope, codeStream, true);
                        codeStream.lrem();
                        if (!z10) {
                            codeStream.pop2();
                            break;
                        }
                        break;
                    case 8:
                        this.left.generateCode(blockScope, codeStream, z10);
                        this.right.generateCode(blockScope, codeStream, z10);
                        if (z10) {
                            codeStream.drem();
                            break;
                        }
                        break;
                    case 9:
                        this.left.generateCode(blockScope, codeStream, z10);
                        this.right.generateCode(blockScope, codeStream, z10);
                        if (z10) {
                            codeStream.frem();
                            break;
                        }
                        break;
                    case 10:
                        this.left.generateCode(blockScope, codeStream, true);
                        this.right.generateCode(blockScope, codeStream, true);
                        codeStream.irem();
                        if (!z10) {
                            codeStream.pop();
                            break;
                        }
                        break;
                }
            case 17:
                int i16 = i11 & 15;
                if (i16 == 7) {
                    this.left.generateCode(blockScope, codeStream, z10);
                    this.right.generateCode(blockScope, codeStream, z10);
                    if (z10) {
                        codeStream.lshr();
                        break;
                    }
                } else if (i16 == 10) {
                    this.left.generateCode(blockScope, codeStream, z10);
                    this.right.generateCode(blockScope, codeStream, z10);
                    if (z10) {
                        codeStream.ishr();
                        break;
                    }
                }
                break;
            case 19:
                int i17 = i11 & 15;
                if (i17 == 7) {
                    this.left.generateCode(blockScope, codeStream, z10);
                    this.right.generateCode(blockScope, codeStream, z10);
                    if (z10) {
                        codeStream.lushr();
                        break;
                    }
                } else if (i17 == 10) {
                    this.left.generateCode(blockScope, codeStream, z10);
                    this.right.generateCode(blockScope, codeStream, z10);
                    if (z10) {
                        codeStream.iushr();
                        break;
                    }
                }
                break;
        }
        if (z10) {
            codeStream.generateImplicitConversion(this.implicitConversion);
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    public void generateLogicalAnd(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        Expression expression = this.left;
        if ((expression.implicitConversion & 15) == 5) {
            Constant optimizedBooleanConstant = expression.optimizedBooleanConstant();
            Constant constant = Constant.NotAConstant;
            if (optimizedBooleanConstant != constant) {
                if (optimizedBooleanConstant.booleanValue()) {
                    this.left.generateCode(blockScope, codeStream, false);
                    this.right.generateCode(blockScope, codeStream, z10);
                    return;
                }
                this.left.generateCode(blockScope, codeStream, false);
                this.right.generateCode(blockScope, codeStream, false);
                if (z10) {
                    codeStream.iconst_0();
                }
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                return;
            }
            Constant optimizedBooleanConstant2 = this.right.optimizedBooleanConstant();
            if (optimizedBooleanConstant2 != constant) {
                if (optimizedBooleanConstant2.booleanValue()) {
                    this.left.generateCode(blockScope, codeStream, z10);
                    this.right.generateCode(blockScope, codeStream, false);
                    return;
                }
                this.left.generateCode(blockScope, codeStream, false);
                this.right.generateCode(blockScope, codeStream, false);
                if (z10) {
                    codeStream.iconst_0();
                }
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                return;
            }
        }
        this.left.generateCode(blockScope, codeStream, z10);
        this.right.generateCode(blockScope, codeStream, z10);
        if (z10) {
            codeStream.iand();
        }
        codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
    }

    public void generateLogicalOr(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        Expression expression = this.left;
        if ((expression.implicitConversion & 15) == 5) {
            Constant optimizedBooleanConstant = expression.optimizedBooleanConstant();
            Constant constant = Constant.NotAConstant;
            if (optimizedBooleanConstant != constant) {
                if (!optimizedBooleanConstant.booleanValue()) {
                    this.left.generateCode(blockScope, codeStream, false);
                    this.right.generateCode(blockScope, codeStream, z10);
                    return;
                }
                this.left.generateCode(blockScope, codeStream, false);
                this.right.generateCode(blockScope, codeStream, false);
                if (z10) {
                    codeStream.iconst_1();
                }
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                return;
            }
            Constant optimizedBooleanConstant2 = this.right.optimizedBooleanConstant();
            if (optimizedBooleanConstant2 != constant) {
                if (!optimizedBooleanConstant2.booleanValue()) {
                    this.left.generateCode(blockScope, codeStream, z10);
                    this.right.generateCode(blockScope, codeStream, false);
                    return;
                }
                this.left.generateCode(blockScope, codeStream, false);
                this.right.generateCode(blockScope, codeStream, false);
                if (z10) {
                    codeStream.iconst_1();
                }
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                return;
            }
        }
        this.left.generateCode(blockScope, codeStream, z10);
        this.right.generateCode(blockScope, codeStream, z10);
        if (z10) {
            codeStream.ior();
        }
        codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
    }

    public void generateLogicalXor(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        Expression expression = this.left;
        if ((expression.implicitConversion & 15) == 5) {
            Constant optimizedBooleanConstant = expression.optimizedBooleanConstant();
            Constant constant = Constant.NotAConstant;
            if (optimizedBooleanConstant != constant) {
                if (!optimizedBooleanConstant.booleanValue()) {
                    this.left.generateCode(blockScope, codeStream, false);
                    this.right.generateCode(blockScope, codeStream, z10);
                    return;
                }
                this.left.generateCode(blockScope, codeStream, false);
                if (z10) {
                    codeStream.iconst_1();
                }
                this.right.generateCode(blockScope, codeStream, z10);
                if (z10) {
                    codeStream.ixor();
                    codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                    return;
                }
                return;
            }
            Constant optimizedBooleanConstant2 = this.right.optimizedBooleanConstant();
            if (optimizedBooleanConstant2 != constant) {
                if (!optimizedBooleanConstant2.booleanValue()) {
                    this.left.generateCode(blockScope, codeStream, z10);
                    this.right.generateCode(blockScope, codeStream, false);
                    return;
                }
                this.left.generateCode(blockScope, codeStream, z10);
                this.right.generateCode(blockScope, codeStream, false);
                if (z10) {
                    codeStream.iconst_1();
                    codeStream.ixor();
                    codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                    return;
                }
                return;
            }
        }
        this.left.generateCode(blockScope, codeStream, z10);
        this.right.generateCode(blockScope, codeStream, z10);
        if (z10) {
            codeStream.ixor();
        }
        codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
    }

    @Override
    public void generateOptimizedBoolean(BlockScope blockScope, CodeStream codeStream, BranchLabel branchLabel, BranchLabel branchLabel2, boolean z10) {
        Constant constant = this.constant;
        if (constant != Constant.NotAConstant && constant.typeID() == 5) {
            super.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, z10);
            return;
        }
        switch ((this.bits & ASTNode.OperatorMASK) >> 6) {
            case 2:
                generateOptimizedLogicalAnd(blockScope, codeStream, branchLabel, branchLabel2, z10);
                return;
            case 3:
                generateOptimizedLogicalOr(blockScope, codeStream, branchLabel, branchLabel2, z10);
                return;
            case 4:
                generateOptimizedLessThan(blockScope, codeStream, branchLabel, branchLabel2, z10);
                return;
            case 5:
                generateOptimizedLessThanOrEqual(blockScope, codeStream, branchLabel, branchLabel2, z10);
                return;
            case 6:
                generateOptimizedGreaterThan(blockScope, codeStream, branchLabel, branchLabel2, z10);
                return;
            case 7:
                generateOptimizedGreaterThanOrEqual(blockScope, codeStream, branchLabel, branchLabel2, z10);
                return;
            case 8:
                generateOptimizedLogicalXor(blockScope, codeStream, branchLabel, branchLabel2, z10);
                return;
            default:
                super.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, z10);
                return;
        }
    }

    public void generateOptimizedGreaterThan(BlockScope blockScope, CodeStream codeStream, BranchLabel branchLabel, BranchLabel branchLabel2, boolean z10) {
        Expression expression = this.left;
        int i10 = (expression.implicitConversion & 255) >> 4;
        if (i10 == 10) {
            Constant constant = expression.constant;
            Constant constant2 = Constant.NotAConstant;
            if (constant != constant2 && constant.intValue() == 0) {
                this.right.generateCode(blockScope, codeStream, z10);
                if (z10) {
                    if (branchLabel2 == null) {
                        if (branchLabel != null) {
                            codeStream.iflt(branchLabel);
                        }
                    } else if (branchLabel == null) {
                        codeStream.ifge(branchLabel2);
                    }
                }
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                return;
            }
            Constant constant3 = this.right.constant;
            if (constant3 != constant2 && constant3.intValue() == 0) {
                this.left.generateCode(blockScope, codeStream, z10);
                if (z10) {
                    if (branchLabel2 == null) {
                        if (branchLabel != null) {
                            codeStream.ifgt(branchLabel);
                        }
                    } else if (branchLabel == null) {
                        codeStream.ifle(branchLabel2);
                    }
                }
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                return;
            }
        }
        this.left.generateCode(blockScope, codeStream, z10);
        this.right.generateCode(blockScope, codeStream, z10);
        if (z10) {
            if (branchLabel2 == null) {
                if (branchLabel != null) {
                    switch (i10) {
                        case 7:
                            codeStream.lcmp();
                            codeStream.ifgt(branchLabel);
                            break;
                        case 8:
                            codeStream.dcmpl();
                            codeStream.ifgt(branchLabel);
                            break;
                        case 9:
                            codeStream.fcmpl();
                            codeStream.ifgt(branchLabel);
                            break;
                        case 10:
                            codeStream.if_icmpgt(branchLabel);
                            break;
                    }
                    codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                    return;
                }
                return;
            }
            if (branchLabel == null) {
                switch (i10) {
                    case 7:
                        codeStream.lcmp();
                        codeStream.ifle(branchLabel2);
                        break;
                    case 8:
                        codeStream.dcmpl();
                        codeStream.ifle(branchLabel2);
                        break;
                    case 9:
                        codeStream.fcmpl();
                        codeStream.ifle(branchLabel2);
                        break;
                    case 10:
                        codeStream.if_icmple(branchLabel2);
                        break;
                }
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
            }
        }
    }

    public void generateOptimizedGreaterThanOrEqual(BlockScope blockScope, CodeStream codeStream, BranchLabel branchLabel, BranchLabel branchLabel2, boolean z10) {
        Expression expression = this.left;
        int i10 = (expression.implicitConversion & 255) >> 4;
        if (i10 == 10) {
            Constant constant = expression.constant;
            Constant constant2 = Constant.NotAConstant;
            if (constant != constant2 && constant.intValue() == 0) {
                this.right.generateCode(blockScope, codeStream, z10);
                if (z10) {
                    if (branchLabel2 == null) {
                        if (branchLabel != null) {
                            codeStream.ifle(branchLabel);
                        }
                    } else if (branchLabel == null) {
                        codeStream.ifgt(branchLabel2);
                    }
                }
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                return;
            }
            Constant constant3 = this.right.constant;
            if (constant3 != constant2 && constant3.intValue() == 0) {
                this.left.generateCode(blockScope, codeStream, z10);
                if (z10) {
                    if (branchLabel2 == null) {
                        if (branchLabel != null) {
                            codeStream.ifge(branchLabel);
                        }
                    } else if (branchLabel == null) {
                        codeStream.iflt(branchLabel2);
                    }
                }
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                return;
            }
        }
        this.left.generateCode(blockScope, codeStream, z10);
        this.right.generateCode(blockScope, codeStream, z10);
        if (z10) {
            if (branchLabel2 == null) {
                if (branchLabel != null) {
                    switch (i10) {
                        case 7:
                            codeStream.lcmp();
                            codeStream.ifge(branchLabel);
                            break;
                        case 8:
                            codeStream.dcmpl();
                            codeStream.ifge(branchLabel);
                            break;
                        case 9:
                            codeStream.fcmpl();
                            codeStream.ifge(branchLabel);
                            break;
                        case 10:
                            codeStream.if_icmpge(branchLabel);
                            break;
                    }
                    codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                    return;
                }
                return;
            }
            if (branchLabel == null) {
                switch (i10) {
                    case 7:
                        codeStream.lcmp();
                        codeStream.iflt(branchLabel2);
                        break;
                    case 8:
                        codeStream.dcmpl();
                        codeStream.iflt(branchLabel2);
                        break;
                    case 9:
                        codeStream.fcmpl();
                        codeStream.iflt(branchLabel2);
                        break;
                    case 10:
                        codeStream.if_icmplt(branchLabel2);
                        break;
                }
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
            }
        }
    }

    public void generateOptimizedLessThan(BlockScope blockScope, CodeStream codeStream, BranchLabel branchLabel, BranchLabel branchLabel2, boolean z10) {
        Expression expression = this.left;
        int i10 = (expression.implicitConversion & 255) >> 4;
        if (i10 == 10) {
            Constant constant = expression.constant;
            Constant constant2 = Constant.NotAConstant;
            if (constant != constant2 && constant.intValue() == 0) {
                this.right.generateCode(blockScope, codeStream, z10);
                if (z10) {
                    if (branchLabel2 == null) {
                        if (branchLabel != null) {
                            codeStream.ifgt(branchLabel);
                        }
                    } else if (branchLabel == null) {
                        codeStream.ifle(branchLabel2);
                    }
                }
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                return;
            }
            Constant constant3 = this.right.constant;
            if (constant3 != constant2 && constant3.intValue() == 0) {
                this.left.generateCode(blockScope, codeStream, z10);
                if (z10) {
                    if (branchLabel2 == null) {
                        if (branchLabel != null) {
                            codeStream.iflt(branchLabel);
                        }
                    } else if (branchLabel == null) {
                        codeStream.ifge(branchLabel2);
                    }
                }
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                return;
            }
        }
        this.left.generateCode(blockScope, codeStream, z10);
        this.right.generateCode(blockScope, codeStream, z10);
        if (z10) {
            if (branchLabel2 == null) {
                if (branchLabel != null) {
                    switch (i10) {
                        case 7:
                            codeStream.lcmp();
                            codeStream.iflt(branchLabel);
                            break;
                        case 8:
                            codeStream.dcmpg();
                            codeStream.iflt(branchLabel);
                            break;
                        case 9:
                            codeStream.fcmpg();
                            codeStream.iflt(branchLabel);
                            break;
                        case 10:
                            codeStream.if_icmplt(branchLabel);
                            break;
                    }
                    codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                    return;
                }
                return;
            }
            if (branchLabel == null) {
                switch (i10) {
                    case 7:
                        codeStream.lcmp();
                        codeStream.ifge(branchLabel2);
                        break;
                    case 8:
                        codeStream.dcmpg();
                        codeStream.ifge(branchLabel2);
                        break;
                    case 9:
                        codeStream.fcmpg();
                        codeStream.ifge(branchLabel2);
                        break;
                    case 10:
                        codeStream.if_icmpge(branchLabel2);
                        break;
                }
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
            }
        }
    }

    public void generateOptimizedLessThanOrEqual(BlockScope blockScope, CodeStream codeStream, BranchLabel branchLabel, BranchLabel branchLabel2, boolean z10) {
        Expression expression = this.left;
        int i10 = (expression.implicitConversion & 255) >> 4;
        if (i10 == 10) {
            Constant constant = expression.constant;
            Constant constant2 = Constant.NotAConstant;
            if (constant != constant2 && constant.intValue() == 0) {
                this.right.generateCode(blockScope, codeStream, z10);
                if (z10) {
                    if (branchLabel2 == null) {
                        if (branchLabel != null) {
                            codeStream.ifge(branchLabel);
                        }
                    } else if (branchLabel == null) {
                        codeStream.iflt(branchLabel2);
                    }
                }
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                return;
            }
            Constant constant3 = this.right.constant;
            if (constant3 != constant2 && constant3.intValue() == 0) {
                this.left.generateCode(blockScope, codeStream, z10);
                if (z10) {
                    if (branchLabel2 == null) {
                        if (branchLabel != null) {
                            codeStream.ifle(branchLabel);
                        }
                    } else if (branchLabel == null) {
                        codeStream.ifgt(branchLabel2);
                    }
                }
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                return;
            }
        }
        this.left.generateCode(blockScope, codeStream, z10);
        this.right.generateCode(blockScope, codeStream, z10);
        if (z10) {
            if (branchLabel2 == null) {
                if (branchLabel != null) {
                    switch (i10) {
                        case 7:
                            codeStream.lcmp();
                            codeStream.ifle(branchLabel);
                            break;
                        case 8:
                            codeStream.dcmpg();
                            codeStream.ifle(branchLabel);
                            break;
                        case 9:
                            codeStream.fcmpg();
                            codeStream.ifle(branchLabel);
                            break;
                        case 10:
                            codeStream.if_icmple(branchLabel);
                            break;
                    }
                    codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                    return;
                }
                return;
            }
            if (branchLabel == null) {
                switch (i10) {
                    case 7:
                        codeStream.lcmp();
                        codeStream.ifgt(branchLabel2);
                        break;
                    case 8:
                        codeStream.dcmpg();
                        codeStream.ifgt(branchLabel2);
                        break;
                    case 9:
                        codeStream.fcmpg();
                        codeStream.ifgt(branchLabel2);
                        break;
                    case 10:
                        codeStream.if_icmpgt(branchLabel2);
                        break;
                }
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
            }
        }
    }

    public void generateOptimizedLogicalAnd(BlockScope blockScope, CodeStream codeStream, BranchLabel branchLabel, BranchLabel branchLabel2, boolean z10) {
        Expression expression = this.left;
        if ((expression.implicitConversion & 15) == 5) {
            Constant optimizedBooleanConstant = expression.optimizedBooleanConstant();
            Constant constant = Constant.NotAConstant;
            if (optimizedBooleanConstant != constant) {
                if (optimizedBooleanConstant.booleanValue()) {
                    this.left.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, false);
                    this.right.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, z10);
                    return;
                }
                this.left.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, false);
                this.right.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, false);
                if (z10 && branchLabel2 != null) {
                    codeStream.goto_(branchLabel2);
                }
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                return;
            }
            Constant optimizedBooleanConstant2 = this.right.optimizedBooleanConstant();
            if (optimizedBooleanConstant2 != constant) {
                if (optimizedBooleanConstant2.booleanValue()) {
                    this.left.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, z10);
                    this.right.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, false);
                    return;
                }
                BranchLabel branchLabel3 = new BranchLabel(codeStream);
                this.left.generateOptimizedBoolean(blockScope, codeStream, branchLabel3, branchLabel2, false);
                branchLabel3.place();
                this.right.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, false);
                if (z10 && branchLabel2 != null) {
                    codeStream.goto_(branchLabel2);
                }
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                return;
            }
        }
        this.left.generateCode(blockScope, codeStream, z10);
        this.right.generateCode(blockScope, codeStream, z10);
        if (z10) {
            codeStream.iand();
            if (branchLabel2 == null) {
                if (branchLabel != null) {
                    codeStream.ifne(branchLabel);
                }
            } else if (branchLabel == null) {
                codeStream.ifeq(branchLabel2);
            }
        }
        codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
    }

    public void generateOptimizedLogicalOr(BlockScope blockScope, CodeStream codeStream, BranchLabel branchLabel, BranchLabel branchLabel2, boolean z10) {
        Expression expression = this.left;
        if ((expression.implicitConversion & 15) == 5) {
            Constant optimizedBooleanConstant = expression.optimizedBooleanConstant();
            Constant constant = Constant.NotAConstant;
            if (optimizedBooleanConstant != constant) {
                if (!optimizedBooleanConstant.booleanValue()) {
                    this.left.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, false);
                    this.right.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, z10);
                    return;
                }
                this.left.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, false);
                BranchLabel branchLabel3 = new BranchLabel(codeStream);
                this.right.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel3, false);
                branchLabel3.place();
                if (z10 && branchLabel != null) {
                    codeStream.goto_(branchLabel);
                }
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                return;
            }
            Constant optimizedBooleanConstant2 = this.right.optimizedBooleanConstant();
            if (optimizedBooleanConstant2 != constant) {
                if (!optimizedBooleanConstant2.booleanValue()) {
                    this.left.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, z10);
                    this.right.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, false);
                    return;
                }
                BranchLabel branchLabel4 = new BranchLabel(codeStream);
                this.left.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel4, false);
                branchLabel4.place();
                this.right.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, false);
                if (z10 && branchLabel != null) {
                    codeStream.goto_(branchLabel);
                }
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
                return;
            }
        }
        this.left.generateCode(blockScope, codeStream, z10);
        this.right.generateCode(blockScope, codeStream, z10);
        if (z10) {
            codeStream.ior();
            if (branchLabel2 == null) {
                if (branchLabel != null) {
                    codeStream.ifne(branchLabel);
                }
            } else if (branchLabel == null) {
                codeStream.ifeq(branchLabel2);
            }
        }
        codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
    }

    public void generateOptimizedLogicalXor(BlockScope blockScope, CodeStream codeStream, BranchLabel branchLabel, BranchLabel branchLabel2, boolean z10) {
        Expression expression = this.left;
        if ((expression.implicitConversion & 15) == 5) {
            Constant optimizedBooleanConstant = expression.optimizedBooleanConstant();
            Constant constant = Constant.NotAConstant;
            if (optimizedBooleanConstant != constant) {
                if (optimizedBooleanConstant.booleanValue()) {
                    this.left.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, false);
                    this.right.generateOptimizedBoolean(blockScope, codeStream, branchLabel2, branchLabel, z10);
                    return;
                } else {
                    this.left.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, false);
                    this.right.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, z10);
                    return;
                }
            }
            Constant optimizedBooleanConstant2 = this.right.optimizedBooleanConstant();
            if (optimizedBooleanConstant2 != constant) {
                if (optimizedBooleanConstant2.booleanValue()) {
                    this.left.generateOptimizedBoolean(blockScope, codeStream, branchLabel2, branchLabel, z10);
                    this.right.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, false);
                    return;
                } else {
                    this.left.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, z10);
                    this.right.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, false);
                    return;
                }
            }
        }
        this.left.generateCode(blockScope, codeStream, z10);
        this.right.generateCode(blockScope, codeStream, z10);
        if (z10) {
            codeStream.ixor();
            if (branchLabel2 == null) {
                if (branchLabel != null) {
                    codeStream.ifne(branchLabel);
                }
            } else if (branchLabel == null) {
                codeStream.ifeq(branchLabel2);
            }
        }
        codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd);
    }

    @Override
    public void generateOptimizedStringConcatenation(BlockScope blockScope, CodeStream codeStream, int i10) {
        int i11 = this.bits;
        if (((i11 & ASTNode.OperatorMASK) >> 6) != 14 || (i11 & 15) != 11) {
            super.generateOptimizedStringConcatenation(blockScope, codeStream, i10);
            return;
        }
        Constant constant = this.constant;
        if (constant != Constant.NotAConstant) {
            codeStream.generateConstant(constant, this.implicitConversion);
            codeStream.invokeStringConcatenationAppendForType(this.implicitConversion & 15);
            return;
        }
        int i12 = codeStream.position;
        Expression expression = this.left;
        expression.generateOptimizedStringConcatenation(blockScope, codeStream, expression.implicitConversion & 15);
        codeStream.recordPositionsFrom(i12, this.left.sourceStart);
        int i13 = codeStream.position;
        Expression expression2 = this.right;
        expression2.generateOptimizedStringConcatenation(blockScope, codeStream, expression2.implicitConversion & 15);
        codeStream.recordPositionsFrom(i13, this.right.sourceStart);
    }

    @Override
    public void generateOptimizedStringConcatenationCreation(BlockScope blockScope, CodeStream codeStream, int i10) {
        int i11 = this.bits;
        if (((i11 & ASTNode.OperatorMASK) >> 6) != 14 || (i11 & 15) != 11) {
            super.generateOptimizedStringConcatenationCreation(blockScope, codeStream, i10);
            return;
        }
        if (this.constant != Constant.NotAConstant) {
            codeStream.newStringContatenation();
            codeStream.dup();
            codeStream.ldc(this.constant.stringValue());
            codeStream.invokeStringConcatenationStringConstructor();
            return;
        }
        int i12 = codeStream.position;
        Expression expression = this.left;
        expression.generateOptimizedStringConcatenationCreation(blockScope, codeStream, expression.implicitConversion & 15);
        codeStream.recordPositionsFrom(i12, this.left.sourceStart);
        int i13 = codeStream.position;
        Expression expression2 = this.right;
        expression2.generateOptimizedStringConcatenation(blockScope, codeStream, expression2.implicitConversion & 15);
        codeStream.recordPositionsFrom(i13, this.right.sourceStart);
    }

    @Override
    public boolean isCompactableOperation() {
        return true;
    }

    public void nonRecursiveResolveTypeUpwards(BlockScope blockScope) {
        int i10;
        int i11;
        TypeBinding typeBinding = this.left.resolvedType;
        Expression expression = this.right;
        boolean z10 = expression instanceof CastExpression;
        if (z10) {
            expression.bits |= 32;
        }
        TypeBinding resolveType = expression.resolveType(blockScope);
        if (typeBinding == null || resolveType == null) {
            this.constant = Constant.NotAConstant;
            return;
        }
        int i12 = typeBinding.f102482id;
        int i13 = resolveType.f102482id;
        if (blockScope.compilerOptions().sourceLevel >= ClassFileConstants.JDK1_5) {
            if (!typeBinding.isBaseType() && i13 != 11 && i13 != 12) {
                i12 = blockScope.environment().computeBoxingType(typeBinding).f102482id;
            }
            if (!resolveType.isBaseType() && i12 != 11 && i12 != 12) {
                i13 = blockScope.environment().computeBoxingType(resolveType).f102482id;
            }
        }
        if (i12 <= 15 && i13 <= 15) {
            i11 = i12;
            i10 = i13;
        } else if (i12 == 11) {
            i11 = i12;
            i10 = 1;
        } else if (i13 != 11) {
            this.constant = Constant.NotAConstant;
            blockScope.problemReporter().invalidOperator(this, typeBinding, resolveType);
            return;
        } else {
            i10 = i13;
            i11 = 1;
        }
        if (((this.bits & ASTNode.OperatorMASK) >> 6) == 14) {
            if (i11 == 11) {
                this.left.computeConversion(blockScope, typeBinding, typeBinding);
                if (resolveType.isArrayType() && TypeBinding.equalsEquals(((ArrayBinding) resolveType).elementsType(), TypeBinding.CHAR)) {
                    blockScope.problemReporter().signalNoImplicitStringConversionForCharArrayExpression(this.right);
                }
            }
            if (i10 == 11) {
                this.right.computeConversion(blockScope, resolveType, resolveType);
                if (typeBinding.isArrayType() && TypeBinding.equalsEquals(((ArrayBinding) typeBinding).elementsType(), TypeBinding.CHAR)) {
                    blockScope.problemReporter().signalNoImplicitStringConversionForCharArrayExpression(this.left);
                }
            }
        }
        int i14 = (this.bits & ASTNode.OperatorMASK) >> 6;
        int i15 = OperatorExpression.OperatorSignatures[i14][(i11 << 4) + i10];
        this.left.computeConversion(blockScope, TypeBinding.wellKnownType(blockScope, (i15 >>> 16) & 15), typeBinding);
        this.right.computeConversion(blockScope, TypeBinding.wellKnownType(blockScope, 15 & (i15 >>> 8)), resolveType);
        int i16 = i15 & 15;
        this.bits |= i16;
        switch (i16) {
            case 2:
                this.resolvedType = TypeBinding.CHAR;
                break;
            case 3:
                this.resolvedType = TypeBinding.BYTE;
                break;
            case 4:
            case 6:
            default:
                this.constant = Constant.NotAConstant;
                blockScope.problemReporter().invalidOperator(this, typeBinding, resolveType);
                return;
            case 5:
                this.resolvedType = TypeBinding.BOOLEAN;
                break;
            case 7:
                this.resolvedType = TypeBinding.LONG;
                break;
            case 8:
                this.resolvedType = TypeBinding.DOUBLE;
                break;
            case 9:
                this.resolvedType = TypeBinding.FLOAT;
                break;
            case 10:
                this.resolvedType = TypeBinding.INT;
                break;
            case 11:
                this.resolvedType = blockScope.getJavaLangString();
                break;
        }
        Expression expression2 = this.left;
        boolean z11 = expression2 instanceof CastExpression;
        if (z11 || z10) {
            CastExpression.checkNeedForArgumentCasts(blockScope, i14, i15, expression2, i11, z11, this.right, i10, z10);
        }
        computeConstant(blockScope, i11, i10);
    }

    @Override
    public Constant optimizedBooleanConstant() {
        Constant constant = this.optimizedBooleanConstant;
        return constant == null ? this.constant : constant;
    }

    @Override
    public StringBuffer printExpressionNoParenthesis(int i10, StringBuffer stringBuffer) {
        StringBuffer printExpression = this.left.printExpression(i10, stringBuffer);
        printExpression.append(C15883c.f126249O);
        printExpression.append(operatorToString());
        printExpression.append(C15883c.f126249O);
        return this.right.printExpression(0, stringBuffer);
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        int i10;
        int i11;
        Expression expression = this.left;
        boolean z10 = expression instanceof CastExpression;
        if (z10) {
            expression.bits |= 32;
        }
        TypeBinding resolveType = expression.resolveType(blockScope);
        Expression expression2 = this.right;
        boolean z11 = expression2 instanceof CastExpression;
        if (z11) {
            expression2.bits |= 32;
        }
        TypeBinding resolveType2 = expression2.resolveType(blockScope);
        if (resolveType == null || resolveType2 == null) {
            this.constant = Constant.NotAConstant;
            return null;
        }
        int i12 = resolveType.f102482id;
        int i13 = resolveType2.f102482id;
        if (blockScope.compilerOptions().sourceLevel >= ClassFileConstants.JDK1_5) {
            if (!resolveType.isBaseType() && i13 != 11 && i13 != 12) {
                i12 = blockScope.environment().computeBoxingType(resolveType).f102482id;
            }
            if (!resolveType2.isBaseType() && i12 != 11 && i12 != 12) {
                i13 = blockScope.environment().computeBoxingType(resolveType2).f102482id;
            }
        }
        if (i12 <= 15 && i13 <= 15) {
            i11 = i12;
            i10 = i13;
        } else if (i12 == 11) {
            i11 = i12;
            i10 = 1;
        } else {
            if (i13 != 11) {
                this.constant = Constant.NotAConstant;
                blockScope.problemReporter().invalidOperator(this, resolveType, resolveType2);
                return null;
            }
            i10 = i13;
            i11 = 1;
        }
        if (((this.bits & ASTNode.OperatorMASK) >> 6) == 14) {
            if (i11 == 11) {
                this.left.computeConversion(blockScope, resolveType, resolveType);
                if (resolveType2.isArrayType() && TypeBinding.equalsEquals(((ArrayBinding) resolveType2).elementsType(), TypeBinding.CHAR)) {
                    blockScope.problemReporter().signalNoImplicitStringConversionForCharArrayExpression(this.right);
                }
            }
            if (i10 == 11) {
                this.right.computeConversion(blockScope, resolveType2, resolveType2);
                if (resolveType.isArrayType() && TypeBinding.equalsEquals(((ArrayBinding) resolveType).elementsType(), TypeBinding.CHAR)) {
                    blockScope.problemReporter().signalNoImplicitStringConversionForCharArrayExpression(this.left);
                }
            }
        }
        int i14 = (this.bits & ASTNode.OperatorMASK) >> 6;
        int i15 = OperatorExpression.OperatorSignatures[i14][(i11 << 4) + i10];
        this.left.computeConversion(blockScope, TypeBinding.wellKnownType(blockScope, (i15 >>> 16) & 15), resolveType);
        this.right.computeConversion(blockScope, TypeBinding.wellKnownType(blockScope, 15 & (i15 >>> 8)), resolveType2);
        int i16 = i15 & 15;
        this.bits |= i16;
        switch (i16) {
            case 2:
                this.resolvedType = TypeBinding.CHAR;
                break;
            case 3:
                this.resolvedType = TypeBinding.BYTE;
                break;
            case 4:
            case 6:
            default:
                this.constant = Constant.NotAConstant;
                blockScope.problemReporter().invalidOperator(this, resolveType, resolveType2);
                return null;
            case 5:
                this.resolvedType = TypeBinding.BOOLEAN;
                break;
            case 7:
                this.resolvedType = TypeBinding.LONG;
                break;
            case 8:
                this.resolvedType = TypeBinding.DOUBLE;
                break;
            case 9:
                this.resolvedType = TypeBinding.FLOAT;
                break;
            case 10:
                this.resolvedType = TypeBinding.INT;
                break;
            case 11:
                this.resolvedType = blockScope.getJavaLangString();
                break;
        }
        if (z10 || z11) {
            CastExpression.checkNeedForArgumentCasts(blockScope, i14, i15, this.left, i11, z10, this.right, i10, z11);
        }
        computeConstant(blockScope, i11, i10);
        return this.resolvedType;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            this.left.traverse(aSTVisitor, blockScope);
            this.right.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    public void optimizedBooleanConstant(int i10, int i11, int i12) {
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 3 || i10 != 5 || i12 != 5) {
                        return;
                    }
                } else if (i10 != 5 || i12 != 5) {
                    return;
                }
            }
            Constant optimizedBooleanConstant = this.left.optimizedBooleanConstant();
            Constant constant = Constant.NotAConstant;
            if (optimizedBooleanConstant != constant) {
                if (optimizedBooleanConstant.booleanValue()) {
                    this.optimizedBooleanConstant = optimizedBooleanConstant;
                    return;
                }
                Constant optimizedBooleanConstant2 = this.right.optimizedBooleanConstant();
                if (optimizedBooleanConstant2 != constant) {
                    this.optimizedBooleanConstant = optimizedBooleanConstant2;
                    return;
                }
                return;
            }
            Constant optimizedBooleanConstant3 = this.right.optimizedBooleanConstant();
            if (optimizedBooleanConstant3 == constant || !optimizedBooleanConstant3.booleanValue()) {
                return;
            }
            this.optimizedBooleanConstant = optimizedBooleanConstant3;
            return;
        }
        Constant optimizedBooleanConstant4 = this.left.optimizedBooleanConstant();
        Constant constant2 = Constant.NotAConstant;
        if (optimizedBooleanConstant4 != constant2) {
            if (!optimizedBooleanConstant4.booleanValue()) {
                this.optimizedBooleanConstant = optimizedBooleanConstant4;
                return;
            }
            Constant optimizedBooleanConstant5 = this.right.optimizedBooleanConstant();
            if (optimizedBooleanConstant5 != constant2) {
                this.optimizedBooleanConstant = optimizedBooleanConstant5;
                return;
            }
            return;
        }
        Constant optimizedBooleanConstant6 = this.right.optimizedBooleanConstant();
        if (optimizedBooleanConstant6 == constant2 || optimizedBooleanConstant6.booleanValue()) {
            return;
        }
        this.optimizedBooleanConstant = optimizedBooleanConstant6;
    }

    public BinaryExpression(BinaryExpression binaryExpression) {
        this.left = binaryExpression.left;
        this.right = binaryExpression.right;
        this.bits = binaryExpression.bits;
        this.sourceStart = binaryExpression.sourceStart;
        this.sourceEnd = binaryExpression.sourceEnd;
    }
}
