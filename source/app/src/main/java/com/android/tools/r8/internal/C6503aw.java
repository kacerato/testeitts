package com.android.tools.r8.internal;

import com.android.tools.r8.references.ClassReference;
import java.util.Objects;

public final class C6503aw extends AbstractC6836cw {

    public final ClassReference f46651a;

    public final String f46652b;

    public C6503aw(ClassReference classReference, String str) {
        this.f46651a = classReference;
        this.f46652b = str;
    }

    @Override
    public final AbstractC6836cw a(ClassReference classReference) {
        return new C6503aw(classReference, this.f46652b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C6503aw.class == obj.getClass()) {
            C6503aw c6503aw = (C6503aw) obj;
            if (this.f46651a.equals(c6503aw.f46651a) && this.f46652b.equals(c6503aw.f46652b)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final ClassReference getHolderClass() {
        return this.f46651a;
    }

    @Override
    public final String getName() {
        return this.f46652b;
    }

    public final int hashCode() {
        return Objects.hash(this.f46651a, this.f46652b);
    }
}
