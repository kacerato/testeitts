package com.android.tools.r8.shaking;

import android.mtp.MtpConstants;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5467Kr0;
import com.android.tools.r8.internal.C7005dx;
import com.android.tools.r8.internal.C9556tD;
import com.android.tools.r8.internal.EnumC10677zx0;
import com.android.tools.r8.internal.InterfaceC5988Tr0;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;

public final class C11363p {

    public static final boolean f57683d = true;

    public final C4798y f57684a;

    public final C4554l1 f57685b;

    public final C9556tD f57686c = new C9556tD();

    public C11363p(C4798y c4798y) {
        this.f57684a = c4798y;
        this.f57685b = c4798y.b().f37859F4.f38223a;
    }

    public final void a(ExecutorService executorService) {
        C5467Kr0.a(((C11245i) this.f57684a.f()).f57388C, new InterfaceC5988Tr0() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11363p.this.a((com.android.tools.r8.graph.M2) obj, (EnumC10677zx0) obj2);
            }
        }, this.f57684a.E().G(), executorService);
        this.f57684a.f38417j = new C7005dx(this.f57686c.f52561a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0063, code lost:
    
        if (r3.f37202g.k() == false) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009e A[EDGE_INSN: B:34:0x009e->B:35:0x009e BREAK  A[LOOP:0: B:10:0x0020->B:49:0x0020], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0020 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(com.android.tools.r8.graph.M2 m22, EnumC10677zx0 enumC10677zx0) {
        boolean z10;
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f57684a.g(m22));
        if (a10 == null) {
            if (!f57683d) {
                throw new AssertionError();
            }
            return;
        }
        Iterator<C4460g1> it = a10.A1().iterator();
        C4460g1 c4460g1 = null;
        while (it.hasNext()) {
            C4460g1 next = it.next();
            if (!next.f37207l.i()) {
                if (!next.H0()) {
                    int i10 = AbstractC11346o.f57572a[enumC10677zx0.ordinal()];
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                throw new C5417Jv0();
                            }
                        } else if (!next.f37202g.f()) {
                        }
                        z10 = false;
                    } else {
                        z10 = next.f37202g.k();
                    }
                    if (z10 && !next.getReference().f37449i.T0()) {
                        if (c4460g1 != null || next.getAccessFlags().d() > c4460g1.getAccessFlags().d()) {
                            c4460g1 = next;
                        }
                        if (!c4460g1.H0()) {
                            break;
                        }
                    }
                }
                z10 = true;
                if (z10) {
                    if (c4460g1 != null) {
                    }
                    c4460g1 = next;
                    if (!c4460g1.H0()) {
                    }
                } else {
                    continue;
                }
            }
        }
        if (c4460g1 == null) {
            C4537k3 g10 = C4537k3.g(MtpConstants.OPERATION_MOVE_OBJECT);
            C4460g1[] c4460g1Arr = C4460g1.f37200o;
            C4460g1.a aVar = new C4460g1.a(true);
            C4724u1 b10 = this.f57684a.b();
            com.android.tools.r8.graph.M2 m23 = a10.f36245e;
            C4554l1 c4554l1 = this.f57685b;
            C4460g1.a a11 = aVar.a(b10.a(m23, c4554l1.f37449i, c4554l1.f38298g));
            a11.f37213c = g10;
            C4798y c4798y = this.f57684a;
            a11.f37218h = c4798y.f38405T;
            if (!c4798y.E().a().e()) {
                a11.f37223m = false;
            }
            c4460g1 = a11.a();
            a10.a(c4460g1);
        }
        C9556tD c9556tD = this.f57686c;
        C4554l1 reference = c4460g1.getReference();
        if (!C9556tD.f52560b) {
            c9556tD.getClass();
            if (reference.f38297f != m22) {
                throw new AssertionError();
            }
        }
        c9556tD.f52561a.put(m22, reference);
    }
}
