package com.google.android.gms.internal.measurement;

public final class C12240z2 extends AbstractC12163q5 implements X5 {
    private static final C12240z2 zzf;
    private int zzb;
    private String zzd = "";
    private String zze = "";

    static {
        C12240z2 c12240z2 = new C12240z2();
        zzf = c12240z2;
        AbstractC12163q5.t(C12240z2.class, c12240z2);
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
            return new C12240z2();
        }
        if (i11 == 4) {
            return new C12231y2(null);
        }
        if (i11 == 5) {
            return zzf;
        }
        throw null;
    }
}
