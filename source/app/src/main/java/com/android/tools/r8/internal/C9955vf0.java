package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4425e4;
import com.android.tools.r8.graph.C4500i3;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4615o5;
import com.android.tools.r8.graph.C4634p5;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C9955vf0 extends AbstractC4446f6 {

    public static final boolean f53165n = true;

    public final C11245i f53166e;

    public final C8570nJ f53167f;

    public final AbstractC5308Hz f53168g;

    public final C9287rf0 f53169h;

    public final AbstractC9723uD f53170i;

    public final C9121qf0 f53171j;

    public final C9121qf0 f53172k;

    public final AbstractC5308Hz f53173l;

    public final com.android.tools.r8.graph.H5 f53174m;

    public C9955vf0(C4798y c4798y, C9287rf0 c9287rf0, com.android.tools.r8.graph.D5 d52, C9121qf0 c9121qf0) {
        super(c4798y, d52);
        AbstractC4497i0 Q02;
        this.f53166e = (C11245i) c4798y.f();
        this.f53167f = c4798y.E();
        this.f53169h = c9287rf0;
        this.f53170i = c4798y.f38417j;
        this.f53168g = c4798y.v();
        this.f53171j = c9287rf0.a(d52.d());
        this.f53172k = c9121qf0;
        AbstractC5308Hz v10 = c4798y.v();
        if (d52.I() && (Q02 = d52.b().d().Q0()) != null) {
            v10 = Q02.a(c4798y);
        }
        this.f53173l = v10;
        this.f53174m = d52.I() ? d52.b() : null;
    }

    public final void a(C4500i3 c4500i3) {
        if (c4500i3 == null) {
            return;
        }
        com.android.tools.r8.graph.M2 m22 = c4500i3.f37289a;
        if (m22 != null) {
            a(m22, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C9955vf0.this.b((com.android.tools.r8.graph.E0) obj);
                }
            });
        }
        if (c4500i3.a() != null) {
            com.android.tools.r8.graph.Z4 f10 = this.f53166e.f(c4500i3.a());
            a((com.android.tools.r8.graph.J4) f10, false);
            com.android.tools.r8.graph.H5 r10 = f10.w() ? f10.o().r() : null;
            if (r10 != null) {
                a(r10.getHolder(), EnumC6871d70.f47286b);
            }
        }
    }

    @Override
    public final void b(com.android.tools.r8.graph.M2 m22) {
        a((com.android.tools.r8.graph.J4) this.f53166e.c(this.f53170i.a(this.f53168g.d(this.f53173l, m22))), false);
    }

    @Override
    public final void c(C4554l1 c4554l1) {
        i(c4554l1);
    }

    @Override
    public final void d(com.android.tools.r8.graph.A2 a22) {
        C11245i c11245i = this.f53166e;
        AbstractC5308Hz abstractC5308Hz = this.f53168g;
        com.android.tools.r8.graph.H5 h52 = this.f53174m;
        AbstractC5308Hz abstractC5308Hz2 = this.f53173l;
        abstractC5308Hz.getClass();
        a((com.android.tools.r8.graph.J4) c11245i.f((com.android.tools.r8.graph.A2) abstractC5308Hz.a(a22, h52.getReference(), EnumC8071kK.f49582f, abstractC5308Hz2, AbstractC9530t40.f52519c).f41111a), true);
    }

    @Override
    public final void e(C4554l1 c4554l1) {
        i(c4554l1);
    }

    public final void f(com.android.tools.r8.graph.E0 e02) {
        a(e02, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C9955vf0.this.a((com.android.tools.r8.graph.E0) obj);
            }
        });
    }

    @Override
    public final void g(com.android.tools.r8.graph.A2 a22) {
        C11245i c11245i = this.f53166e;
        AbstractC5308Hz abstractC5308Hz = this.f53168g;
        com.android.tools.r8.graph.H5 h52 = this.f53174m;
        AbstractC5308Hz abstractC5308Hz2 = this.f53173l;
        abstractC5308Hz.getClass();
        a((com.android.tools.r8.graph.J4) c11245i.b((com.android.tools.r8.graph.A2) abstractC5308Hz.a(a22, h52.getReference(), EnumC8071kK.f49584h, abstractC5308Hz2, AbstractC9530t40.f52519c).f41111a, false), true);
    }

    public final void h(com.android.tools.r8.graph.M2 m22) {
        a(m22, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9955vf0.this.f((com.android.tools.r8.graph.E0) obj);
            }
        });
    }

    public final void i(C4554l1 c4554l1) {
        a((com.android.tools.r8.graph.J4) this.f53166e.c(this.f53168g.e(this.f53173l, c4554l1)), false);
    }

    @Override
    public final void c(com.android.tools.r8.graph.M2 m22) {
        h(this.f53168g.c(this.f53173l, m22));
    }

    public final void e(com.android.tools.r8.graph.E0 e02) {
        a(e02, EnumC6871d70.f47286b);
    }

    @Override
    public final void f(com.android.tools.r8.graph.A2 a22) {
        C11245i c11245i = this.f53166e;
        AbstractC5308Hz abstractC5308Hz = this.f53168g;
        com.android.tools.r8.graph.H5 h52 = this.f53174m;
        AbstractC5308Hz abstractC5308Hz2 = this.f53173l;
        abstractC5308Hz.getClass();
        a((com.android.tools.r8.graph.J4) c11245i.f((com.android.tools.r8.graph.A2) abstractC5308Hz.a(a22, h52.getReference(), EnumC8071kK.f49583g, abstractC5308Hz2, AbstractC9530t40.f52519c).f41111a), true);
    }

    public final void c(com.android.tools.r8.graph.E0 e02) {
        a(e02, EnumC6871d70.f47286b);
    }

    @Override
    public final void b(com.android.tools.r8.graph.A2 a22) {
        C11245i c11245i = this.f53166e;
        AbstractC5308Hz abstractC5308Hz = this.f53168g;
        com.android.tools.r8.graph.H5 h52 = this.f53174m;
        AbstractC5308Hz abstractC5308Hz2 = this.f53173l;
        abstractC5308Hz.getClass();
        a((com.android.tools.r8.graph.J4) c11245i.b((com.android.tools.r8.graph.A2) abstractC5308Hz.a(a22, h52.getReference(), EnumC8071kK.f49581e, abstractC5308Hz2, AbstractC9530t40.f52519c).f41111a, true), true);
    }

    @Override
    public final void d(com.android.tools.r8.graph.M2 m22) {
        h(this.f53168g.d(this.f53173l, m22));
    }

    @Override
    public final void g(C4554l1 c4554l1) {
        i(c4554l1);
    }

    public final void d(com.android.tools.r8.graph.E0 e02) {
        a(e02, EnumC6871d70.f47286b);
    }

    @Override
    public final void f(com.android.tools.r8.graph.M2 m22) {
        h(this.f53168g.c(this.f53173l, m22));
    }

    public final void g(com.android.tools.r8.graph.M2 m22) {
        a(m22, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9955vf0.this.c((com.android.tools.r8.graph.E0) obj);
            }
        });
    }

    public final boolean a(com.android.tools.r8.graph.E0 e02) {
        com.android.tools.r8.graph.Q accessFlags = e02.getAccessFlags();
        if (accessFlags.f()) {
            return true;
        }
        return accessFlags.k() && !this.f53166e.c(((com.android.tools.r8.graph.D5) this.f37177b).S(), e02.getType());
    }

    public final void b(com.android.tools.r8.graph.E0 e02) {
        a(e02, EnumC6871d70.f47286b);
    }

    public final void a(com.android.tools.r8.graph.J4 j42, boolean z10) {
        if (!j42.j()) {
            if (j42.i()) {
                com.android.tools.r8.graph.D3 e10 = j42.e();
                if (f53165n || e10.h()) {
                    return;
                }
                if (!e10.w() || e10.o() == null || !e10.o().d().G0()) {
                    throw new AssertionError();
                }
                return;
            }
            com.android.tools.r8.graph.Z4 f10 = j42.f();
            f10.getClass();
            if ((f10 instanceof com.android.tools.r8.graph.X4) || (f10 instanceof com.android.tools.r8.graph.V4) || f10.b((com.android.tools.r8.graph.E0) ((com.android.tools.r8.graph.D5) this.f37177b).a(), this.f37176a, (C4514j) this.f53166e)) {
                return;
            }
            C9121qf0 c9121qf0 = this.f53171j;
            C9121qf0 c9121qf02 = this.f53172k;
            c9121qf0.f51843b.add(c9121qf02);
            c9121qf02.f51843b.add(c9121qf0);
            return;
        }
        com.android.tools.r8.graph.Z5 g10 = j42.g();
        f(g10.a());
        C9121qf0 a10 = this.f53169h.a(g10.c().d());
        if (a10 != null) {
            AbstractC4458g accessFlags = g10.c().getAccessFlags();
            if (!accessFlags.f()) {
                if (!accessFlags.k()) {
                    return;
                }
                if (this.f53166e.c(((com.android.tools.r8.graph.D5) this.f37177b).S(), g10.d().getType()) && (!z10 || !(this.f53167f.f50697l instanceof ClassFileConsumer) || this.f53166e.c(g10.a().getType(), ((com.android.tools.r8.graph.D5) this.f37177b).S()))) {
                    return;
                }
            }
            C9121qf0 c9121qf03 = this.f53171j;
            c9121qf03.f51843b.add(a10);
            a10.f51843b.add(c9121qf03);
        }
    }

    public final void a(com.android.tools.r8.graph.M2 m22, Consumer consumer) {
        if (m22.E0()) {
            a(m22.a(this.f53166e.b()), consumer);
            return;
        }
        if (m22.P0() || m22.S0()) {
            return;
        }
        if (!f53165n && !m22.I0()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.E0 g10 = this.f53166e.g(m22);
        if (g10 != null) {
            consumer.accept(g10);
        }
    }

    public final void a(com.android.tools.r8.graph.E0 e02, Predicate predicate) {
        C9121qf0 a10 = this.f53169h.a(e02);
        if (a10 == null || !predicate.test(e02)) {
            return;
        }
        C9121qf0 c9121qf0 = this.f53171j;
        c9121qf0.f51843b.add(a10);
        a10.f51843b.add(c9121qf0);
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22) {
        C11245i c11245i = this.f53166e;
        AbstractC5308Hz abstractC5308Hz = this.f53168g;
        com.android.tools.r8.graph.H5 h52 = this.f53174m;
        AbstractC5308Hz abstractC5308Hz2 = this.f53173l;
        abstractC5308Hz.getClass();
        a((com.android.tools.r8.graph.J4) c11245i.f((com.android.tools.r8.graph.A2) abstractC5308Hz.a(a22, h52.getReference(), EnumC8071kK.f49580d, abstractC5308Hz2, AbstractC9530t40.f52519c).f41111a), true);
    }

    @Override
    public final void a(C4554l1 c4554l1) {
        i(c4554l1);
    }

    public final void a(C4425e4 c4425e4) {
        c4425e4.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9955vf0.this.g((com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    public final void a(C4615o5 c4615o5) {
        if (c4615o5 == null) {
            return;
        }
        a(c4615o5.a(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9955vf0.this.d((com.android.tools.r8.graph.E0) obj);
            }
        });
    }

    public final void a(List list) {
        if (list == null) {
            return;
        }
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9955vf0.this.a((C4634p5) obj);
            }
        });
    }

    public final void a(C4634p5 c4634p5) {
        a(c4634p5.a(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9955vf0.this.e((com.android.tools.r8.graph.E0) obj);
            }
        });
    }
}
