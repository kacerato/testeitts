package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Arrays;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C6279Yu extends AbstractC6165Wu {

    public static final boolean f46106b = true;

    public final com.android.tools.r8.graph.M2[] f46107a;

    public C6279Yu(com.android.tools.r8.graph.M2[] m2Arr) {
        if (!f46106b && !Arrays.stream(m2Arr).noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return Objects.isNull((com.android.tools.r8.graph.M2) obj);
            }
        })) {
            throw new AssertionError();
        }
        this.f46107a = m2Arr;
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(int i10) {
        if (f46106b || (i10 >= 0 && i10 < this.f46107a.length)) {
            return this.f46107a[i10];
        }
        throw new AssertionError();
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj instanceof C6279Yu) {
            return Arrays.equals(this.f46107a, ((C6279Yu) obj).f46107a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f46107a);
    }

    @Override
    public final AbstractC6165Wu a(final AbstractC5308Hz abstractC5308Hz, final AbstractC5308Hz abstractC5308Hz2) {
        com.android.tools.r8.graph.M2[] m2Arr = (com.android.tools.r8.graph.M2[]) X3.a((Object[]) this.f46107a, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C6279Yu.a(AbstractC5308Hz.this, abstractC5308Hz2, (com.android.tools.r8.graph.M2) obj);
            }
        }, (Object[]) com.android.tools.r8.graph.M2.f36589h);
        com.android.tools.r8.graph.M2 m22 = m2Arr[0];
        for (com.android.tools.r8.graph.M2 m23 : m2Arr) {
            if (m23 != m22) {
                return new C6279Yu(m2Arr);
            }
        }
        return new C6222Xu(m2Arr[0]);
    }

    public static com.android.tools.r8.graph.M2 a(AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.M2 c10 = abstractC5308Hz.c(abstractC5308Hz2, m22);
        if (f46106b || c10.I0()) {
            return c10;
        }
        throw new AssertionError();
    }

    @Override
    public final boolean a(C4798y c4798y) {
        if (f46106b || this.f46107a.length > 0) {
            return c4798y.I().b(this.f46107a[0]);
        }
        throw new AssertionError();
    }
}
