package com.google.android.gms.internal.measurement;

public final class C12161q3 extends AbstractC12163q5 implements X5 {
    private static final C12161q3 zzf;
    private int zzb;
    private int zzd = 1;
    private InterfaceC12243z5 zze = AbstractC12163q5.z();

    static {
        C12161q3 c12161q3 = new C12161q3();
        zzf = c12161q3;
        AbstractC12163q5.t(C12161q3.class, c12161q3);
    }

    public static C12143o3 E() {
        return (C12143o3) zzf.p();
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u180c\u0000\u0002\u001b", new Object[]{"zzb", "zzd", C12152p3.f62387a, "zze", C12044d3.class});
        }
        if (i11 == 3) {
            return new C12161q3();
        }
        if (i11 == 4) {
            return new C12143o3(null);
        }
        if (i11 == 5) {
            return zzf;
        }
        throw null;
    }

    public final void F(C12044d3 c12044d3) {
        c12044d3.getClass();
        InterfaceC12243z5 interfaceC12243z5 = this.zze;
        if (!interfaceC12243z5.N1()) {
            this.zze = AbstractC12163q5.A(interfaceC12243z5);
        }
        this.zze.add(c12044d3);
    }
}
