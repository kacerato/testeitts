package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Predicate;

public class C7832iv {

    public static final boolean f49110e = true;

    public final C4798y f49111a;

    public final InterfaceC7999jv f49112b;

    public final Set f49113c = AbstractC5513Ll0.c();

    public final ArrayDeque f49114d = new ArrayDeque();

    public C7832iv(C4798y<?> c4798y, InterfaceC7999jv interfaceC7999jv) {
        this.f49111a = c4798y;
        this.f49112b = interfaceC7999jv;
    }

    public static boolean a(C7 c72, AbstractC10561zE abstractC10561zE) {
        c72.a((C7) abstractC10561zE);
        return true;
    }

    public final boolean b(C7215fB c7215fB, C10340xw0 c10340xw0) {
        final C7 c72 = new C7();
        a(c7215fB, c10340xw0, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C7832iv.a(C7.this, (AbstractC10561zE) obj);
            }
        });
        return c72.b();
    }

    public Set<AbstractC10561zE> a(C7215fB c7215fB, C10340xw0 c10340xw0) {
        int i10 = QC.f43505c;
        final IC ic2 = new IC();
        a(c7215fB, c10340xw0, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C7832iv.a(IC.this, (AbstractC10561zE) obj);
            }
        });
        return ic2.a();
    }

    public static boolean a(IC ic2, AbstractC10561zE abstractC10561zE) {
        ic2.a(abstractC10561zE);
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0154, code lost:
    
        if (r6.f53886c.y1() != false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0175, code lost:
    
        if (r6.f53886c.c2() != false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x01bc, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01fd, code lost:
    
        if (r5 == false) goto L156;
     */
    /* JADX WARN: Removed duplicated region for block: B:86:0x017c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(C7215fB c7215fB, C10340xw0 c10340xw0, Predicate predicate) {
        W5 b10;
        C10340xw0 n10;
        boolean z10;
        boolean z11 = f49110e;
        if (!z11 && !c10340xw0.u().y()) {
            throw new AssertionError();
        }
        if (!z11 && !this.f49113c.isEmpty()) {
            throw new AssertionError();
        }
        if (!z11 && !this.f49114d.isEmpty()) {
            throw new AssertionError();
        }
        if (c10340xw0.j()) {
            b10 = c10340xw0.l().f47862p;
        } else {
            b10 = c10340xw0.f53886c.b();
        }
        if (!z11 && !c7215fB.f47897d.contains(b10)) {
            throw new AssertionError();
        }
        List<C10340xw0> d10 = c7215fB.d();
        a(c10340xw0);
        loop0: while (!this.f49114d.isEmpty()) {
            C10340xw0 c10340xw02 = (C10340xw0) this.f49114d.poll();
            boolean z12 = f49110e;
            if (!z12 && c10340xw02 == null) {
                throw new AssertionError();
            }
            if (!z12 && !this.f49113c.contains(c10340xw02)) {
                throw new AssertionError();
            }
            Iterator it = c10340xw02.a0().iterator();
            while (it.hasNext()) {
                a((C10340xw0) it.next());
            }
            Iterator<AbstractC10561zE> it2 = c10340xw02.b0().iterator();
            while (true) {
                boolean z13 = false;
                if (!it2.hasNext()) {
                    break;
                }
                AbstractC10561zE next = it2.next();
                if (next.b() == b10 && !c10340xw0.j()) {
                    AbstractC10561zE abstractC10561zE = c10340xw0.f53886c;
                    boolean z14 = AbstractC10561zE.f54316j;
                    if (!z14 && abstractC10561zE == next) {
                        throw new AssertionError();
                    }
                    if (!z14 && abstractC10561zE.f54317b != next.f54317b) {
                        throw new AssertionError();
                    }
                    for (AbstractC10561zE abstractC10561zE2 = next.f54319d; abstractC10561zE2 != null; abstractC10561zE2 = abstractC10561zE2.f54319d) {
                        if (abstractC10561zE2 == abstractC10561zE) {
                            break;
                        }
                    }
                }
                if (!this.f49112b.a(this.f49111a, this, next, c7215fB.j())) {
                    com.android.tools.r8.graph.H5 j10 = c7215fB.j();
                    if (!next.g2() && !next.m2() && !next.e()) {
                        if (next.P1()) {
                            if (next.e0().B2() == j10.getReference()) {
                                z10 = !next.f54321f.equals(d10);
                                if (z10 && predicate.test(next)) {
                                    z13 = true;
                                    break;
                                }
                            }
                        } else {
                            if (next.o1()) {
                                C10340xw0 i10 = next.A().u2().i();
                                if (!i10.j()) {
                                }
                            } else {
                                if (next.i()) {
                                    C10340xw0 i11 = next.m().n().i();
                                    if (!i11.j()) {
                                    }
                                }
                                z10 = false;
                            }
                            if (z10) {
                                z13 = true;
                                break;
                                break;
                            }
                        }
                    }
                    z10 = true;
                    if (z10) {
                    }
                }
                Iterator it3 = this.f49113c.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        break;
                    }
                    if (next.a(this.f49111a, (C10340xw0) it3.next())) {
                        z13 = true;
                        break;
                    }
                }
                if (z13) {
                    C10340xw0 d11 = next.d();
                    if (f49110e || (d11 != null && d11.u().y())) {
                        a(d11);
                    }
                }
                if (next.o1()) {
                    n10 = next.A().u2();
                } else {
                    n10 = next.i() ? next.m().n() : null;
                }
                if (n10 != null && n10 != c10340xw02) {
                    if (!f49110e && !n10.u().y()) {
                        throw new AssertionError();
                    }
                    a(n10);
                }
            }
        }
        this.f49113c.clear();
        this.f49114d.clear();
    }

    public final void a(C10340xw0 c10340xw0) {
        if (!f49110e && c10340xw0 == null) {
            throw new AssertionError();
        }
        if (this.f49113c.add(c10340xw0)) {
            this.f49114d.push(c10340xw0);
        }
    }
}
