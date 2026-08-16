package com.android.tools.r8.shaking;

import com.android.tools.r8.shaking.AbstractC11401r4;
import java.util.Collections;
import java.util.function.Predicate;

public final class V3 extends Y3 {

    public final AbstractC11401r4 f57057c;

    public V3() {
        this.f57057c = new AbstractC11401r4.b("*");
    }

    @Override
    public final boolean a(String str) {
        this.f57057c.a(str);
        return true;
    }

    public final boolean equals(Object obj) {
        return obj instanceof V3;
    }

    public final int hashCode() {
        return V3.class.hashCode();
    }

    public final String toString() {
        return "*";
    }

    @Override
    public final Iterable a(Predicate predicate) {
        return predicate.test(this.f57057c) ? Collections.singleton(this.f57057c) : Collections.EMPTY_LIST;
    }

    public V3(AbstractC11401r4 abstractC11401r4) {
        this.f57057c = abstractC11401r4;
    }

    @Override
    public final Y3 a() {
        return new V3(this.f57057c.f());
    }
}
