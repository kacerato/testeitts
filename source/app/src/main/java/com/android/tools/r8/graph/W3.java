package com.android.tools.r8.graph;

import com.android.tools.r8.graph.H3;
import com.android.tools.r8.internal.AT;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class W3 implements InterfaceC4368b4 {

    public static final boolean f36929b = true;

    public final X3 f36930a;

    public W3(X3 x32, C4724u1 c4724u1) {
        this.f36930a = x32;
    }

    @Override
    public final H3.i a(H3.i iVar) {
        iVar.getClass();
        return iVar instanceof I3 ? iVar : c(iVar.d());
    }

    public final H3.c b(H3.c cVar) {
        H3.c a10 = cVar.a(this);
        if (a10 == null || a10.f36385b == this.f36930a.f36958d.f36245e) {
            return null;
        }
        return a10;
    }

    public final H3.e c(H3.e eVar) {
        if (eVar.n() || eVar.o()) {
            return eVar;
        }
        if (eVar.l()) {
            return eVar.g().a(this);
        }
        if (f36929b || eVar.m()) {
            return eVar.h().a(this);
        }
        throw new AssertionError();
    }

    @Override
    public final List d(List list) {
        return list.isEmpty() ? list : AT.a(list, new Function() {
            @Override
            public final Object apply(Object obj) {
                return W3.this.b((H3.i) obj);
            }
        }, list);
    }

    @Override
    public final List e(List list) {
        if (list.isEmpty()) {
            return list;
        }
        final List a10 = AT.a(list, new Function() {
            @Override
            public final Object apply(Object obj) {
                return W3.this.b((H3.c) obj);
            }
        }, list);
        final ArrayList arrayList = new ArrayList(a10.size());
        this.f36930a.f36958d.f36248h.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                W3.a(List.this, arrayList, (M2) obj);
            }
        });
        return arrayList;
    }

    public final H3.f a(H3.f fVar) {
        H3.f a10 = fVar.a(this);
        H3.e eVar = a10.f36391b;
        return ((eVar == null || eVar.a()) && a10.f36392c.isEmpty()) ? new H3.f(fVar.f36390a, this.f36930a.f36959e, a10.f36392c) : a10;
    }

    public final H3.i b(H3.i iVar) {
        H3.i a10 = a(iVar);
        return a10 == null ? this.f36930a.f36959e : a10;
    }

    @Override
    public final List b(List list) {
        return list.isEmpty() ? list : AT.a(list, new Function() {
            @Override
            public final Object apply(Object obj) {
                return W3.this.a((H3.i) obj);
            }
        }, list);
    }

    @Override
    public final List c(List list) {
        return list.isEmpty() ? list : AT.a(list, new Function() {
            @Override
            public final Object apply(Object obj) {
                return W3.this.a((H3.f) obj);
            }
        }, list);
    }

    public final H3.e b(H3.e eVar) {
        H3.e c10 = c(eVar);
        return c10 == null ? this.f36930a.f36959e.a(H3.k.f36404c) : c10;
    }

    @Override
    public final H3.c a(H3.c cVar) {
        return cVar == null ? cVar : cVar.a(this);
    }

    public static void a(List list, List list2, final M2 m22) {
        int a10 = AT.a(list, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return W3.a(M2.this, (H3.c) obj);
            }
        });
        H3.c cVar = (H3.c) (a10 >= 0 ? list.get(a10) : null);
        if (cVar == null) {
            cVar = new H3.c(m22);
        }
        list2.add(cVar);
    }

    public static boolean a(M2 m22, H3.c cVar) {
        return cVar.f36385b == m22;
    }

    @Override
    public final H3.h a(H3.h hVar) {
        if (hVar.a()) {
            return H3.h.f36399b;
        }
        H3.i b10 = hVar.b();
        H3.i a10 = a(b10);
        if (a10 == null) {
            return H3.h.f36399b;
        }
        return a10 == b10 ? hVar : new H3.h(a10);
    }

    @Override
    public final H3.e a(H3.e eVar) {
        return eVar.a() ? eVar : c(eVar);
    }

    @Override
    public final List a(List list) {
        return list.isEmpty() ? list : AT.a(list, new Function() {
            @Override
            public final Object apply(Object obj) {
                return W3.this.c((H3.e) obj);
            }
        }, list);
    }

    @Override
    public final H3.c a(H3.c cVar, H3.c cVar2) {
        return cVar.a(this);
    }

    @Override
    public final List a(M2 m22, M2 m23, List list) {
        if (list.isEmpty()) {
            return list;
        }
        if (!this.f36930a.f36956b.test(m22) && this.f36930a.f36960f.test(m23)) {
            return AT.a(list, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return W3.this.b((H3.e) obj);
                }
            }, list);
        }
        return H3.f36373b;
    }

    @Override
    public final M2 a(M2 m22) {
        M2 m23 = (M2) this.f36930a.f36957c.apply(m22);
        if (this.f36930a.f36956b.test(m23)) {
            return null;
        }
        return m23;
    }
}
