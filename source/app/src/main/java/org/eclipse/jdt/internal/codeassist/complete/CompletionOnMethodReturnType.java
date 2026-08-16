package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;

public class CompletionOnMethodReturnType extends MethodDeclaration {
    public CompletionOnMethodReturnType(TypeReference typeReference, CompilationResult compilationResult) {
        super(compilationResult);
        this.returnType = typeReference;
        this.sourceStart = typeReference.sourceStart;
        this.sourceEnd = typeReference.sourceEnd;
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        return this.returnType.print(i10, stringBuffer);
    }

    @Override
    public void resolveStatements() {
        throw new CompletionNodeFound(this, this.scope);
    }
}
