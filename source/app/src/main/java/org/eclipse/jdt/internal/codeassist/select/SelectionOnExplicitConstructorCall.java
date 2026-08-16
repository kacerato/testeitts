package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;

public class SelectionOnExplicitConstructorCall extends ExplicitConstructorCall {
    public SelectionOnExplicitConstructorCall(int i10) {
        super(i10);
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        stringBuffer.append("<SelectOnExplicitConstructorCall:");
        Expression expression = this.qualification;
        if (expression != null) {
            expression.printExpression(0, stringBuffer).append('.');
        }
        if (this.accessMode == 3) {
            stringBuffer.append("this(");
        } else {
            stringBuffer.append("super(");
        }
        if (this.arguments != null) {
            for (int i11 = 0; i11 < this.arguments.length; i11++) {
                if (i11 > 0) {
                    stringBuffer.append(", ");
                }
                this.arguments[i11].printExpression(0, stringBuffer);
            }
        }
        stringBuffer.append(")>;");
        return stringBuffer;
    }

    @Override
    public void resolve(BlockScope blockScope) {
        super.resolve(blockScope);
        MethodBinding methodBinding = this.binding;
        if (methodBinding != null && (methodBinding.isValidBinding() || this.binding.problemId() == 2)) {
            throw new SelectionNodeFound(this.binding);
        }
        throw new SelectionNodeFound();
    }
}
