package com.google.android.gms.internal.measurement;

import java.util.List;

public final class C12196u3 extends AbstractC12163q5 implements X5 {
    private static final C12196u3 zzf;
    private int zzb;
    private int zzd;
    private InterfaceC12234y5 zze = AbstractC12163q5.x();

    static {
        C12196u3 c12196u3 = new C12196u3();
        zzf = c12196u3;
        AbstractC12163q5.t(C12196u3.class, c12196u3);
    }

    public static C12187t3 J() {
        return (C12187t3) zzf.p();
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u0014", new Object[]{"zzb", "zzd", "zze"});
        }
        if (i11 == 3) {
            return new C12196u3();
        }
        if (i11 == 4) {
            return new C12187t3(null);
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

    public final List G() {
        return this.zze;
    }

    public final int H() {
        return this.zze.size();
    }

    public final long I(int i10) {
        return this.zze.q4(i10);
    }

    public final void K(int i10) {
        this.zzb |= 1;
        this.zzd = i10;
    }

    public final void L(Iterable iterable) {
        InterfaceC12234y5 interfaceC12234y5 = this.zze;
        if (!interfaceC12234y5.N1()) {
            this.zze = AbstractC12163q5.y(interfaceC12234y5);
        }
        C4.i(iterable, this.zze);
    }
}
