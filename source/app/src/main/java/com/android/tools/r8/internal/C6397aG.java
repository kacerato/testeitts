package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C6397aG extends O {

    public final C7230fG f46482c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6397aG(C7230fG c7230fG) {
        super(c7230fG);
        this.f46482c = c7230fG;
    }

    @Override
    public final HH iterator() {
        return new C6897dG(this.f46482c);
    }

    @Override
    public final PH iterator() {
        return new C6897dG(this.f46482c);
    }

    @Override
    public final Iterator iterator() {
        return new C6897dG(this.f46482c);
    }
}
