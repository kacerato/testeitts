package org.eclipse.jdt.core.search;

public interface ITypeNameRequestor {
    void acceptClass(char[] cArr, char[] cArr2, char[][] cArr3, String str);

    void acceptInterface(char[] cArr, char[] cArr2, char[][] cArr3, String str);
}
