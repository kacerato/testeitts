package com.android.tools.r8.internal;

import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.references.Reference;

public final class IW extends JW {

    public final MethodReference f41114a;

    public IW(MethodReference methodReference) {
        this.f41114a = methodReference;
    }

    @Override
    public final IW a() {
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || IW.class != obj.getClass()) {
            return false;
        }
        return this.f41114a.equals(((IW) obj).f41114a);
    }

    @Override
    public final ClassReference getHolderClass() {
        return this.f41114a.getHolderClass();
    }

    @Override
    public final String getName() {
        return this.f41114a.getMethodName();
    }

    public final int hashCode() {
        return this.f41114a.hashCode();
    }

    @Override
    public final JW a(ClassReference classReference) {
        return new IW(Reference.method(classReference, this.f41114a.getMethodName(), this.f41114a.getFormalTypes(), this.f41114a.getReturnType()));
    }
}
