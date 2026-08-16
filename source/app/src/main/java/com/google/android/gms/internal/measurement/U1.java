package com.google.android.gms.internal.measurement;

public final class U1 extends AbstractC12163q5 implements X5 {
    private static final U1 zzj;
    private int zzb;
    private int zzd;
    private String zze = "";
    private O1 zzf;
    private boolean zzg;
    private boolean zzh;
    private boolean zzi;

    static {
        U1 u12 = new U1();
        zzj = u12;
        AbstractC12163q5.t(U1.class, u12);
    }

    public static T1 M() {
        return (T1) zzj.p();
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzj, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0003\u1009\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1007\u0005", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i11 == 3) {
            return new U1();
        }
        if (i11 == 4) {
            return new T1(null);
        }
        if (i11 == 5) {
            return zzj;
        }
        throw null;
    }

    public final boolean E() {
        return (this.zzb & 1) != 0;
    }

    public final int F() {
        return this.zzd;
    }

    public final String G() {
        return this.zze;
    }

    public final O1 H() {
        O1 o12 = this.zzf;
        return o12 == null ? O1.M() : o12;
    }

    public final boolean I() {
        return this.zzg;
    }

    public final boolean J() {
        return this.zzh;
    }

    public final boolean K() {
        return (this.zzb & 32) != 0;
    }

    public final boolean L() {
        return this.zzi;
    }

    public final void N(String str) {
        this.zzb |= 2;
        this.zze = str;
    }
}
