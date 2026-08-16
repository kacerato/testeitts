package com.google.android.gms.internal.measurement;

public final class Z2 extends AbstractC12163q5 implements X5 {
    private static final Z2 zzf;
    private int zzb;
    private int zzd;
    private long zze;

    static {
        Z2 z22 = new Z2();
        zzf = z22;
        AbstractC12163q5.t(Z2.class, z22);
    }

    public static Y2 I() {
        return (Y2) zzf.p();
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1002\u0001", new Object[]{"zzb", "zzd", "zze"});
        }
        if (i11 == 3) {
            return new Z2();
        }
        if (i11 == 4) {
            return new Y2(null);
        }
        if (i11 == 5) {
            return zzf;
        }
        throw null;
    }

    public final boolean E() {
        return (this.zzb & 1) != 0;
    }

    public final int F() {
        return this.zzd;
    }

    public final boolean G() {
        return (this.zzb & 2) != 0;
    }

    public final long H() {
        return this.zze;
    }

    public final void J(int i10) {
        this.zzb |= 1;
        this.zzd = i10;
    }

    public final void K(long j10) {
        this.zzb |= 2;
        this.zze = j10;
    }
}
