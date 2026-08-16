package com.android.tools.r8.internal;

import java.lang.constant.ConstantDescs;

public final class C9806ul0 extends H8 implements InterfaceC8676ny, InterfaceC9911vM {

    public static final C9806ul0 f52943h = new C9806ul0();

    public final int f52944g;

    public C9806ul0() {
        super(InterfaceC8638nl0.class, "iterator", "iterator()Ljava/util/Iterator;", false);
        this.f52944g = 0;
    }

    @Override
    public final InterfaceC9911vM a() {
        AbstractC9618te0.f52649a.getClass();
        return this;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        boolean z10 = obj instanceof C9806ul0;
        if (!z10) {
            if (!z10) {
                return false;
            }
            InterfaceC9911vM interfaceC9911vM = this.f40687b;
            if (interfaceC9911vM == null) {
                interfaceC9911vM = a();
                this.f40687b = interfaceC9911vM;
            }
            return obj.equals(interfaceC9911vM);
        }
        C9806ul0 c9806ul0 = (C9806ul0) obj;
        if (this.f40689d.equals(c9806ul0.f40689d) && this.f40690e.equals(c9806ul0.f40690e) && this.f52944g == c9806ul0.f52944g) {
            Object obj2 = G8.f40399b;
            if (obj2.equals(obj2) && b().equals(c9806ul0.b())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        b();
        return this.f40690e.hashCode() + ((this.f40689d.hashCode() + (b().hashCode() * 31)) * 31);
    }

    public final String toString() {
        InterfaceC9911vM interfaceC9911vM = this.f40687b;
        if (interfaceC9911vM == null) {
            interfaceC9911vM = a();
            this.f40687b = interfaceC9911vM;
        }
        if (interfaceC9911vM != this) {
            return interfaceC9911vM.toString();
        }
        if (ConstantDescs.INIT_NAME.equals(this.f40689d)) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + this.f40689d + kotlin.jvm.internal.n0.f95758b;
    }

    @Override
    public final Object a(Object obj) {
        InterfaceC8638nl0 interfaceC8638nl0 = (InterfaceC8638nl0) obj;
        GJ.c(interfaceC8638nl0, "p0");
        return interfaceC8638nl0.iterator();
    }
}
