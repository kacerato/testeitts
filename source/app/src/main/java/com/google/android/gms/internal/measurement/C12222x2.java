package com.google.android.gms.internal.measurement;

public final class C12222x2 extends AbstractC12163q5 implements X5 {
    private static final C12222x2 zzg;
    private int zzb;
    private int zzd = 14;
    private int zze = 11;
    private int zzf = 60;

    static {
        C12222x2 c12222x2 = new C12222x2();
        zzg = c12222x2;
        AbstractC12163q5.t(C12222x2.class, c12222x2);
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzg, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u1004\u0002", new Object[]{"zzb", "zzd", "zze", "zzf"});
        }
        if (i11 == 3) {
            return new C12222x2();
        }
        if (i11 == 4) {
            return new C12213w2(null);
        }
        if (i11 == 5) {
            return zzg;
        }
        throw null;
    }
}
