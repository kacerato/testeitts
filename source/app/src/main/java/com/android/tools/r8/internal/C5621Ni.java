package com.android.tools.r8.internal;

import com.android.tools.r8.errors.MissingNestHostNestDesugarDiagnostic;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4421e0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.position.Position;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;

public final class C5621Ni extends C7769iZ {
    public C5621Ni(C4798y c4798y) {
        super(c4798y);
    }

    public static void a(com.android.tools.r8.graph.E0 e02) {
    }

    public final void b(com.android.tools.r8.graph.E0 e02) {
        C5094Ef0 c5094Ef0 = this.f48969b.E().f50691j;
        c5094Ef0.a(null, new MissingNestHostNestDesugarDiagnostic(e02.f36244d, Position.UNKNOWN, C8570nJ.a(e02)));
        throw c5094Ef0.f39969c;
    }

    public final void c() {
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5621Ni.this.b((C7435gZ) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5621Ni.this.b((com.android.tools.r8.graph.E0) obj);
            }
        });
    }

    public static void a(final C4798y c4798y) {
        C7769iZ.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5621Ni.a(C4798y.this, (C7435gZ) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5621Ni.a(C4798y.this, (com.android.tools.r8.graph.E0) obj);
            }
        }, c4798y);
    }

    public static void a(C7435gZ c7435gZ) {
        c7435gZ.f48282a.f36256p.clear();
        c7435gZ.f48283b.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((com.android.tools.r8.graph.E0) obj).E0();
            }
        });
    }

    public static void a(List list, C7435gZ c7435gZ) {
        com.android.tools.r8.graph.E0 e02 = c7435gZ.f48282a;
        if (e02 instanceof com.android.tools.r8.graph.I0) {
            list.add(e02.k());
        }
        AbstractC9907vK.a(c7435gZ.a(), list);
    }

    public final void b() {
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5621Ni.a((C7435gZ) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5621Ni.a((com.android.tools.r8.graph.E0) obj);
            }
        });
    }

    public final void b(C7435gZ c7435gZ) {
        if (c7435gZ.f48284c.isEmpty()) {
            if (c7435gZ.b()) {
                this.f48969b.E().f50691j.error(C8570nJ.a(c7435gZ));
            }
            com.android.tools.r8.graph.E0 e02 = c7435gZ.f48282a;
            if (e02.f0()) {
                return;
            }
            ArrayList arrayList = c7435gZ.f48283b;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                com.android.tools.r8.graph.E0 e03 = (com.android.tools.r8.graph.E0) obj;
                if (!e03.f0() && (e02.e0() || e03.e0())) {
                    this.f48969b.f().a(e02, e03);
                    this.f48969b.f().a(e03, e02);
                }
            }
            return;
        }
        C5094Ef0 c5094Ef0 = this.f48969b.E().f50691j;
        c5094Ef0.a(null, C8570nJ.a(c7435gZ));
        throw c5094Ef0.f39969c;
    }

    public static void a(C4798y c4798y, com.android.tools.r8.graph.E0 e02) {
        C5094Ef0 c5094Ef0 = c4798y.E().f50691j;
        c5094Ef0.a(null, new MissingNestHostNestDesugarDiagnostic(e02.f36244d, Position.UNKNOWN, C8570nJ.a(e02)));
        throw c5094Ef0.f39969c;
    }

    public static void a(C4798y c4798y, C7435gZ c7435gZ) {
        if (c7435gZ.f48284c.isEmpty()) {
            if (c7435gZ.b()) {
                c4798y.E().f50691j.error(C8570nJ.a(c7435gZ));
            }
        } else {
            C5094Ef0 c5094Ef0 = c4798y.E().f50691j;
            c5094Ef0.a(null, C8570nJ.a(c7435gZ));
            throw c5094Ef0.f39969c;
        }
    }

    public final void a(final InterfaceC8101kZ interfaceC8101kZ, com.android.tools.r8.graph.I0 i02) {
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5621Ni.this.a(interfaceC8101kZ, (C4421e0) obj);
            }
        };
        i02.getClass();
        Z60 z60 = EnumC6871d70.f47286b;
        i02.i(consumer);
    }

    public final void a(C5448Ki c5448Ki, ExecutorService executorService) {
        final ArrayList arrayList = new ArrayList();
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5621Ni.a(List.this, (C7435gZ) obj);
            }
        }, C6628bi.b());
        M70 m70 = c5448Ki.f41738a;
        final InterfaceC8101kZ c5506Li = new C5506Li(c5448Ki);
        m70.getClass();
        if (!(m70 instanceof C6520b10)) {
            c5506Li = new V70(m70.a(), c5506Li);
        }
        C5467Kr0.a(arrayList, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5621Ni.this.a(c5506Li, (com.android.tools.r8.graph.I0) obj);
            }
        }, this.f48969b.E().G(), executorService);
    }

    public final void a(InterfaceC8101kZ interfaceC8101kZ, C4421e0 c4421e0) {
        C5563Mi c5563Mi = new C5563Mi(this, c4421e0, interfaceC8101kZ);
        AbstractC4497i0 Q02 = c4421e0.d().Q0();
        if (Q02 != null) {
            Q02.a(c4421e0, c5563Mi);
        }
    }
}
