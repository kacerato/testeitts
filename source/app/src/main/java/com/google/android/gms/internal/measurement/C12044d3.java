package com.google.android.gms.internal.measurement;

public final class C12044d3 extends AbstractC12163q5 implements X5 {
    private static final C12044d3 zzf;
    private int zzb;
    private String zzd = "";
    private long zze;

    static {
        C12044d3 c12044d3 = new C12044d3();
        zzf = c12044d3;
        AbstractC12163q5.t(C12044d3.class, c12044d3);
    }

    public static C12035c3 E() {
        return (C12035c3) zzf.p();
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1002\u0001", new Object[]{"zzb", "zzd", "zze"});
        }
        if (i11 == 3) {
            return new C12044d3();
        }
        if (i11 == 4) {
            return new C12035c3(null);
        }
        if (i11 == 5) {
            return zzf;
        }
        throw null;
    }

    public final void F(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zzd = str;
    }

    public final void G(long j10) {
        this.zzb |= 2;
        this.zze = j10;
    }
}
