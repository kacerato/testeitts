package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC5971Tj;
import com.android.tools.r8.internal.AbstractC6333Zs0;
import com.android.tools.r8.internal.C5855Rj;
import com.android.tools.r8.internal.C6162Ws0;
import com.android.tools.r8.internal.C6276Ys0;
import com.android.tools.r8.internal.IH;
import com.android.tools.r8.internal.W5;
import com.android.tools.r8.internal.Y5;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;

public final class B0 extends AbstractC5971Tj {

    public static final boolean f54727i = true;

    public final IH f54728f;

    public final C0 f54729g;

    public final H0 f54730h;

    public B0(IH ih2, C0 c02, H0 h02) {
        this.f54728f = ih2;
        this.f54729g = c02;
        this.f54730h = h02;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
    
        if (r2 != 1) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0042, code lost:
    
        r0 = r6.f54729g.a((com.android.tools.r8.internal.W5) r7.f43692a).iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0054, code lost:
    
        if (r0.hasNext() == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0064, code lost:
    
        if (((com.android.tools.r8.internal.C5855Rj) r8.apply((com.android.tools.r8.internal.W5) r0.next())).f43973d == null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0068, code lost:
    
        return com.android.tools.r8.internal.C6162Ws0.f45559c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0069, code lost:
    
        r0 = com.android.tools.r8.AbstractC4291c.b(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006f, code lost:
    
        if (r0 == 0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0071, code lost:
    
        if (r0 == 1) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0073, code lost:
    
        r4 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0076, code lost:
    
        if (com.android.tools.r8.ir.optimize.D0.f54732a != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0078, code lost:
    
        if (r2 != 3) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0080, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0082, code lost:
    
        r0 = com.android.tools.r8.internal.AbstractC7552hC.f48487c;
        r7.f43973d = new com.android.tools.r8.ir.optimize.F0(r4, com.android.tools.r8.internal.C6190Xe0.f45779e);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x008d, code lost:
    
        return com.android.tools.r8.internal.C6276Ys0.f46097c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0081, code lost:
    
        r4 = 4;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC6333Zs0 a(C5855Rj c5855Rj, Function function) {
        Y5 it = ((W5) c5855Rj.f43692a).l().iterator();
        int i10 = 1;
        while (true) {
            int i11 = 2;
            if (!it.hasNext()) {
                break;
            }
            AbstractC10561zE next = it.next();
            if (this.f54728f.b() > this.f54729g.a()) {
                return C6162Ws0.f45559c;
            }
            int a10 = this.f54729g.a(next);
            if (a10 == 1) {
                i10 = a10;
            } else {
                if (a10 == 2) {
                    this.f54730h.f54753a.add(next);
                }
                i10 = a10;
            }
        }
    }

    @Override
    public final C6276Ys0 a(C5855Rj c5855Rj, List list) {
        F0 f02 = (F0) c5855Rj.f43973d;
        if (E0.a(f02.f54738a)) {
            if (!F0.f54737c && !E0.a(f02.f54738a)) {
                throw new AssertionError();
            }
            int i10 = list.isEmpty() ? 3 : 4;
            Iterator it = list.iterator();
            while (it.hasNext()) {
                F0 f03 = (F0) ((C5855Rj) it.next()).f43973d;
                if (!F0.f54737c && E0.a(f03.f54738a)) {
                    throw new AssertionError();
                }
                int i11 = f03.f54738a;
                if (!E0.b(i10) && !E0.a(i11)) {
                    if (E0.a(i10) || E0.b(i11)) {
                        i10 = i11;
                    } else if (i10 != i11) {
                        i10 = 1;
                    }
                }
            }
            if (!F0.f54737c && E0.a(i10)) {
                throw new AssertionError();
            }
            ArrayList arrayList = new ArrayList();
            if (E0.b(i10)) {
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    C5855Rj c5855Rj2 = (C5855Rj) it2.next();
                    int i12 = ((F0) c5855Rj2.f43973d).f54738a;
                    if (i12 == 3) {
                        arrayList.add((W5) c5855Rj2.f43692a);
                    } else if (E0.b(i12)) {
                        arrayList.addAll(((F0) c5855Rj2.f43973d).f54739b);
                    }
                }
            }
            f02 = new F0(i10, arrayList);
        } else {
            boolean z10 = f54727i;
            if (!z10) {
                int i13 = f02.f54738a;
                if (i13 == 0) {
                    throw null;
                }
                if (i13 != 2 && i13 != 3) {
                    throw new AssertionError();
                }
            }
            if (!z10 && !list.isEmpty()) {
                throw new AssertionError();
            }
        }
        c5855Rj.f43973d = f02;
        return new C6276Ys0(f02);
    }
}
