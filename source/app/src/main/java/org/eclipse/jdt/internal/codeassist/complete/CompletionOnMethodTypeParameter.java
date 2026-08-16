package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;

public class CompletionOnMethodTypeParameter extends MethodDeclaration {
    public CompletionOnMethodTypeParameter(TypeParameter[] typeParameterArr, CompilationResult compilationResult) {
        super(compilationResult);
        this.selector = CharOperation.NO_CHAR;
        this.typeParameters = typeParameterArr;
        this.sourceStart = typeParameterArr[0].sourceStart;
        this.sourceEnd = typeParameterArr[typeParameterArr.length - 1].sourceEnd;
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        stringBuffer.append('<');
        int length = this.typeParameters.length - 1;
        for (int i11 = 0; i11 < length; i11++) {
            this.typeParameters[i11].print(0, stringBuffer);
            stringBuffer.append(", ");
        }
        this.typeParameters[length].print(0, stringBuffer);
        stringBuffer.append('>');
        return stringBuffer;
    }

    @Override
    public void resolveStatements() {
        throw new CompletionNodeFound(this, this.scope);
    }
}
