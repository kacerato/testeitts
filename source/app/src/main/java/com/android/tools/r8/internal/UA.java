package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.ToIntFunction;

public final class UA {

    public static final boolean f44685e = true;

    public final C7215fB f44686a;

    public final AbstractC6590bT f44687b;

    public final C9875v8 f44688c;

    public final PS f44689d;

    public UA(C9875v8 c9875v8, C7215fB c7215fB, C8570nJ c8570nJ, AbstractC6590bT abstractC6590bT) {
        this.f44686a = c7215fB;
        this.f44687b = abstractC6590bT;
        this.f44688c = c9875v8;
        PS ps = new PS(c7215fB.j().getReference(), c7215fB.j().d().F0(), abstractC6590bT, c8570nJ);
        int size = c9875v8.f53018a.size();
        if (size > 0) {
            ps.f43229j = new C6899dH(size);
        }
        this.f44689d = ps;
    }

    public static WS a(C9875v8 c9875v8, C7215fB c7215fB, C8570nJ c8570nJ, AbstractC6590bT abstractC6590bT) {
        UA ua2 = new UA(c9875v8, c7215fB, c8570nJ, abstractC6590bT);
        c7215fB.C();
        Iterator<W5> it = c7215fB.f47897d.iterator();
        int i10 = 0;
        int i11 = 0;
        while (it.hasNext()) {
            W5 next = it.next();
            ua2.f44687b.a(next, i10);
            for (C7201f60 c7201f60 : next.s()) {
                Object a10 = ua2.f44687b.a((AbstractC6590bT) c7201f60, i11);
                if (c7201f60.z()) {
                    C4515j0 c4515j0 = (C4515j0) ua2.f44689d.f43233n.put(a10, c7201f60.s());
                    if (!PS.f43219u && c4515j0 != null) {
                        throw new AssertionError();
                    }
                }
                if (ua2.f44687b.b()) {
                    i11++;
                    i10++;
                }
            }
            Y5 it2 = next.l().iterator();
            while (it2.hasNext()) {
                AbstractC10561zE next2 = it2.next();
                if (next2.e1()) {
                    C10340xw0 d10 = next2.d();
                    Object a11 = ua2.f44687b.a((AbstractC6590bT) d10, i11);
                    if (d10.z()) {
                        C4515j0 c4515j02 = (C4515j0) ua2.f44689d.f43233n.put(a11, d10.s());
                        if (!PS.f43219u && c4515j02 != null) {
                            throw new AssertionError();
                        }
                    }
                }
                i11++;
                if (!next2.k1()) {
                    i10++;
                }
            }
        }
        ua2.a();
        return ua2.f44689d.d();
    }

    public static TH b(W5 w52) {
        return new CH(1);
    }

    public final void a() {
        Z5 u10 = this.f44686a.u();
        int i10 = 0;
        while (u10.f46159b.hasNext()) {
            W5 w52 = (W5) u10.f46159b.next();
            u10.f46160c = w52;
            if (this.f44687b.b()) {
                i10 += a(w52);
            }
            if (w52.z()) {
                N8 j10 = w52.j();
                PS ps = this.f44689d;
                int a10 = this.f44687b.a(w52);
                AbstractC7552hC abstractC7552hC = j10.f42510b;
                AbstractC7552hC abstractC7552hC2 = j10.f42511c;
                final AbstractC6590bT abstractC6590bT = this.f44687b;
                Objects.requireNonNull(abstractC6590bT);
                ps.f43232m.a(a10, new N8(abstractC7552hC, AT.a((Collection) abstractC7552hC2, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return Integer.valueOf(AbstractC6590bT.this.a((W5) obj));
                    }
                })));
            }
            AE H10 = w52.H();
            while (H10.hasNext()) {
                boolean z10 = f44685e;
                if (!z10) {
                    PS ps2 = this.f44689d;
                    if (!PS.f43219u) {
                        if (ps2.f43226g + ps2.f43225f != i10) {
                            throw new AssertionError();
                        }
                    } else {
                        ps2.getClass();
                    }
                }
                AbstractC10561zE next = H10.next();
                if (!z10 && next.e1() && !this.f44687b.b(next.d(), i10)) {
                    throw new AssertionError();
                }
                this.f44689d.f43228i = (C9374s8) this.f44688c.f53018a.get(next);
                PS ps3 = this.f44689d;
                B60 position = next.getPosition();
                ps3.getClass();
                if (!PS.f43219u && position == null) {
                    throw new AssertionError();
                }
                if (!position.o()) {
                    ps3.f43230k = position;
                }
                if (!next.V0().isEmpty()) {
                    PS ps4 = this.f44689d;
                    Set V02 = next.V0();
                    ps4.getClass();
                    int size = V02.size();
                    int[] iArr = new int[size];
                    Iterator it = V02.iterator();
                    for (int i11 = 0; i11 < size; i11++) {
                        iArr[i11] = ps4.f43227h.a().a().a(i10, ps4.f43227h.a((AbstractC6590bT) it.next()));
                    }
                    ps4.f43234o.a(i10, iArr);
                }
                if (next.G1()) {
                    if (next.U().v2() == ((W5) AbstractC10241xK.a((ListIterator) u10))) {
                        PS ps5 = this.f44689d;
                        ps5.c();
                        ps5.f43222c.a(211);
                        i10++;
                    }
                }
                next.a(this.f44689d);
                i10++;
            }
            if (!f44685e) {
                PS ps6 = this.f44689d;
                if (!PS.f43219u) {
                    if (ps6.f43226g + ps6.f43225f != i10) {
                        throw new AssertionError();
                    }
                } else {
                    ps6.getClass();
                }
            }
        }
        if (this.f44687b.b()) {
            return;
        }
        this.f44686a.u().forEachRemaining(new Consumer() {
            @Override
            public final void accept(Object obj) {
                UA.this.a((W5) obj);
            }
        });
    }

    public final int a(W5 w52) {
        if (!w52.A()) {
            return 0;
        }
        List<W5> u10 = w52.u();
        final AbstractC6590bT abstractC6590bT = this.f44687b;
        Objects.requireNonNull(abstractC6590bT);
        int[] a10 = a(u10, new TA() {
            @Override
            public final int a(W5 w53) {
                return AbstractC6590bT.this.a(w53);
            }
        });
        C10340xw0[] c10340xw0Arr = new C10340xw0[w52.u().size()];
        Iterator<C7201f60> it = w52.s().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            List<C10340xw0> c02 = it.next().c0();
            for (int i11 = 0; i11 < c02.size(); i11++) {
                c10340xw0Arr[a10[i11]] = c02.get(i11);
            }
            PS ps = this.f44689d;
            List asList = Arrays.asList(c10340xw0Arr);
            ps.getClass();
            ps.a(210, Collections.EMPTY_LIST, asList);
            i10++;
        }
        return i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int[] a(List list, final TA ta2) {
        int size;
        int size2 = list.size();
        ArrayList arrayList = new ArrayList(list);
        Objects.requireNonNull(ta2);
        arrayList.sort(Comparator.comparingInt(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return TA.this.a((W5) obj);
            }
        }));
        C5378Jd0 c5378Jd0 = new C5378Jd0(size2);
        int i10 = 0;
        for (int i11 = 0; i11 < size2; i11++) {
            ((TH) c5378Jd0.computeIfAbsent((W5) list.get(i11), new Function() {
                @Override
                public final Object apply(Object obj) {
                    return UA.b((W5) obj);
                }
            })).add(i11);
        }
        int[] iArr = new int[size2];
        while (i10 < size2) {
            TH th2 = (TH) c5378Jd0.get((W5) arrayList.get(i10));
            if (!f44685e && (size = th2.size()) != 1) {
                W5 w52 = (W5) arrayList.get(i10);
                for (int i12 = i10 + 1; i12 < i10 + size; i12++) {
                    W5 w53 = (W5) arrayList.get(i12);
                    if (!f44685e && w52 != w53) {
                        throw new AssertionError();
                    }
                }
            }
            UH it = th2.iterator();
            while (it.hasNext()) {
                iArr[((Integer) it.next()).intValue()] = i10;
                i10++;
            }
        }
        return iArr;
    }
}
