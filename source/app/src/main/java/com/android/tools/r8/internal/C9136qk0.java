package com.android.tools.r8.internal;

import com.android.tools.r8.retrace.RetracedClassReference;
import com.android.tools.r8.retrace.RetracedMethodReference;
import java.util.OptionalInt;

public final class C9136qk0 extends AbstractC9302rk0 {

    public final JW f51874d;

    public C9136qk0(JW jw, OptionalInt optionalInt) {
        super(optionalInt);
        this.f51874d = jw;
    }

    @Override
    public final RetracedMethodReference.KnownRetracedMethodReference asKnown() {
        return null;
    }

    @Override
    public final int compareTo(RetracedMethodReference retracedMethodReference) {
        return AbstractC9302rk0.f52122c.compare(this, retracedMethodReference);
    }

    @Override
    public final RetracedClassReference getHolderClass() {
        return new C8301lk0(false, this.f51874d.getHolderClass());
    }

    @Override
    public final String getMethodName() {
        return this.f51874d.getName();
    }
}
