package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;

public class CompletionOnKeyword2 extends ImportReference implements CompletionOnKeyword {
    private char[][] possibleKeywords;
    private char[] token;

    public CompletionOnKeyword2(char[] cArr, long j10, char[][] cArr2) {
        super(new char[][]{cArr}, new long[]{j10}, false, 0);
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

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer, boolean z10) {
        StringBuffer printIndent = ASTNode.printIndent(i10, stringBuffer);
        printIndent.append("<CompleteOnKeyword:");
        printIndent.append(this.token);
        printIndent.append('>');
        return printIndent;
    }
}
