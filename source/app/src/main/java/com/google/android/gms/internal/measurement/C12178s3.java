package com.google.android.gms.internal.measurement;

import java.util.List;

public final class C12178s3 extends AbstractC12163q5 implements X5 {
    private static final C12178s3 zzg;
    private InterfaceC12234y5 zzb = AbstractC12163q5.x();
    private InterfaceC12234y5 zzd = AbstractC12163q5.x();
    private InterfaceC12243z5 zze = AbstractC12163q5.z();
    private InterfaceC12243z5 zzf = AbstractC12163q5.z();

    static {
        C12178s3 c12178s3 = new C12178s3();
        zzg = c12178s3;
        AbstractC12163q5.t(C12178s3.class, c12178s3);
    }

    public static C12169r3 M() {
        return (C12169r3) zzg.p();
    }

    public static C12178s3 N() {
        return zzg;
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzg, "\u0004\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zzb", "zzd", "zze", Z2.class, "zzf", C12196u3.class});
        }
        if (i11 == 3) {
            return new C12178s3();
        }
        if (i11 == 4) {
            return new C12169r3(null);
        }
        if (i11 == 5) {
            return zzg;
        }
        throw null;
    }

    public final List E() {
        return this.zzb;
    }

    public final int F() {
        return this.zzb.size();
    }

    public final List G() {
        return this.zzd;
    }

    public final int H() {
        return this.zzd.size();
    }

    public final List I() {
        return this.zze;
    }

    public final int J() {
        return this.zze.size();
    }

    public final List K() {
        return this.zzf;
    }

    public final int L() {
        return this.zzf.size();
    }

    public final void O(Iterable iterable) {
        InterfaceC12234y5 interfaceC12234y5 = this.zzb;
        if (!interfaceC12234y5.N1()) {
            this.zzb = AbstractC12163q5.y(interfaceC12234y5);
        }
        C4.i(iterable, this.zzb);
    }

    public final void P() {
        this.zzb = AbstractC12163q5.x();
    }

    public final void Q(Iterable iterable) {
        InterfaceC12234y5 interfaceC12234y5 = this.zzd;
        if (!interfaceC12234y5.N1()) {
            this.zzd = AbstractC12163q5.y(interfaceC12234y5);
        }
        C4.i(iterable, this.zzd);
    }

    public final void R() {
        this.zzd = AbstractC12163q5.x();
    }

    public final void S(Iterable iterable) {
        InterfaceC12243z5 interfaceC12243z5 = this.zze;
        if (!interfaceC12243z5.N1()) {
            this.zze = AbstractC12163q5.A(interfaceC12243z5);
        }
        C4.i(iterable, this.zze);
    }

    public final void T() {
        this.zze = AbstractC12163q5.z();
    }

    public final void U(Iterable iterable) {
        InterfaceC12243z5 interfaceC12243z5 = this.zzf;
        if (!interfaceC12243z5.N1()) {
            this.zzf = AbstractC12163q5.A(interfaceC12243z5);
        }
        C4.i(iterable, this.zzf);
    }

    public final void V() {
        this.zzf = AbstractC12163q5.z();
    }
}
