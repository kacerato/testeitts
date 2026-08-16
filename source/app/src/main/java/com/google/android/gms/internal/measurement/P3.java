package com.google.android.gms.internal.measurement;

import java.util.List;

public final class P3 extends AbstractC12163q5 implements X5 {
    private static final P3 zzj;
    private int zzb;
    private int zzd;
    private InterfaceC12243z5 zze = AbstractC12163q5.z();
    private String zzf = "";
    private String zzg = "";
    private boolean zzh;
    private double zzi;

    static {
        P3 p32 = new P3();
        zzj = p32;
        AbstractC12163q5.t(P3.class, p32);
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzj, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u180c\u0000\u0002\u001b\u0003\u1008\u0001\u0004\u1008\u0002\u0005\u1007\u0003\u0006\u1000\u0004", new Object[]{"zzb", "zzd", N3.f62063a, "zze", P3.class, "zzf", "zzg", "zzh", "zzi"});
        }
        if (i11 == 3) {
            return new P3();
        }
        if (i11 == 4) {
            return new M3(null);
        }
        if (i11 == 5) {
            return zzj;
        }
        throw null;
    }

    public final List E() {
        return this.zze;
    }

    public final String F() {
        return this.zzf;
    }

    public final boolean G() {
        return (this.zzb & 4) != 0;
    }

    public final String H() {
        return this.zzg;
    }

    public final boolean I() {
        return (this.zzb & 8) != 0;
    }

    public final boolean J() {
        return this.zzh;
    }

    public final boolean K() {
        return (this.zzb & 16) != 0;
    }

    public final double L() {
        return this.zzi;
    }

    public final int N() {
        int a10 = O3.a(this.zzd);
        if (a10 == 0) {
            return 1;
        }
        return a10;
    }
}
