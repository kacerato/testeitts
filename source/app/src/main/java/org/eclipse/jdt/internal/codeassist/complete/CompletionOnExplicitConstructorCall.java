package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;

public class CompletionOnExplicitConstructorCall extends ExplicitConstructorCall {
    public CompletionOnExplicitConstructorCall(int i10) {
        super(i10);
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        stringBuffer.append("<CompleteOnExplicitConstructorCall:");
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
        ReferenceBinding enclosingSourceType = blockScope.enclosingSourceType();
        Expression[] expressionArr = this.arguments;
        if (expressionArr != null) {
            int length = expressionArr.length;
            while (true) {
                length--;
                if (length < 0) {
                    break;
                } else {
                    this.arguments[length].resolveType(blockScope);
                }
            }
        }
        if (this.accessMode != 3 && enclosingSourceType != null) {
            if (enclosingSourceType.isHierarchyInconsistent()) {
                throw new CompletionNodeFound();
            }
            enclosingSourceType = enclosingSourceType.superclass();
        }
        if (enclosingSourceType != null) {
            throw new CompletionNodeFound(this, enclosingSourceType, blockScope);
        }
        throw new CompletionNodeFound();
    }
}
