package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4735uc;
import com.android.tools.r8.graph.InterfaceC4403d1;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.function.Predicate;

public abstract class AbstractC8374m80 extends AbstractC6094Vn<com.android.tools.r8.graph.H5> {

    public static final C8040k80 f50207d = new C8040k80();

    public static final boolean f50208e = true;

    public AbstractC8374m80() {
    }

    public static AbstractC8374m80 a(com.android.tools.r8.graph.H5 h52) {
        C8207l80 c8207l80 = new C8207l80(1);
        c8207l80.add((C8207l80) h52);
        return c8207l80;
    }

    public static AbstractC8374m80 c() {
        return new C8207l80();
    }

    public static AbstractC8374m80 d() {
        return new C7873j80();
    }

    public static AbstractC8374m80 k(int i10) {
        return new C8207l80(i10);
    }

    @Override
    public Map j(int i10) {
        return a();
    }

    public AbstractC8374m80(int i10) {
        super(i10);
    }

    public static AbstractC8374m80 a(InterfaceC6285Yx interfaceC6285Yx) {
        AbstractC8374m80 c10 = c();
        Objects.requireNonNull(c10);
        interfaceC6285Yx.forEach(new C4735uc(c10));
        return c10;
    }

    public AbstractC8374m80 a(InterfaceC4403d1 interfaceC4403d1, AbstractC5308Hz abstractC5308Hz) {
        AbstractC5308Hz g10 = AbstractC5308Hz.g();
        C8207l80 c8207l80 = null;
        ArrayList arrayList = null;
        for (final com.android.tools.r8.graph.H5 h52 : this.f45165b.values()) {
            com.android.tools.r8.graph.H5 a10 = h52.a(interfaceC4403d1, abstractC5308Hz, g10);
            if (a10 == null) {
                if (!f50208e && !(abstractC5308Hz instanceof C5645Nu)) {
                    throw new AssertionError();
                }
                if (c8207l80 == null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(h52);
                }
            } else if (a10 != h52) {
                if (c8207l80 == null) {
                    C8207l80 c8207l802 = new C8207l80(this.f45165b.size());
                    C6246Ye.a(this, new C4735uc(c8207l802), new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            return com.android.tools.r8.graph.H5.this.a((com.android.tools.r8.graph.H0) obj);
                        }
                    });
                    if (arrayList != null) {
                        c8207l802.removeAll(arrayList);
                        arrayList = null;
                    }
                    c8207l80 = c8207l802;
                }
                c8207l80.add((C8207l80) a10);
            } else if (c8207l80 != null) {
                c8207l80.add((C8207l80) a10);
            }
        }
        if (c8207l80 == null) {
            if (arrayList != null) {
                removeAll(arrayList);
            }
            return this;
        }
        if (c8207l80.f45165b.size() < this.f45165b.size()) {
            IdentityHashMap identityHashMap = new IdentityHashMap(c8207l80.f45165b.size());
            identityHashMap.putAll(c8207l80.f45165b);
            c8207l80.f45165b = identityHashMap;
        }
        return c8207l80;
    }

    public final AbstractC8374m80 a(final com.android.tools.r8.graph.O5 o52) {
        removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean a10;
                a10 = com.android.tools.r8.graph.O5.this.a(((com.android.tools.r8.graph.H5) obj).getReference());
                return a10;
            }
        });
        return this;
    }
}
