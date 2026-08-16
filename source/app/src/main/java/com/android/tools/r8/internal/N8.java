package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.BiConsumer;

public final class N8 implements Iterable {

    public static final N8 f42507e = new N8();

    public static final N8 f42508f = new N8();

    public static final boolean f42509g = true;

    public final AbstractC7552hC f42510b;

    public final AbstractC7552hC f42511c;

    public QC f42512d;

    public N8() {
        int i10 = AbstractC7552hC.f48487c;
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        this.f42510b = c6190Xe0;
        this.f42511c = c6190Xe0;
    }

    public final Set a() {
        if (this.f42512d == null) {
            this.f42512d = QC.a(this.f42511c);
        }
        return this.f42512d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof N8)) {
            return false;
        }
        N8 n82 = (N8) obj;
        return this.f42510b.equals(n82.f42510b) && this.f42511c.equals(n82.f42511c);
    }

    public final int hashCode() {
        return this.f42511c.hashCode() + (this.f42510b.hashCode() * 31);
    }

    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public final Iterator iterator() {
        return new L8(this);
    }

    public final int size() {
        if (f42509g || this.f42510b.size() == this.f42511c.size()) {
            return this.f42510b.size();
        }
        throw new AssertionError();
    }

    public final N8 a(final com.android.tools.r8.graph.M2 m22) {
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                N8.a(com.android.tools.r8.graph.M2.this, arrayList, arrayList2, (com.android.tools.r8.graph.M2) obj, obj2);
            }
        });
        return new N8(arrayList, arrayList2);
    }

    public N8(List list, List list2) {
        boolean z10 = f42509g;
        if (!z10 && list.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && list.size() != list2.size()) {
            throw new AssertionError();
        }
        this.f42510b = AbstractC7552hC.a(list);
        this.f42511c = AbstractC7552hC.a(list2);
    }

    public static void a(com.android.tools.r8.graph.M2 m22, List list, List list2, com.android.tools.r8.graph.M2 m23, Object obj) {
        if (m23 != m22) {
            list.add(m23);
            list2.add(obj);
        }
    }

    public final N8 a(final AbstractC5308Hz abstractC5308Hz, final AbstractC5308Hz abstractC5308Hz2) {
        List a10;
        final CH ch2 = new CH(16);
        final Set c10 = AbstractC5513Ll0.c();
        List a11 = AT.a(this.f42510b, new InterfaceC6568bI() {
            @Override
            public final Object a(int i10, Object obj) {
                return N8.a(AbstractC5308Hz.this, abstractC5308Hz2, c10, ch2, i10, (com.android.tools.r8.graph.M2) obj);
            }
        }, (List) null);
        if (a11 == null) {
            if (f42509g || ch2.isEmpty()) {
                return this;
            }
            throw new AssertionError();
        }
        if (ch2.isEmpty()) {
            a10 = this.f42511c;
        } else {
            a10 = AT.a(this.f42511c, ch2);
        }
        return new N8(a11, a10);
    }

    public static com.android.tools.r8.graph.M2 a(AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, Set set, TH th2, int i10, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.M2 c10 = abstractC5308Hz.c(abstractC5308Hz2, m22);
        if (set.add(c10)) {
            return c10;
        }
        th2.add(i10);
        return null;
    }

    public final void a(BiConsumer biConsumer) {
        for (int i10 = 0; i10 < size(); i10++) {
            biConsumer.accept((com.android.tools.r8.graph.M2) this.f42510b.get(i10), this.f42511c.get(i10));
        }
    }
}
