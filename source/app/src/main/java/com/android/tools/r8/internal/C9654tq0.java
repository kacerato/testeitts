package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public class C9654tq0 extends AbstractC9617te<C4477h> {

    public static final int f52704e = 0;

    public C9654tq0(C4798y<?> c4798y) {
        super(c4798y);
    }

    @Override
    public final void a(C7215fB c7215fB, boolean z10, String str) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:128:0x016d, code lost:
    
        if (a(r5, r9) != false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0052, code lost:
    
        if (a(r14, r6) != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b0, code lost:
    
        if (a(r14, r7) != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ca, code lost:
    
        if (a(r14, r7) != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x006c, code lost:
    
        if (a(r14, r6) != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0153, code lost:
    
        if (a(r5, r9) != false) goto L81;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01ff A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x00ed A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0072 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d0 A[LOOP:1: B:18:0x0072->B:30:0x00d0, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d2 A[EDGE_INSN: B:31:0x00d2->B:32:0x00d2 BREAK  A[LOOP:1: B:18:0x0072->B:30:0x00d0], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x000e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x019c  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final InterfaceC10118we b(C7215fB c7215fB, AbstractC6931dX abstractC6931dX, C5035Df c5035Df) {
        C8987pq0 c8987pq0;
        C10340xw0 c10340xw0;
        C9320rq0 a10;
        C10340xw0 c10340xw02;
        C10340xw0 c10340xw03;
        C4724u1 c4724u1 = this.f52647b;
        int y10 = c7215fB.y();
        Iterator<W5> it = c7215fB.f47897d.iterator();
        ArrayList arrayList = null;
        while (it.hasNext()) {
            W5 next = it.next();
            if (!next.a(y10)) {
                next.c(y10);
                AbstractC9408sL i10 = next.i();
                boolean z10 = AbstractC9487sq0.f52463a;
                if (i10.H1()) {
                    EB V10 = i10.V();
                    c10340xw02 = (C10340xw0) V10.f54321f.get(0);
                    if (!a(c4724u1, c10340xw02)) {
                        if (!V10.x2()) {
                            c10340xw02 = V10.y2();
                        }
                        c10340xw02 = null;
                    }
                    if (c10340xw02 == null) {
                        while (true) {
                            W5 a11 = AbstractC9487sq0.a(next.i());
                            if (a11.a(y10)) {
                                next = null;
                                break;
                            }
                            a11.c(y10);
                            AbstractC9408sL i11 = a11.i();
                            if (i11.H1()) {
                                EB V11 = i11.V();
                                c10340xw03 = (C10340xw0) V11.f54321f.get(0);
                                if (!a(c4724u1, c10340xw03)) {
                                    if (!V11.x2()) {
                                        c10340xw03 = V11.y2();
                                    }
                                    c10340xw03 = null;
                                }
                                if (c10340xw03 != null) {
                                    break;
                                }
                                next = a11;
                            } else {
                                if (i11.M1()) {
                                    c10340xw03 = (C10340xw0) i11.Z().f54321f.get(0);
                                }
                                c10340xw03 = null;
                                if (c10340xw03 != null) {
                                }
                            }
                        }
                        if (next != null) {
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            arrayList.add(next);
                        }
                    }
                } else {
                    if (i10.M1()) {
                        c10340xw02 = (C10340xw0) i10.Z().f54321f.get(0);
                    }
                    c10340xw02 = null;
                    if (c10340xw02 == null) {
                    }
                }
            }
        }
        c7215fB.a(y10);
        if (arrayList == null) {
            return InterfaceC10118we.f53547a;
        }
        int size = arrayList.size();
        int i12 = 0;
        boolean z11 = false;
        while (i12 < size) {
            Object obj = arrayList.get(i12);
            i12++;
            W5 w52 = (W5) obj;
            C4724u1 c4724u12 = this.f52647b;
            W5 g10 = AbstractC9487sq0.a(w52.i()).g();
            boolean z12 = C8653nq0.f51089d;
            C8653nq0 a12 = new C8486mq0().a(null, g10);
            if (a12 != null) {
                if (a12.f51090a != null) {
                    AbstractC9408sL i13 = w52.i();
                    if (i13.H1()) {
                        EB V12 = i13.V();
                        c10340xw0 = (C10340xw0) V12.f54321f.get(0);
                        if (!a(c4724u12, c10340xw0)) {
                            if (!V12.x2()) {
                                c10340xw0 = V12.y2();
                            }
                            c10340xw0 = null;
                        }
                        if (AbstractC9487sq0.f52463a && !a(c4724u12, c10340xw0)) {
                            throw new AssertionError();
                        }
                        C10340xw0 C22 = c10340xw0.f53886c.k0().C2();
                        C7201f60 c7201f60 = a12.f51091b;
                        boolean z13 = C9320rq0.f52154d;
                        a10 = new C9154qq0(g10, c4724u12, c7201f60, C22).a(null, w52);
                        if (a10 != null) {
                            if (a10.f52155a == null) {
                                if (!C8820oq0.f51368a) {
                                    throw new AssertionError((Object) "Expected to find an insertion block");
                                }
                            } else if (a10.f52157c.f48317l == a12.f51092c.f47346h) {
                                LinkedHashMap linkedHashMap = new LinkedHashMap();
                                C6447ad0 c6447ad0 = new C6447ad0(((C6614bd0) a10.f52157c.o()).f46807b);
                                while (c6447ad0.hasNext()) {
                                    com.android.tools.r8.graph.L2 l22 = (com.android.tools.r8.graph.L2) c6447ad0.f46566g.f48308c[c6447ad0.b()];
                                    W5 w53 = (W5) a12.f51092c.get(a10.f52157c.b(l22));
                                    if (w53 != null) {
                                        linkedHashMap.put(l22, w53);
                                    }
                                }
                                c8987pq0 = new C8987pq0(a12.f51090a, a10.f52155a, linkedHashMap, C22);
                            }
                        }
                    } else {
                        if (i13.M1()) {
                            c10340xw0 = (C10340xw0) i13.Z().f54321f.get(0);
                        }
                        c10340xw0 = null;
                        if (AbstractC9487sq0.f52463a) {
                        }
                        C10340xw0 C222 = c10340xw0.f53886c.k0().C2();
                        C7201f60 c7201f602 = a12.f51091b;
                        boolean z132 = C9320rq0.f52154d;
                        a10 = new C9154qq0(g10, c4724u12, c7201f602, C222).a(null, w52);
                        if (a10 != null) {
                        }
                    }
                    if (c8987pq0 == null) {
                        for (W5 w54 : c8987pq0.f51638b.p()) {
                            W5 w55 = c8987pq0.f51638b;
                            w54.getClass();
                            w54.a(w55, (C10696a) null, C6628bi.b(), EnumC6871d70.f47287c);
                        }
                        c8987pq0.f51638b.O();
                        com.android.tools.r8.graph.L2[] l2Arr = new com.android.tools.r8.graph.L2[c8987pq0.f51639c.size()];
                        int[] iArr = new int[c8987pq0.f51639c.size()];
                        C9115qd0 c9115qd0 = new C9115qd0();
                        int size2 = c8987pq0.f51638b.f45292e.size();
                        int i14 = 0;
                        for (Map.Entry entry : c8987pq0.f51639c.entrySet()) {
                            l2Arr[i14] = (com.android.tools.r8.graph.L2) entry.getKey();
                            W5 w56 = (W5) entry.getValue();
                            if (c9115qd0.containsKey(w56)) {
                                iArr[i14] = c9115qd0.b(w56);
                            } else {
                                iArr[i14] = size2;
                                c9115qd0.b(size2, w56);
                                c8987pq0.f51638b.g(w56);
                                size2++;
                            }
                            i14++;
                        }
                        c8987pq0.f51638b.g(c8987pq0.f51637a);
                        c8987pq0.f51638b.i().d(new C8319lq0(c8987pq0.f51640d, l2Arr, iArr, size2));
                        z11 = true;
                    }
                } else if (!C8820oq0.f51368a) {
                    throw new AssertionError((Object) "Expected to find a fallthrough block");
                }
            }
            c8987pq0 = null;
            if (c8987pq0 == null) {
            }
        }
        if (z11) {
            c7215fB.a((C6382aB) null, (C10696a) null);
            c7215fB.a(new C10696a(), C6628bi.b());
        }
        return z11 ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    @Override
    public final String a() {
        return "StringSwitchConverter";
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return !this.f52648c.a(c7215fB.j()) && this.f52648c.f50661a0;
    }

    public static boolean a(C4724u1 c4724u1, C10340xw0 c10340xw0) {
        C10340xw0 i10 = c10340xw0.i();
        if (i10.j()) {
            return false;
        }
        AbstractC10561zE abstractC10561zE = i10.f53886c;
        if (abstractC10561zE.T1()) {
            C8405mK k02 = abstractC10561zE.k0();
            com.android.tools.r8.graph.A2 a22 = c4724u1.f37887J4.f38262x;
            if (k02.B2().a(a22)) {
                return true;
            }
            if (k02.C2().u().a(a22.s0()) && k02.B2().c(a22)) {
                return true;
            }
        }
        return false;
    }
}
