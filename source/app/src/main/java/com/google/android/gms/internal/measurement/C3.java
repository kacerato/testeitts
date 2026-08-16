package com.google.android.gms.internal.measurement;

public final class C3 extends AbstractC12163q5 implements X5 {
    private static final C3 zzg;
    private int zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        C3 c32 = new C3();
        zzg = c32;
        AbstractC12163q5.t(C3.class, c32);
    }

    public static C12205v3 F() {
        return (C12205v3) zzg.p();
    }

    public static C3 G() {
        return zzg;
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzg, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u180c\u0002", new Object[]{"zzb", "zzd", A3.f61884a, "zze", C12214w3.f62460a, "zzf", C12232y3.f62486a});
        }
        if (i11 == 3) {
            return new C3();
        }
        if (i11 == 4) {
            return new C12205v3(null);
        }
        if (i11 == 5) {
            return zzg;
        }
        throw null;
    }

    public final EnumC12223x3 E() {
        EnumC12223x3 a10 = EnumC12223x3.a(this.zze);
        return a10 == null ? EnumC12223x3.CLIENT_UPLOAD_ELIGIBILITY_UNKNOWN : a10;
    }

    public final void H(EnumC12223x3 enumC12223x3) {
        this.zze = enumC12223x3.N1();
        this.zzb |= 2;
    }

    public final int J() {
        int a10 = B3.a(this.zzd);
        if (a10 == 0) {
            return 1;
        }
        return a10;
    }

    public final int K() {
        int a10 = C12241z3.a(this.zzf);
        if (a10 == 0) {
            return 1;
        }
        return a10;
    }

    public final void L(int i10) {
        this.zzd = i10 - 1;
        this.zzb |= 1;
    }

    public final void M(int i10) {
        this.zzf = i10 - 1;
        this.zzb |= 4;
    }
}
