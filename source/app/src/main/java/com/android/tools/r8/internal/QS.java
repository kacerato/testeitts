package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.function.BiConsumer;

public final class QS implements InterfaceC5580Mq0 {

    public static final boolean f43583d = true;

    public final AbstractC8552nC f43584b;

    public final C6899dH f43585c;

    public QS(HashMap hashMap, C6899dH c6899dH) {
        C6899dH c6899dH2;
        if (!f43583d && hashMap.isEmpty()) {
            throw new AssertionError();
        }
        this.f43584b = AbstractC8552nC.a(hashMap);
        if (c6899dH.isEmpty()) {
            c6899dH2 = null;
        } else {
            c6899dH2 = new C6899dH(c6899dH.f47346h);
            c6899dH2.putAll(c6899dH);
        }
        this.f43585c = c6899dH2;
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        throw new C5417Jv0();
    }

    public final void a(BiConsumer biConsumer) {
        this.f43584b.forEach(biConsumer);
    }

    @Override
    public final int a(QS qs, final AbstractC8953pf abstractC8953pf) {
        int size = this.f43584b.size();
        int compare = Integer.compare(size, qs.f43584b.size());
        if (compare != 0) {
            return compare;
        }
        C6899dH c6899dH = this.f43585c;
        boolean z10 = c6899dH == null;
        C6899dH c6899dH2 = qs.f43585c;
        if (z10 != (c6899dH2 == null)) {
            return c6899dH == null ? -1 : 1;
        }
        if (c6899dH != null) {
            if (!f43583d && c6899dH2 == null) {
                throw new AssertionError();
            }
            int a10 = AbstractC8619nf.a(c6899dH, c6899dH2, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return AbstractC8619nf.a((int[]) obj, (int[]) obj2);
                }
            });
            if (a10 != 0) {
                return a10;
            }
        }
        if (!f43583d && (this.f43584b instanceof SG)) {
            throw new AssertionError();
        }
        final C6899dH c6899dH3 = new C6899dH(size);
        final C6899dH c6899dH4 = new C6899dH(size);
        this.f43584b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6899dH.this.a(((Integer) obj).intValue(), (C4515j0) obj2);
            }
        });
        qs.f43584b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6899dH.this.a(((Integer) obj).intValue(), (C4515j0) obj2);
            }
        });
        return AbstractC8619nf.a(c6899dH3, c6899dH4, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int a11;
                a11 = ((C4515j0) obj).a((C4515j0) obj2, AbstractC8953pf.this);
                return a11;
            }
        });
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        C9547tA c9547tA = (C9547tA) abstractC9213rA;
        c9547tA.f52553a.a(this.f43584b.size());
        final ArrayList arrayList = new ArrayList(this.f43584b.size());
        this.f43584b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                QS.a(ArrayList.this, obj, (C4515j0) obj2);
            }
        });
        arrayList.sort(new C7752iQ0());
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            Integer num = (Integer) obj;
            c9547tA.f52553a.a(num.intValue());
            ((C4515j0) this.f43584b.get(num)).a(abstractC9213rA);
        }
        if (this.f43585c != null) {
            final IH ih2 = new IH();
            final IH ih3 = new IH();
            this.f43585c.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj2, Object obj3) {
                    QS.a(IH.this, ih3, (Integer) obj2, (int[]) obj3);
                }
            });
            c9547tA.f52553a.a(ih2.a());
            c9547tA.f52553a.a(ih3.a());
        }
    }

    public static void a(ArrayList arrayList, Object obj, C4515j0 c4515j0) {
        Integer num = (Integer) obj;
        num.intValue();
        arrayList.add(num);
    }

    public static void a(IH ih2, IH ih3, Integer num, int[] iArr) {
        ih2.c(num.intValue());
        ih3.c(Arrays.hashCode(iArr));
    }
}
