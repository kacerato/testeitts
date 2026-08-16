package com.google.android.gms.internal.measurement;

import java.util.List;

public final class C12062f3 extends AbstractC12163q5 implements X5 {
    private static final C12062f3 zzj;
    private int zzb;
    private long zzf;
    private float zzg;
    private double zzh;
    private String zzd = "";
    private String zze = "";
    private InterfaceC12243z5 zzi = AbstractC12163q5.z();

    static {
        C12062f3 c12062f3 = new C12062f3();
        zzj = c12062f3;
        AbstractC12163q5.t(C12062f3.class, c12062f3);
    }

    public static C12053e3 Q() {
        return (C12053e3) zzj.p();
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzj, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1002\u0002\u0004\u1001\u0003\u0005\u1000\u0004\u0006\u001b", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", C12062f3.class});
        }
        if (i11 == 3) {
            return new C12062f3();
        }
        byte[] bArr = null;
        if (i11 == 4) {
            return new C12053e3(bArr);
        }
        if (i11 == 5) {
            return zzj;
        }
        throw null;
    }

    public final boolean E() {
        return (this.zzb & 1) != 0;
    }

    public final String F() {
        return this.zzd;
    }

    public final boolean G() {
        return (this.zzb & 2) != 0;
    }

    public final String H() {
        return this.zze;
    }

    public final boolean I() {
        return (this.zzb & 4) != 0;
    }

    public final long J() {
        return this.zzf;
    }

    public final boolean K() {
        return (this.zzb & 8) != 0;
    }

    public final float L() {
        return this.zzg;
    }

    public final boolean M() {
        return (this.zzb & 16) != 0;
    }

    public final double N() {
        return this.zzh;
    }

    public final List O() {
        return this.zzi;
    }

    public final int P() {
        return this.zzi.size();
    }

    public final void R(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zzd = str;
    }

    public final void S(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zze = str;
    }

    public final void T() {
        this.zzb &= -3;
        this.zze = zzj.zze;
    }

    public final void U(long j10) {
        this.zzb |= 4;
        this.zzf = j10;
    }

    public final void V() {
        this.zzb &= -5;
        this.zzf = 0L;
    }

    public final void W(double d10) {
        this.zzb |= 16;
        this.zzh = d10;
    }

    public final void X() {
        this.zzb &= -17;
        this.zzh = 0.0d;
    }

    public final void Y(C12062f3 c12062f3) {
        c12062f3.getClass();
        c0();
        this.zzi.add(c12062f3);
    }

    public final void Z(Iterable iterable) {
        c0();
        C4.i(iterable, this.zzi);
    }

    public final void a0() {
        this.zzi = AbstractC12163q5.z();
    }

    public final void c0() {
        InterfaceC12243z5 interfaceC12243z5 = this.zzi;
        if (interfaceC12243z5.N1()) {
            return;
        }
        this.zzi = AbstractC12163q5.A(interfaceC12243z5);
    }
}
