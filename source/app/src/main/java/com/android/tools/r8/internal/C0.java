package com.android.tools.r8.internal;

import java.util.Map;

public final class C0 extends MY {

    public final Map.Entry f39057b;

    public final D0 f39058c;

    public C0(D0 d02, Map.Entry entry) {
        this.f39058c = d02;
        this.f39057b = entry;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final int a() {
        C8127ki c8127ki;
        C8127ki c8127ki2 = (C8127ki) this.f39057b.getValue();
        if ((c8127ki2 == null || c8127ki2.f49730b == 0) && (c8127ki = (C8127ki) this.f39058c.f39406d.f40062d.get(this.f39057b.getKey())) != null) {
            return c8127ki.f49730b;
        }
        if (c8127ki2 == null) {
            return 0;
        }
        return c8127ki2.f49730b;
    }

    @Override
    public final Object b() {
        return this.f39057b.getKey();
    }
}
