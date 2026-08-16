package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnKeyword1 extends SingleTypeReference implements CompletionOnKeyword {
    private char[][] possibleKeywords;

    public CompletionOnKeyword1(char[] cArr, long j10, char[] cArr2) {
        this(cArr, j10, new char[][]{cArr2});
    }

    @Override
    public void aboutToResolve(Scope scope) {
        getTypeBinding(scope);
    }

    @Override
    public char[][] getPossibleKeywords() {
        return this.possibleKeywords;
    }

    @Override
    public char[] getToken() {
        return this.token;
    }

    @Override
    public TypeBinding getTypeBinding(Scope scope) {
        throw new CompletionNodeFound(this, scope);
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<CompleteOnKeyword:");
        stringBuffer.append(this.token);
        stringBuffer.append('>');
        return stringBuffer;
    }

    public CompletionOnKeyword1(char[] cArr, long j10, char[][] cArr2) {
        super(cArr, j10);
        this.possibleKeywords = cArr2;
    }
}
