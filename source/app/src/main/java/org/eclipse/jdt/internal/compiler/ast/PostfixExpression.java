package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import w2.C15883c;

public class PostfixExpression extends CompoundAssignment {
    public PostfixExpression(Expression expression, Expression expression2, int i10, int i11) {
        super(expression, expression2, i10, i11);
        this.sourceStart = expression.sourceStart;
        this.sourceEnd = i11;
    }

    @Override
    public boolean checkCastCompatibility() {
        return false;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10 = codeStream.position;
        ((Reference) this.lhs).generatePostIncrement(blockScope, codeStream, this, z10);
        if (z10) {
            codeStream.generateImplicitConversion(this.implicitConversion);
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public String operatorToString() {
        int i10 = this.operator;
        return i10 != 13 ? i10 != 14 ? "unknown operator" : "++" : "--";
    }

    @Override
    public StringBuffer printExpressionNoParenthesis(int i10, StringBuffer stringBuffer) {
        StringBuffer printExpression = this.lhs.printExpression(i10, stringBuffer);
        printExpression.append(C15883c.f126249O);
        printExpression.append(operatorToString());
        return printExpression;
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
