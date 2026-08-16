package com.google.android.gms.internal.measurement;

public final class N2 extends AbstractC12163q5 implements X5 {
    private static final N2 zzk;
    private int zzb;
    private boolean zzd;
    private boolean zze;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;
    private boolean zzi;
    private boolean zzj;

    static {
        N2 n22 = new N2();
        zzk = n22;
        AbstractC12163q5.t(N2.class, n22);
    }

    public static M2 L() {
        return (M2) zzk.p();
    }

    public static N2 M() {
        return zzk;
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzk, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1007\u0001\u0003\u1007\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1007\u0005\u0007\u1007\u0006", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i11 == 3) {
            return new N2();
        }
        if (i11 == 4) {
            return new M2(null);
        }
        if (i11 == 5) {
            return zzk;
        }
        throw null;
    }

    public final boolean E() {
        return this.zzd;
    }

    public final boolean F() {
        return this.zze;
    }

    public final boolean G() {
        return this.zzf;
    }

    public final boolean H() {
        return this.zzg;
    }

    public final boolean I() {
        return this.zzh;
    }

    public final boolean J() {
        return this.zzi;
    }

    public final boolean K() {
        return this.zzj;
    }

    public final void N(boolean z10) {
        this.zzb |= 1;
        this.zzd = z10;
    }

    public final void O(boolean z10) {
        this.zzb |= 2;
        this.zze = z10;
    }

    public final void P(boolean z10) {
        this.zzb |= 4;
        this.zzf = z10;
    }

    public final void Q(boolean z10) {
        this.zzb |= 8;
        this.zzg = z10;
    }

    public final void R(boolean z10) {
        this.zzb |= 16;
        this.zzh = z10;
    }

    public final void S(boolean z10) {
        this.zzb |= 32;
        this.zzi = z10;
    }

    public final void T(boolean z10) {
        this.zzb |= 64;
        this.zzj = z10;
    }
}
