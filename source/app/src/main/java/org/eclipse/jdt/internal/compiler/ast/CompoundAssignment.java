package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import w2.C15883c;

public class CompoundAssignment extends Assignment implements OperatorIds {
    public int operator;
    public int preAssignImplicitConversion;

    public CompoundAssignment(Expression expression, Expression expression2, int i10, int i11) {
        super(expression, expression2, i11);
        expression.bits = (expression.bits & (-8193)) | 65536;
        this.operator = i10;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        LocalVariableBinding localVariableBinding;
        if (this.resolvedType.f102482id != 11) {
            this.lhs.checkNPE(blockScope, flowContext, flowInfo);
            flowContext.recordAbruptExit();
        }
        this.expression.checkNPEbyUnboxing(blockScope, flowContext, flowInfo);
        UnconditionalFlowInfo unconditionalInits = ((Reference) this.lhs).analyseAssignment(blockScope, flowContext, flowInfo, this, true).unconditionalInits();
        if (this.resolvedType.f102482id == 11 && (localVariableBinding = this.lhs.localVariableBinding()) != null) {
            unconditionalInits.markAsDefinitelyNonNull(localVariableBinding);
            flowContext.markFinallyNullStatus(localVariableBinding, 4);
        }
        return unconditionalInits;
    }

    public boolean checkCastCompatibility() {
        return true;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10 = codeStream.position;
        ((Reference) this.lhs).generateCompoundAssignment(blockScope, codeStream, this.expression, this.operator, this.preAssignImplicitConversion, z10);
        if (z10) {
            codeStream.generateImplicitConversion(this.implicitConversion);
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public int nullStatus(FlowInfo flowInfo, FlowContext flowContext) {
        return 4;
    }

    public String operatorToString() {
        int i10 = this.operator;
        if (i10 == 2) {
            return "&=";
        }
        if (i10 == 3) {
            return "|=";
        }
        if (i10 == 19) {
            return ">>>=";
        }
        switch (i10) {
            case 8:
                return "^=";
            case 9:
                return "/=";
            case 10:
                return "<<=";
            default:
                switch (i10) {
                    case 13:
                        return "-=";
                    case 14:
                        return "+=";
                    case 15:
                        return "*=";
                    case 16:
                        return "%=";
                    case 17:
                        return ">>=";
                    default:
                        return "unknown operator";
                }
        }
    }

    @Override
    public StringBuffer printExpressionNoParenthesis(int i10, StringBuffer stringBuffer) {
        StringBuffer printExpression = this.lhs.printExpression(i10, stringBuffer);
        printExpression.append(C15883c.f126249O);
        printExpression.append(operatorToString());
        printExpression.append(C15883c.f126249O);
        return this.expression.printExpression(0, stringBuffer);
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        TypeBinding typeBinding;
        TypeBinding typeBinding2;
        boolean z10;
        int i10;
        int i11;
        this.constant = Constant.NotAConstant;
        Expression expression = this.lhs;
        if (!(expression instanceof Reference) || expression.isThis()) {
            blockScope.problemReporter().expressionShouldBeAVariable(this.lhs);
            return null;
        }
        Expression expression2 = this.expression;
        boolean z11 = expression2 instanceof CastExpression;
        if (z11) {
            expression2.bits |= 32;
        }
        TypeBinding resolveType = this.lhs.resolveType(blockScope);
        TypeBinding resolveType2 = this.expression.resolveType(blockScope);
        if (resolveType == null || resolveType2 == null) {
            return null;
        }
        LookupEnvironment environment = blockScope.environment();
        if (blockScope.compilerOptions().sourceLevel >= ClassFileConstants.JDK1_5) {
            if (!resolveType.isBaseType() && (i11 = resolveType2.f102482id) != 11 && i11 != 12) {
                typeBinding2 = environment.computeBoxingType(resolveType);
                if (TypeBinding.notEquals(typeBinding2, resolveType)) {
                    z10 = true;
                    typeBinding = (!resolveType2.isBaseType() || (i10 = typeBinding2.f102482id) == 11 || i10 == 12) ? resolveType2 : environment.computeBoxingType(resolveType2);
                }
            }
            typeBinding2 = resolveType;
            z10 = false;
            if (resolveType2.isBaseType()) {
            }
        } else {
            typeBinding = resolveType2;
            typeBinding2 = resolveType;
            z10 = false;
        }
        if (restrainUsageToNumericTypes() && !typeBinding2.isNumericType()) {
            blockScope.problemReporter().operatorOnlyValidOnNumericType(this, typeBinding2, typeBinding);
            return null;
        }
        int i12 = typeBinding2.f102482id;
        int i13 = typeBinding.f102482id;
        if (i12 > 15 || i13 > 15) {
            if (i12 != 11) {
                blockScope.problemReporter().invalidOperator(this, typeBinding2, typeBinding);
                return null;
            }
            i13 = 1;
        }
        int[][] iArr = OperatorExpression.OperatorSignatures;
        int i14 = this.operator;
        int i15 = i12 << 4;
        int i16 = iArr[i14][i15 + i13];
        if (i16 == 0) {
            blockScope.problemReporter().invalidOperator(this, typeBinding2, typeBinding);
            return null;
        }
        if (i14 == 14) {
            if (i12 == 1 && blockScope.compilerOptions().complianceLevel < ClassFileConstants.JDK1_7) {
                blockScope.problemReporter().invalidOperator(this, typeBinding2, typeBinding);
                return null;
            }
            if ((typeBinding2.isNumericType() || i12 == 5) && !typeBinding.isNumericType()) {
                blockScope.problemReporter().invalidOperator(this, typeBinding2, typeBinding);
                return null;
            }
        }
        int i17 = i16 & 15;
        TypeBinding wellKnownType = TypeBinding.wellKnownType(blockScope, i17);
        if (checkCastCompatibility() && resolveType.f102482id != 11 && wellKnownType.f102482id != 11 && !checkCastTypesCompatibility(blockScope, resolveType, wellKnownType, null)) {
            blockScope.problemReporter().invalidOperator(this, resolveType, typeBinding);
            return null;
        }
        this.lhs.computeConversion(blockScope, TypeBinding.wellKnownType(blockScope, (i16 >>> 16) & 15), resolveType);
        this.expression.computeConversion(blockScope, TypeBinding.wellKnownType(blockScope, (i16 >>> 8) & 15), resolveType2);
        this.preAssignImplicitConversion = (z10 ? 512 : 0) | i15 | i17;
        if (z10) {
            blockScope.problemReporter().autoboxing(this, typeBinding2, resolveType);
        }
        if (z11) {
            CastExpression.checkNeedForArgumentCasts(blockScope, this.operator, i16, this.lhs, resolveType.f102482id, false, this.expression, resolveType2.f102482id, true);
        }
        this.resolvedType = resolveType;
        return resolveType;
    }

    public boolean restrainUsageToNumericTypes() {
        return false;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            this.lhs.traverse(aSTVisitor, blockScope);
            this.expression.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }
}
