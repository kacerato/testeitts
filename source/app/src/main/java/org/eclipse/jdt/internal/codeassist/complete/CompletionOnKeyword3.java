package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnKeyword3 extends SingleNameReference implements CompletionOnKeyword {
    private char[][] possibleKeywords;
    private boolean tryOrCatch;

    public CompletionOnKeyword3(char[] cArr, long j10, char[] cArr2) {
        this(cArr, j10, new char[][]{cArr2}, false);
    }

    public boolean afterTryOrCatch() {
        return this.tryOrCatch;
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
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<CompleteOnKeyword:");
        stringBuffer.append(this.token);
        stringBuffer.append('>');
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        throw new CompletionNodeFound(this, blockScope);
    }

    public CompletionOnKeyword3(char[] cArr, long j10, char[][] cArr2, boolean z10) {
        super(cArr, j10);
        this.token = cArr;
        this.possibleKeywords = cArr2;
        this.tryOrCatch = z10;
    }
}
