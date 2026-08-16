package com.android.tools.r8.diagnostic.internal;

import com.android.tools.r8.diagnostic.MissingClassInfo;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.references.ClassReference;

public final class h extends j implements MissingClassInfo {

    public final ClassReference f36003b;

    public h(ClassReference classReference, AbstractC7552hC abstractC7552hC) {
        super(abstractC7552hC);
        this.f36003b = classReference;
    }

    @Override
    public final ClassReference getClassReference() {
        return this.f36003b;
    }
}
