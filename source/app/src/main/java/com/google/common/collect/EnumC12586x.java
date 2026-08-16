package com.google.common.collect;

@X
@v2.b
public enum EnumC12586x {
    OPEN(false),
    CLOSED(true);

    final boolean inclusive;

    EnumC12586x(boolean z10) {
        this.inclusive = z10;
    }

    public static EnumC12586x b(boolean z10) {
        return z10 ? CLOSED : OPEN;
    }
}
