package com.google.android.gms.internal.measurement;

import java.util.List;

public final class G3 extends AbstractC12163q5 implements X5 {
    private static final G3 zzd;
    private InterfaceC12243z5 zzb = AbstractC12163q5.z();

    static {
        G3 g32 = new G3();
        zzd = g32;
        AbstractC12163q5.t(G3.class, g32);
    }

    public static G3 G() {
        return zzd;
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzd, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzb", I3.class});
        }
        if (i11 == 3) {
            return new G3();
        }
        if (i11 == 4) {
            return new F3(null);
        }
        if (i11 == 5) {
            return zzd;
        }
        throw null;
    }

    public final List E() {
        return this.zzb;
    }

    public final int F() {
        return this.zzb.size();
    }
}
