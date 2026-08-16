package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.shaking.AbstractC11401r4;
import java.util.Collections;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C11266j4 extends AbstractC11250i4 {

    public static final C11266j4 f57449c = new C11266j4();

    public final AbstractC11401r4 f57450b;

    public C11266j4() {
        this.f57450b = new AbstractC11401r4.b("***");
    }

    @Override
    public final void a(Consumer consumer) {
        consumer.accept(this.f57450b);
    }

    @Override
    public final boolean b(com.android.tools.r8.graph.M2 m22) {
        this.f57450b.a(m22.j0());
        return true;
    }

    @Override
    public final boolean equals(Object obj) {
        return obj instanceof C11266j4;
    }

    @Override
    public final int hashCode() {
        return C11266j4.class.hashCode();
    }

    @Override
    public final String toString() {
        return "***";
    }

    @Override
    public final Iterable a(Predicate predicate) {
        return predicate.test(this.f57450b) ? Collections.singleton(this.f57450b) : Collections.EMPTY_LIST;
    }

    public C11266j4(AbstractC11401r4 abstractC11401r4) {
        this.f57450b = abstractC11401r4;
    }

    @Override
    public final AbstractC11250i4 a(C4724u1 c4724u1) {
        return new C11266j4(this.f57450b.f());
    }
}
