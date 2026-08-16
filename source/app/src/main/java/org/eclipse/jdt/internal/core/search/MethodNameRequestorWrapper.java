package org.eclipse.jdt.internal.core.search;

import org.eclipse.jdt.core.search.MethodNameRequestor;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;

public class MethodNameRequestorWrapper implements IRestrictedAccessMethodRequestor {
    MethodNameRequestor requestor;

    public MethodNameRequestorWrapper(MethodNameRequestor methodNameRequestor) {
        this.requestor = methodNameRequestor;
    }

    @Override
    public void acceptMethod(char[] cArr, int i10, char[] cArr2, char[] cArr3, int i11, char[] cArr4, char[] cArr5, char[][] cArr6, char[][] cArr7, char[] cArr8, int i12, String str, AccessRestriction accessRestriction, int i13) {
        this.requestor.acceptMethod(cArr, i10, cArr2, cArr3, i11, cArr4, cArr5, cArr6, cArr7, cArr8, i12, str, i13);
    }
}
