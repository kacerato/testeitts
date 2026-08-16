package com.google.android.gms.internal.measurement;

public final class C12025b2 extends AbstractC12163q5 implements X5 {
    private static final C12025b2 zzg;
    private int zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        C12025b2 c12025b2 = new C12025b2();
        zzg = c12025b2;
        AbstractC12163q5.t(C12025b2.class, c12025b2);
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzg, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u180c\u0002", new Object[]{"zzb", "zzd", C12070g2.f62286a, "zze", C12052e2.f62265a, "zzf", C12115l2.f62353a});
        }
        if (i11 == 3) {
            return new C12025b2();
        }
        if (i11 == 4) {
            return new C12016a2(null);
        }
        if (i11 == 5) {
            return zzg;
        }
        throw null;
    }

    public final int F() {
        int a10 = C12088i2.a(this.zzd);
        if (a10 == 0) {
            return 1;
        }
        return a10;
    }

    public final int G() {
        int a10 = C12061f2.a(this.zze);
        if (a10 == 0) {
            return 1;
        }
        return a10;
    }

    public final int H() {
        int a10 = C12124m2.a(this.zzf);
        if (a10 == 0) {
            return 1;
        }
        return a10;
    }
}
