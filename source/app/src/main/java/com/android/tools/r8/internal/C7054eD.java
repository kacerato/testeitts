package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.V8;
import java.util.Collections;

public final class C7054eD extends AbstractC5359Iv0 {

    public static final boolean f47640l = true;

    public final int f47641k;

    public C7054eD(C10340xw0 c10340xw0, C10340xw0 c10340xw02, int i10) {
        super(c10340xw0, c10340xw02);
        if (!f47640l && c10340xw02.Y() != EnumC5477Kw0.f41825c) {
            throw new AssertionError();
        }
        this.f47641k = i10;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final void b(C10340xw0 c10340xw0) {
        if (!f47640l && c10340xw0.F()) {
            throw new AssertionError();
        }
        this.f54321f.add(c10340xw0);
    }

    @Override
    public final int p2() {
        return 65535;
    }

    @Override
    public final int q2() {
        return 65535;
    }

    @Override
    public final int r2() {
        return 26;
    }

    @Override
    public final String toString() {
        return super.toString() + ", " + this.f47641k;
    }

    @Override
    public final void a(NT nt) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        throw new C5417Jv0("The Inc instruction is not intended for Dex code.");
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE instanceof C7054eD;
    }

    @Override
    public final F1 a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(PS ps) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        boolean z10 = f47640l;
        if (!z10) {
            if (!C7543h9.f48455t) {
                C9541t8 c9541t8 = c7543h9.f48474s;
                if (!C9541t8.f52540c) {
                    if (((C9374s8) c9541t8.f52541a.f53018a.get(this)) != null) {
                        throw new AssertionError();
                    }
                } else {
                    c9541t8.getClass();
                }
            } else {
                c7543h9.getClass();
            }
        }
        C10340xw0 c10340xw0 = (C10340xw0) this.f54321f.get(0);
        c7543h9.f48462g.getClass();
        int a10 = C6234Ya.a(c10340xw0);
        C10340xw0 c10340xw02 = this.f54320e;
        c7543h9.f48462g.getClass();
        int a11 = C6234Ya.a(c10340xw02);
        if (a10 == a11) {
            c7543h9.a(new R9(a10, this.f47641k), this);
        } else {
            if (!z10 && c10340xw0.Y() != EnumC5477Kw0.f41825c) {
                throw new AssertionError();
            }
            EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41825c;
            Collections.addAll(c7543h9.f48461f, new C8938pa(enumC5477Kw0, a10), new C10546z9(this.f47641k, enumC5477Kw0), new V8(V8.a.f44967b, T10.f44369e), new C10443yb(enumC5477Kw0, a11));
        }
    }
}
