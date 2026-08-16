package com.google.android.gms.internal.measurement;

public final class C12168r2 extends AbstractC12163q5 implements X5 {
    private static final C12168r2 zzh;
    private int zzb;
    private String zzd = "";
    private boolean zze;
    private boolean zzf;
    private int zzg;

    static {
        C12168r2 c12168r2 = new C12168r2();
        zzh = c12168r2;
        AbstractC12163q5.t(C12168r2.class, c12168r2);
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzh, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1007\u0001\u0003\u1007\u0002\u0004\u1004\u0003", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg"});
        }
        if (i11 == 3) {
            return new C12168r2();
        }
        if (i11 == 4) {
            return new C12160q2(null);
        }
        if (i11 == 5) {
            return zzh;
        }
        throw null;
    }

    public final String E() {
        return this.zzd;
    }

    public final boolean F() {
        return (this.zzb & 2) != 0;
    }

    public final boolean G() {
        return this.zze;
    }

    public final boolean H() {
        return (this.zzb & 4) != 0;
    }

    public final boolean I() {
        return this.zzf;
    }

    public final boolean J() {
        return (this.zzb & 8) != 0;
    }

    public final int K() {
        return this.zzg;
    }

    public final void L(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zzd = str;
    }
}
