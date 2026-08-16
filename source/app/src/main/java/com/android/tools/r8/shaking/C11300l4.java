package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.shaking.AbstractC11401r4;
import java.util.Collections;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C11300l4 extends AbstractC11250i4 {

    public static final C11300l4 f57510c = new C11300l4();

    public final AbstractC11401r4 f57511b;

    public C11300l4() {
        this.f57511b = new AbstractC11401r4.b(ve.j.f121589a);
    }

    @Override
    public final void a(Consumer consumer) {
        consumer.accept(this.f57511b);
    }

    @Override
    public final boolean b(com.android.tools.r8.graph.M2 m22) {
        if (!m22.P0()) {
            return false;
        }
        this.f57511b.a(m22.j0());
        return true;
    }

    @Override
    public final boolean equals(Object obj) {
        return obj instanceof C11300l4;
    }

    @Override
    public final int hashCode() {
        return C11300l4.class.hashCode();
    }

    @Override
    public final String toString() {
        return ve.j.f121589a;
    }

    @Override
    public final Iterable a(Predicate predicate) {
        return predicate.test(this.f57511b) ? Collections.singleton(this.f57511b) : Collections.EMPTY_LIST;
    }

    public C11300l4(AbstractC11401r4 abstractC11401r4) {
        this.f57511b = abstractC11401r4;
    }

    @Override
    public final AbstractC11250i4 a(C4724u1 c4724u1) {
        return new C11300l4(this.f57511b.f());
    }
}
