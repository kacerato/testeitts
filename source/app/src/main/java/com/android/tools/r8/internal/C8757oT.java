package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.IdentityHashMap;

public final class C8757oT extends AbstractC6590bT {

    public static final boolean f51252d = true;

    public final IdentityHashMap f51253a = new IdentityHashMap();

    public final C9115qd0 f51254b = new C9115qd0();

    public final ArrayList f51255c = new ArrayList();

    @Override
    public final Object a(Object obj, int i10) {
        C10340xw0 c10340xw0 = (C10340xw0) obj;
        if (c10340xw0.j()) {
            C9424sT c9424sT = (C9424sT) this.f51253a.get(c10340xw0);
            if (f51252d || c9424sT != null) {
                return c9424sT;
            }
            throw new AssertionError();
        }
        if (!C9424sT.f52364b && i10 < 0) {
            throw new AssertionError();
        }
        C9424sT c9424sT2 = new C9424sT(i10);
        this.f51253a.put(c10340xw0, c9424sT2);
        return c9424sT2;
    }

    @Override
    public final boolean b() {
        return false;
    }

    @Override
    public final boolean b(Object obj, int i10) {
        C9424sT c9424sT = (C9424sT) this.f51253a.get((C10340xw0) obj);
        boolean z10 = f51252d;
        if (!z10 && c9424sT.a()) {
            throw new AssertionError();
        }
        if (z10) {
            return true;
        }
        if (!C9424sT.f52364b && c9424sT.a()) {
            throw new AssertionError();
        }
        if (i10 == c9424sT.f52365a) {
            return true;
        }
        throw new AssertionError();
    }

    @Override
    public final Object a(Object obj) {
        return (C9424sT) this.f51253a.get((C10340xw0) obj);
    }

    @Override
    public final void a(W5 w52, int i10) {
        if (!f51252d && this.f51254b.containsKey(w52)) {
            throw new AssertionError();
        }
        this.f51254b.b(i10, w52);
        if (w52.s().isEmpty()) {
            return;
        }
        int i11 = 0;
        for (C7201f60 c7201f60 : w52.s()) {
            IdentityHashMap identityHashMap = this.f51253a;
            int i12 = i11 + 1;
            if (i10 < 32768) {
                boolean z10 = C8707o8.f51173a;
                if (!z10 && !C8707o8.a(i10)) {
                    throw new AssertionError();
                }
                int i13 = (i10 & 65535) << 16;
                if (!z10 && !C8707o8.a(i11)) {
                    throw new AssertionError();
                }
                int i14 = (i11 & 65535) | Integer.MIN_VALUE | i13;
                if (!C9424sT.f52364b && i14 >= 0) {
                    throw new AssertionError();
                }
                identityHashMap.put(c7201f60, new C9424sT(i14));
                i11 = i12;
            } else {
                throw new C6501av0("No support for more than 15-bit block index.");
            }
        }
        this.f51255c.add(Integer.valueOf(i10));
        this.f51255c.add(Integer.valueOf(i11));
    }

    @Override
    public final int a(W5 w52) {
        if (f51252d || this.f51254b.containsKey(w52)) {
            return this.f51254b.b(w52);
        }
        throw new AssertionError();
    }

    @Override
    public final AbstractC9758uT a() {
        if (this.f51255c.isEmpty()) {
            return C9091qT.f51785b;
        }
        int[] iArr = new int[this.f51255c.size()];
        for (int i10 = 0; i10 < this.f51255c.size(); i10++) {
            iArr[i10] = ((Integer) this.f51255c.get(i10)).intValue();
        }
        return new C9091qT(iArr);
    }
}
