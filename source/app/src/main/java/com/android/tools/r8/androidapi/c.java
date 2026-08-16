package com.android.tools.r8.androidapi;

import com.android.tools.r8.androidapi.a;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.E0;
import com.android.tools.r8.graph.J2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.A2;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C2;
import com.android.tools.r8.internal.C4875Al0;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.D2;
import com.android.tools.r8.internal.E2;
import com.android.tools.r8.internal.F2;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;

public final class c {

    public static final boolean f35594g = true;

    public final a.C0913a f35595a;

    public final F2 f35596b;

    public final C4798y f35597c;

    public final C4724u1 f35598d;

    public final Set f35599e = C4875Al0.a();

    public final boolean f35600f;

    public c(C4798y c4798y, a.C0913a c0913a, AbstractC7552hC abstractC7552hC) {
        this.f35597c = c4798y;
        this.f35595a = c0913a;
        this.f35598d = c4798y.b();
        this.f35596b = new F2(abstractC7552hC, c4798y.E(), c4798y.E().f50691j);
        this.f35600f = c4798y.E().a().f40654a && System.getProperty("com.android.tools.r8.reportUnknownApiReferences") != null;
    }

    public static c a(C4798y c4798y, a.C0913a c0913a) {
        if (!f35594g && !c4798y.E().a().f40654a) {
            throw new AssertionError();
        }
        int i10 = AbstractC7552hC.f48487c;
        final C7051eC c7051eC = new C7051eC();
        BiConsumer a10 = C6628bi.a(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return A2.a((J2) obj, (C2) obj2);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7051eC.this.a((A2) obj);
            }
        });
        E2.a(c4798y.b(), a10);
        c4798y.E().a().a(c4798y.b(), a10);
        return new c(c4798y, c0913a, c7051eC.a());
    }

    public final f a(J2 j22, f fVar, boolean z10) {
        M2 S10 = j22.S();
        if (S10.E0()) {
            if (j22.r0() && j22.n0().c(this.f35598d.f37859F4.f38224b)) {
                return this.f35597c.f38405T;
            }
            return a(S10.a(this.f35598d), fVar, z10);
        }
        if (!S10.P0() && !S10.S0()) {
            E0 g10 = this.f35597c.g(S10);
            if (g10 != null) {
                if (!g10.f0()) {
                    return this.f35597c.f38405T;
                }
                if (j22.S() == this.f35598d.f38068i2) {
                    return this.f35597c.f38405T;
                }
                if (!z10 && this.f35597c.E().x().a().a(j22)) {
                    return this.f35597c.f38405T;
                }
                if (j22.r0() && !j22.n0().b(this.f35598d) && this.f35598d.f37859F4.a(j22.n0())) {
                    C2 a10 = this.f35596b.a(j22.S());
                    if (a10 == null) {
                        return this.f35597c.f38405T;
                    }
                    return this.f35595a.a(a10);
                }
                final F2 f22 = this.f35596b;
                Objects.requireNonNull(f22);
                Function function = new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return D2.this.a((M2) obj);
                    }
                };
                final F2 f23 = this.f35596b;
                Objects.requireNonNull(f23);
                Function function2 = new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return D2.this.a((C4554l1) obj);
                    }
                };
                final F2 f24 = this.f35596b;
                Objects.requireNonNull(f24);
                C2 c22 = (C2) j22.a(function, function2, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return D2.this.a((com.android.tools.r8.graph.A2) obj);
                    }
                });
                if (c22 == null) {
                    if (this.f35600f) {
                        this.f35599e.add(j22);
                    }
                } else {
                    return this.f35595a.a(c22.c(this.f35597c.E().z()));
                }
            }
            return fVar;
        }
        return this.f35597c.f38405T;
    }
}
