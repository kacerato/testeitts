package com.google.android.gms.internal.measurement;

public final class P2 extends AbstractC12163q5 implements X5 {
    private static final P2 zzh;
    private int zzb;
    private int zzd;
    private C12178s3 zze;
    private C12178s3 zzf;
    private boolean zzg;

    static {
        P2 p22 = new P2();
        zzh = p22;
        AbstractC12163q5.t(P2.class, p22);
    }

    public static O2 L() {
        return (O2) zzh.p();
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzh, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1007\u0003", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg"});
        }
        if (i11 == 3) {
            return new P2();
        }
        if (i11 == 4) {
            return new O2(null);
        }
        if (i11 == 5) {
            return zzh;
        }
        throw null;
    }

    public final boolean E() {
        return (this.zzb & 1) != 0;
    }

    public final int F() {
        return this.zzd;
    }

    public final C12178s3 G() {
        C12178s3 c12178s3 = this.zze;
        return c12178s3 == null ? C12178s3.N() : c12178s3;
    }

    public final boolean H() {
        return (this.zzb & 4) != 0;
    }

    public final C12178s3 I() {
        C12178s3 c12178s3 = this.zzf;
        return c12178s3 == null ? C12178s3.N() : c12178s3;
    }

    public final boolean J() {
        return (this.zzb & 8) != 0;
    }

    public final boolean K() {
        return this.zzg;
    }

    public final void M(int i10) {
        this.zzb |= 1;
        this.zzd = i10;
    }

    public final void N(C12178s3 c12178s3) {
        c12178s3.getClass();
        this.zze = c12178s3;
        this.zzb |= 2;
    }

    public final void O(C12178s3 c12178s3) {
        this.zzf = c12178s3;
        this.zzb |= 4;
    }

    public final void P(boolean z10) {
        this.zzb |= 8;
        this.zzg = z10;
    }
}
