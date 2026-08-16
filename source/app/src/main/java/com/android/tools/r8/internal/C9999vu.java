package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.Iterator;
import java.util.Set;

public final class C9999vu {

    public static final boolean f53367d = true;

    public final C4798y f53368a;

    public final C5485La0 f53369b;

    public final Set f53370c = AbstractC5513Ll0.c();

    public C9999vu(C4798y c4798y, C5485La0 c5485La0) {
        this.f53368a = c4798y;
        this.f53369b = c5485La0;
    }

    public final void a(com.android.tools.r8.graph.M5 m52) {
        if (!f53367d && !this.f53368a.E().a0().f50801e) {
            throw new AssertionError();
        }
        if (this.f53368a.E().f50603H && this.f53368a.E().W()) {
            b(m52);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b5, code lost:
    
        r2 = r4.getType();
        r3 = r9.f53368a.b();
        r5 = r9.f53369b;
        r2 = r4.a(r3.a(r2, r5.f41991c, r5.f42012x));
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00cd, code lost:
    
        if (r2 != null) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00dd, code lost:
    
        if (((com.android.tools.r8.shaking.C11245i) r9.f53368a.f()).a(r2) == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00ed, code lost:
    
        if (((com.android.tools.r8.shaking.C11245i) r9.f53368a.f()).b(r2) == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00fb, code lost:
    
        if (((com.android.tools.r8.shaking.C11245i) r9.f53368a.f()).d(r2) == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00fd, code lost:
    
        r9.f53370c.add(r1.getType());
        r1.D1().forEach(new com.android.tools.r8.internal.C8007jx1(r10));
        r1.a(com.android.tools.r8.graph.C4516j1.f37310u);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(final com.android.tools.r8.graph.M5 m52) {
        Iterator<com.android.tools.r8.graph.H2> it = ((C11245i) this.f53368a.f()).d().iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 next = it.next();
            if (next.R0().a(this.f53369b.f41991c)) {
                com.android.tools.r8.graph.H2 h22 = null;
                if (next.b0().e() == 2) {
                    Iterator<C4516j1> it2 = next.D1().iterator();
                    com.android.tools.r8.graph.M2 m22 = null;
                    while (true) {
                        if (it2.hasNext()) {
                            C4516j1 next2 = it2.next();
                            com.android.tools.r8.graph.A2 reference = next2.getReference();
                            if (reference.f38298g != this.f53369b.f41980B || reference.w0() != 1 || reference.x0().f36675b[0] != this.f53368a.b().f37884J1) {
                                break;
                            }
                            if (next2.u1() != this.f53369b.f41990b) {
                                if (m22 != null) {
                                    break;
                                } else {
                                    m22 = next2.u1();
                                }
                            }
                        } else if (m22 != null) {
                            C4798y c4798y = this.f53368a;
                            c4798y.getClass();
                            com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(m22 == next.f36245e ? next : c4798y.a(m22));
                            if (a10 != null && a10.o1() && a10.f36248h.a(this.f53369b.f41990b)) {
                                h22 = a10;
                            }
                        }
                    }
                }
            }
        }
    }

    public static void a(com.android.tools.r8.graph.M5 m52, C4516j1 c4516j1) {
        m52.f36611g.add(c4516j1.getReference());
    }

    public final void a() {
        for (com.android.tools.r8.graph.M2 m22 : this.f53370c) {
            if (((C11245i) this.f53368a.f()).c(m22) != null) {
                throw new C5325If("EnumLite Proto Shrinker failure: Type " + ((Object) m22) + " was assumed to be dead during optimizations, but it is not.");
            }
        }
    }
}
