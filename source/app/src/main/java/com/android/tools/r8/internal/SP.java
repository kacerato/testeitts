package com.android.tools.r8.internal;

import org.eclipse.jdt.internal.core.JavadocConstants;

public abstract class SP extends JP {
    public abstract Object a();

    @Override
    public final String toString() {
        String obj;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getClass().getSimpleName());
        sb2.append('(');
        if (this instanceof VP) {
            obj = JavadocConstants.ANCHOR_PREFIX_END + ((Object) ((VP) this).f45045a) + '\"';
        } else {
            obj = a().toString();
        }
        sb2.append(obj);
        sb2.append(')');
        return sb2.toString();
    }
}
