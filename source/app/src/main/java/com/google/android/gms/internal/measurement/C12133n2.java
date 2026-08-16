package com.google.android.gms.internal.measurement;

import java.util.List;

public final class C12133n2 extends AbstractC12163q5 implements X5 {
    private static final C12133n2 zzi;
    private int zzb;
    private boolean zzg;
    private InterfaceC12243z5 zzd = AbstractC12163q5.z();
    private InterfaceC12243z5 zze = AbstractC12163q5.z();
    private InterfaceC12243z5 zzf = AbstractC12163q5.z();
    private InterfaceC12243z5 zzh = AbstractC12163q5.z();

    static {
        C12133n2 c12133n2 = new C12133n2();
        zzi = c12133n2;
        AbstractC12163q5.t(C12133n2.class, c12133n2);
    }

    public static C12133n2 K() {
        return zzi;
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzi, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0004\u0000\u0001\u001b\u0002\u001b\u0003\u001b\u0004\u1007\u0000\u0005\u001b", new Object[]{"zzb", "zzd", C12025b2.class, "zze", C12043d2.class, "zzf", C12106k2.class, "zzg", "zzh", C12025b2.class});
        }
        if (i11 == 3) {
            return new C12133n2();
        }
        if (i11 == 4) {
            return new Z1(null);
        }
        if (i11 == 5) {
            return zzi;
        }
        throw null;
    }

    public final List E() {
        return this.zzd;
    }

    public final List F() {
        return this.zze;
    }

    public final List G() {
        return this.zzf;
    }

    public final boolean H() {
        return (this.zzb & 1) != 0;
    }

    public final boolean I() {
        return this.zzg;
    }

    public final List J() {
        return this.zzh;
    }
}
