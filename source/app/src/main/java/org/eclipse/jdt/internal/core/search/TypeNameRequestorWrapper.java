package org.eclipse.jdt.internal.core.search;

import org.eclipse.jdt.core.search.TypeNameRequestor;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;

public class TypeNameRequestorWrapper implements IRestrictedAccessTypeRequestor {
    TypeNameRequestor requestor;

    public TypeNameRequestorWrapper(TypeNameRequestor typeNameRequestor) {
        this.requestor = typeNameRequestor;
    }

    @Override
    public void acceptType(int i10, char[] cArr, char[] cArr2, char[][] cArr3, String str, AccessRestriction accessRestriction) {
        this.requestor.acceptType(i10, cArr, cArr2, cArr3, str);
    }
}
