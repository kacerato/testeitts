package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.function.Consumer;

public abstract class AbstractC8965pj implements InterfaceC10368y50 {
    public final void a(Object obj) {
    }

    public abstract AbstractC7552hC b();

    @Override
    public boolean a() {
        Iterator it = b().iterator();
        while (it.hasNext()) {
            if (((InterfaceC10368y50) it.next()).a()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean a(String str, Consumer consumer, Object obj) {
        return a(obj, str);
    }

    @Override
    public final boolean a(String str, String str2, String str3, Consumer consumer) {
        return a(str, str2, str3);
    }

    @Override
    public final Q2 a(Consumer consumer, String str) {
        return a(str);
    }

    @Override
    public final Q2 a(String str, Consumer consumer, String str2) {
        return a(str, str2);
    }

    public boolean a(Object obj, String str) {
        Iterator it = b().iterator();
        while (it.hasNext()) {
            if (((InterfaceC10368y50) it.next()).a(str, new C6487aq1(this), obj)) {
                return true;
            }
        }
        return false;
    }

    public final boolean a(String str, String str2, String str3) {
        Iterator it = b().iterator();
        while (it.hasNext()) {
            if (((InterfaceC10368y50) it.next()).a(str, str2, str3, new C6487aq1(this))) {
                return true;
            }
        }
        return false;
    }

    public Q2 a(String str) {
        Iterator it = b().iterator();
        while (it.hasNext()) {
            Q2 a10 = ((InterfaceC10368y50) it.next()).a(new C6487aq1(this), str);
            if (a10 != null) {
                return a10;
            }
        }
        return null;
    }

    public final Q2 a(String str, String str2) {
        Iterator it = b().iterator();
        while (it.hasNext()) {
            Q2 a10 = ((InterfaceC10368y50) it.next()).a(str, (Consumer) new C6487aq1(this), str2);
            if (a10 != null) {
                return a10;
            }
        }
        return null;
    }
}
