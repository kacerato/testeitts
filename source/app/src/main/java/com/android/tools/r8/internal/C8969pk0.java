package com.android.tools.r8.internal;

import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.references.TypeReference;
import com.android.tools.r8.retrace.RetracedClassReference;
import com.android.tools.r8.retrace.RetracedMethodReference;
import java.util.List;
import java.util.Objects;
import java.util.OptionalInt;

public final class C8969pk0 extends AbstractC9302rk0 implements RetracedMethodReference.KnownRetracedMethodReference {

    public static final boolean f51602e = true;

    public final MethodReference f51603d;

    public C8969pk0(MethodReference methodReference, OptionalInt optionalInt) {
        super(optionalInt);
        if (!f51602e && methodReference == null) {
            throw new AssertionError();
        }
        this.f51603d = methodReference;
    }

    @Override
    public final C8969pk0 a() {
        return this;
    }

    @Override
    public final RetracedMethodReference.KnownRetracedMethodReference asKnown() {
        return this;
    }

    @Override
    public final int compareTo(RetracedMethodReference retracedMethodReference) {
        return AbstractC9302rk0.f52122c.compare(this, retracedMethodReference);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C8969pk0.class == obj.getClass()) {
            C8969pk0 c8969pk0 = (C8969pk0) obj;
            if (this.f52123b == c8969pk0.f52123b && this.f51603d.equals(c8969pk0.f51603d)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final List getFormalTypes() {
        return this.f51603d.getFormalTypes();
    }

    @Override
    public final RetracedClassReference getHolderClass() {
        return new C8301lk0(true, this.f51603d.getHolderClass());
    }

    @Override
    public final String getMethodName() {
        return this.f51603d.getMethodName();
    }

    @Override
    public final MethodReference getMethodReference() {
        return this.f51603d;
    }

    @Override
    public final TypeReference getReturnType() {
        if (f51602e || !isVoid()) {
            return this.f51603d.getReturnType();
        }
        throw new AssertionError();
    }

    public final int hashCode() {
        return Objects.hash(this.f51603d, this.f52123b);
    }

    @Override
    public final boolean isVoid() {
        return this.f51603d.getReturnType() == null;
    }
}
