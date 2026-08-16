package com.google.android.gms.internal.measurement;

import java.util.List;

public final class C12186t2 extends AbstractC12163q5 implements X5 {
    private static final C12186t2 zzu;
    private int zzb;
    private long zzd;
    private int zzf;
    private boolean zzk;
    private C12133n2 zzp;
    private C12222x2 zzq;
    private D2 zzr;
    private C12240z2 zzs;
    private C12204v2 zzt;
    private String zze = "";
    private InterfaceC12243z5 zzg = AbstractC12163q5.z();
    private InterfaceC12243z5 zzh = AbstractC12163q5.z();
    private InterfaceC12243z5 zzi = AbstractC12163q5.z();
    private String zzj = "";
    private InterfaceC12243z5 zzl = AbstractC12163q5.z();
    private InterfaceC12243z5 zzm = AbstractC12163q5.z();
    private String zzn = "";
    private String zzo = "";

    static {
        C12186t2 c12186t2 = new C12186t2();
        zzu = c12186t2;
        AbstractC12163q5.t(C12186t2.class, c12186t2);
    }

    public static C12177s2 U() {
        return (C12177s2) zzu.p();
    }

    public static C12186t2 V() {
        return zzu;
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzu, "\u0004\u0011\u0000\u0001\u0001\u0013\u0011\u0000\u0005\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1004\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007\u1008\u0003\b\u1007\u0004\t\u001b\n\u001b\u000b\u1008\u0005\u000e\u1008\u0006\u000f\u1009\u0007\u0010\u1009\b\u0011\u1009\t\u0012\u1009\n\u0013\u1009\u000b", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", B2.class, "zzh", C12168r2.class, "zzi", K1.class, "zzj", "zzk", "zzl", L3.class, "zzm", C12151p2.class, "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt"});
        }
        if (i11 == 3) {
            return new C12186t2();
        }
        if (i11 == 4) {
            return new C12177s2(null);
        }
        if (i11 == 5) {
            return zzu;
        }
        throw null;
    }

    public final boolean E() {
        return (this.zzb & 1) != 0;
    }

    public final long F() {
        return this.zzd;
    }

    public final boolean G() {
        return (this.zzb & 2) != 0;
    }

    public final String H() {
        return this.zze;
    }

    public final List I() {
        return this.zzg;
    }

    public final int J() {
        return this.zzh.size();
    }

    public final C12168r2 K(int i10) {
        return (C12168r2) this.zzh.get(i10);
    }

    public final List L() {
        return this.zzi;
    }

    public final List M() {
        return this.zzl;
    }

    public final int N() {
        return this.zzl.size();
    }

    public final List O() {
        return this.zzm;
    }

    public final String P() {
        return this.zzn;
    }

    public final boolean Q() {
        return (this.zzb & 128) != 0;
    }

    public final C12133n2 R() {
        C12133n2 c12133n2 = this.zzp;
        return c12133n2 == null ? C12133n2.K() : c12133n2;
    }

    public final boolean S() {
        return (this.zzb & 512) != 0;
    }

    public final D2 T() {
        D2 d22 = this.zzr;
        return d22 == null ? D2.I() : d22;
    }

    public final void W(int i10, C12168r2 c12168r2) {
        c12168r2.getClass();
        InterfaceC12243z5 interfaceC12243z5 = this.zzh;
        if (!interfaceC12243z5.N1()) {
            this.zzh = AbstractC12163q5.A(interfaceC12243z5);
        }
        this.zzh.set(i10, c12168r2);
    }

    public final void X() {
        this.zzi = AbstractC12163q5.z();
    }

    public final void Y() {
        this.zzl = AbstractC12163q5.z();
    }
}
