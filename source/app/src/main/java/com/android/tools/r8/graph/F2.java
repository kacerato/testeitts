package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import java.util.Objects;
import java.util.function.Function;

public abstract class F2 implements InterfaceC5580Mq0 {

    public static final int f36286b = 0;

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((F2) obj).a();
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((F2) obj).b();
            }
        });
    }

    public abstract L2 a();

    public abstract I2 b();

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof F2)) {
            return false;
        }
        F2 f22 = (F2) obj;
        return a().g(f22.a()) && b().a(f22.b());
    }

    public final int hashCode() {
        return Objects.hash(a(), b());
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                F2.a(abstractC5754Pq0);
            }
        };
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(b().o0().D0());
        sb2.append(" ");
        sb2.append((Object) a());
        sb2.append("(");
        for (int i10 = 0; i10 < b().m0(); i10++) {
            if (i10 != 0) {
                sb2.append(", ");
            }
            sb2.append(b().f36441f.f36675b[i10].D0());
        }
        sb2.append(")");
        return sb2.toString();
    }
}
