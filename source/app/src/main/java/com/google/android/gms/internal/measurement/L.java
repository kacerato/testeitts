package com.google.android.gms.internal.measurement;

import java.util.List;

public final class L extends AbstractC12219x {
    @Override
    public final InterfaceC12157q a(String str, C12079h2 c12079h2, List list) {
        if (str == null || str.isEmpty() || !c12079h2.d(str)) {
            throw new IllegalArgumentException(String.format("Command not found: %s", str));
        }
        InterfaceC12157q h10 = c12079h2.h(str);
        if (h10 instanceof AbstractC12103k) {
            return ((AbstractC12103k) h10).i(c12079h2, list);
        }
        throw new IllegalArgumentException(String.format("Function %s is not defined", str));
    }
}
