package org.eclipse.jdt.internal.codeassist;

import org.eclipse.jdt.internal.compiler.env.AccessRestriction;

public interface ISearchRequestor {
    void acceptConstructor(int i10, char[] cArr, int i11, char[] cArr2, char[][] cArr3, char[][] cArr4, int i12, char[] cArr5, int i13, String str, AccessRestriction accessRestriction);

    void acceptModule(char[] cArr);

    void acceptPackage(char[] cArr);

    void acceptType(char[] cArr, char[] cArr2, char[][] cArr3, int i10, AccessRestriction accessRestriction);
}
