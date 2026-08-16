package gg;

import eg.InterfaceC13104a1;
import mg.T;
import nf.EnumC14431q;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;

public final class C13366f {

    @NotNull
    public static final T f89592a = new T("NO_ELEMENT");

    @InterfaceC14427o(level = EnumC14431q.WARNING, message = "BroadcastChannel is deprecated in the favour of SharedFlow and StateFlow, and is no longer supported")
    @InterfaceC13104a1
    @NotNull
    public static final <E> InterfaceC13364d<E> a(int i10) {
        if (i10 == -2) {
            return new C13365e(l.f89682z4.a());
        }
        if (i10 == -1) {
            return new v();
        }
        if (i10 == 0) {
            throw new IllegalArgumentException("Unsupported 0 capacity for BroadcastChannel");
        }
        if (i10 != Integer.MAX_VALUE) {
            return new C13365e(i10);
        }
        throw new IllegalArgumentException("Unsupported UNLIMITED capacity for BroadcastChannel");
    }

    public static final T b() {
        return f89592a;
    }
}
