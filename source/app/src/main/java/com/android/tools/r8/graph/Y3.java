package com.android.tools.r8.graph;

import com.android.tools.r8.graph.H3;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public final class Y3 implements InterfaceC4368b4 {

    public static final boolean f36983c = true;

    public final D5 f36984a;

    public final BiConsumer f36985b;

    public Y3(D5 d52, BiConsumer biConsumer) {
        this.f36984a = d52;
        this.f36985b = biConsumer;
    }

    @Override
    public final H3.e a(H3.e eVar) {
        return eVar.a() ? eVar : b(eVar);
    }

    public final H3.e b(H3.e eVar) {
        if (eVar.a() || eVar.n() || eVar.o()) {
            return eVar;
        }
        if (eVar.l()) {
            eVar.g().a(this);
            return eVar;
        }
        if (f36983c || eVar.m()) {
            return eVar.h().a(this);
        }
        throw new AssertionError();
    }

    @Override
    public final List c(List list) {
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Y3.this.a((H3.f) obj);
            }
        });
        return list;
    }

    @Override
    public final List d(List list) {
        list.forEach(new Ub(this));
        return list;
    }

    @Override
    public final List e(List list) {
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Y3.this.b((H3.c) obj);
            }
        });
        return list;
    }

    public final H3.e c(H3.e eVar) {
        return b(eVar);
    }

    @Override
    public final List a(List list) {
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Y3.this.c((H3.e) obj);
            }
        });
        return list;
    }

    @Override
    public final H3.c a(H3.c cVar) {
        return cVar == null ? cVar : cVar.a(this);
    }

    @Override
    public final H3.i a(H3.i iVar) {
        iVar.getClass();
        if (iVar instanceof I3) {
            return iVar;
        }
        if (f36983c || iVar.e()) {
            return b(iVar.d());
        }
        throw new AssertionError();
    }

    public final H3.c b(H3.c cVar) {
        return cVar.a(this);
    }

    @Override
    public final H3.c a(H3.c cVar, H3.c cVar2) {
        return cVar.a(this);
    }

    @Override
    public final List b(List list) {
        list.forEach(new Ub(this));
        return list;
    }

    @Override
    public final H3.h a(H3.h hVar) {
        if (hVar.a()) {
            return hVar;
        }
        a(hVar.f36400a);
        return hVar;
    }

    @Override
    public final List a(M2 m22, M2 m23, List list) {
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Y3.this.b((H3.e) obj);
            }
        });
        return list;
    }

    public final H3.f a(H3.f fVar) {
        return fVar.a(this);
    }

    @Override
    public final M2 a(M2 m22) {
        this.f36985b.accept(m22, this.f36984a);
        return m22;
    }
}
