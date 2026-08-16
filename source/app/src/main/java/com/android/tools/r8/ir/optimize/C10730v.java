package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.internal.InterfaceC6522b2;
import java.util.IdentityHashMap;
import v.C15748x1;

public final class C10730v implements InterfaceC6522b2 {

    public final IdentityHashMap f54946b;

    public C10730v(IdentityHashMap identityHashMap) {
        IdentityHashMap identityHashMap2 = new IdentityHashMap();
        this.f54946b = identityHashMap2;
        identityHashMap2.putAll(identityHashMap);
    }

    public final synchronized void a(IdentityHashMap identityHashMap) {
        this.f54946b.putAll(identityHashMap);
    }

    @Override
    public final void a() {
        this.f54946b.forEach(new C15748x1());
    }
}
