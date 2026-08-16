package com.google.android.gms.internal.measurement;

public final class C12043d2 extends AbstractC12163q5 implements X5 {
    private static final C12043d2 zzf;
    private int zzb;
    private int zzd;
    private int zze;

    static {
        C12043d2 c12043d2 = new C12043d2();
        zzf = c12043d2;
        AbstractC12163q5.t(C12043d2.class, c12043d2);
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            InterfaceC12207v5 interfaceC12207v5 = C12070g2.f62286a;
            return AbstractC12163q5.u(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001", new Object[]{"zzb", "zzd", interfaceC12207v5, "zze", interfaceC12207v5});
        }
        if (i11 == 3) {
            return new C12043d2();
        }
        if (i11 == 4) {
            return new C12034c2(null);
        }
        if (i11 == 5) {
            return zzf;
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
        int a10 = C12088i2.a(this.zze);
        if (a10 == 0) {
            return 1;
        }
        return a10;
    }
}
