package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import w2.C15883c;

public class PrefixExpression extends CompoundAssignment {
    public PrefixExpression(Expression expression, Expression expression2, int i10, int i11) {
        super(expression, expression2, i10, expression.sourceEnd);
        this.sourceStart = i11;
        this.sourceEnd = expression.sourceEnd;
    }

    @Override
    public boolean checkCastCompatibility() {
        return false;
    }

    @Override
    public String operatorToString() {
        int i10 = this.operator;
        return i10 != 13 ? i10 != 14 ? "unknown operator" : "++" : "--";
    }

    @Override
    public StringBuffer printExpressionNoParenthesis(int i10, StringBuffer stringBuffer) {
        stringBuffer.append(operatorToString());
        stringBuffer.append(C15883c.f126249O);
        return this.lhs.printExpression(0, stringBuffer);
    }

    @Override
    public boolean restrainUsageToNumericTypes() {
        return true;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            this.lhs.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }
}
