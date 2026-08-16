package com.google.android.gms.internal.measurement;

public final class C12080h3 extends AbstractC12163q5 implements X5 {
    private static final C12080h3 zzg;
    private int zzb;
    private String zzd = "";
    private String zze = "";
    private L2 zzf;

    static {
        C12080h3 c12080h3 = new C12080h3();
        zzg = c12080h3;
        AbstractC12163q5.t(C12080h3.class, c12080h3);
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzg, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1009\u0002", new Object[]{"zzb", "zzd", "zze", "zzf"});
        }
        if (i11 == 3) {
            return new C12080h3();
        }
        if (i11 == 4) {
            return new C12071g3(null);
        }
        if (i11 == 5) {
            return zzg;
        }
        throw null;
    }
}
