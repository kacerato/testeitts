package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.internal.C7201f60;
import java.util.function.Function;
import java.util.function.IntFunction;

public final class C8590nT extends AbstractC6423aT {

    public static final boolean f50961f = true;

    public final C10340xw0[] f50962d;

    public final int f50963e;

    public C8590nT(WS ws, C10523z10 c10523z10) {
        super(c10523z10);
        int i10;
        this.f50962d = new C10340xw0[ws.f45407i + ws.f45409k];
        C7089eT it = ws.iterator();
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            }
            InterfaceC6923dT next = it.next();
            if (next.a() == 210) {
                i10 = next.f() + ws.f45407i;
                break;
            }
        }
        this.f50963e = i10;
        int length = this.f50962d.length;
        if (this.f46542a) {
            for (int i11 = 0; i11 < length; i11++) {
                this.f46543b.a();
            }
        }
    }

    @Override
    public final C10340xw0 a(Object obj, AbstractC9758uT abstractC9758uT) {
        int i10;
        C9424sT c9424sT = (C9424sT) obj;
        if (!c9424sT.a()) {
            if (!C9424sT.f52364b && c9424sT.a()) {
                throw new AssertionError();
            }
            i10 = c9424sT.f52365a;
        } else {
            C9091qT c9091qT = (C9091qT) abstractC9758uT;
            boolean z10 = C9424sT.f52364b;
            if (!z10 && !c9424sT.a()) {
                throw new AssertionError();
            }
            int i11 = (c9424sT.f52365a & Integer.MAX_VALUE) >> 16;
            if (!z10 && !c9424sT.a()) {
                throw new AssertionError();
            }
            int i12 = c9424sT.f52365a & 65535;
            if (!f50961f && this.f50963e == -1) {
                throw new AssertionError();
            }
            int i13 = this.f50963e;
            int i14 = 0;
            while (true) {
                int[] iArr = c9091qT.f51786a;
                if (i14 < iArr.length) {
                    if (iArr[i14] == i11) {
                        i10 = i12 + i13;
                        break;
                    }
                    i13 += iArr[i14 + 1];
                    i14 += 2;
                } else {
                    throw new C5417Jv0("Unexpectedly fell off the end of the phi table");
                }
            }
        }
        C10340xw0 c10340xw0 = this.f50962d[i10];
        if (c10340xw0 != null) {
            return c10340xw0;
        }
        C10340xw0 c10340xw02 = new C10340xw0(a(i10), AbstractC8999pu0.f(), null);
        this.f50962d[i10] = c10340xw02;
        return c10340xw02;
    }

    @Override
    public final C10340xw0 a(int i10, AbstractC8999pu0 abstractC8999pu0) {
        return new C10340xw0(i10, abstractC8999pu0, null);
    }

    @Override
    public final C10340xw0 a(int i10, AbstractC8999pu0 abstractC8999pu0, Function function) {
        C9424sT c9424sT = new C9424sT(i10);
        boolean z10 = f50961f;
        if (!z10 && c9424sT.a()) {
            throw new AssertionError();
        }
        C4515j0 c4515j0 = (C4515j0) function.apply(c9424sT);
        C10340xw0 c10340xw0 = this.f50962d[i10];
        if (c10340xw0 == null) {
            C10340xw0 c10340xw02 = new C10340xw0(a(i10), abstractC8999pu0, c4515j0);
            this.f50962d[i10] = c10340xw02;
            return c10340xw02;
        }
        c10340xw0.a(abstractC8999pu0);
        if (c4515j0 != null && !c10340xw0.z()) {
            c10340xw0.a(c4515j0);
        }
        if (z10 || c4515j0 == c10340xw0.s()) {
            return c10340xw0;
        }
        throw new AssertionError();
    }

    @Override
    public final C7201f60 a(int i10, IntFunction intFunction, C10540z7 c10540z7, Function function, AbstractC9758uT abstractC9758uT) {
        C9091qT c9091qT = (C9091qT) abstractC9758uT;
        int i11 = this.f50963e;
        int i12 = 0;
        while (true) {
            int[] iArr = c9091qT.f51786a;
            if (i12 < iArr.length) {
                boolean z10 = f50961f;
                if (!z10 && i11 > i10) {
                    throw new AssertionError();
                }
                int i13 = iArr[i12];
                int i14 = iArr[i12 + 1];
                if (!z10 && i14 <= 0) {
                    throw new AssertionError();
                }
                int i15 = i14 + i11;
                if (i10 < i15) {
                    int i16 = i10 - i11;
                    if (i13 < 32768) {
                        boolean z11 = C8707o8.f51173a;
                        if (!z11 && !C8707o8.a(i13)) {
                            throw new AssertionError();
                        }
                        int i17 = (i13 & 65535) << 16;
                        if (!z11 && !C8707o8.a(i16)) {
                            throw new AssertionError();
                        }
                        int i18 = (i16 & 65535) | Integer.MIN_VALUE | i17;
                        boolean z12 = C9424sT.f52364b;
                        if (!z12 && i18 >= 0) {
                            throw new AssertionError();
                        }
                        C9424sT c9424sT = new C9424sT(i18);
                        if (!z12 && !c9424sT.a()) {
                            throw new AssertionError();
                        }
                        C7201f60 c7201f60 = new C7201f60(a(i10), (W5) intFunction.apply((i18 & Integer.MAX_VALUE) >> 16), c10540z7, (C4515j0) function.apply(c9424sT), C7201f60.a.f47867b);
                        C10340xw0 c10340xw0 = this.f50962d[i10];
                        if (c10340xw0 != null) {
                            if (!z10 && c10340xw0.j()) {
                                throw new AssertionError();
                            }
                            c10340xw0.f(c7201f60);
                        }
                        this.f50962d[i10] = c7201f60;
                        return c7201f60;
                    }
                    throw new C6501av0("No support for more than 15-bit block index.");
                }
                i12 += 2;
                i11 = i15;
            } else {
                throw new C5417Jv0("Unexpected fall off the end of the phi table");
            }
        }
    }
}
