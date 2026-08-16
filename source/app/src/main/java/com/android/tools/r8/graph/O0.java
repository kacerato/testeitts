package com.android.tools.r8.graph;

import com.android.tools.r8.dex.C4320u;
import com.android.tools.r8.graph.O0;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C9380sA;
import com.android.tools.r8.internal.C9547tA;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.ToIntFunction;

public abstract class O0 extends AbstractC4592n1 implements InterfaceC5580Mq0<O0> {

    public static final O0[] f36660b = new O0[0];

    public static final boolean f36661c = true;

    public static class a extends O0 {

        public static final boolean f36662e = true;

        public final int f36663d;

        public a(int i10) {
            this.f36663d = i10;
        }

        @Override
        public final InterfaceC5580Mq0 E() {
            return this;
        }

        @Override
        public final int a(InterfaceC5580Mq0 interfaceC5580Mq0, AbstractC8953pf abstractC8953pf) {
            return a((O0) interfaceC5580Mq0, abstractC8953pf);
        }

        @Override
        public final int b(O0 o02, AbstractC8953pf abstractC8953pf) {
            return abstractC8953pf.a(this.f36663d, ((a) o02).f36663d);
        }

        @Override
        public final void c(AbstractC9213rA abstractC9213rA) {
            ((C9547tA) abstractC9213rA).f52553a.a(this.f36663d);
        }

        public final int hashCode() {
            return (this.f36663d * 7) + 1;
        }

        @Override
        public final int n0() {
            return 1;
        }

        @Override
        public final boolean o0() {
            return true;
        }

        public final String toString() {
            return "ADVANCE_PC " + this.f36663d;
        }

        @Override
        public final void a(C4320u c4320u, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
            c4320u.b(1);
            c4320u.c(this.f36663d);
        }

        @Override
        public final void a(V0 v02) {
            if (!f36662e && this.f36663d < 0) {
                throw new AssertionError();
            }
            v02.a(this);
        }
    }

    public static class b extends O0 {

        public static final boolean f36664e = true;

        public final int f36665d;

        public b(int i10) {
            if (!f36664e && (i10 < 10 || i10 > 255)) {
                throw new AssertionError();
            }
            this.f36665d = i10;
        }

        @Override
        public final InterfaceC5580Mq0 E() {
            return this;
        }

        @Override
        public final int a(InterfaceC5580Mq0 interfaceC5580Mq0, AbstractC8953pf abstractC8953pf) {
            return a((O0) interfaceC5580Mq0, abstractC8953pf);
        }

        @Override
        public final int b(O0 o02, AbstractC8953pf abstractC8953pf) {
            return abstractC8953pf.a(this.f36665d, ((b) o02).f36665d);
        }

        @Override
        public final void c(AbstractC9213rA abstractC9213rA) {
            ((C9547tA) abstractC9213rA).f52553a.a(this.f36665d);
        }

        public final int hashCode() {
            return (this.f36665d * 7) + 10;
        }

        @Override
        public final b l0() {
            return this;
        }

        @Override
        public final int n0() {
            return 10;
        }

        @Override
        public final boolean o0() {
            return true;
        }

        public int p0() {
            return ((this.f36665d - 10) % 15) - 4;
        }

        public int q0() {
            return (this.f36665d - 10) / 15;
        }

        public final String toString() {
            return String.format("DEFAULT %d (dpc %d, dline %d)", Integer.valueOf(this.f36665d), Integer.valueOf(q0()), Integer.valueOf(p0()));
        }

        @Override
        public final void a(C4320u c4320u, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
            c4320u.b(this.f36665d);
        }

        @Override
        public final void a(V0 v02) {
            v02.a(this);
        }
    }

    public static class c extends O0 {

        public final L2 f36666d;

        public c(L2 l22) {
            this.f36666d = l22;
        }

        @Override
        public final InterfaceC5580Mq0 E() {
            return this;
        }

        @Override
        public final int a(InterfaceC5580Mq0 interfaceC5580Mq0, AbstractC8953pf abstractC8953pf) {
            return a((O0) interfaceC5580Mq0, abstractC8953pf);
        }

        @Override
        public final int b(O0 o02, AbstractC8953pf abstractC8953pf) {
            L2 l22 = this.f36666d;
            L2 l23 = ((c) o02).f36666d;
            l22.getClass();
            return abstractC8953pf.a(l22, l23);
        }

        @Override
        public final void c(AbstractC9213rA abstractC9213rA) {
            this.f36666d.a(abstractC9213rA);
        }

        public final int hashCode() {
            return (this.f36666d.hashCode() * 7) + 9;
        }

        @Override
        public final int n0() {
            return 9;
        }

        @Override
        public final boolean o0() {
            return false;
        }

        public final String toString() {
            return "SET_FILE " + this.f36666d.toString();
        }

        @Override
        public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10) {
            L2 l22 = this.f36666d;
            l22.getClass();
            m10.a(l22);
        }

        @Override
        public final void a(V0 v02) {
            v02.a(this);
        }
    }

    public static class d extends O0 {

        public final int f36667d;

        public final L2 f36668e;

        public final M2 f36669f;

        public final L2 f36670g;

        public d(int i10, L2 l22, M2 m22, L2 l23) {
            this.f36667d = i10;
            this.f36668e = l22;
            this.f36669f = m22;
            this.f36670g = l23;
        }

        @Override
        public final InterfaceC5580Mq0 E() {
            return this;
        }

        @Override
        public final int a(InterfaceC5580Mq0 interfaceC5580Mq0, AbstractC8953pf abstractC8953pf) {
            return a((O0) interfaceC5580Mq0, abstractC8953pf);
        }

        public final int hashCode() {
            return (Objects.hashCode(this.f36670g) * 19) + (Objects.hashCode(this.f36669f) * 17) + (Objects.hashCode(this.f36668e) * 13) + (this.f36667d * 7) + 3;
        }

        @Override
        public final int n0() {
            return 3;
        }

        @Override
        public final boolean o0() {
            return true;
        }

        public final String toString() {
            return "START_LOCAL " + this.f36667d;
        }

        @Override
        public final int b(O0 o02, AbstractC8953pf abstractC8953pf) {
            return abstractC8953pf.a(this, (d) o02, new R9());
        }

        @Override
        public final void c(AbstractC9213rA abstractC9213rA) {
            new R9().a(new C9380sA(this, (C9547tA) abstractC9213rA));
        }

        public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
            abstractC5754Pq0.a(new ToIntFunction() {
                @Override
                public final int applyAsInt(Object obj) {
                    int i10;
                    i10 = ((O0.d) obj).f36667d;
                    return i10;
                }
            }).e(new Function() {
                @Override
                public final Object apply(Object obj) {
                    L2 l22;
                    l22 = ((O0.d) obj).f36668e;
                    return l22;
                }
            }).e(new Function() {
                @Override
                public final Object apply(Object obj) {
                    M2 m22;
                    m22 = ((O0.d) obj).f36669f;
                    return m22;
                }
            }).j(new Function() {
                @Override
                public final Object apply(Object obj) {
                    L2 l22;
                    l22 = ((O0.d) obj).f36670g;
                    return l22;
                }
            });
        }

        @Override
        public final void a(C4320u c4320u, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
            c4320u.b(this.f36670g == null ? 3 : 4);
            c4320u.c(this.f36667d);
            L2 l22 = this.f36668e;
            if (l22 == null) {
                c4320u.c(0);
            } else {
                c4320u.c(C4766w5.a(l22, c4320u.f35965a.f38343j) + 1);
            }
            M2 c10 = abstractC5308Hz.c(abstractC5308Hz2, this.f36669f);
            if (c10 == null) {
                c4320u.c(0);
            } else {
                c4320u.c(C4766w5.a(c10, c4320u.f35965a.f38340g) + 1);
            }
            L2 l23 = this.f36670g;
            if (l23 != null) {
                c4320u.c(C4766w5.a(l23, c4320u.f35965a.f38343j) + 1);
            }
        }

        @Override
        public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10) {
            L2 l22 = this.f36668e;
            if (l22 != null) {
                m10.a(l22);
            }
            if (this.f36669f != null) {
                c4798y.v().c(abstractC5308Hz, this.f36669f).a(c4798y, m10);
            }
            L2 l23 = this.f36670g;
            if (l23 != null) {
                m10.a(l23);
            }
        }

        @Override
        public final void a(V0 v02) {
            v02.a(this);
        }
    }

    public InterfaceC5580Mq0 E() {
        return this;
    }

    @Override
    public final void a(com.android.tools.r8.dex.X x10) {
    }

    public abstract void a(V0 v02);

    public abstract int b(O0 o02, AbstractC8953pf abstractC8953pf);

    public abstract void c(AbstractC9213rA abstractC9213rA);

    public final boolean equals(Object obj) {
        return (obj instanceof O0) && compareTo((O0) obj) == 0;
    }

    public N0 k0() {
        return null;
    }

    public b l0() {
        return null;
    }

    @Override
    public final InterfaceC5638Nq0<O0> m() {
        throw new C5417Jv0();
    }

    public S0 m0() {
        return null;
    }

    public abstract int n0();

    public boolean o0() {
        return this instanceof N0;
    }

    public void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10) {
    }

    @Override
    public final int a(O0 o02, AbstractC8953pf abstractC8953pf) {
        int a10 = abstractC8953pf.a(n0(), o02.n0());
        return a10 != 0 ? a10 : b(o02, abstractC8953pf);
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        ((C9547tA) abstractC9213rA).f52553a.a(n0());
        c(abstractC9213rA);
    }

    public void a(C4320u c4320u, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        throw new C5417Jv0();
    }
}
