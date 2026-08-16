package com.google.android.gms.internal.auth;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public final class C11961m2 {

    public static final C11961m2 f61798c = new C11961m2();

    public final ConcurrentMap f61800b = new ConcurrentHashMap();

    public final InterfaceC11977q2 f61799a = new V1();

    public static C11961m2 a() {
        return f61798c;
    }

    public final InterfaceC11973p2 b(Class cls) {
        H1.c(cls, "messageType");
        InterfaceC11973p2 interfaceC11973p2 = (InterfaceC11973p2) this.f61800b.get(cls);
        if (interfaceC11973p2 == null) {
            interfaceC11973p2 = this.f61799a.a(cls);
            H1.c(cls, "messageType");
            InterfaceC11973p2 interfaceC11973p22 = (InterfaceC11973p2) this.f61800b.putIfAbsent(cls, interfaceC11973p2);
            if (interfaceC11973p22 != null) {
                return interfaceC11973p22;
            }
        }
        return interfaceC11973p2;
    }
}
