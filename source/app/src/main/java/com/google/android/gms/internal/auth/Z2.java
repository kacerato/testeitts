package com.google.android.gms.internal.auth;

import java.util.List;

public final class Z2 extends B1 implements InterfaceC11929e2 {
    private static final Z2 zzb;
    private F1 zzd = B1.e();

    static {
        Z2 z22 = new Z2();
        zzb = z22;
        B1.j(Z2.class, z22);
    }

    public static Z2 p(byte[] bArr) throws zzfb {
        return (Z2) B1.d(zzb, bArr);
    }

    @Override
    public final Object m(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return B1.g(zzb, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"zzd"});
        }
        if (i11 == 3) {
            return new Z2();
        }
        X2 x22 = null;
        if (i11 == 4) {
            return new Y2(x22);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final List q() {
        return this.zzd;
    }
}
