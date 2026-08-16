package com.google.android.gms.internal.measurement;

import java.util.List;

public final class I3 extends AbstractC12163q5 implements X5 {
    private static final I3 zzf;
    private int zzb;
    private String zzd = "";
    private InterfaceC12243z5 zze = AbstractC12163q5.z();

    static {
        I3 i32 = new I3();
        zzf = i32;
        AbstractC12163q5.t(I3.class, i32);
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b", new Object[]{"zzb", "zzd", "zze", P3.class});
        }
        if (i11 == 3) {
            return new I3();
        }
        if (i11 == 4) {
            return new H3(null);
        }
        if (i11 == 5) {
            return zzf;
        }
        throw null;
    }

    public final String E() {
        return this.zzd;
    }

    public final List F() {
        return this.zze;
    }
}
