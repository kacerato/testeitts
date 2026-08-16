package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4592n1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4813ye;
import java.util.ArrayList;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C6196Xh extends AbstractC9490sr0 {

    public static final boolean f45793n = true;

    public final C4554l1 f45794j;

    public final int f45795k;

    public final com.android.tools.r8.graph.H5 f45796l;

    public final DG f45797m;

    public C6196Xh(DG dg2, com.android.tools.r8.graph.H5 h52, C4554l1 c4554l1, int i10, B60 b60) {
        super(h52, b60);
        this.f45794j = c4554l1;
        this.f45795k = i10;
        this.f45796l = h52;
        this.f45797m = dg2;
    }

    public final void a(final com.android.tools.r8.graph.A2 a22) {
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6196Xh.this.a(a22, (C6382aB) obj);
            }
        };
        Predicate predicate = AbstractC9490sr0.f52464g;
        this.f52470d.add(consumer);
        this.f52471e.add(predicate);
    }

    public final void b(int i10, C6382aB c6382aB) {
        if (!AbstractC9490sr0.f52466i && this.f52468b < 0) {
            throw new AssertionError();
        }
        c6382aB.b(i10, this.f52468b, this.f45794j);
    }

    public final void h(final int i10) {
        if (!f45793n && this.f45794j == null) {
            throw new AssertionError();
        }
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6196Xh.this.b(i10, (C6382aB) obj);
            }
        };
        Predicate predicate = AbstractC9490sr0.f52464g;
        this.f52470d.add(consumer);
        this.f52471e.add(predicate);
    }

    public final void i() {
        C8898pG c8898pG = ((C8564nG) this.f45797m.c()).f50573c.f39475d;
        if (this.f45794j != null) {
            EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41825c;
            final int i10 = this.f52467a;
            this.f52467a = enumC5477Kw0.c() + i10;
            final int a10 = c8898pG.a();
            Consumer consumer = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C6196Xh.b(i10, a10, (C6382aB) obj);
                }
            };
            Predicate predicate = AbstractC9490sr0.f52464g;
            this.f52470d.add(consumer);
            this.f52471e.add(predicate);
            h(i10);
        }
        a((com.android.tools.r8.graph.A2) c8898pG.getValue());
        C4813ye c4813ye = new C4813ye();
        Predicate predicate2 = AbstractC9490sr0.f52465h;
        this.f52470d.add(c4813ye);
        this.f52471e.add(predicate2);
    }

    public static void b(int i10, int i11, C6382aB c6382aB) {
        c6382aB.getClass();
        c6382aB.a(new C9126qh(c6382aB.a(i10, 1, AbstractC8999pu0.k()), i11));
    }

    public final boolean a(int i10, IH ih2, int[] iArr, C6382aB c6382aB) {
        int a10 = ih2.a();
        for (int i11 : iArr) {
            c6382aB.a(i10, i11, true);
        }
        c6382aB.a(i10, a10, true);
        return true;
    }

    public final void h() {
        int i10 = this.f45797m.f39474c;
        int v10 = (this.f45796l.v() - 1) - this.f45795k;
        boolean z10 = AbstractC9490sr0.f52466i;
        if (!z10 && v10 < 0) {
            throw new AssertionError();
        }
        if (!z10 && v10 >= this.f52469c.length) {
            throw new AssertionError();
        }
        final int i11 = this.f52469c[v10];
        if (this.f45794j != null) {
            h(i11);
        }
        int i12 = i10 - 1;
        final int[] iArr = new int[i12];
        final int[] iArr2 = new int[i12];
        final IH ih2 = new IH();
        final int size = this.f52470d.size() - 1;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6382aB c6382aB = (C6382aB) obj;
                c6382aB.a(i11, iArr, ih2.a(), iArr2);
            }
        };
        Predicate predicate = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C6196Xh.this.a(size, ih2, iArr2, (C6382aB) obj);
            }
        };
        this.f52470d.add(consumer);
        this.f52471e.add(predicate);
        C9065qG c9065qG = new C9065qG(((C8564nG) this.f45797m.c()).f50573c);
        int i13 = 0;
        while (c9065qG.hasNext()) {
            C8898pG a10 = c9065qG.a();
            int a11 = a10.a();
            com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) a10.getValue();
            if (i13 == 0) {
                ih2.d(this.f52470d.size());
            } else {
                int i14 = i13 - 1;
                iArr[i14] = a11;
                iArr2[i14] = this.f52470d.size();
            }
            a(a22);
            C4813ye c4813ye = new C4813ye();
            Predicate predicate2 = AbstractC9490sr0.f52465h;
            this.f52470d.add(c4813ye);
            this.f52471e.add(predicate2);
            i13++;
        }
    }

    public final void a(com.android.tools.r8.graph.A2 a22, C6382aB c6382aB) {
        int i10;
        ArrayList arrayList;
        if (!C6382aB.f46438D && (arrayList = c6382aB.f46461t) != null && arrayList.isEmpty()) {
            throw new AssertionError();
        }
        ArrayList arrayList2 = c6382aB.f46461t;
        if (arrayList2 != null) {
            i10 = (arrayList2.size() - C8704o7.a(this.f45797m.f39474c > 1)) - this.f45795k;
        } else {
            i10 = 0;
        }
        int w02 = a22.w0();
        ArrayList arrayList3 = new ArrayList(w02 + 1);
        arrayList3.add(c6382aB.f46460s);
        if (i10 >= w02) {
            for (int i11 = 0; i11 < w02; i11++) {
                arrayList3.add((C10340xw0) c6382aB.f46461t.get(i11));
            }
        } else {
            for (int i12 = 0; i12 < i10; i12++) {
                arrayList3.add((C10340xw0) c6382aB.f46461t.get(i12));
            }
            EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41825c;
            int i13 = this.f52467a;
            this.f52467a = enumC5477Kw0.c() + i13;
            C9126qh c9126qh = new C9126qh(c6382aB.a(i13, 1, AbstractC8999pu0.k()), 0L);
            c6382aB.a(c9126qh);
            while (arrayList3.size() <= w02) {
                if (!f45793n && EnumC5477Kw0.a(a22.a(arrayList3.size(), false)) != EnumC5477Kw0.f41825c) {
                    throw new AssertionError();
                }
                arrayList3.add(c9126qh.d());
            }
        }
        if (!f45793n && arrayList3.size() != a22.a(false)) {
            throw new AssertionError();
        }
        c6382aB.a(EnumC8071kK.f49580d, (AbstractC4592n1) a22, a22.y0(), arrayList3, false);
    }
}
