package org.eclipse.jdt.internal.core;

public interface INamingRequestor {
    void acceptNameWithPrefix(char[] cArr, boolean z10, int i10);

    void acceptNameWithPrefixAndSuffix(char[] cArr, boolean z10, boolean z11, int i10);

    void acceptNameWithSuffix(char[] cArr, boolean z10, int i10);

    void acceptNameWithoutPrefixAndSuffix(char[] cArr, int i10);
}
