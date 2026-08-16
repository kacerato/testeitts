package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.ModuleReference;

public class CompletionOnKeywordModule2 extends ModuleReference implements CompletionOnKeyword {
    private char[][] possibleKeywords;
    private char[] token;

    public CompletionOnKeywordModule2(char[] cArr, long j10, char[][] cArr2) {
        super(new char[][]{cArr}, new long[]{j10});
        this.token = cArr;
        this.possibleKeywords = cArr2;
        this.sourceStart = (int) (j10 >>> 32);
        this.sourceEnd = (int) (j10 & 4294967295L);
    }

    @Override
    public char[][] getPossibleKeywords() {
        return this.possibleKeywords;
    }

    @Override
    public char[] getToken() {
        return this.token;
    }
}
