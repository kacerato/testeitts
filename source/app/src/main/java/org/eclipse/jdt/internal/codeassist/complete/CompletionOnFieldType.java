package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;

public class CompletionOnFieldType extends FieldDeclaration {
    public boolean isLocalVariable;

    public CompletionOnFieldType(TypeReference typeReference, boolean z10) {
        this.sourceStart = typeReference.sourceStart;
        this.sourceEnd = typeReference.sourceEnd;
        this.type = typeReference;
        this.name = CharOperation.NO_CHAR;
        this.isLocalVariable = z10;
        if (typeReference instanceof CompletionOnSingleTypeReference) {
            ((CompletionOnSingleTypeReference) typeReference).fieldTypeCompletionNode = this;
        }
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        StringBuffer print = this.type.print(i10, stringBuffer);
        print.append(';');
        return print;
    }
}
