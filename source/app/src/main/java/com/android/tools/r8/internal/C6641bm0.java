package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C6641bm0 extends AbstractC6205Xl0 {

    public static final boolean f46858c = true;

    public final List f46859b;

    public C6641bm0(List list) {
        boolean z10 = f46858c;
        if (!z10 && list.size() <= 1) {
            throw new AssertionError();
        }
        if (!z10 && !list.stream().noneMatch(new Q41())) {
            throw new AssertionError();
        }
        if (!z10 && !list.stream().noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((AbstractC6205Xl0) obj).f();
            }
        })) {
            throw new AssertionError();
        }
        if (!z10 && !list.stream().noneMatch(new S41())) {
            throw new AssertionError();
        }
        this.f46859b = list;
    }

    @Override
    public final boolean a(VJ vj2) {
        Iterator it = this.f46859b.iterator();
        while (it.hasNext()) {
            if (((AbstractC6205Xl0) it.next()).a(vj2)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final C6641bm0 b() {
        return this;
    }

    public final AbstractC6205Xl0 b(AbstractC6205Xl0 abstractC6205Xl0) {
        boolean z10 = f46858c;
        if (!z10) {
            abstractC6205Xl0.getClass();
            if (abstractC6205Xl0 instanceof C8188l2) {
                throw new AssertionError();
            }
        }
        if (!z10) {
            abstractC6205Xl0.getClass();
            if (abstractC6205Xl0 instanceof C8602nZ) {
                throw new AssertionError();
            }
        }
        abstractC6205Xl0.getClass();
        if (abstractC6205Xl0 instanceof C6641bm0) {
            C6641bm0 b10 = abstractC6205Xl0.b();
            int i10 = AbstractC7552hC.f48487c;
            AbstractC7552hC a10 = new C7051eC().b((Iterable) this.f46859b).b((Iterable) b10.f46859b).a();
            if (a10.size() <= 3) {
                return new C6641bm0(a10);
            }
            return C8602nZ.f50980b;
        }
        if (!z10 && !abstractC6205Xl0.d() && !(abstractC6205Xl0 instanceof C6474am0)) {
            throw new AssertionError();
        }
        int i11 = AbstractC7552hC.f48487c;
        AbstractC7552hC a11 = new C7051eC().b((Iterable) this.f46859b).a(abstractC6205Xl0).a();
        if (a11.size() <= 3) {
            return new C6641bm0(a11);
        }
        return C8602nZ.f50980b;
    }

    @Override
    public final AbstractC6205Xl0 a(final C4798y c4798y, final com.android.tools.r8.graph.proto.c cVar, final C6807cm0 c6807cm0) {
        List a10 = AT.a(this.f46859b, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C6641bm0.a(C4798y.this, cVar, c6807cm0, (AbstractC6205Xl0) obj);
            }
        }, (List) null);
        if (a10 == null) {
            return this;
        }
        if (a10.isEmpty()) {
            return C8602nZ.f50980b;
        }
        if (a10.size() == 1) {
            return (AbstractC6205Xl0) AT.a(a10);
        }
        if (JK.a(a10.iterator(), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return ((AbstractC6205Xl0) obj).c();
            }
        }) != -1) {
            return C8188l2.f49866b;
        }
        if (a10.size() <= 3) {
            return new C6641bm0(a10);
        }
        return C8602nZ.f50980b;
    }

    public static AbstractC6205Xl0 a(C4798y c4798y, com.android.tools.r8.graph.proto.c cVar, C6807cm0 c6807cm0, AbstractC6205Xl0 abstractC6205Xl0) {
        AbstractC6205Xl0 a10 = abstractC6205Xl0.a(c4798y, cVar, c6807cm0);
        a10.getClass();
        if (a10 instanceof C8602nZ) {
            return null;
        }
        return a10;
    }
}
