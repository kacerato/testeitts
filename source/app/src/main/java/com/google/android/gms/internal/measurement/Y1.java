package com.google.android.gms.internal.measurement;

import java.util.List;

public final class Y1 extends AbstractC12163q5 implements X5 {
    private static final Y1 zzh;
    private int zzb;
    private int zzd;
    private boolean zzf;
    private String zze = "";
    private InterfaceC12243z5 zzg = AbstractC12163q5.z();

    static {
        Y1 y12 = new Y1();
        zzh = y12;
        AbstractC12163q5.t(Y1.class, y12);
    }

    public static Y1 L() {
        return zzh;
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzh, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u180c\u0000\u0002\u1008\u0001\u0003\u1007\u0002\u0004\u001a", new Object[]{"zzb", "zzd", W1.f62154a, "zze", "zzf", "zzg"});
        }
        if (i11 == 3) {
            return new Y1();
        }
        if (i11 == 4) {
            return new V1(null);
        }
        if (i11 == 5) {
            return zzh;
        }
        throw null;
    }

    public final boolean E() {
        return (this.zzb & 1) != 0;
    }

    public final boolean F() {
        return (this.zzb & 2) != 0;
    }

    public final String G() {
        return this.zze;
    }

    public final boolean H() {
        return (this.zzb & 4) != 0;
    }

    public final boolean I() {
        return this.zzf;
    }

    public final List J() {
        return this.zzg;
    }

    public final int K() {
        return this.zzg.size();
    }

    public final int N() {
        int a10 = X1.a(this.zzd);
        if (a10 == 0) {
            return 1;
        }
        return a10;
    }
}
