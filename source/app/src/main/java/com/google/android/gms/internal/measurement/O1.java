package com.google.android.gms.internal.measurement;

public final class O1 extends AbstractC12163q5 implements X5 {
    private static final O1 zzh;
    private int zzb;
    private Y1 zzd;
    private S1 zze;
    private boolean zzf;
    private String zzg = "";

    static {
        O1 o12 = new O1();
        zzh = o12;
        AbstractC12163q5.t(O1.class, o12);
    }

    public static O1 M() {
        return zzh;
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzh, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1007\u0002\u0004\u1008\u0003", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg"});
        }
        if (i11 == 3) {
            return new O1();
        }
        byte[] bArr = null;
        if (i11 == 4) {
            return new N1(bArr);
        }
        if (i11 == 5) {
            return zzh;
        }
        throw null;
    }

    public final boolean E() {
        return (this.zzb & 1) != 0;
    }

    public final Y1 F() {
        Y1 y12 = this.zzd;
        return y12 == null ? Y1.L() : y12;
    }

    public final boolean G() {
        return (this.zzb & 2) != 0;
    }

    public final S1 H() {
        S1 s12 = this.zze;
        return s12 == null ? S1.N() : s12;
    }

    public final boolean I() {
        return (this.zzb & 4) != 0;
    }

    public final boolean J() {
        return this.zzf;
    }

    public final boolean K() {
        return (this.zzb & 8) != 0;
    }

    public final String L() {
        return this.zzg;
    }

    public final void N(String str) {
        this.zzb |= 8;
        this.zzg = str;
    }
}
