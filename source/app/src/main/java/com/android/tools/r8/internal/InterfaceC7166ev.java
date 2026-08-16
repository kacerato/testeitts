package com.android.tools.r8.internal;

public interface InterfaceC7166ev<T> {
    static {
        boolean z10 = AbstractC6999dv.f47545a;
    }

    /* JADX WARN: Incorrect types in method signature: <T::Lcom/android/tools/r8/internal/ev<TT;>;>(TT;Ljava/lang/Object;)Z */
    static boolean a(InterfaceC7166ev interfaceC7166ev, Object obj) {
        if (!AbstractC6999dv.f47545a && interfaceC7166ev == null) {
            throw new AssertionError();
        }
        if (interfaceC7166ev == obj) {
            return true;
        }
        if (obj == null || interfaceC7166ev.getClass() != obj.getClass()) {
            return false;
        }
        return interfaceC7166ev.isEqualTo((InterfaceC7166ev) obj);
    }

    boolean isEqualTo(Object obj);
}
