package org.eclipse.jdt.core.compiler;

public interface IScanner {
    int getCurrentTokenEndPosition();

    char[] getCurrentTokenSource();

    int getCurrentTokenStartPosition();

    int getLineEnd(int i10);

    int[] getLineEnds();

    int getLineNumber(int i10);

    int getLineStart(int i10);

    int getNextToken() throws InvalidInputException;

    char[] getRawTokenSource();

    char[] getSource();

    void resetTo(int i10, int i11);

    void setSource(char[] cArr);
}
