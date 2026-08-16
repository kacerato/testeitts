package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public final class C12056e6 {

    public static final C12056e6 f62267c = new C12056e6();

    public static final int f62268d = 0;

    public final ConcurrentMap f62270b = new ConcurrentHashMap();

    public final InterfaceC12092i6 f62269a = new N5();

    public static C12056e6 a() {
        return f62267c;
    }

    public final InterfaceC12083h6 b(Class cls) {
        A5.a(cls, "messageType");
        ConcurrentMap concurrentMap = this.f62270b;
        InterfaceC12083h6 interfaceC12083h6 = (InterfaceC12083h6) concurrentMap.get(cls);
        if (interfaceC12083h6 == null) {
            interfaceC12083h6 = this.f62269a.a(cls);
            A5.a(cls, "messageType");
            InterfaceC12083h6 interfaceC12083h62 = (InterfaceC12083h6) concurrentMap.putIfAbsent(cls, interfaceC12083h6);
            if (interfaceC12083h62 != null) {
                return interfaceC12083h62;
            }
        }
        return interfaceC12083h6;
    }
}
