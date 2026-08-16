package com.android.tools.r8.internal;

import java.io.InputStream;

public abstract class AbstractC7851j1 implements InterfaceC10201x50 {
    static {
        int i10 = C10503yv.f54193b;
    }

    public final O0 a(InputStream inputStream, C10503yv c10503yv) {
        C4858Ae c4858Ae = new C4858Ae(inputStream);
        O0 o02 = (O0) a(c4858Ae, c10503yv);
        try {
            if (c4858Ae.f38666f == 0) {
                return o02;
            }
            throw new LJ("Protocol message end-group tag did not match expected tag.");
        } catch (LJ e10) {
            e10.f41938b = o02;
            throw e10;
        }
    }

    public static O0 a(O0 o02) {
        if (o02 == null || o02.isInitialized()) {
            return o02;
        }
        LJ lj2 = new LJ(new C6834cv0().getMessage());
        lj2.f41938b = o02;
        throw lj2;
    }
}
