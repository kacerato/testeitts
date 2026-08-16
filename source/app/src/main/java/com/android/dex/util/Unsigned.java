package com.android.dex.util;

public final class Unsigned {
    private Unsigned() {
    }

    public static int compare(int i10, int i11) {
        if (i10 == i11) {
            return 0;
        }
        return (((long) i10) & 4294967295L) < (((long) i11) & 4294967295L) ? -1 : 1;
    }

    public static int compare(short s10, short s11) {
        if (s10 == s11) {
            return 0;
        }
        return (s10 & 65535) < (s11 & 65535) ? -1 : 1;
    }
}
