package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.BooleanConstant;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import w2.C15883c;

public class UnaryExpression extends OperatorExpression {
    public Expression expression;
    public Constant optimizedBooleanConstant;

    public UnaryExpression(Expression expression, int i10) {
        this.expression = expression;
        this.bits |= i10 << 6;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        FlowInfo analyseCode;
        if (((this.bits & ASTNode.OperatorMASK) >> 6) == 11) {
            flowContext.tagBits ^= 4;
            analyseCode = this.expression.analyseCode(blockScope, flowContext, flowInfo).asNegatedCondition();
            flowContext.tagBits ^= 4;
        } else {
            analyseCode = this.expression.analyseCode(blockScope, flowContext, flowInfo);
        }
        this.expression.checkNPE(blockScope, flowContext, analyseCode);
        return analyseCode;
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
        switch ((this.bits & ASTNode.OperatorMASK) >> 6) {
            case 11:
                Expression expression = this.expression;
                if (((expression.implicitConversion & 255) >> 4) == 5) {
                    BranchLabel branchLabel = new BranchLabel(codeStream);
                    expression.generateOptimizedBoolean(blockScope, codeStream, null, branchLabel, z10);
                    if (!z10) {
                        branchLabel.place();
                        break;
                    } else {
                        codeStream.iconst_0();
                        if (branchLabel.forwardReferenceCount() > 0) {
                            BranchLabel branchLabel2 = new BranchLabel(codeStream);
                            codeStream.goto_(branchLabel2);
                            codeStream.decrStackSize(1);
                            branchLabel.place();
                            codeStream.iconst_1();
                            branchLabel2.place();
                            break;
                        }
                    }
                }
                break;
            case 12:
                Expression expression2 = this.expression;
                int i11 = (expression2.implicitConversion & 255) >> 4;
                if (i11 == 7) {
                    expression2.generateCode(blockScope, codeStream, z10);
                    if (z10) {
                        codeStream.ldc2_w(-1L);
                        codeStream.lxor();
                        break;
                    }
                } else if (i11 == 10) {
                    expression2.generateCode(blockScope, codeStream, z10);
                    if (z10) {
                        codeStream.iconst_m1();
                        codeStream.ixor();
                        break;
                    }
                }
                break;
            case 13:
                if (constant == constant2) {
                    this.expression.generateCode(blockScope, codeStream, z10);
                    if (z10) {
                        switch ((this.expression.implicitConversion & 255) >> 4) {
                            case 7:
                                codeStream.lneg();
                                break;
                            case 8:
                                codeStream.dneg();
                                break;
                            case 9:
                                codeStream.fneg();
                                break;
                            case 10:
                                codeStream.ineg();
                                break;
                        }
                    }
                } else if (z10) {
                    switch ((this.expression.implicitConversion & 255) >> 4) {
                        case 7:
                            codeStream.generateInlinedValue(constant.longValue() * (-1));
                            break;
                        case 8:
                            codeStream.generateInlinedValue(constant.doubleValue() * (-1.0d));
                            break;
                        case 9:
                            codeStream.generateInlinedValue(constant.floatValue() * (-1.0f));
                            break;
                        case 10:
                            codeStream.generateInlinedValue(constant.intValue() * (-1));
                            break;
                    }
                }
                break;
            case 14:
                this.expression.generateCode(blockScope, codeStream, z10);
                break;
        }
        if (z10) {
            codeStream.generateImplicitConversion(this.implicitConversion);
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public void generateOptimizedBoolean(BlockScope blockScope, CodeStream codeStream, BranchLabel branchLabel, BranchLabel branchLabel2, boolean z10) {
        Constant constant = this.constant;
        if (constant != Constant.NotAConstant && constant.typeID() == 5) {
            super.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, z10);
        } else if (((this.bits & ASTNode.OperatorMASK) >> 6) == 11) {
            this.expression.generateOptimizedBoolean(blockScope, codeStream, branchLabel2, branchLabel, z10);
        } else {
            super.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, z10);
        }
    }

    @Override
    public Constant optimizedBooleanConstant() {
        Constant constant = this.optimizedBooleanConstant;
        return constant == null ? this.constant : constant;
    }

    @Override
    public StringBuffer printExpressionNoParenthesis(int i10, StringBuffer stringBuffer) {
        stringBuffer.append(operatorToString());
        stringBuffer.append(C15883c.f126249O);
        return this.expression.printExpression(0, stringBuffer);
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        Constant optimizedBooleanConstant;
        Expression expression = this.expression;
        boolean z10 = expression instanceof CastExpression;
        if (z10) {
            expression.bits |= 32;
        }
        TypeBinding resolveType = expression.resolveType(blockScope);
        if (resolveType == null) {
            this.constant = Constant.NotAConstant;
            return null;
        }
        int i10 = resolveType.f102482id;
        if (blockScope.compilerOptions().sourceLevel >= ClassFileConstants.JDK1_5 && !resolveType.isBaseType()) {
            i10 = blockScope.environment().computeBoxingType(resolveType).f102482id;
        }
        if (i10 > 15) {
            this.constant = Constant.NotAConstant;
            blockScope.problemReporter().invalidOperator(this, resolveType);
            return null;
        }
        int i11 = (this.bits & ASTNode.OperatorMASK) >> 6;
        int i12 = i11 != 11 ? i11 != 12 ? 13 : 10 : 0;
        int i13 = OperatorExpression.OperatorSignatures[i12][(i10 << 4) + i10];
        this.expression.computeConversion(blockScope, TypeBinding.wellKnownType(blockScope, 15 & (i13 >>> 16)), resolveType);
        int i14 = i13 & 15;
        int i15 = this.bits | i14;
        this.bits = i15;
        switch (i14) {
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
                if (i10 != 0) {
                    blockScope.problemReporter().invalidOperator(this, resolveType);
                }
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
        }
        Expression expression2 = this.expression;
        Constant constant = expression2.constant;
        Constant constant2 = Constant.NotAConstant;
        if (constant != constant2) {
            this.constant = Constant.computeConstantOperation(constant, i10, (i15 & ASTNode.OperatorMASK) >> 6);
        } else {
            this.constant = constant2;
            if (((i15 & ASTNode.OperatorMASK) >> 6) == 11 && (optimizedBooleanConstant = expression2.optimizedBooleanConstant()) != constant2) {
                this.optimizedBooleanConstant = BooleanConstant.fromValue(!optimizedBooleanConstant.booleanValue());
            }
        }
        if (z10) {
            CastExpression.checkNeedForArgumentCast(blockScope, i12, i13, this.expression, i10);
        }
        return this.resolvedType;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            this.expression.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }
}
