package com.google.android.gms.internal.measurement;

import java.util.List;

public final class C12116l3 extends AbstractC12163q5 implements X5 {
    private static final C12116l3 zzh;
    private int zzb;
    private InterfaceC12243z5 zzd = AbstractC12163q5.z();
    private String zze = "";
    private String zzf = "";
    private int zzg;

    static {
        C12116l3 c12116l3 = new C12116l3();
        zzh = c12116l3;
        AbstractC12163q5.t(C12116l3.class, c12116l3);
    }

    public static C12089i3 L() {
        return (C12089i3) zzh.p();
    }

    public static C12089i3 M(C12116l3 c12116l3) {
        C12127m5 p10 = zzh.p();
        p10.r(c12116l3);
        return (C12089i3) p10;
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzh, "\u0004\u0004\u0000\u0001\u0001\t\u0004\u0000\u0001\u0000\u0001\u001b\u0007\u1008\u0000\b\u1008\u0001\t\u180c\u0002", new Object[]{"zzb", "zzd", C12134n3.class, "zze", "zzf", "zzg", C12107k3.f62343a});
        }
        if (i11 == 3) {
            return new C12116l3();
        }
        byte[] bArr = null;
        if (i11 == 4) {
            return new C12089i3(bArr);
        }
        if (i11 == 5) {
            return zzh;
        }
        throw null;
    }

    public final List E() {
        return this.zzd;
    }

    public final int F() {
        return this.zzd.size();
    }

    public final C12134n3 G(int i10) {
        return (C12134n3) this.zzd.get(i10);
    }

    public final boolean H() {
        return (this.zzb & 1) != 0;
    }

    public final String I() {
        return this.zze;
    }

    public final boolean J() {
        return (this.zzb & 2) != 0;
    }

    public final String K() {
        return this.zzf;
    }

    public final void N(int i10, C12134n3 c12134n3) {
        c12134n3.getClass();
        U();
        this.zzd.set(i10, c12134n3);
    }

    public final void O(C12134n3 c12134n3) {
        c12134n3.getClass();
        U();
        this.zzd.add(c12134n3);
    }

    public final void P(Iterable iterable) {
        U();
        C4.i(iterable, this.zzd);
    }

    public final void Q() {
        this.zzd = AbstractC12163q5.z();
    }

    public final void R(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zze = str;
    }

    public final void S(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zzf = str;
    }

    public final void U() {
        InterfaceC12243z5 interfaceC12243z5 = this.zzd;
        if (interfaceC12243z5.N1()) {
            return;
        }
        this.zzd = AbstractC12163q5.A(interfaceC12243z5);
    }
}
