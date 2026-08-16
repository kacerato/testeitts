package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.function.Supplier;

public final class C5143Fc0 extends AbstractC9617te {

    public static final boolean f40256e = true;

    public C5143Fc0(C4798y c4798y) {
        super(c4798y);
    }

    public static C7091eU c(C7215fB c7215fB) {
        C7091eU c7091eU = new C7091eU();
        for (AbstractC10561zE abstractC10561zE : c7215fB.q()) {
            if (abstractC10561zE.w1()) {
                C9126qh J10 = abstractC10561zE.J();
                if (!J10.d().z()) {
                    long w22 = J10.w2();
                    if (c7091eU.a(w22)) {
                        ((List) c7091eU.b(w22)).add(J10);
                    } else {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(J10);
                        c7091eU.a(arrayList, w22);
                    }
                }
            }
        }
        return c7091eU;
    }

    public static C6993dt d(C7215fB c7215fB) {
        return new C6993dt(c7215fB, 1);
    }

    @Override
    public final String a() {
        return "RedundantConstNumberRemover";
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x018b A[EDGE_INSN: B:35:0x018b->B:36:0x018b BREAK  A[LOOP:0: B:2:0x001e->B:34:0x001e], SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final InterfaceC10118we b(final C7215fB c7215fB) {
        W5 v22;
        W5 u22;
        boolean a10;
        C9420sR c9420sR = new C9420sR(new Supplier() {
            @Override
            public final Object get() {
                return C5143Fc0.c(C7215fB.this);
            }
        });
        C9420sR c9420sR2 = new C9420sR(new Supplier() {
            @Override
            public final Object get() {
                return C5143Fc0.d(C7215fB.this);
            }
        });
        Iterator<W5> it = c7215fB.f47897d.iterator();
        int i10 = 0;
        boolean z10 = false;
        while (it.hasNext()) {
            AbstractC10561zE b10 = it.next().l().b();
            if (b10.H1()) {
                EB V10 = b10.V();
                NB nb2 = V10.f39789l;
                C10340xw0 c10340xw0 = (C10340xw0) V10.f54321f.get(i10);
                C10340xw0 c10340xw02 = !V10.x2() ? (C10340xw0) V10.f54321f.get(1) : null;
                if (V10.x2() || c10340xw0.K() || c10340xw02.K()) {
                    NB nb3 = NB.f42527b;
                    if (nb2 == nb3 || nb2 == NB.f42532g) {
                        if (nb2 == nb3) {
                            u22 = V10.v2();
                            v22 = V10.u2();
                        } else {
                            v22 = V10.v2();
                            u22 = V10.u2();
                        }
                        if (V10.x2()) {
                            z10 |= a(0L, c10340xw0, u22, c9420sR, c9420sR2);
                            if (c10340xw0.a((Set) null)) {
                                a10 = a(1L, c10340xw0, v22, c9420sR, c9420sR2);
                                z10 = a10 | z10;
                            }
                            if (!((C7091eU) c9420sR.a(c9420sR.f52359b)).isEmpty()) {
                                break;
                            }
                            i10 = 0;
                        } else {
                            boolean z11 = f40256e;
                            if (!z11 && c10340xw02 == null) {
                                throw new AssertionError();
                            }
                            if (c10340xw0.K()) {
                                C9126qh J10 = c10340xw0.n().J();
                                C10340xw0 c10340xw03 = c10340xw02;
                                z10 |= a(J10.w2(), c10340xw02, u22, c9420sR, c9420sR2);
                                if (c10340xw0.a((Set) null) && c10340xw03.a((Set) null)) {
                                    if (!z11 && !J10.d().a((Set) null)) {
                                        throw new AssertionError();
                                    }
                                    z10 |= a(J10.w2() != 0 ? 0 : 1, c10340xw03, v22, c9420sR, c9420sR2);
                                }
                            } else {
                                C10340xw0 c10340xw04 = c10340xw02;
                                if (!z11 && !c10340xw04.K()) {
                                    throw new AssertionError();
                                }
                                C9126qh J11 = c10340xw04.n().J();
                                z10 |= a(J11.w2(), c10340xw0, u22, c9420sR, c9420sR2);
                                if (c10340xw0.a((Set) null) && c10340xw04.a((Set) null)) {
                                    if (!z11 && !J11.d().a((Set) null)) {
                                        throw new AssertionError();
                                    }
                                    a10 = a(J11.w2() != 0 ? 0 : 1, c10340xw0, v22, c9420sR, c9420sR2);
                                    z10 = a10 | z10;
                                }
                            }
                            if (!((C7091eU) c9420sR.a(c9420sR.f52359b)).isEmpty()) {
                            }
                        }
                    }
                }
            }
        }
        if (z10) {
            c7215fB.a((C6382aB) null, (C10696a) null);
        }
        return z10 ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        C8570nJ E10 = this.f52646a.E();
        E10.getClass();
        return (!E10.a(C2.L) || this.f52646a.E().f50599F1.f50889k0) && this.f52648c.f50686h0 && c7215fB.f47902i.a(15);
    }

    public final boolean a(long j10, C10340xw0 c10340xw0, W5 w52, C9420sR c9420sR, C9420sR c9420sR2) {
        boolean z10 = false;
        if (c10340xw0.z()) {
            return false;
        }
        C7091eU c7091eU = (C7091eU) c9420sR.a(c9420sR.f52359b);
        List list = (List) c7091eU.b(j10);
        if (list != null && !list.isEmpty()) {
            ListIterator listIterator = list.listIterator();
            while (listIterator.hasNext()) {
                C9126qh c9126qh = (C9126qh) listIterator.next();
                C10340xw0 d10 = c9126qh.d();
                boolean z11 = f40256e;
                if (!z11 && d10.z()) {
                    throw new AssertionError();
                }
                if (!z11 && c9126qh.w2() != j10) {
                    throw new AssertionError();
                }
                W5 b10 = c9126qh.b();
                if (b10 != w52 || b10.u().size() == 1) {
                    if (!d10.a((Set) null) || c10340xw0.a((Set) null)) {
                        if (((C6993dt) c9420sR2.a(c9420sR2.f52359b)).a(b10, w52)) {
                            if (c10340xw0.u().a(d10.u(), this.f52646a)) {
                                d10.f(c10340xw0);
                                c9126qh.f54317b.l().c(c9126qh);
                                listIterator.remove();
                                z10 = true;
                            } else {
                                d10.u().getClass();
                            }
                        }
                    }
                } else if (!z11) {
                    throw new AssertionError();
                }
            }
            if (list.isEmpty()) {
                c7091eU.c(j10);
            }
        }
        return z10;
    }
}
