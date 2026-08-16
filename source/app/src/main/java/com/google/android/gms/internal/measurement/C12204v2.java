package com.google.android.gms.internal.measurement;

public final class C12204v2 extends AbstractC12163q5 implements X5 {
    private static final C12204v2 zzd;
    private InterfaceC12243z5 zzb = AbstractC12163q5.z();

    static {
        C12204v2 c12204v2 = new C12204v2();
        zzd = c12204v2;
        AbstractC12163q5.t(C12204v2.class, c12204v2);
    }

    @Override
    public final Object D(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return AbstractC12163q5.u(zzd, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"zzb"});
        }
        if (i11 == 3) {
            return new C12204v2();
        }
        if (i11 == 4) {
            return new C12195u2(null);
        }
        if (i11 == 5) {
            return zzd;
        }
        throw null;
    }
}
