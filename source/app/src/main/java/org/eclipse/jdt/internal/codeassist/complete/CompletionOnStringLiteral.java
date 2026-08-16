package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.StringLiteral;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnStringLiteral extends StringLiteral {
    public int contentEnd;
    public int contentStart;

    public CompletionOnStringLiteral(char[] cArr, int i10, int i11, int i12, int i13, int i14) {
        super(cArr, i10, i11, i14);
        this.contentStart = i12;
        this.contentEnd = i13;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<CompletionOnString:");
        StringBuffer printExpression = super.printExpression(i10, stringBuffer);
        printExpression.append('>');
        return printExpression;
    }

    @Override
    public TypeBinding resolveType(ClassScope classScope) {
        throw new CompletionNodeFound(this, (Binding) null, classScope);
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        throw new CompletionNodeFound(this, (Binding) null, blockScope);
    }

    public CompletionOnStringLiteral(int i10, int i11, int i12, int i13) {
        super(i10, i11);
        this.contentStart = i12;
        this.contentEnd = i13;
    }
}
