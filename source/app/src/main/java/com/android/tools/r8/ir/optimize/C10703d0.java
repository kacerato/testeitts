package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C6433aY;
import com.android.tools.r8.internal.C8421mS;
import com.android.tools.r8.ir.optimize.C10703d0;
import java.util.HashSet;
import java.util.Iterator;
import java.util.function.Predicate;

public final class C10703d0 {

    public final HashSet f54855a = new HashSet();

    public final C8421mS f54856b;

    public C10703d0(C8421mS c8421mS) {
        this.f54856b = c8421mS;
    }

    public final boolean a(AbstractC10561zE abstractC10561zE) {
        if (abstractC10561zE.Y1()) {
            C6433aY p02 = abstractC10561zE.p0();
            int a10 = this.f54856b.a(p02.v2(), p02.f54322g);
            int b10 = this.f54856b.b(p02.u2(), p02.f54322g);
            if (a10 == b10) {
                return true;
            }
            Iterator it = this.f54855a.iterator();
            while (it.hasNext()) {
                C6433aY c6433aY = (C6433aY) it.next();
                int a11 = this.f54856b.a(c6433aY.v2(), c6433aY.f54322g);
                int b11 = this.f54856b.b(c6433aY.u2(), c6433aY.f54322g);
                if (a11 == a10 && b11 == b10) {
                    return true;
                }
                if (b11 == a10 && a11 == b10) {
                    if (!p02.s2().b()) {
                        return true;
                    }
                    if (a10 != b10 + 1 && a10 + 1 != b10) {
                        return true;
                    }
                }
            }
        }
        if (abstractC10561zE.d() != null && abstractC10561zE.d().T()) {
            final C10340xw0 d10 = abstractC10561zE.d();
            final int b12 = this.f54856b.b(d10, abstractC10561zE.f54322g);
            this.f54855a.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C10703d0.this.a(d10, b12, (C6433aY) obj);
                }
            });
        }
        if (!abstractC10561zE.Y1()) {
            return false;
        }
        this.f54855a.add(abstractC10561zE.p0());
        return false;
    }

    public final boolean a(C10340xw0 c10340xw0, int i10, C6433aY c6433aY) {
        int a10 = this.f54856b.a(c6433aY.v2(), c6433aY.f54322g);
        int b10 = this.f54856b.b(c6433aY.u2(), c6433aY.f54322g);
        for (int i11 = 0; i11 < c10340xw0.f53896m.C(); i11++) {
            for (int i12 = 0; i12 < c6433aY.d().f53896m.C(); i12++) {
                int i13 = i10 + i11;
                if (i13 == b10 + i12 || i13 == a10 + i12) {
                    return true;
                }
            }
        }
        return false;
    }
}
