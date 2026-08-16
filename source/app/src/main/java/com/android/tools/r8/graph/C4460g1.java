package com.android.tools.r8.graph;

import com.android.tools.r8.graph.H3;
import com.android.tools.r8.internal.AbstractC10005vw;
import com.android.tools.r8.internal.AbstractC10330xt;
import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.C10300xj;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.C8696o40;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import com.android.tools.r8.internal.KV;
import com.android.tools.r8.internal.VY;
import com.android.tools.r8.kotlin.AbstractC10752b0;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public class C4460g1 extends AbstractC4479h1<C4460g1, C4554l1> implements InterfaceC5580Mq0<C4460g1> {

    public static final C4460g1[] f37200o = new C4460g1[0];

    public static final boolean f37201p = true;

    public final C4537k3 f37202g;

    public R2 f37203h;

    public C4804y5 f37204i;

    public final boolean f37205j;

    public H3.e f37206k;

    public AbstractC10005vw f37207l;

    public com.android.tools.r8.kotlin.G f37208m;

    public boolean f37209n;

    public static class a {

        public static final boolean f37210n = true;

        public C4554l1 f37211a;

        public C4723u0 f37212b;

        public C4537k3 f37213c;

        public H3.e f37214d;

        public final com.android.tools.r8.kotlin.G f37215e;

        public R2 f37216f;

        public final C4804y5 f37217g;

        public com.android.tools.r8.androidapi.f f37218h;

        public final AbstractC10005vw f37219i;

        public boolean f37220j;

        public final boolean f37221k;

        public Consumer f37222l;

        public boolean f37223m;

        public a(boolean z10) {
            this.f37212b = C4723u0.l0();
            this.f37214d = H3.e.p();
            this.f37215e = AbstractC10752b0.f55256b;
            this.f37216f = null;
            this.f37217g = null;
            int i10 = com.android.tools.r8.androidapi.f.f35602a;
            this.f37218h = com.android.tools.r8.androidapi.g.f35607b;
            this.f37219i = C10300xj.f53826a;
            this.f37222l = C6628bi.b();
            this.f37223m = true;
            this.f37221k = z10;
        }

        public final a a(Consumer consumer) {
            consumer.accept(this);
            return this;
        }

        public final void b(Consumer consumer) {
            consumer.accept(this.f37213c);
        }

        public a c() {
            this.f37223m = false;
            return this;
        }

        public final a b() {
            this.f37222l = this.f37222l.andThen(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C8696o40.f51162b.a((C4460g1) obj, AbstractC10330xt.m());
                }
            });
            return this;
        }

        public a a(C4554l1 c4554l1) {
            this.f37211a = c4554l1;
            return this;
        }

        public C4460g1 a() {
            boolean z10 = f37210n;
            if (!z10 && this.f37211a == null) {
                throw new AssertionError();
            }
            if (!z10 && this.f37213c == null) {
                throw new AssertionError();
            }
            if (!z10 && this.f37214d == null) {
                throw new AssertionError();
            }
            if (!z10 && this.f37212b == null) {
                throw new AssertionError();
            }
            if (!z10 && this.f37223m && this.f37218h.x()) {
                throw new AssertionError();
            }
            C4460g1 c4460g1 = new C4460g1(this.f37211a, this.f37213c, this.f37214d, this.f37212b, this.f37216f, this.f37218h, this.f37220j, this.f37221k);
            c4460g1.a(this.f37215e);
            c4460g1.f37207l = this.f37219i;
            c4460g1.f37204i = this.f37217g;
            this.f37222l.accept(c4460g1);
            return c4460g1;
        }

        public a(boolean z10, C4460g1 c4460g1) {
            AbstractC10005vw abstractC10005vw;
            this.f37212b = C4723u0.l0();
            this.f37214d = H3.e.p();
            this.f37215e = AbstractC10752b0.f55256b;
            this.f37216f = null;
            this.f37217g = null;
            int i10 = com.android.tools.r8.androidapi.f.f35602a;
            this.f37218h = com.android.tools.r8.androidapi.g.f35607b;
            this.f37219i = C10300xj.f53826a;
            this.f37222l = C6628bi.b();
            this.f37223m = true;
            this.f37211a = c4460g1.getReference();
            C4537k3 c4537k3 = c4460g1.f37202g;
            this.f37213c = new C4537k3(c4537k3.f37196b, c4537k3.f37197c);
            this.f37214d = c4460g1.A0();
            this.f37215e = c4460g1.f37208m;
            this.f37212b = c4460g1.k0();
            this.f37216f = c4460g1.f37203h;
            this.f37217g = c4460g1.f37204i;
            this.f37218h = c4460g1.f37261e;
            AbstractC10005vw abstractC10005vw2 = c4460g1.f37207l;
            abstractC10005vw2.getClass();
            if (abstractC10005vw2 instanceof VY) {
                VY b10 = c4460g1.f37207l.b();
                b10.getClass();
                VY vy = new VY();
                vy.f45079a = b10.f45079a;
                vy.f45080b = b10.f45080b;
                vy.f45081c = b10.f45081c;
                vy.f45082d = b10.f45082d;
                abstractC10005vw = vy;
            } else {
                abstractC10005vw = c4460g1.f37207l;
            }
            this.f37219i = abstractC10005vw;
            this.f37220j = c4460g1.f37205j;
            this.f37221k = z10;
        }
    }

    public C4460g1(C4554l1 c4554l1, C4537k3 c4537k3, H3.e eVar, C4723u0 c4723u0, R2 r22, com.android.tools.r8.androidapi.f fVar, boolean z10, boolean z11) {
        super(c4554l1, c4723u0, z11, fVar);
        this.f37204i = null;
        this.f37207l = C10300xj.f53826a;
        this.f37208m = AbstractC10752b0.f55256b;
        this.f37209n = false;
        this.f37202g = c4537k3;
        this.f37203h = r22;
        this.f37205j = z10;
        this.f37206k = eVar;
        boolean z12 = f37201p;
        if (!z12 && eVar == null) {
            throw new AssertionError();
        }
        if (!z12 && !Z3.a(eVar, c4723u0)) {
            throw new AssertionError();
        }
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.e(new C4585md()).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C4460g1) obj).getAccessFlags();
            }
        }).j(new Function() {
            @Override
            public final Object apply(Object obj) {
                R2 r22;
                r22 = ((C4460g1) obj).f37203h;
                return r22;
            }
        }).b(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((C4460g1) obj).M0();
            }
        }).a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean a10;
                a10 = ((C4460g1) obj).f37206k.a();
                return a10;
            }
        });
    }

    @Override
    public final KV D0() {
        return this.f37207l;
    }

    @Override
    public final C4460g1 E() {
        return this;
    }

    @Override
    public C4537k3 getAccessFlags() {
        return this.f37202g;
    }

    @Override
    public H3.e A0() {
        return this.f37206k;
    }

    public R2 K0() {
        if (!f37201p && !this.f37202g.n()) {
            throw new AssertionError();
        }
        R2 r22 = this.f37203h;
        return r22 == null ? R2.a(getReference().f37449i) : r22;
    }

    public boolean L0() {
        if (f37201p || this.f37202g.n()) {
            return this.f37203h != null;
        }
        throw new AssertionError();
    }

    public final boolean M0() {
        return this.f37205j;
    }

    public final boolean N0() {
        return AbstractC4458g.d(this.f37202g.f37197c, 16384);
    }

    public final boolean O0() {
        return !w0();
    }

    public M2 P0() {
        return getReference().f37449i;
    }

    @Override
    public final com.android.tools.r8.kotlin.Q c0() {
        return this.f37208m;
    }

    public M2 getType() {
        return getReference().getType();
    }

    @Override
    public final String i0() {
        return getReference().i0();
    }

    @Override
    public String j0() {
        return getReference().j0();
    }

    @Override
    public final InterfaceC5638Nq0<C4460g1> m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                C4460g1.a(abstractC5754Pq0);
            }
        };
    }

    @Override
    public final C4460g1 m0() {
        return this;
    }

    @Override
    public final void t() {
        this.f37206k = H3.e.p();
    }

    public final String toString() {
        return "Encoded field " + ((Object) getReference());
    }

    @Override
    public boolean w0() {
        return this.f37202g.n();
    }

    @Override
    public final void y0() {
        this.f37208m = AbstractC10752b0.f55256b;
    }

    @Override
    public final com.android.tools.r8.androidapi.f z0() {
        return this.f37261e;
    }

    public final boolean b(C4724u1 c4724u1) {
        if (this.f37202g.n() && this.f37203h != null) {
            if (getReference().f37449i.P0() && !f37201p && this.f37203h.a(c4724u1) != getReference().f37449i) {
                throw new AssertionError((Object) ("Static " + ((Object) getReference()) + " has invalid static value " + ((Object) this.f37203h) + "."));
            }
            R2 r22 = this.f37203h;
            r22.getClass();
            if ((r22 instanceof Z2) && !f37201p && !getReference().f37449i.Q0()) {
                throw new AssertionError((Object) ("Static " + ((Object) getReference()) + " has invalid null static value."));
            }
        }
        return true;
    }

    public final void a(VY vy) {
        this.f37207l = vy;
    }

    public final void a(com.android.tools.r8.kotlin.G g10) {
        if (!f37201p && this.f37208m != AbstractC10752b0.f55256b) {
            throw new AssertionError();
        }
        this.f37208m = g10;
    }

    @Override
    public final void a(com.android.tools.r8.dex.X x10) {
        C4723u0 k02 = k0();
        k02.getClass();
        x10.a(k02);
        AbstractC4592n1.a(x10, k02.f37806d);
    }

    public final G5 a(C4798y c4798y) {
        return a((InterfaceC4403d1) c4798y);
    }

    @Override
    public final Object a(Function function, Function function2) {
        return function.apply(this);
    }

    public final F5 a(InterfaceC4403d1 interfaceC4403d1) {
        if (!f37201p && !B0().I0()) {
            throw new AssertionError();
        }
        H2 a10 = H2.a(interfaceC4403d1.a((AbstractC4744v2) getReference()));
        if (a10 != null) {
            return new F5(this, a10);
        }
        return null;
    }

    public final void a(R2 r22) {
        boolean z10 = f37201p;
        if (!z10 && !this.f37202g.n()) {
            throw new AssertionError();
        }
        if (!z10 && r22 == null) {
            throw new AssertionError();
        }
        this.f37203h = r22;
    }

    public final C4460g1 a(C4798y c4798y, C4554l1 c4554l1, Consumer consumer) {
        if (getReference() == c4554l1) {
            return this;
        }
        a a10 = a(this).a(c4554l1);
        if (c4798y.E().a().e() && c4798y.m()) {
            a10.getClass();
        } else {
            a10.f37223m = false;
        }
        return a10.a(consumer).a();
    }

    public static a a(C4460g1 c4460g1) {
        return new a(c4460g1.F0(), c4460g1);
    }

    public final boolean a(C4724u1 c4724u1) {
        if (this.f37209n) {
            return true;
        }
        if (!w0() || !this.f37202g.e() || !L0()) {
            return false;
        }
        if (getType().P0()) {
            return true;
        }
        if (getType() != c4724u1.f38052g2 || !K0().R0()) {
            return false;
        }
        this.f37209n = true;
        return true;
    }
}
