package com.google.android.gms.internal.measurement;

import java.util.List;

public final class M1 extends AbstractC12163q5 implements X5 {
    private static final M1 zzl;
    private int zzb;
    private int zzd;
    private String zze = "";
    private InterfaceC12243z5 zzf = AbstractC12163q5.z();
    private boolean zzg;
    private S1 zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;

    static {
        M1 m12 = new M1();
        zzl = m12;
        AbstractC12163q5.t(M1.class, m12);
    }

    public static L1 Q() {
        return (L1) zzl.p();
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzl, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0003\u001b\u0004\u1007\u0002\u0005\u1009\u0003\u0006\u1007\u0004\u0007\u1007\u0005\b\u1007\u0006", new Object[]{"zzb", "zzd", "zze", "zzf", O1.class, "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i11 == 3) {
            return new M1();
        }
        if (i11 == 4) {
            return new L1(null);
        }
        if (i11 == 5) {
            return zzl;
        }
        throw null;
    }

    public final boolean E() {
        return (this.zzb & 1) != 0;
    }

    public final int F() {
        return this.zzd;
    }

    public final String G() {
        return this.zze;
    }

    public final List H() {
        return this.zzf;
    }

    public final int I() {
        return this.zzf.size();
    }

    public final O1 J(int i10) {
        return (O1) this.zzf.get(i10);
    }

    public final boolean K() {
        return (this.zzb & 8) != 0;
    }

    public final S1 L() {
        S1 s12 = this.zzh;
        return s12 == null ? S1.N() : s12;
    }

    public final boolean M() {
        return this.zzi;
    }

    public final boolean N() {
        return this.zzj;
    }

    public final boolean O() {
        return (this.zzb & 64) != 0;
    }

    public final boolean P() {
        return this.zzk;
    }

    public final void R(String str) {
        this.zzb |= 2;
        this.zze = str;
    }

    public final void S(int i10, O1 o12) {
        o12.getClass();
        InterfaceC12243z5 interfaceC12243z5 = this.zzf;
        if (!interfaceC12243z5.N1()) {
            this.zzf = AbstractC12163q5.A(interfaceC12243z5);
        }
        this.zzf.set(i10, o12);
    }
}
