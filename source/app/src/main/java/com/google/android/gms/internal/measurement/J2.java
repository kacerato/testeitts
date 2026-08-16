package com.google.android.gms.internal.measurement;

import java.util.Map;

public final class J2 extends AbstractC12163q5 implements X5 {
    private static final J2 zzn;
    private int zzb;
    private long zzg;
    private long zzk;
    private Q5 zzl = Q5.e();
    private Q5 zzm = Q5.e();
    private String zzd = "";
    private String zze = "";
    private String zzf = "";
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";

    static {
        J2 j22 = new J2();
        zzn = j22;
        AbstractC12163q5.t(J2.class, j22);
    }

    public static F2 e0() {
        return (F2) zzn.p();
    }

    public static J2 f0() {
        return zzn;
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzn, "\u0004\n\u0000\u0001\u0001\n\n\u0002\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1008\u0004\u0006\u1008\u0005\u0007\u1008\u0006\b\u1002\u0007\t2\n2", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", G2.f61926a, "zzm", H2.f61935a});
        }
        if (i11 == 3) {
            return new J2();
        }
        if (i11 == 4) {
            return new F2(null);
        }
        if (i11 == 5) {
            return zzn;
        }
        throw null;
    }

    public final void E(String str) {
        this.zzb |= 16;
        this.zzh = str;
    }

    public final void F() {
        this.zzb &= -17;
        this.zzh = zzn.zzh;
    }

    public final void G(String str) {
        this.zzb |= 32;
        this.zzi = str;
    }

    public final void H() {
        this.zzb &= -33;
        this.zzi = zzn.zzi;
    }

    public final void I(String str) {
        this.zzb |= 64;
        this.zzj = str;
    }

    public final void J() {
        this.zzb &= -65;
        this.zzj = zzn.zzj;
    }

    public final void K(long j10) {
        this.zzb |= 128;
        this.zzk = j10;
    }

    public final Map L() {
        if (!this.zzl.k()) {
            this.zzl = this.zzl.i();
        }
        return this.zzl;
    }

    public final Map M() {
        if (!this.zzm.k()) {
            this.zzm = this.zzm.i();
        }
        return this.zzm;
    }

    public final boolean O() {
        return (this.zzb & 1) != 0;
    }

    public final String P() {
        return this.zzd;
    }

    public final boolean Q() {
        return (this.zzb & 2) != 0;
    }

    public final String R() {
        return this.zze;
    }

    public final boolean S() {
        return (this.zzb & 4) != 0;
    }

    public final String T() {
        return this.zzf;
    }

    public final boolean U() {
        return (this.zzb & 8) != 0;
    }

    public final long V() {
        return this.zzg;
    }

    public final boolean W() {
        return (this.zzb & 16) != 0;
    }

    public final String X() {
        return this.zzh;
    }

    public final boolean Y() {
        return (this.zzb & 32) != 0;
    }

    public final String Z() {
        return this.zzi;
    }

    public final boolean a0() {
        return (this.zzb & 64) != 0;
    }

    public final String b0() {
        return this.zzj;
    }

    public final boolean c0() {
        return (this.zzb & 128) != 0;
    }

    public final long d0() {
        return this.zzk;
    }

    public final void g0(String str) {
        this.zzb |= 1;
        this.zzd = str;
    }

    public final void h0() {
        this.zzb &= -2;
        this.zzd = zzn.zzd;
    }

    public final void i0(String str) {
        this.zzb |= 2;
        this.zze = str;
    }

    public final void j0() {
        this.zzb &= -3;
        this.zze = zzn.zze;
    }

    public final void k0(String str) {
        this.zzb |= 4;
        this.zzf = str;
    }

    public final void l0() {
        this.zzb &= -5;
        this.zzf = zzn.zzf;
    }

    public final void m0(long j10) {
        this.zzb |= 8;
        this.zzg = j10;
    }
}
