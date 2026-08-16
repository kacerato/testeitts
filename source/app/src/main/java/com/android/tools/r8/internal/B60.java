package com.android.tools.r8.internal;

import com.android.tools.r8.internal.B60;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;
import yd.C16181m;

public abstract class B60 implements InterfaceC5580Mq0<B60> {

    public static final boolean f38806g = true;

    public final int f38807b;

    public final com.android.tools.r8.graph.A2 f38808c;

    public final B60 f38809d;

    public final boolean f38810e;

    public final boolean f38811f;

    public static class b extends B60 {

        public static final b f38819h = new b(-1, null, null, false, false);

        public static final boolean f38820i = true;

        public static class a extends a<b, a> {

            public static final boolean f38821h = true;

            @Override
            public final a c() {
                return this;
            }

            @Override
            public b a() {
                boolean z10 = f38821h;
                if (!z10 && !this.f38817f && this.f38812a < 0) {
                    throw new AssertionError();
                }
                if (z10 || this.f38818g || this.f38813b != null) {
                    return new b(this.f38812a, this.f38813b, this.f38814c, this.f38815d, this.f38816e);
                }
                throw new AssertionError();
            }
        }

        public b(int i10, com.android.tools.r8.graph.A2 a22, B60 b60, boolean z10, boolean z11) {
            super(i10, a22, b60, z10, z11);
            if (!f38820i && b60 != null && b60.f38808c == null) {
                throw new AssertionError();
            }
        }

        public static void c(AbstractC5754Pq0 abstractC5754Pq0) {
            InterfaceC5638Nq0 interfaceC5638Nq0 = new InterfaceC5638Nq0() {
                @Override
                public final void a(AbstractC5754Pq0 abstractC5754Pq02) {
                    B60.a(abstractC5754Pq02);
                }
            };
            abstractC5754Pq0.getClass();
            interfaceC5638Nq0.a(abstractC5754Pq0);
            abstractC5754Pq0.a().j(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((B60) obj).e();
                }
            });
        }

        public static a t() {
            return new a();
        }

        @Override
        public final B60 E() {
            return this;
        }

        @Override
        public final int d() {
            return 1;
        }

        @Override
        public final com.android.tools.r8.graph.L2 e() {
            return null;
        }

        @Override
        public final boolean l() {
            return false;
        }

        @Override
        public final InterfaceC5638Nq0<B60> m() {
            return new InterfaceC5638Nq0() {
                @Override
                public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                    B60.b.c(abstractC5754Pq0);
                }
            };
        }

        @Override
        public final a b() {
            a a10 = t().a(this.f38807b);
            a10.getClass();
            a a11 = a10.a(this.f38808c);
            a11.f38814c = this.f38809d;
            a11.f38815d = this.f38810e;
            a11.f38816e = this.f38811f;
            return a11;
        }
    }

    public B60(int i10, com.android.tools.r8.graph.A2 a22, B60 b60, boolean z10, boolean z11) {
        if (!f38806g && b60 != null && z11) {
            throw new AssertionError((Object) "Synthetic positions should always be outermost");
        }
        this.f38807b = i10;
        this.f38808c = a22;
        this.f38809d = b60;
        this.f38810e = z10;
        this.f38811f = z11;
    }

    public static B60 s() {
        return b.f38819h;
    }

    @Override
    public B60 E() {
        return this;
    }

    public C10371y60 a() {
        return null;
    }

    public abstract a b();

    public final B60 c() {
        return this.f38809d;
    }

    public abstract int d();

    public com.android.tools.r8.graph.L2 e() {
        return null;
    }

    public final boolean equals(Object obj) {
        return InterfaceC7166ev.a(this, obj);
    }

    public int f() {
        return this.f38807b;
    }

    public final com.android.tools.r8.graph.A2 g() {
        return this.f38808c;
    }

    public final B60 h() {
        B60 b60 = this;
        while (true) {
            B60 b602 = b60.f38809d;
            if (b602 == null) {
                return b60;
            }
            b60 = b602;
        }
    }

    public final int hashCode() {
        boolean z10 = C7713iA.f48866c;
        return C7713iA.a(this, m());
    }

    public com.android.tools.r8.graph.A2 i() {
        return null;
    }

    public AH j() {
        return null;
    }

    public final boolean k() {
        return this.f38809d != null;
    }

    public boolean l() {
        return false;
    }

    public final boolean n() {
        return this.f38811f;
    }

    public boolean o() {
        return this.f38807b == -1;
    }

    public boolean p() {
        return this instanceof A60;
    }

    public final boolean r() {
        return this.f38810e;
    }

    public final String toString() {
        if (o()) {
            return "--";
        }
        StringBuilder sb2 = new StringBuilder();
        if (l()) {
            sb2.append((Object) e());
            sb2.append(b3.s.f32937c);
        }
        sb2.append(C16181m.f130230g);
        sb2.append(this.f38807b);
        if (this.f38808c != null && this.f38809d != null) {
            sb2.append(b3.s.f32937c);
            sb2.append((Object) this.f38808c.f38298g);
        }
        B60 b60 = this.f38809d;
        if (b60 != null) {
            while (b60 != null) {
                sb2.append(";");
                sb2.append(b60.f38807b);
                sb2.append(b3.s.f32937c);
                sb2.append((Object) b60.f38808c.f38298g);
                b60 = b60.f38809d;
            }
        }
        if (p()) {
            sb2.append(", isOutline = true");
        }
        if (i() != null) {
            sb2.append(", outlineCallee = ");
            sb2.append((Object) i());
        }
        if (j() != null) {
            sb2.append(", outlineCallerPositions = ");
            sb2.append((Object) j());
        }
        return sb2.toString();
    }

    public static abstract class a<P extends B60, B extends a<P, B>> {

        public int f38812a = -1;

        public com.android.tools.r8.graph.A2 f38813b;

        public B60 f38814c;

        public boolean f38815d;

        public boolean f38816e;

        public boolean f38817f;

        public boolean f38818g;

        public B a(int i10) {
            this.f38812a = i10;
            return (B) c();
        }

        public abstract B60 a();

        public B b() {
            this.f38818g = true;
            return (B) c();
        }

        public abstract a c();

        public B a(com.android.tools.r8.graph.A2 a22) {
            this.f38813b = a22;
            return (B) c();
        }
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return ((B60) obj).d();
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return ((B60) obj).f();
            }
        }).j(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((B60) obj).g();
            }
        }).j(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((B60) obj).c();
            }
        }).b((Predicate) new C9882vA0()).b(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((B60) obj).n();
            }
        });
    }

    public static class c extends B60 {

        public static final c f38822h = new c(-1, null, null, false, false);

        public static class a extends a<c, a> {

            public static final boolean f38823h = true;

            @Override
            public final a c() {
                return this;
            }

            @Override
            public c a() {
                boolean z10 = f38823h;
                if (!z10 && !this.f38817f && this.f38812a < 0) {
                    throw new AssertionError();
                }
                if (z10 || this.f38818g || this.f38813b != null) {
                    return new c(this.f38812a, this.f38813b, this.f38814c, this.f38815d, this.f38816e);
                }
                throw new AssertionError();
            }
        }

        public c(int i10, com.android.tools.r8.graph.A2 a22, B60 b60, boolean z10, boolean z11) {
            super(i10, a22, b60, z10, z11);
        }

        public static a t() {
            return new a();
        }

        @Override
        public final B60 E() {
            return this;
        }

        @Override
        public final a b() {
            a a10 = t().a(this.f38807b).a(this.f38808c);
            a10.f38814c = this.f38809d;
            a10.f38815d = this.f38810e;
            a10.f38816e = this.f38811f;
            return a10;
        }

        @Override
        public final int d() {
            return 2;
        }

        @Override
        public final InterfaceC5638Nq0<B60> m() {
            return new InterfaceC5638Nq0() {
                @Override
                public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                    B60.a(abstractC5754Pq0);
                }
            };
        }
    }

    public final B60 a(Predicate predicate, boolean z10) {
        B60 a10;
        if (k() && (a10 = this.f38809d.a(predicate, true)) != null) {
            return a10;
        }
        if (z10 && predicate.test(this)) {
            return this;
        }
        return null;
    }

    public final B60 a(B60 b60) {
        a b10 = b();
        if (k()) {
            b60 = this.f38809d.a(b60);
        }
        b10.f38814c = b60;
        return b10.c().a();
    }

    public final B60 a(B60 b60, B60 b602) {
        if (this == b60) {
            return b602;
        }
        if (!k()) {
            return this;
        }
        a b10 = b();
        b10.f38814c = this.f38809d.a(b60, b602);
        return b10.c().a();
    }
}
