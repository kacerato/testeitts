package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;

public class SelectionOnFieldType extends FieldDeclaration {
    public SelectionOnFieldType(TypeReference typeReference) {
        this.sourceStart = typeReference.sourceStart;
        this.sourceEnd = typeReference.sourceEnd;
        this.type = typeReference;
        this.name = CharOperation.NO_CHAR;
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        StringBuffer print = this.type.print(i10, stringBuffer);
        print.append(';');
        return print;
    }
}
