package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;

public abstract class AbstractC12219x {

    public final List f62478a = new ArrayList();

    public abstract InterfaceC12157q a(String str, C12079h2 c12079h2, List list);

    public final InterfaceC12157q b(String str) {
        if (this.f62478a.contains(I2.e(str))) {
            throw new UnsupportedOperationException("Command not implemented: ".concat(String.valueOf(str)));
        }
        throw new IllegalArgumentException("Command not supported");
    }
}
