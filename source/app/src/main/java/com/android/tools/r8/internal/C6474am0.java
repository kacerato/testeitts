package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C6474am0 extends AbstractC6205Xl0 {

    public static final boolean f46626c = true;

    public final List f46627b;

    public C6474am0(List list) {
        boolean z10 = f46626c;
        if (!z10 && list.size() <= 1) {
            throw new AssertionError();
        }
        if (!z10 && !list.stream().noneMatch(new Q41())) {
            throw new AssertionError();
        }
        if (!z10 && !list.stream().noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((AbstractC6205Xl0) obj).e();
            }
        })) {
            throw new AssertionError();
        }
        if (!z10 && !list.stream().noneMatch(new S41())) {
            throw new AssertionError();
        }
        this.f46627b = list;
    }

    @Override
    public final C6474am0 a() {
        return this;
    }

    public final AbstractC6205Xl0 b(AbstractC6205Xl0 abstractC6205Xl0) {
        boolean z10 = f46626c;
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
        if (abstractC6205Xl0 instanceof C6474am0) {
            C6474am0 a10 = abstractC6205Xl0.a();
            int i10 = AbstractC7552hC.f48487c;
            AbstractC7552hC a11 = new C7051eC().b((Iterable) this.f46627b).b((Iterable) a10.f46627b).a();
            return a11.size() <= 3 ? new C6474am0(a11) : C8602nZ.f50980b;
        }
        if (!z10 && !abstractC6205Xl0.d() && !(abstractC6205Xl0 instanceof C6641bm0)) {
            throw new AssertionError();
        }
        int i11 = AbstractC7552hC.f48487c;
        AbstractC7552hC a12 = new C7051eC().b((Iterable) this.f46627b).a(abstractC6205Xl0).a();
        return a12.size() <= 3 ? new C6474am0(a12) : C8602nZ.f50980b;
    }

    @Override
    public final boolean a(VJ vj2) {
        Iterator it = this.f46627b.iterator();
        while (it.hasNext()) {
            if (!((AbstractC6205Xl0) it.next()).a(vj2)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final AbstractC6205Xl0 a(final C4798y c4798y, final com.android.tools.r8.graph.proto.c cVar, final C6807cm0 c6807cm0) {
        List a10 = AT.a(this.f46627b, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C6474am0.a(C4798y.this, cVar, c6807cm0, (AbstractC6205Xl0) obj);
            }
        }, (List) null);
        if (a10 == null) {
            return this;
        }
        if (a10.isEmpty()) {
            return C8188l2.f49866b;
        }
        if (a10.size() == 1) {
            return (AbstractC6205Xl0) AT.a(a10);
        }
        if (JK.a(a10.iterator(), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return ((AbstractC6205Xl0) obj).g();
            }
        }) != -1) {
            return C8602nZ.f50980b;
        }
        if (a10.size() <= 3) {
            return new C6474am0(a10);
        }
        return C8602nZ.f50980b;
    }

    public static AbstractC6205Xl0 a(C4798y c4798y, com.android.tools.r8.graph.proto.c cVar, C6807cm0 c6807cm0, AbstractC6205Xl0 abstractC6205Xl0) {
        AbstractC6205Xl0 a10 = abstractC6205Xl0.a(c4798y, cVar, c6807cm0);
        a10.getClass();
        if (a10 instanceof C8188l2) {
            return null;
        }
        return a10;
    }
}
