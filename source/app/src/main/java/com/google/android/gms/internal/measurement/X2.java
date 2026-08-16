package com.google.android.gms.internal.measurement;

import java.util.List;

public final class X2 extends AbstractC12163q5 implements X5 {
    private static final X2 zzd;
    private InterfaceC12243z5 zzb = AbstractC12163q5.z();

    static {
        X2 x22 = new X2();
        zzd = x22;
        AbstractC12163q5.t(X2.class, x22);
    }

    public static Q2 F() {
        return (Q2) zzd.p();
    }

    public static X2 G() {
        return zzd;
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzd, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzb", U2.class});
        }
        if (i11 == 3) {
            return new X2();
        }
        if (i11 == 4) {
            return new Q2(null);
        }
        if (i11 == 5) {
            return zzd;
        }
        throw null;
    }

    public final List E() {
        return this.zzb;
    }

    public final void H(Iterable iterable) {
        InterfaceC12243z5 interfaceC12243z5 = this.zzb;
        if (!interfaceC12243z5.N1()) {
            this.zzb = AbstractC12163q5.A(interfaceC12243z5);
        }
        C4.i(iterable, this.zzb);
    }
}
