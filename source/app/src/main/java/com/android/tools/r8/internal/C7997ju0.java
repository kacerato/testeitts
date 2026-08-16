package com.android.tools.r8.internal;

import java.lang.reflect.Field;
import java.security.AccessController;
import java.util.HashMap;

public final class C7997ju0 extends AbstractC9997vt0 {

    public final HashMap f49414a = new HashMap();

    public final HashMap f49415b = new HashMap();

    public final HashMap f49416c = new HashMap();

    public C7997ju0(Class cls) {
        try {
            for (Field field : (Field[]) AccessController.doPrivileged(new C7830iu0(cls))) {
                Enum r42 = (Enum) field.get(null);
                String name = r42.name();
                String str = r42.toString();
                InterfaceC10474yl0 interfaceC10474yl0 = (InterfaceC10474yl0) field.getAnnotation(InterfaceC10474yl0.class);
                if (interfaceC10474yl0 != null) {
                    name = interfaceC10474yl0.value();
                    for (String str2 : interfaceC10474yl0.alternate()) {
                        this.f49414a.put(str2, r42);
                    }
                }
                this.f49414a.put(name, r42);
                this.f49415b.put(str, r42);
                this.f49416c.put(r42, name);
            }
        } catch (IllegalAccessException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        Enum r32 = (Enum) obj;
        c9075qL.d(r32 == null ? null : (String) this.f49416c.get(r32));
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        String s10 = c8240lL.s();
        Enum r02 = (Enum) this.f49414a.get(s10);
        return r02 == null ? (Enum) this.f49415b.get(s10) : r02;
    }
}
