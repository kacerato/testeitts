package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.function.Predicate;

public final class C6532b50 extends AbstractC7031e50 {

    public static final boolean f46698u = true;

    public final C7215fB f46699p;

    public final Set f46700q;

    public final Set f46701r;

    public int f46702s;

    public final C7198f50 f46703t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6532b50(C7198f50 c7198f50, C7215fB c7215fB, List list, Set set, Set set2) {
        super(c7198f50, c7215fB.j(), list);
        this.f46703t = c7198f50;
        this.f46699p = c7215fB;
        this.f46700q = set;
        this.f46701r = set2;
    }

    @Override
    public final void a(int i10, int i11, W40 w40) {
        B60 b60;
        W40 w402 = w40;
        com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) this.f46703t.f47855c.get(w402);
        C10696a c10696a = new C10696a();
        if (a22 != null) {
            if (!f46698u) {
                a(w402);
            }
            ArrayList arrayList = new ArrayList();
            this.f46702s = 0;
            int i12 = C10371y60.f53939j;
            C10204x60 c10204x60 = (C10204x60) new C10204x60().a(this.f47589a.getReference());
            c10204x60.f53686i = a22;
            c10204x60.f38816e = this.f47589a.d().F0();
            C10204x60 c10204x602 = (C10204x60) c10204x60.a(0);
            int i13 = i10;
            int i14 = 0;
            AbstractC10561zE abstractC10561zE = null;
            C10340xw0 c10340xw0 = null;
            while (i13 < i11) {
                AbstractC10561zE abstractC10561zE2 = (AbstractC10561zE) this.f47590b.get(i13);
                if (!abstractC10561zE2.v1()) {
                    int i15 = i14 + 1;
                    if (abstractC10561zE2.getPosition() != null) {
                        C4798y c4798y = this.f46703t.f47856d;
                        com.android.tools.r8.graph.H5 h52 = this.f47589a;
                        if (abstractC10561zE2.a(c4798y, h52, M1.a(c4798y, h52), C10394yE.f53978a)) {
                            c10204x602.a(i14, abstractC10561zE2.getPosition());
                        }
                    }
                    ArrayList arrayList2 = abstractC10561zE2.f54321f;
                    if (abstractC10561zE2.s1() && abstractC10561zE2.C().v2() && arrayList2.get(1) == c10340xw0) {
                        C10340xw0 c10340xw02 = (C10340xw0) arrayList2.get(0);
                        arrayList2.set(0, (C10340xw0) arrayList2.get(1));
                        arrayList2.set(1, c10340xw02);
                    }
                    int size = arrayList2.size();
                    int i16 = 0;
                    while (i16 < size) {
                        Object obj = arrayList2.get(i16);
                        i16++;
                        C10340xw0 c10340xw03 = (C10340xw0) obj;
                        c10340xw03.f53887d.remove(abstractC10561zE2);
                        c10340xw03.f53888e = null;
                        ArrayList arrayList3 = w402.f45282c;
                        int i17 = this.f46702s;
                        ArrayList arrayList4 = arrayList2;
                        this.f46702s = i17 + 1;
                        int intValue = ((Integer) arrayList3.get(i17)).intValue();
                        if (intValue >= arrayList.size()) {
                            if (!f46698u && intValue != arrayList.size()) {
                                throw new AssertionError();
                            }
                            arrayList.add(c10340xw03);
                        }
                        arrayList2 = arrayList4;
                        w402 = w40;
                    }
                    if (abstractC10561zE2.d() != null) {
                        c10340xw0 = abstractC10561zE2.d();
                    }
                    if (i13 < i11 - 1) {
                        this.f46700q.add(abstractC10561zE2);
                    }
                    i14 = i15;
                    abstractC10561zE = abstractC10561zE2;
                }
                i13++;
                w402 = w40;
            }
            boolean z10 = f46698u;
            if (!z10 && abstractC10561zE == null) {
                throw new AssertionError();
            }
            if (!z10 && a22.f36127i.l0().length() - 1 != arrayList.size()) {
                throw new AssertionError();
            }
            C10340xw0 c10340xw04 = (c10340xw0 == null || c10340xw0.P()) ? c10340xw0 : null;
            C7405gK c7405gK = new C7405gK(a22, c10340xw04, arrayList);
            abstractC10561zE.b();
            if (!c10204x602.f53685h.f54344a.isEmpty()) {
                b60 = c10204x602.a();
            } else {
                b60 = B60.c.f38822h;
            }
            c7405gK.b(b60);
            abstractC10561zE.d(c7405gK);
            if (c7405gK.e1() && c10340xw04.u().y() && c10340xw04.u().B().d()) {
                C10340xw0 a10 = this.f46699p.a(c10340xw04.u().d().a(C8854p10.h()), c10340xw04.s());
                c7405gK.d().a(a10, c10696a);
                c7405gK.d(a10);
            }
            this.f46701r.add(c7405gK);
        }
        C4798y c4798y2 = this.f46703t.f47856d;
        C7215fB c7215fB = this.f46699p;
        if (c10696a.f54829b.isEmpty()) {
            return;
        }
        new C8331lu0(c4798y2, c7215fB, false).a(c10696a, 2);
    }

    public final void a(W40 w40) {
        Optional empty;
        synchronized (this.f46703t.f47854b) {
            try {
                if (!f46698u) {
                    List list = (List) this.f46703t.f47854b.get(w40);
                    int a10 = AT.a(list, new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            return C6532b50.this.a((com.android.tools.r8.graph.H5) obj);
                        }
                    });
                    if (a10 >= 0) {
                        empty = Optional.of(list.remove(a10));
                    } else {
                        empty = Optional.empty();
                    }
                    if (!empty.isPresent()) {
                        throw new AssertionError();
                    }
                }
            } finally {
            }
        }
    }

    public final boolean a(com.android.tools.r8.graph.H5 h52) {
        return h52.d() == this.f47589a.d();
    }
}
