package com.google.android.gms.internal.measurement;

import java.util.List;

public final class K1 extends AbstractC12163q5 implements X5 {
    private static final K1 zzi;
    private int zzb;
    private int zzd;
    private InterfaceC12243z5 zze = AbstractC12163q5.z();
    private InterfaceC12243z5 zzf = AbstractC12163q5.z();
    private boolean zzg;
    private boolean zzh;

    static {
        K1 k12 = new K1();
        zzi = k12;
        AbstractC12163q5.t(K1.class, k12);
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzi, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u1004\u0000\u0002\u001b\u0003\u001b\u0004\u1007\u0001\u0005\u1007\u0002", new Object[]{"zzb", "zzd", "zze", U1.class, "zzf", M1.class, "zzg", "zzh"});
        }
        if (i11 == 3) {
            return new K1();
        }
        if (i11 == 4) {
            return new J1(null);
        }
        if (i11 == 5) {
            return zzi;
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

    public final U1 I(int i10) {
        return (U1) this.zze.get(i10);
    }

    public final List J() {
        return this.zzf;
    }

    public final int K() {
        return this.zzf.size();
    }

    public final M1 L(int i10) {
        return (M1) this.zzf.get(i10);
    }

    public final void M(int i10, U1 u12) {
        u12.getClass();
        InterfaceC12243z5 interfaceC12243z5 = this.zze;
        if (!interfaceC12243z5.N1()) {
            this.zze = AbstractC12163q5.A(interfaceC12243z5);
        }
        this.zze.set(i10, u12);
    }

    public final void N(int i10, M1 m12) {
        m12.getClass();
        InterfaceC12243z5 interfaceC12243z5 = this.zzf;
        if (!interfaceC12243z5.N1()) {
            this.zzf = AbstractC12163q5.A(interfaceC12243z5);
        }
        this.zzf.set(i10, m12);
    }
}
