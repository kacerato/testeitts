package com.android.tools.r8.internal;

import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.retrace.RetracedClassReference;
import com.android.tools.r8.retrace.RetracedTypeReference;

public final class C8301lk0 implements RetracedClassReference {

    public static final boolean f50087c = true;

    public final ClassReference f50088a;

    public final boolean f50089b;

    public C8301lk0(boolean z10, ClassReference classReference) {
        if (!f50087c && classReference == null) {
            throw new AssertionError();
        }
        this.f50088a = classReference;
        this.f50089b = z10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C8301lk0.class != obj.getClass()) {
            return false;
        }
        return this.f50088a.equals(((C8301lk0) obj).f50088a);
    }

    @Override
    public final String getBinaryName() {
        return this.f50088a.getBinaryName();
    }

    @Override
    public final ClassReference getClassReference() {
        return this.f50088a;
    }

    @Override
    public final String getDescriptor() {
        return this.f50088a.getDescriptor();
    }

    @Override
    public final RetracedTypeReference getRetracedType() {
        return new C9803uk0(this.f50088a);
    }

    @Override
    public final String getTypeName() {
        return this.f50088a.getTypeName();
    }

    public final int hashCode() {
        return this.f50088a.hashCode();
    }

    @Override
    public final boolean isKnown() {
        return this.f50089b;
    }

    @Override
    public final boolean isUnknown() {
        return !this.f50089b;
    }
}
