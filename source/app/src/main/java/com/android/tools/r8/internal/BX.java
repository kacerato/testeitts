package com.android.tools.r8.internal;

public final class BX extends IndexOutOfBoundsException {

    public final String f38931b;

    public final String f38932c;

    public final String f38933d;

    public final int f38934e;

    public BX(int i10, String str, String str2, String str3) {
        super("Method too large: " + str + "." + str2 + " " + str3);
        this.f38931b = str;
        this.f38932c = str2;
        this.f38933d = str3;
        this.f38934e = i10;
    }
}
