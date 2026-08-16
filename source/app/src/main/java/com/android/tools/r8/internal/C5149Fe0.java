package com.android.tools.r8.internal;

import java.lang.reflect.AccessibleObject;
import java.util.LinkedHashMap;

public final class C5149Fe0 extends AbstractC5033De0 {

    public final InterfaceC10529z30 f40265b;

    public C5149Fe0(InterfaceC10529z30 interfaceC10529z30, LinkedHashMap linkedHashMap) {
        super(linkedHashMap);
        this.f40265b = interfaceC10529z30;
    }

    @Override
    public final Object a(Object obj) {
        return obj;
    }

    @Override
    public final void a(Object obj, C8240lL c8240lL, C4975Ce0 c4975Ce0) {
        Object a10 = c4975Ce0.f39299h.a(c8240lL);
        if (a10 == null && c4975Ce0.f39302k) {
            return;
        }
        if (!c4975Ce0.f39303l) {
            c4975Ce0.f39293b.set(obj, a10);
            return;
        }
        throw new C7073eL(AbstractC5091Ee0.a("Cannot set value of 'static final' ", AbstractC10453ye0.a((AccessibleObject) c4975Ce0.f39293b, false)));
    }

    @Override
    public final Object a() {
        return this.f40265b.a();
    }
}
