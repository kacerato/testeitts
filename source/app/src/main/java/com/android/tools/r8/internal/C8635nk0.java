package com.android.tools.r8.internal;

import com.android.tools.r8.retrace.RetracedClassReference;
import com.android.tools.r8.retrace.RetracedFieldReference;
import java.util.Objects;

public final class C8635nk0 extends AbstractC8802ok0 {

    public final AbstractC6836cw f51063b;

    public C8635nk0(AbstractC6836cw abstractC6836cw) {
        this.f51063b = abstractC6836cw;
    }

    @Override
    public final RetracedFieldReference.KnownRetracedFieldReference asKnown() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C8635nk0.class != obj.getClass()) {
            return false;
        }
        return this.f51063b.equals(((C8635nk0) obj).f51063b);
    }

    @Override
    public final String getFieldName() {
        return this.f51063b.getName();
    }

    @Override
    public final RetracedClassReference getHolderClass() {
        return new C8301lk0(false, this.f51063b.getHolderClass());
    }

    public final int hashCode() {
        return Objects.hash(this.f51063b);
    }
}
