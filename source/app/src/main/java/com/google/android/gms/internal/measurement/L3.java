package com.google.android.gms.internal.measurement;

import java.util.List;

public final class L3 extends AbstractC12163q5 implements X5 {
    private static final L3 zzf;
    private int zzb;
    private InterfaceC12243z5 zzd = AbstractC12163q5.z();
    private G3 zze;

    static {
        L3 l32 = new L3();
        zzf = l32;
        AbstractC12163q5.t(L3.class, l32);
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u1009\u0000", new Object[]{"zzb", "zzd", P3.class, "zze"});
        }
        if (i11 == 3) {
            return new L3();
        }
        if (i11 == 4) {
            return new J3(null);
        }
        if (i11 == 5) {
            return zzf;
        }
        throw null;
    }

    public final List E() {
        return this.zzd;
    }

    public final G3 F() {
        G3 g32 = this.zze;
        return g32 == null ? G3.G() : g32;
    }
}
