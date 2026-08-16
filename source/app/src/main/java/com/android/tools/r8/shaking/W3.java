package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.C9073qK;
import com.android.tools.r8.shaking.C11384q3;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public final class W3 extends Y3 {

    public final String f57086c;

    public final List f57087d;

    public W3(C11384q3.a aVar) {
        this.f57086c = aVar.f57729a;
        this.f57087d = aVar.f57730b;
    }

    @Override
    public final W3 a() {
        return new W3(new C11384q3.a(this.f57086c, (List) this.f57087d.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((AbstractC11401r4) obj).f();
            }
        }).collect(Collectors.toList())));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof W3) && this.f57086c.equals(((W3) obj).f57086c);
    }

    public final int hashCode() {
        return this.f57086c.hashCode();
    }

    public final String toString() {
        return this.f57086c;
    }

    @Override
    public final boolean a(String str) {
        boolean a10 = Y3.a(this.f57086c, 0, str, 0, this.f57087d, 0);
        if (!a10) {
            this.f57087d.forEach(new Db());
        }
        return a10;
    }

    @Override
    public final Iterable a(Predicate predicate) {
        return C9073qK.a(this.f57087d, predicate);
    }
}
