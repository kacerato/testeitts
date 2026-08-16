package com.google.android.gms.internal.measurement;

public final class C12151p2 extends AbstractC12163q5 implements X5 {
    private static final C12151p2 zzg;
    private int zzb;
    private String zzd = "";
    private InterfaceC12243z5 zze = AbstractC12163q5.z();
    private boolean zzf;

    static {
        C12151p2 c12151p2 = new C12151p2();
        zzg = c12151p2;
        AbstractC12163q5.t(C12151p2.class, c12151p2);
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzg, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u1007\u0001", new Object[]{"zzb", "zzd", "zze", C12240z2.class, "zzf"});
        }
        if (i11 == 3) {
            return new C12151p2();
        }
        if (i11 == 4) {
            return new C12142o2(null);
        }
        if (i11 == 5) {
            return zzg;
        }
        throw null;
    }

    public final String E() {
        return this.zzd;
    }
}
