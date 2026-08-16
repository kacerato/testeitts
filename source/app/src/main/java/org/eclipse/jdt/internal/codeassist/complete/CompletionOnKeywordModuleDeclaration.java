package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;

public class CompletionOnKeywordModuleDeclaration extends ModuleDeclaration implements CompletionOnKeyword {
    private char[][] possibleKeywords;
    private char[] token;

    public CompletionOnKeywordModuleDeclaration(char[] cArr, long j10, char[][] cArr2) {
        super(null, new char[][]{cArr}, new long[]{j10});
        this.token = cArr;
        this.possibleKeywords = cArr2;
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
