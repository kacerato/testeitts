package com.android.tools.r8.internal;

import java.util.Arrays;

public final class NL extends AbstractC9535t6 {

    public static final NL f42566g;

    public static final NL f42567h;

    public final boolean f42568f;

    static {
        NL nl2 = new NL(new int[]{2, 1, 0}, false);
        f42566g = nl2;
        int i10 = nl2.f52526b;
        f42567h = (i10 == 1 && nl2.f52527c == 9) ? new NL(new int[]{2, 0, 0}, false) : new NL(new int[]{i10, nl2.f52527c + 1, 0}, false);
        new NL(new int[0], false);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NL(int[] iArr, boolean z10) {
        super(Arrays.copyOf(iArr, iArr.length));
        GJ.c(iArr, "versionArray");
        this.f42568f = z10;
    }
}
