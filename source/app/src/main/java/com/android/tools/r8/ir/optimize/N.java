package com.android.tools.r8.ir.optimize;

public enum N {
    NEVER(1),
    SAMECLASS(2),
    SAMENEST(4),
    PACKAGE(8),
    SUBCLASS(16),
    ALWAYS(32);


    public final int f54785b;

    N(int i10) {
        this.f54785b = i10;
    }

    public final boolean a(int i10) {
        return (i10 & this.f54785b) != 0;
    }
}
