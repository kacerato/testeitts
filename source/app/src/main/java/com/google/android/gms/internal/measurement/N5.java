package com.google.android.gms.internal.measurement;

public final class N5 implements InterfaceC12092i6 {

    public static final U5 f62065b = new L5();

    public final U5 f62066a;

    public N5() {
        C12109k5 c10 = C12109k5.c();
        int i10 = C12056e6.f62268d;
        M5 m52 = new M5(c10, f62065b);
        byte[] bArr = A5.f61886b;
        this.f62066a = m52;
    }

    @Override
    public final InterfaceC12083h6 a(Class cls) {
        int i10 = C12101j6.f62335b;
        if (!AbstractC12163q5.class.isAssignableFrom(cls)) {
            int i11 = C12056e6.f62268d;
        }
        T5 b10 = this.f62066a.b(cls);
        if (b10.N1()) {
            int i12 = C12056e6.f62268d;
            return C12020a6.i(C12101j6.a(), C12055e5.a(), b10.O1());
        }
        int i13 = C12056e6.f62268d;
        return Z5.A(cls, b10, C12038c6.a(), I5.a(), C12101j6.a(), b10.P1() + (-1) != 1 ? C12055e5.a() : null, S5.a());
    }
}
