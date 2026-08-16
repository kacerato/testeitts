package com.google.android.gms.internal.measurement;

public final class D2 extends AbstractC12163q5 implements X5 {
    private static final D2 zzi;
    private int zzb;
    private int zzg;
    private String zzd = "";
    private String zze = "";
    private String zzf = "";
    private String zzh = "";

    static {
        D2 d22 = new D2();
        zzi = d22;
        AbstractC12163q5.t(D2.class, d22);
    }

    public static D2 I() {
        return zzi;
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzi, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1004\u0003\u0005\u1008\u0004", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (i11 == 3) {
            return new D2();
        }
        if (i11 == 4) {
            return new C2(null);
        }
        if (i11 == 5) {
            return zzi;
        }
        throw null;
    }

    public final String E() {
        return this.zzd;
    }

    public final String F() {
        return this.zze;
    }

    public final int G() {
        return this.zzg;
    }

    public final String H() {
        return this.zzh;
    }
}
