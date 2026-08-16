package com.google.android.gms.internal.measurement;

public final class B2 extends AbstractC12163q5 implements X5 {
    private static final B2 zzf;
    private int zzb;
    private String zzd = "";
    private String zze = "";

    static {
        B2 b22 = new B2();
        zzf = b22;
        AbstractC12163q5.t(B2.class, b22);
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001", new Object[]{"zzb", "zzd", "zze"});
        }
        if (i11 == 3) {
            return new B2();
        }
        if (i11 == 4) {
            return new A2(null);
        }
        if (i11 == 5) {
            return zzf;
        }
        throw null;
    }

    public final String E() {
        return this.zzd;
    }

    public final String F() {
        return this.zze;
    }
}
