package com.google.android.gms.internal.auth;

public final class V1 implements InterfaceC11977q2 {

    public static final InterfaceC11917b2 f61673b = new T1();

    public final InterfaceC11917b2 f61674a;

    public V1() {
        InterfaceC11917b2 interfaceC11917b2;
        C12007y1 c10 = C12007y1.c();
        try {
            interfaceC11917b2 = (InterfaceC11917b2) Class.forName("com.google.protobuf.G").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            interfaceC11917b2 = f61673b;
        }
        U1 u12 = new U1(c10, interfaceC11917b2);
        byte[] bArr = H1.f61617d;
        this.f61674a = u12;
    }

    public static boolean b(InterfaceC11913a2 interfaceC11913a2) {
        return interfaceC11913a2.P1() + (-1) != 1;
    }

    @Override
    public final InterfaceC11973p2 a(Class cls) {
        C11980r2.e(cls);
        InterfaceC11913a2 a10 = this.f61674a.a(cls);
        return a10.O1() ? B1.class.isAssignableFrom(cls) ? C11945i2.g(C11980r2.b(), C11991u1.b(), a10.N1()) : C11945i2.g(C11980r2.a(), C11991u1.a(), a10.N1()) : B1.class.isAssignableFrom(cls) ? b(a10) ? C11941h2.r(cls, a10, C11953k2.b(), R1.d(), C11980r2.b(), C11991u1.b(), Z1.b()) : C11941h2.r(cls, a10, C11953k2.b(), R1.d(), C11980r2.b(), null, Z1.b()) : b(a10) ? C11941h2.r(cls, a10, C11953k2.a(), R1.c(), C11980r2.a(), C11991u1.a(), Z1.a()) : C11941h2.r(cls, a10, C11953k2.a(), R1.c(), C11980r2.a(), null, Z1.a());
    }
}
