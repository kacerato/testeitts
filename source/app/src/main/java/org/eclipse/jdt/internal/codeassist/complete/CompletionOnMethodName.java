package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;

public class CompletionOnMethodName extends MethodDeclaration {
    public int selectorEnd;

    public CompletionOnMethodName(CompilationResult compilationResult) {
        super(compilationResult);
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        stringBuffer.append("<CompletionOnMethodName:");
        ASTNode.printModifiers(this.modifiers, stringBuffer);
        printReturnType(0, stringBuffer);
        stringBuffer.append(this.selector);
        stringBuffer.append('(');
        if (this.arguments != null) {
            for (int i11 = 0; i11 < this.arguments.length; i11++) {
                if (i11 > 0) {
                    stringBuffer.append(", ");
                }
                this.arguments[i11].print(0, stringBuffer);
            }
        }
        stringBuffer.append(')');
        if (this.thrownExceptions != null) {
            stringBuffer.append(" throws ");
            for (int i12 = 0; i12 < this.thrownExceptions.length; i12++) {
                if (i12 > 0) {
                    stringBuffer.append(", ");
                }
                this.thrownExceptions[i12].print(0, stringBuffer);
            }
        }
        stringBuffer.append('>');
        return stringBuffer;
    }

    @Override
    public void resolve(ClassScope classScope) {
        super.resolve(classScope);
        throw new CompletionNodeFound(this, classScope);
    }
}
