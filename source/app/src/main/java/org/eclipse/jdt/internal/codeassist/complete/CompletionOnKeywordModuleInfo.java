package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.ExportsStatement;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;

public class CompletionOnKeywordModuleInfo extends ExportsStatement implements CompletionOnKeyword {
    private char[][] possibleKeywords;
    private char[] token;

    public CompletionOnKeywordModuleInfo(char[] cArr, long j10, char[][] cArr2) {
        super(new ImportReference(new char[][]{cArr}, new long[]{j10}, false, 0), null);
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
