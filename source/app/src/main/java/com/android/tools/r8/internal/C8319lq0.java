package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Map;

public final class C8319lq0 extends AbstractC6489ar0 {

    public static final boolean f50121p = true;

    public final com.android.tools.r8.graph.L2[] f50122o;

    public C8319lq0(C10340xw0 c10340xw0, com.android.tools.r8.graph.L2[] l2Arr, int[] iArr, int i10) {
        super(c10340xw0, iArr, i10);
        this.f50122o = l2Arr;
        boolean z10 = f50121p;
        if (z10) {
            return;
        }
        if (!z10) {
            for (int i11 = 0; i11 < v2(); i11++) {
                if (!AbstractC6489ar0.f46638n && this.f46639l[i11] == this.f46640m) {
                    throw new AssertionError();
                }
            }
        }
        if (!z10 && l2Arr.length < 1) {
            throw new AssertionError();
        }
        if (!z10 && l2Arr.length > 65535) {
            throw new AssertionError();
        }
        if (!z10 && l2Arr.length != v2()) {
            throw new AssertionError();
        }
    }

    @Override
    public final C8319lq0 O0() {
        return this;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        throw new C5417Jv0();
    }

    @Override
    public final boolean k2() {
        return true;
    }

    @Override
    public final int p2() {
        throw new C5417Jv0();
    }

    @Override
    public final int q2() {
        throw new C5417Jv0();
    }

    @Override
    public final int r2() {
        return 62;
    }

    @Override
    public final String toString() {
        StringBuilder sb2 = new StringBuilder(super.toString());
        sb2.append(System.lineSeparator());
        for (int i10 = 0; i10 < v2(); i10++) {
            sb2.append("          \"");
            sb2.append((Object) this.f50122o[i10]);
            sb2.append("\" -> ");
            sb2.append(b(i10).r());
            sb2.append(System.lineSeparator());
        }
        sb2.append("          F -> ");
        sb2.append(u2().q());
        return sb2.toString();
    }

    public final Map w2() {
        IdentityHashMap identityHashMap = new IdentityHashMap();
        int i10 = 0;
        while (true) {
            com.android.tools.r8.graph.L2[] l2Arr = this.f50122o;
            if (i10 >= l2Arr.length) {
                return identityHashMap;
            }
            identityHashMap.put(l2Arr[i10], b(i10));
            i10++;
        }
    }

    @Override
    public final void a(PS ps) {
        int length = this.f50122o.length;
        W5[] w5Arr = new W5[length];
        for (int i10 = 0; i10 < this.f50122o.length; i10++) {
            w5Arr[i10] = b(i10);
        }
        C10340xw0 c10340xw0 = (C10340xw0) this.f54321f.get(0);
        com.android.tools.r8.graph.L2[] l2Arr = this.f50122o;
        u2();
        ps.getClass();
        int length2 = l2Arr.length;
        if (!PS.f43219u && length != length2) {
            throw new AssertionError();
        }
        int[] iArr = new int[length2];
        int[] iArr2 = new int[length2];
        for (int i11 = 0; i11 < length2; i11++) {
            com.android.tools.r8.graph.L2 l22 = l2Arr[i11];
            C9115qd0 c9115qd0 = ps.f43223d;
            int i12 = c9115qd0.f51828i;
            Integer num = (Integer) c9115qd0.putIfAbsent(l22, Integer.valueOf(i12));
            if (num != null) {
                i12 = num.intValue();
            }
            iArr[i11] = i12;
            iArr2[i11] = ps.f43227h.a(w5Arr[i11]);
        }
        ps.a(227, Collections.singletonList(new OS(iArr, iArr2)), Collections.singletonList(c10340xw0));
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(NT nt) {
        throw new C5417Jv0();
    }
}
