package com.google.android.gms.internal.measurement;

import java.util.List;

public final class C12026b3 extends AbstractC12163q5 implements X5 {
    private static final C12026b3 zzi;
    private int zzb;
    private InterfaceC12243z5 zzd = AbstractC12163q5.z();
    private String zze = "";
    private long zzf;
    private long zzg;
    private int zzh;

    static {
        C12026b3 c12026b3 = new C12026b3();
        zzi = c12026b3;
        AbstractC12163q5.t(C12026b3.class, c12026b3);
    }

    public static C12017a3 O() {
        return (C12017a3) zzi.p();
    }

    private final void Y() {
        InterfaceC12243z5 interfaceC12243z5 = this.zzd;
        if (interfaceC12243z5.N1()) {
            return;
        }
        this.zzd = AbstractC12163q5.A(interfaceC12243z5);
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzi, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002\u1008\u0000\u0003\u1002\u0001\u0004\u1002\u0002\u0005\u1004\u0003", new Object[]{"zzb", "zzd", C12062f3.class, "zze", "zzf", "zzg", "zzh"});
        }
        if (i11 == 3) {
            return new C12026b3();
        }
        byte[] bArr = null;
        if (i11 == 4) {
            return new C12017a3(bArr);
        }
        if (i11 == 5) {
            return zzi;
        }
        throw null;
    }

    public final List E() {
        return this.zzd;
    }

    public final int F() {
        return this.zzd.size();
    }

    public final C12062f3 G(int i10) {
        return (C12062f3) this.zzd.get(i10);
    }

    public final String H() {
        return this.zze;
    }

    public final boolean I() {
        return (this.zzb & 2) != 0;
    }

    public final long J() {
        return this.zzf;
    }

    public final boolean K() {
        return (this.zzb & 4) != 0;
    }

    public final long L() {
        return this.zzg;
    }

    public final boolean M() {
        return (this.zzb & 8) != 0;
    }

    public final int N() {
        return this.zzh;
    }

    public final void P(int i10, C12062f3 c12062f3) {
        c12062f3.getClass();
        Y();
        this.zzd.set(i10, c12062f3);
    }

    public final void Q(C12062f3 c12062f3) {
        c12062f3.getClass();
        Y();
        this.zzd.add(c12062f3);
    }

    public final void R(Iterable iterable) {
        Y();
        C4.i(iterable, this.zzd);
    }

    public final void S() {
        this.zzd = AbstractC12163q5.z();
    }

    public final void T(int i10) {
        Y();
        this.zzd.remove(i10);
    }

    public final void U(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zze = str;
    }

    public final void V(long j10) {
        this.zzb |= 2;
        this.zzf = j10;
    }

    public final void W(long j10) {
        this.zzb |= 4;
        this.zzg = j10;
    }
}
