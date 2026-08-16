package org.eclipse.jdt.internal.core.search;

import org.eclipse.jdt.internal.compiler.env.AccessRestriction;

public interface IRestrictedAccessMethodRequestor {
    void acceptMethod(char[] cArr, int i10, char[] cArr2, char[] cArr3, int i11, char[] cArr4, char[] cArr5, char[][] cArr6, char[][] cArr7, char[] cArr8, int i12, String str, AccessRestriction accessRestriction, int i13);
}
