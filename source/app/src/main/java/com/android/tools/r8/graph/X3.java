package com.android.tools.r8.graph;

import com.android.tools.r8.graph.H3;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.shaking.C11245i;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.Predicate;

public class X3 {

    public final C4724u1 f36955a;

    public final Predicate f36956b;

    public final Function f36957c;

    public final H2 f36958d;

    public final H3.c f36959e;

    public final Predicate f36960f;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public X3(final C4798y c4798y, H2 h22, Predicate predicate) {
        this(r1, r2, new Function() {
            @Override
            public final Object apply(Object obj) {
                return X3.a(C4798y.this, (M2) obj);
            }
        }, h22, predicate);
        Predicate predicate2;
        C4724u1 b10 = c4798y.b();
        if (c4798y.f().i()) {
            C11245i m10 = c4798y.f().m();
            Objects.requireNonNull(m10);
            predicate2 = new Sb(m10);
        } else {
            predicate2 = EnumC6871d70.f47287c;
        }
    }

    public static M2 a(C4798y c4798y, M2 m22) {
        return c4798y.v().c(c4798y.f38416i, m22);
    }

    public H3.e a(H3.e eVar) {
        if (eVar.a()) {
            return eVar;
        }
        H3.e c10 = new W3(this, this.f36955a).c(eVar);
        return c10 == null ? H3.e.p() : c10;
    }

    public X3(C4724u1 c4724u1, Predicate<M2> predicate, Function<M2, M2> function, H2 h22, Predicate<M2> predicate2) {
        this.f36955a = c4724u1;
        this.f36956b = predicate;
        this.f36957c = function;
        this.f36958d = h22;
        this.f36960f = predicate2;
        this.f36959e = new H3.c(c4724u1.f38068i2, H3.f36373b, null, H3.k.f36403b);
    }

    public H3.g a(H3.g gVar) {
        return !gVar.a() ? gVar.a(new W3(this, this.f36955a)) : gVar;
    }
}
