package com.google.android.gms.internal.measurement;

public final class S1 extends AbstractC12163q5 implements X5 {
    private static final S1 zzi;
    private int zzb;
    private int zzd;
    private boolean zze;
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";

    static {
        S1 s12 = new S1();
        zzi = s12;
        AbstractC12163q5.t(S1.class, s12);
    }

    public static S1 N() {
        return zzi;
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzi, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1007\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004", new Object[]{"zzb", "zzd", Q1.f62092a, "zze", "zzf", "zzg", "zzh"});
        }
        if (i11 == 3) {
            return new S1();
        }
        if (i11 == 4) {
            return new P1(null);
        }
        if (i11 == 5) {
            return zzi;
        }
        throw null;
    }

    public final boolean E() {
        return (this.zzb & 1) != 0;
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

    public final String I() {
        return this.zzf;
    }

    public final boolean J() {
        return (this.zzb & 8) != 0;
    }

    public final String K() {
        return this.zzg;
    }

    public final boolean L() {
        return (this.zzb & 16) != 0;
    }

    public final String M() {
        return this.zzh;
    }

    public final int P() {
        int a10 = R1.a(this.zzd);
        if (a10 == 0) {
            return 1;
        }
        return a10;
    }
}
