package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.threading.ThreadingModule;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C8525n3 extends AbstractC6662bt0 {

    public static final boolean f50490h = true;

    public final C4798y f50491f;

    public final C9693u3 f50492g;

    public C8525n3(C4798y c4798y, C9693u3 c9693u3) {
        super(c4798y);
        this.f50491f = c4798y;
        this.f50492g = c9693u3;
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
    }

    @Override
    public final com.android.tools.r8.graph.M2 b(com.android.tools.r8.graph.M2 m22) {
        return m22;
    }

    public final void c(com.android.tools.r8.graph.H2 h22) {
        h22.a(a(h22.k1(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8525n3.a((C4460g1.a) obj);
            }
        }));
        h22.b(a(h22.A1(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8525n3.b((C4460g1.a) obj);
            }
        }));
    }

    public final void d(com.android.tools.r8.graph.H2 h22) {
        com.android.tools.r8.graph.N4 b02 = h22.b0();
        InterfaceC5422Jy interfaceC5422Jy = new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return C8525n3.this.b((C4516j1) obj);
            }
        };
        b02.getClass();
        b02.f36639c = C4516j1.f37311v;
        b02.f36638b.a((Function) interfaceC5422Jy);
    }

    @Override
    public final void a(C4554l1 c4554l1, C4554l1 c4554l12) {
    }

    public final void b(com.android.tools.r8.graph.H2 h22) {
        c(h22);
        d(h22);
    }

    public final void a(Set set, final ExecutorService executorService, C8659ns0 c8659ns0) {
        if (this.f50492g == null) {
            if (!f50490h && !set.isEmpty()) {
                throw new AssertionError();
            }
        } else {
            if (!f50490h && set.isEmpty()) {
                throw new AssertionError();
            }
            c8659ns0.b("Fixup application");
            C5467Kr0.a(set, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C8525n3.this.b((com.android.tools.r8.graph.H2) obj);
                }
            }, this.f46881a.E().G(), executorService);
            c8659ns0.d();
            c8659ns0.a("Fixup optimization info", new InterfaceC5930Sr0() {
                @Override
                public final void a() {
                    C8525n3.this.a(executorService);
                }
            });
            c8659ns0.b("Rewrite AppView");
            C4798y c4798y = this.f46881a;
            c4798y.a(this.f50492g, c4798y.e().a(), executorService, c8659ns0);
            c8659ns0.d();
        }
    }

    public static void b(C4460g1.a aVar) {
        aVar.f37214d = H3.e.p();
    }

    public final C4516j1 b(final C4516j1 c4516j1) {
        com.android.tools.r8.graph.A2 reference = c4516j1.getReference();
        final com.android.tools.r8.graph.A2 c10 = this.f50492g.c(reference);
        if (c10 == reference && !this.f50492g.f52774n.containsKey(c10)) {
            return c4516j1;
        }
        C4516j1 a10 = c4516j1.a(c10, this.f46882b, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8525n3.this.a(c10, c4516j1, (C4516j1.a) obj);
            }
        });
        c4516j1.f37327t = true;
        return a10;
    }

    public static void a(C4460g1.a aVar) {
        aVar.f37214d = H3.e.p();
    }

    public final void a(com.android.tools.r8.graph.A2 a22, C4516j1 c4516j1, C4516j1.a aVar) {
        if (this.f50492g.f52774n.containsKey(a22)) {
            com.android.tools.r8.graph.proto.j f10 = this.f50492g.f(a22);
            aVar.a(f10.a(c4516j1)).f37332d = H3.g.d();
            if (c4516j1.w0() || !f10.f37623b.a(0).c()) {
                return;
            }
            aVar.b(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C8525n3.a((com.android.tools.r8.graph.L4) obj);
                }
            }).f37334f = AbstractC9530t40.f52519c;
        }
    }

    public static void a(com.android.tools.r8.graph.L4 l42) {
        ((com.android.tools.r8.graph.L4) l42.a()).f37197c |= 8;
    }

    public final void a(ExecutorService executorService) {
        AbstractC5308Hz abstractC5308Hz = this.f50492g.f43777d;
        AbstractC4780x0 e10 = this.f46881a.e();
        com.android.tools.r8.graph.M5 m52 = new com.android.tools.r8.graph.M5();
        m52.f36605a = e10;
        com.android.tools.r8.graph.O5 a10 = m52.a();
        C8696o40 a11 = AbstractC8028k40.a();
        C4798y c4798y = this.f46881a;
        ThreadingModule G10 = c4798y.E().G();
        C8358m3 c8358m3 = new C8358m3(this, abstractC5308Hz, a10);
        a11.getClass();
        AbstractC8028k40.a(c4798y.f().d(), G10, executorService, c8358m3);
    }

    @Override
    public final C4554l1 a(C4554l1 c4554l1) {
        return (C4554l1) this.f50492g.f49998f.getOrDefault(c4554l1, c4554l1);
    }

    @Override
    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.A2 a22) {
        throw new C5417Jv0();
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(com.android.tools.r8.graph.M2 m22) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        throw new C5417Jv0();
    }
}
