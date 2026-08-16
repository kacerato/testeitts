package com.android.tools.r8.internal;

import java.io.Serializable;

public final class C8155kr0 implements Serializable {

    public InterfaceC8342ly f49774b;

    public volatile Object f49775c;

    public final Object f49776d;

    public C8155kr0(InterfaceC8342ly interfaceC8342ly) {
        GJ.c(interfaceC8342ly, "initializer");
        this.f49774b = interfaceC8342ly;
        this.f49775c = C5762Pu0.f43405a;
        this.f49776d = this;
    }

    public final Object a() {
        Object obj;
        Object obj2 = this.f49775c;
        C5762Pu0 c5762Pu0 = C5762Pu0.f43405a;
        if (obj2 != c5762Pu0) {
            return obj2;
        }
        synchronized (this.f49776d) {
            obj = this.f49775c;
            if (obj == c5762Pu0) {
                InterfaceC8342ly interfaceC8342ly = this.f49774b;
                GJ.a(interfaceC8342ly);
                obj = interfaceC8342ly.a();
                this.f49775c = obj;
                this.f49774b = null;
            }
        }
        return obj;
    }

    public final String toString() {
        return this.f49775c != C5762Pu0.f43405a ? String.valueOf(a()) : "Lazy value not initialized yet.";
    }
}
