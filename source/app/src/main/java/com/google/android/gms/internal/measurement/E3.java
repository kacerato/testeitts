package com.google.android.gms.internal.measurement;

public final class E3 extends AbstractC12163q5 implements X5 {
    private static final E3 zzj;
    private int zzb;
    private long zzd;
    private String zze = "";
    private String zzf = "";
    private long zzg;
    private float zzh;
    private double zzi;

    static {
        E3 e32 = new E3();
        zzj = e32;
        AbstractC12163q5.t(E3.class, e32);
    }

    public static D3 P() {
        return (D3) zzj.p();
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzj, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1001\u0004\u0006\u1000\u0005", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i11 == 3) {
            return new E3();
        }
        if (i11 == 4) {
            return new D3(null);
        }
        if (i11 == 5) {
            return zzj;
        }
        throw null;
    }

    public final boolean E() {
        return (this.zzb & 1) != 0;
    }

    public final long F() {
        return this.zzd;
    }

    public final String G() {
        return this.zze;
    }

    public final boolean H() {
        return (this.zzb & 4) != 0;
    }

    public final String I() {
        return this.zzf;
    }

    public final boolean J() {
        return (this.zzb & 8) != 0;
    }

    public final long K() {
        return this.zzg;
    }

    public final boolean L() {
        return (this.zzb & 16) != 0;
    }

    public final float M() {
        return this.zzh;
    }

    public final boolean N() {
        return (this.zzb & 32) != 0;
    }

    public final double O() {
        return this.zzi;
    }

    public final void Q(long j10) {
        this.zzb |= 1;
        this.zzd = j10;
    }

    public final void R(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zze = str;
    }

    public final void S(String str) {
        str.getClass();
        this.zzb |= 4;
        this.zzf = str;
    }

    public final void T() {
        this.zzb &= -5;
        this.zzf = zzj.zzf;
    }

    public final void U(long j10) {
        this.zzb |= 8;
        this.zzg = j10;
    }

    public final void V() {
        this.zzb &= -9;
        this.zzg = 0L;
    }

    public final void W(double d10) {
        this.zzb |= 32;
        this.zzi = d10;
    }

    public final void X() {
        this.zzb &= -33;
        this.zzi = 0.0d;
    }
}
