package com.android.tools.r8.graph;

import com.android.tools.r8.AbstractC4291c;
import com.android.tools.r8.graph.W0;
import com.android.tools.r8.internal.AbstractC5635Np;
import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C8798oj;
import com.android.tools.r8.internal.C9380sA;
import com.android.tools.r8.internal.C9547tA;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import com.android.tools.r8.internal.InterfaceC7166ev;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;

public abstract class W0 extends E implements InterfaceC5580Mq0<W0> {

    public static final boolean f36922d = true;

    public abstract int a2(W0 w02, AbstractC8953pf abstractC8953pf);

    @Override
    public int a(W0 w02, AbstractC8953pf abstractC8953pf) {
        W0 w03 = w02;
        int a10 = abstractC8953pf.a(AbstractC4291c.b(n0()), AbstractC4291c.b(w03.n0()));
        return a10 != 0 ? a10 : a2(w03, abstractC8953pf);
    }

    @Override
    public final boolean c(Object obj) {
        return InterfaceC7166ev.a(this, obj);
    }

    public a l0() {
        return null;
    }

    @Override
    public final InterfaceC5638Nq0<W0> m() {
        throw new C5417Jv0();
    }

    public X0 m0() {
        return null;
    }

    public abstract int n0();

    public abstract int o0();

    public abstract int p0();

    public boolean q0() {
        return n0() == 1;
    }

    public boolean r0() {
        return n0() == 2;
    }

    @Override
    public abstract W0 E();

    public static class a extends W0 {

        public static final boolean f36923h = true;

        public final int f36924e;

        public final L2[] f36925f;

        public O0[] f36926g;

        public a(int i10, L2[] l2Arr, O0[] o0Arr) {
            if (!f36923h && i10 < 0) {
                throw new AssertionError();
            }
            this.f36924e = i10;
            this.f36925f = l2Arr;
            this.f36926g = o0Arr;
        }

        @Override
        public final W0 E() {
            return this;
        }

        @Override
        public final int a(W0 w02, AbstractC8953pf abstractC8953pf) {
            W0 w03 = w02;
            int a10 = abstractC8953pf.a(AbstractC4291c.b(1), AbstractC4291c.b(w03.n0()));
            return a10 != 0 ? a10 : a(w03, abstractC8953pf);
        }

        @Override
        public final int k0() {
            return (Arrays.hashCode(this.f36926g) * 13) + (Arrays.hashCode(this.f36925f) * 7) + this.f36924e;
        }

        @Override
        public final a l0() {
            return this;
        }

        @Override
        public final int n0() {
            return 1;
        }

        @Override
        public final int o0() {
            return this.f36925f.length;
        }

        @Override
        public final int p0() {
            return this.f36924e;
        }

        @Override
        public final W0 E() {
            return this;
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("DebugInfo (line " + this.f36924e + ") events: [\n");
            for (O0 o02 : this.f36926g) {
                sb2.append(GlideException.a.f59088e);
                sb2.append((Object) o02);
                sb2.append("\n");
            }
            sb2.append("  END_SEQUENCE\n]\n");
            return sb2.toString();
        }

        public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
            abstractC5754Pq0.a(new ToIntFunction() {
                @Override
                public final int applyAsInt(Object obj) {
                    int i10;
                    i10 = ((W0.a) obj).f36924e;
                    return i10;
                }
            }).g(new Function() {
                @Override
                public final Object apply(Object obj) {
                    L2[] l2Arr;
                    l2Arr = ((W0.a) obj).f36925f;
                    return l2Arr;
                }
            }).f(new Function() {
                @Override
                public final Object apply(Object obj) {
                    O0[] o0Arr;
                    o0Arr = ((W0.a) obj).f36926g;
                    return o0Arr;
                }
            });
        }

        @Override
        public final void a(AbstractC9213rA abstractC9213rA) {
            C4753vb c4753vb = new C4753vb();
            C9547tA c9547tA = (C9547tA) abstractC9213rA;
            c9547tA.getClass();
            c4753vb.a(new C9380sA(this, c9547tA));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final int a(W0 w02, AbstractC8953pf abstractC8953pf) {
            if (f36923h || w02.q0()) {
                return abstractC8953pf.a(this, w02.l0(), new C4753vb());
            }
            throw new AssertionError();
        }

        @Override
        public void a(com.android.tools.r8.dex.X x10) {
            throw new C5417Jv0();
        }
    }

    public static a a(J0 j02, C4724u1 c4724u1) {
        if (j02.E0() == null) {
            return null;
        }
        if (j02.E0().q0()) {
            return j02.E0().l0();
        }
        boolean z10 = f36922d;
        if (!z10 && !j02.E0().r0()) {
            throw new AssertionError();
        }
        X0 m02 = j02.E0().m0();
        if (!z10) {
            C8798oj.a(j02, m02.f36948f);
        }
        return a(1, m02.f36947e, j02.f36463j, c4724u1);
    }

    public static a a(int i10, int i11, AbstractC5635Np[] abstractC5635NpArr, C4724u1 c4724u1) {
        ArrayList arrayList = new ArrayList(abstractC5635NpArr.length);
        int i12 = 0;
        for (AbstractC5635Np abstractC5635Np : abstractC5635NpArr) {
            if (abstractC5635Np.l()) {
                U0.a(i12, i12, arrayList, c4724u1);
                i12 = 0;
            }
            i12 += abstractC5635Np.y();
        }
        return new a(i10, new L2[i11], (O0[]) arrayList.toArray(O0.f36660b));
    }

    public static Z0 a(W0 w02) {
        if (w02 == null) {
            return null;
        }
        if (w02.r0()) {
            return w02.m0();
        }
        a l02 = w02.l0();
        return new Y0(l02.f36924e, l02.f36925f, (O0[]) com.android.tools.r8.internal.X3.a(l02.f36926g, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((O0) obj).o0();
            }
        }, O0.f36660b));
    }
}
