package com.google.android.gms.internal.measurement;

public final class U2 extends AbstractC12163q5 implements X5 {
    private static final U2 zzf;
    private int zzb;
    private int zzd;
    private int zze;

    static {
        U2 u22 = new U2();
        zzf = u22;
        AbstractC12163q5.t(U2.class, u22);
    }

    public static T2 E() {
        return (T2) zzf.p();
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001", new Object[]{"zzb", "zzd", R2.f62102a, "zze", V2.f62135a});
        }
        if (i11 == 3) {
            return new U2();
        }
        if (i11 == 4) {
            return new T2(null);
        }
        if (i11 == 5) {
            return zzf;
        }
        throw null;
    }

    public final int G() {
        int a10 = S2.a(this.zzd);
        if (a10 == 0) {
            return 1;
        }
        return a10;
    }

    public final int H() {
        int a10 = W2.a(this.zze);
        if (a10 == 0) {
            return 1;
        }
        return a10;
    }

    public final void I(int i10) {
        this.zzd = i10 - 1;
        this.zzb |= 1;
    }

    public final void J(int i10) {
        this.zze = i10 - 1;
        this.zzb |= 2;
    }
}
