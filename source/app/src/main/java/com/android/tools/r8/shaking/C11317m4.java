package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.shaking.AbstractC11401r4;
import java.util.Collections;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C11317m4 extends AbstractC11250i4 {

    public static final C11317m4 f57533d = new C11317m4("**", new AbstractC11401r4.b("**"));

    public static final C11317m4 f57534e = new C11317m4("*", new AbstractC11401r4.b("*"));

    public static final boolean f57535f = true;

    public final String f57536b;

    public final AbstractC11401r4 f57537c;

    public C11317m4(String str, AbstractC11401r4 abstractC11401r4) {
        if (!f57535f && !str.equals("*") && !str.equals("**")) {
            throw new AssertionError();
        }
        this.f57536b = str;
        this.f57537c = abstractC11401r4;
    }

    @Override
    public final void a(Consumer consumer) {
        consumer.accept(this.f57537c);
    }

    @Override
    public final boolean b(com.android.tools.r8.graph.M2 m22) {
        if (!m22.I0()) {
            return false;
        }
        this.f57537c.a(m22.j0());
        return true;
    }

    @Override
    public final boolean d() {
        return true;
    }

    @Override
    public final boolean equals(Object obj) {
        return (obj instanceof C11317m4) && this.f57536b.equals(((C11317m4) obj).f57536b);
    }

    @Override
    public final int hashCode() {
        return this.f57536b.hashCode();
    }

    @Override
    public final String toString() {
        return this.f57536b;
    }

    @Override
    public final Iterable a(Predicate predicate) {
        return predicate.test(this.f57537c) ? Collections.singleton(this.f57537c) : Collections.EMPTY_LIST;
    }

    @Override
    public final AbstractC11250i4 a(C4724u1 c4724u1) {
        return new C11317m4(this.f57536b, this.f57537c.f());
    }
}
