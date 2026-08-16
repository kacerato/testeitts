package org.eclipse.jdt.internal.compiler.ast;

import b3.s;
import java.util.ArrayList;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.IntConstant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class CaseStatement extends Statement {
    public Expression constantExpression;
    public Expression[] constantExpressions;
    public boolean isExpr = false;
    public BranchLabel targetLabel;
    public BranchLabel[] targetLabels;

    public CaseStatement(Expression expression, int i10, int i11) {
        this.constantExpression = expression;
        this.sourceEnd = i10;
        this.sourceStart = i11;
    }

    private void analyseConstantExpression(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, Expression expression) {
        if (expression.constant == Constant.NotAConstant && !expression.resolvedType.isEnum()) {
            blockScope.problemReporter().caseExpressionMustBeConstant(expression);
        }
        expression.analyseCode(blockScope, flowContext, flowInfo);
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        Expression[] expressionArr = this.constantExpressions;
        if (expressionArr == null || expressionArr.length <= 1) {
            Expression expression = this.constantExpression;
            if (expression != null) {
                analyseConstantExpression(blockScope, flowContext, flowInfo, expression);
            }
        } else {
            for (Expression expression2 : expressionArr) {
                analyseConstantExpression(blockScope, flowContext, flowInfo, expression2);
            }
        }
        return flowInfo;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        int i10 = codeStream.position;
        BranchLabel[] branchLabelArr = this.targetLabels;
        if (branchLabelArr != null) {
            int length = branchLabelArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                this.targetLabels[i11].place();
            }
        } else {
            this.targetLabel.place();
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        if (this.constantExpression == null) {
            stringBuffer.append("default ");
            stringBuffer.append(this.isExpr ? "->" : s.f32937c);
        } else {
            stringBuffer.append("case ");
            Expression[] expressionArr = this.constantExpressions;
            if (expressionArr == null || expressionArr.length <= 0) {
                this.constantExpression.printExpression(0, stringBuffer);
            } else {
                int length = expressionArr.length;
                for (int i11 = 0; i11 < length; i11++) {
                    this.constantExpressions[i11].printExpression(0, stringBuffer);
                    if (i11 < length - 1) {
                        stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                    }
                }
            }
            stringBuffer.append(this.isExpr ? " ->" : " :");
        }
        return stringBuffer;
    }

    @Override
    public void resolve(BlockScope blockScope) {
    }

    @Override
    public Constant[] resolveCase(BlockScope blockScope, TypeBinding typeBinding, SwitchStatement switchStatement) {
        blockScope.enclosingCase = this;
        if (this.constantExpression == null) {
            if (switchStatement.defaultCase != null) {
                blockScope.problemReporter().duplicateDefaultCase(this);
            }
            switchStatement.defaultCase = this;
            return Constant.NotAConstantList;
        }
        CaseStatement[] caseStatementArr = switchStatement.cases;
        int i10 = switchStatement.caseCount;
        switchStatement.caseCount = i10 + 1;
        caseStatementArr[i10] = this;
        if (typeBinding != null && typeBinding.isEnum()) {
            Expression expression = this.constantExpression;
            if (expression instanceof SingleNameReference) {
                ((SingleNameReference) expression).setActualReceiverType((ReferenceBinding) typeBinding);
            }
        }
        TypeBinding resolveType = this.constantExpression.resolveType(blockScope);
        if (resolveType == null || typeBinding == null) {
            return Constant.NotAConstantList;
        }
        Expression[] expressionArr = this.constantExpressions;
        if (expressionArr == null || expressionArr.length <= 1) {
            return new Constant[]{resolveConstantExpression(blockScope, resolveType, typeBinding, switchStatement, this.constantExpression)};
        }
        ArrayList arrayList = new ArrayList();
        for (Expression expression2 : this.constantExpressions) {
            if (expression2 != this.constantExpression) {
                if (typeBinding.isEnum() && (expression2 instanceof SingleNameReference)) {
                    ((SingleNameReference) expression2).setActualReceiverType((ReferenceBinding) typeBinding);
                }
                expression2.resolveType(blockScope);
            }
            Constant resolveConstantExpression = resolveConstantExpression(blockScope, resolveType, typeBinding, switchStatement, expression2);
            if (resolveConstantExpression != Constant.NotAConstant) {
                arrayList.add(resolveConstantExpression);
            }
        }
        return arrayList.size() > 0 ? (Constant[]) arrayList.toArray(new Constant[arrayList.size()]) : Constant.NotAConstantList;
    }

    public Constant resolveConstantExpression(BlockScope blockScope, TypeBinding typeBinding, TypeBinding typeBinding2, SwitchStatement switchStatement, Expression expression) {
        if (expression.isConstantValueOfTypeAssignableToType(typeBinding, typeBinding2) || typeBinding.isCompatibleWith(typeBinding2)) {
            if (!typeBinding.isEnum()) {
                return expression.constant;
            }
            if (((expression.bits & ASTNode.ParenthesizedMASK) >> 21) != 0) {
                blockScope.problemReporter().enumConstantsCannotBeSurroundedByParenthesis(expression);
            }
            if ((expression instanceof NameReference) && (expression.bits & 7) == 1) {
                NameReference nameReference = (NameReference) expression;
                FieldBinding fieldBinding = nameReference.fieldBinding();
                if ((fieldBinding.modifiers & 16384) == 0) {
                    blockScope.problemReporter().enumSwitchCannotTargetField(nameReference, fieldBinding);
                } else if (nameReference instanceof QualifiedNameReference) {
                    blockScope.problemReporter().cannotUseQualifiedEnumConstantInCaseLabel(nameReference, fieldBinding);
                }
                return IntConstant.fromValue(fieldBinding.original().f102483id + 1);
            }
        } else if (isBoxingCompatible(typeBinding, typeBinding2, expression, blockScope)) {
            return expression.constant;
        }
        blockScope.problemReporter().typeMismatchError(typeBinding, typeBinding2, this.constantExpression, switchStatement.expression);
        return Constant.NotAConstant;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            Expression[] expressionArr = this.constantExpressions;
            if (expressionArr == null || expressionArr.length <= 1) {
                Expression expression = this.constantExpression;
                if (expression != null) {
                    expression.traverse(aSTVisitor, blockScope);
                }
            } else {
                for (Expression expression2 : expressionArr) {
                    expression2.traverse(aSTVisitor, blockScope);
                }
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }
}
