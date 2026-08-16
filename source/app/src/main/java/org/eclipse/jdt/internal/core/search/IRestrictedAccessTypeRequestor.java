package org.eclipse.jdt.internal.core.search;

import org.eclipse.jdt.internal.compiler.env.AccessRestriction;

public interface IRestrictedAccessTypeRequestor {
    void acceptType(int i10, char[] cArr, char[] cArr2, char[][] cArr3, String str, AccessRestriction accessRestriction);
}
