package com.android.tools.r8.graph;

import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.M3;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC5308Hz;
import java.util.Collection;
import java.util.List;
import java.util.function.BiPredicate;
import java.util.function.Function;
import java.util.function.Predicate;

public class U3 implements InterfaceC4368b4 {

    public static final boolean f36859g = true;

    public final M3.a f36860a;

    public final BiPredicate f36861b;

    public final Predicate f36862c;

    public final C4798y f36863d;

    public final H3.c f36864e;

    public boolean f36865f = false;

    public U3(C4798y c4798y, M3.a aVar, BiPredicate biPredicate, Predicate predicate) {
        this.f36863d = c4798y;
        this.f36860a = aVar;
        this.f36861b = biPredicate;
        this.f36862c = predicate;
        this.f36864e = new H3.c(c4798y.b().f38068i2).a(H3.k.f36404c);
    }

    @Override
    public final M2 a(M2 m22) {
        return m22;
    }

    public final H3.c b(H3.c cVar) {
        return cVar.a(this);
    }

    @Override
    public final List c(List list) {
        return list.isEmpty() ? list : AT.a(list, new Function() {
            @Override
            public final Object apply(Object obj) {
                return U3.this.a((H3.f) obj);
            }
        }, list);
    }

    @Override
    public final List d(List list) {
        return list.isEmpty() ? list : AT.a(list, (Function) new Wa(this), list);
    }

    @Override
    public final List e(List list) {
        return list.isEmpty() ? list : AT.a(list, new Function() {
            @Override
            public final Object apply(Object obj) {
                return U3.this.b((H3.c) obj);
            }
        }, list);
    }

    public final U3 f(List list) {
        return list.isEmpty() ? this : new U3(this.f36863d, this.f36860a.a(AT.a((Collection) list, (Function) new C4450fa())), this.f36861b, this.f36862c);
    }

    public static U3 a(C4798y<?> c4798y, M3.a aVar, BiPredicate<M2, M2> biPredicate, Predicate<M2> predicate) {
        return new U3(c4798y, aVar, biPredicate, predicate);
    }

    @Override
    public final List b(List list) {
        return list.isEmpty() ? list : AT.a(list, (Function) new Wa(this), list);
    }

    public H3.g a(H3.g gVar) {
        return !gVar.a() ? gVar.a(this) : gVar;
    }

    @Override
    public final H3.i a(H3.i iVar) {
        iVar.getClass();
        return iVar instanceof I3 ? iVar : b(iVar.d());
    }

    public final H3.e b(H3.e eVar) {
        if (eVar.a() || eVar.n()) {
            return eVar;
        }
        if (eVar.m()) {
            return eVar.h().a(this);
        }
        if (eVar.l()) {
            return eVar.g().a(this);
        }
        if (!f36859g && !eVar.o()) {
            throw new AssertionError();
        }
        if (this.f36865f) {
            return this.f36864e;
        }
        String str = eVar.i().f36402b;
        if (this.f36860a.f36600b.contains(str)) {
            return eVar;
        }
        M3.a aVar = this.f36860a;
        if (!M3.a.f36598d && aVar.f36600b.contains(str)) {
            throw new AssertionError();
        }
        H3.e eVar2 = (H3.e) aVar.f36599a.get(str);
        if (eVar2 == null) {
            return this.f36864e;
        }
        this.f36865f = true;
        H3.e b10 = b(eVar2);
        this.f36865f = false;
        return b10.k() ? b10 : b10.a(H3.k.f36404c);
    }

    public final H3.f a(H3.f fVar) {
        H3.e eVar;
        H3.f a10 = fVar.a(this);
        if (f36859g || (((eVar = a10.f36391b) != null && eVar.b()) || !a10.f36392c.isEmpty())) {
            return a10;
        }
        throw new AssertionError();
    }

    @Override
    public final List a(List list) {
        return list.isEmpty() ? list : AT.a(list, (Function) new Va(this), list);
    }

    @Override
    public final List a(M2 m22, M2 m23, List list) {
        if (!f36859g && m22 != m23) {
            throw new AssertionError();
        }
        if (list.isEmpty()) {
            return list;
        }
        Predicate predicate = this.f36862c;
        AbstractC5308Hz v10 = this.f36863d.v();
        v10.getClass();
        if (!predicate.test(v10.c(AbstractC5308Hz.g(), m22))) {
            return H3.f36373b;
        }
        return AT.a(list, (Function) new Va(this), list);
    }

    @Override
    public final H3.e a(H3.e eVar) {
        return eVar.a() ? eVar : b(eVar);
    }

    @Override
    public final H3.c a(H3.c cVar, H3.c cVar2) {
        AbstractC5308Hz v10 = this.f36863d.v();
        M2 m22 = cVar.f36385b;
        v10.getClass();
        M2 c10 = v10.c(AbstractC5308Hz.g(), m22);
        AbstractC5308Hz v11 = this.f36863d.v();
        M2 m23 = cVar2.f36385b;
        v11.getClass();
        if (this.f36861b.test(c10, v11.c(AbstractC5308Hz.g(), m23))) {
            return null;
        }
        return cVar.a(this);
    }

    @Override
    public final H3.h a(H3.h hVar) {
        H3.i iVar;
        H3.i a10;
        return (hVar.a() || iVar == (a10 = a((iVar = hVar.f36400a)))) ? hVar : new H3.h(a10);
    }

    @Override
    public final H3.c a(H3.c cVar) {
        return cVar == null ? cVar : cVar.a(this);
    }
}
