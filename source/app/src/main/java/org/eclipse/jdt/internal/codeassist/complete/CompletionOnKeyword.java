package org.eclipse.jdt.internal.codeassist.complete;

public interface CompletionOnKeyword {
    char[][] getPossibleKeywords();

    char[] getToken();
}
