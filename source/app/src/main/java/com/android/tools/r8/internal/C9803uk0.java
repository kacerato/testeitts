package com.android.tools.r8.internal;

import com.android.tools.r8.references.Reference;
import com.android.tools.r8.references.TypeReference;
import com.android.tools.r8.retrace.RetracedTypeReference;
import java.util.Objects;

public final class C9803uk0 implements RetracedTypeReference {

    public static final boolean f52932b = true;

    public final TypeReference f52933a;

    public C9803uk0(TypeReference typeReference) {
        this.f52933a = typeReference;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C9803uk0.class != obj.getClass()) {
            return false;
        }
        return this.f52933a.equals(((C9803uk0) obj).f52933a);
    }

    @Override
    public final String getTypeName() {
        if (f52932b || !isVoid()) {
            return this.f52933a.getTypeName();
        }
        throw new AssertionError();
    }

    @Override
    public final TypeReference getTypeReference() {
        return this.f52933a;
    }

    public final int hashCode() {
        return Objects.hash(this.f52933a);
    }

    @Override
    public final boolean isVoid() {
        return this.f52933a == null;
    }

    @Override
    public final TypeReference toArray(int i10) {
        return Reference.array(this.f52933a, i10);
    }
}
