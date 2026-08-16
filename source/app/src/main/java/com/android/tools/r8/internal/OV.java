package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.AbstractC4420e;
import com.android.tools.r8.graph.C4421e0;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public final class OV extends RV {

    public static final boolean f42899g = true;

    public final QV f42900e;

    public final WV f42901f;

    public OV(C4798y c4798y) {
        super(c4798y);
        if (!f42899g && !c4798y.v().a(c4798y.f38414g)) {
            throw new AssertionError();
        }
        QV qv = PV.f43247a;
        M70 b10 = M70.b(c4798y);
        b10.getClass();
        this.f42900e = b10 instanceof C6520b10 ? qv : new T70(b10.a());
        int i10 = XV.f45722g;
        this.f42901f = new WV(c4798y);
    }

    public static List b(com.android.tools.r8.graph.H2 h22) {
        return new ArrayList();
    }

    public final ConcurrentHashMap a(ExecutorService executorService) {
        final ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        C5467Kr0.a(((C11245i) this.f43915b.f()).d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                OV.this.a(concurrentHashMap, (com.android.tools.r8.graph.H2) obj);
            }
        }, this.f43916c.G(), executorService);
        return concurrentHashMap;
    }

    public final boolean b(Z4.c cVar, com.android.tools.r8.graph.H5 h52) {
        if (!cVar.a(h52, this.f43915b).d()) {
            return false;
        }
        com.android.tools.r8.graph.E0 d10 = cVar.d();
        C4798y c4798y = this.f43915b;
        return AbstractC4420e.a(d10, h52, c4798y, (C4514j) c4798y.f()).b();
    }

    public final void a(final Map map, com.android.tools.r8.graph.H2 h22) {
        a(h22).forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((MV) Map.this.computeIfAbsent((EnumC8071kK) obj, TU.a(new Supplier() {
                    @Override
                    public final Object get() {
                        return MV.b();
                    }
                }))).a((MV) obj2);
            }
        });
    }

    public final void b(ExecutorService executorService) {
        C11245i c11245i = (C11245i) this.f43915b.f();
        a(a(executorService));
        c11245i.f57404s.b();
        WV wv = this.f42901f;
        wv.getClass();
        XV xv = new XV(wv.f45430a, wv.f45431b);
        this.f43915b.a(xv);
        this.f42900e.a(this.f43915b, xv);
        this.f43915b.b().b();
        this.f43915b.getClass();
    }

    public final IdentityHashMap a(com.android.tools.r8.graph.H2 h22) {
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        h22.h(new Consumer() {
            @Override
            public final void accept(Object obj) {
                OV.this.a(identityHashMap, (com.android.tools.r8.graph.H5) obj);
            }
        }, new u.P0());
        return identityHashMap;
    }

    public final void a(Map map, com.android.tools.r8.graph.H5 h52) {
        h52.a(new LV(this, this.f43915b, h52, map));
    }

    public final void a(ConcurrentHashMap concurrentHashMap) {
        concurrentHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                OV.this.a((EnumC8071kK) obj, (MV) obj2);
            }
        });
    }

    public final void a(final EnumC8071kK enumC8071kK, MV mv) {
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        final InterfaceC7328ft0 interfaceC7328ft0 = new InterfaceC7328ft0() {
            @Override
            public final void a(Object obj, Object obj2, Object obj3) {
                ((List) Map.this.computeIfAbsent((com.android.tools.r8.graph.H2) obj, new Function() {
                    @Override
                    public final Object apply(Object obj4) {
                        return OV.b((com.android.tools.r8.graph.H2) obj4);
                    }
                })).add(new C8699o50((com.android.tools.r8.graph.A2) obj2, (com.android.tools.r8.graph.H0) obj3));
            }
        };
        mv.a(new InterfaceC7328ft0() {
            @Override
            public final void a(Object obj, Object obj2, Object obj3) {
                OV.this.a(enumC8071kK, interfaceC7328ft0, (com.android.tools.r8.graph.A2) obj, (Z4.c) obj2, (AbstractC8374m80) obj3);
            }
        });
        identityHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                OV.this.a((com.android.tools.r8.graph.H2) obj, (List) obj2);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.H2 h22, List list) {
        list.sort(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return (com.android.tools.r8.graph.A2) ((C8699o50) obj).a();
            }
        }));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C8699o50 c8699o50 = (C8699o50) it.next();
            com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) c8699o50.a();
            final com.android.tools.r8.graph.H0 h02 = (com.android.tools.r8.graph.H0) c8699o50.b();
            com.android.tools.r8.graph.A2 a10 = a22.a(h22.getType(), this.f43915b.b());
            if (h22.b0().f36638b.a(a10.y0(), a10.t0()) == null) {
                final C4516j1 d10 = h02.d();
                C4516j1 a11 = d10.a(this.f43915b, h22, new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        OV.this.a(d10, h02, (C4516j1.a) obj);
                    }
                });
                if (!f42899g && a11.J0() && a11.k1().e()) {
                    throw new AssertionError();
                }
                com.android.tools.r8.graph.N4 n42 = h22.f36252l;
                n42.getClass();
                n42.f36639c = C4516j1.f37311v;
                n42.f36638b.b(a11);
                com.android.tools.r8.graph.H5 a12 = a11.a(h22);
                this.f43915b.r().a(a12);
                this.f42900e.a(a12, h02);
            }
            if (!f42899g && !((C11245i) this.f43915b.f()).e(a22).q().getReference().a(a10)) {
                throw new AssertionError();
            }
        }
    }

    public final void a(C4516j1 c4516j1, com.android.tools.r8.graph.H0 h02, C4516j1.a aVar) {
        if (!c4516j1.d1() && c4516j1.f37322o.x()) {
            if (!f42899g) {
                h02.getClass();
                if (!(h02 instanceof com.android.tools.r8.graph.A4) && this.f43915b.E().a().f40654a) {
                    throw new AssertionError();
                }
            }
            aVar.f37341m = this.f43915b.f38404S.a(c4516j1.getReference(), this.f43915b.f38405T);
        }
        h02.getClass();
        boolean z10 = (h02 instanceof com.android.tools.r8.graph.A4) || (h02 instanceof C4421e0);
        AbstractC9530t40 abstractC9530t40 = AbstractC9530t40.f52517a;
        if (z10) {
            aVar.a(abstractC9530t40);
        } else {
            aVar.getClass();
        }
    }

    public final com.android.tools.r8.graph.H2 a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.E0 g10;
        return (h22.f36246f.J() || (g10 = this.f43915b.g(h22.f36247g)) == null || g10.v1() || !((C11245i) this.f43915b.f()).c(g10.f36245e, m22)) ? h22 : a(g10.d0(), m22);
    }

    public final com.android.tools.r8.graph.H2 a(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.E0 e03, String str) {
        com.android.tools.r8.graph.H2 h22;
        if (e02 == e03 || e02.v1()) {
            return null;
        }
        if (((C11245i) this.f43915b.f()).c(e02.f36247g, e03.f36245e)) {
            h22 = a(this.f43915b.g(e02.f36247g), e03, str);
        } else {
            com.android.tools.r8.graph.H2 h23 = null;
            for (com.android.tools.r8.graph.M2 m22 : e02.f36248h.f36675b) {
                if (((C11245i) this.f43915b.f()).c(m22, e03.f36245e)) {
                    h23 = a(this.f43915b.g(m22), e03, str);
                }
            }
            h22 = h23;
        }
        if (h22 != null) {
            return h22;
        }
        if (e02.f36246f.l() || e02.f36245e.z0().equals(str)) {
            return e02.d0();
        }
        return null;
    }

    public final void a(EnumC8071kK enumC8071kK, InterfaceC7328ft0 interfaceC7328ft0, com.android.tools.r8.graph.A2 a22, final Z4.c cVar, AbstractC8374m80 abstractC8374m80) {
        com.android.tools.r8.graph.H0 a10 = com.android.tools.r8.graph.H0.a(cVar.f37021c, cVar.f37022d);
        com.android.tools.r8.graph.E0 e02 = cVar.f37020b;
        com.android.tools.r8.graph.A2 a23 = null;
        a23 = null;
        if (e02.e0()) {
            if ((this.f43916c.f50697l instanceof ClassFileConsumer) && enumC8071kK == EnumC8071kK.f49583g && a10.getHolder() != e02 && a10.getHolder().isInterface()) {
                com.android.tools.r8.graph.H2 a11 = a(e02.d0(), a10.p());
                boolean z10 = f42899g;
                if (!z10 && a11 == null) {
                    throw new AssertionError();
                }
                if (!z10 && a11 == a10.getHolder()) {
                    throw new AssertionError();
                }
                interfaceC7328ft0.a(a11, a22, a10);
                a23 = a10.getReference().a(a11.getType(), this.f43915b.b());
            } else if (abstractC8374m80.stream().anyMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return OV.this.b(cVar, (com.android.tools.r8.graph.H5) obj);
                }
            })) {
                String z02 = e02.f36246f.l() ? null : a22.f38297f.z0();
                if (z02 != null && z02.equals(a10.p().z0())) {
                    a23 = a10.getReference();
                } else {
                    com.android.tools.r8.graph.H2 a12 = a(e02, a10.getHolder(), z02);
                    if (!f42899g && a12 == null) {
                        throw new AssertionError();
                    }
                    interfaceC7328ft0.a(a12, a22, a10);
                    a23 = a10.getReference().a(a12.getType(), this.f43915b.b());
                }
            }
        }
        if (a23 != null) {
            this.f42901f.a(a22, a23, enumC8071kK);
        } else if (a10 instanceof com.android.tools.r8.graph.H5) {
            this.f42901f.a(a22, a10.getReference(), enumC8071kK);
        } else {
            this.f42901f.a(a22, a(a10, cVar, abstractC8374m80, enumC8071kK, a22), enumC8071kK);
        }
    }
}
