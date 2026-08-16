package com.google.android.gms.internal.auth;

import java.io.IOException;

public final class C11945i2 implements InterfaceC11973p2 {

    public final InterfaceC11925d2 f61772a;

    public final F2 f61773b;

    public final AbstractC11983s1 f61774c;

    public C11945i2(F2 f22, AbstractC11983s1 abstractC11983s1, InterfaceC11925d2 interfaceC11925d2) {
        this.f61773b = f22;
        this.f61774c = abstractC11983s1;
        this.f61772a = interfaceC11925d2;
    }

    public static C11945i2 g(F2 f22, AbstractC11983s1 abstractC11983s1, InterfaceC11925d2 interfaceC11925d2) {
        return new C11945i2(f22, abstractC11983s1, interfaceC11925d2);
    }

    @Override
    public final Object Q1() {
        InterfaceC11925d2 interfaceC11925d2 = this.f61772a;
        return interfaceC11925d2 instanceof B1 ? ((B1) interfaceC11925d2).c() : ((C12011z1) ((B1) interfaceC11925d2).m(5, null, null)).Q1();
    }

    @Override
    public final void a(Object obj) {
        this.f61773b.e(obj);
        this.f61774c.b(obj);
    }

    @Override
    public final int b(Object obj) {
        return this.f61773b.b(obj).hashCode();
    }

    @Override
    public final boolean c(Object obj, Object obj2) {
        return this.f61773b.b(obj).equals(this.f61773b.b(obj2));
    }

    @Override
    public final void d(Object obj, byte[] bArr, int i10, int i11, Y0 y02) throws IOException {
        B1 b12 = (B1) obj;
        if (b12.zzc == H2.a()) {
            b12.zzc = H2.d();
        }
        throw null;
    }

    @Override
    public final void e(Object obj, Object obj2) {
        C11980r2.d(this.f61773b, obj, obj2);
    }

    @Override
    public final boolean f(Object obj) {
        this.f61774c.a(obj);
        throw null;
    }
}
