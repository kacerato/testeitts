package com.android.tools.r8.internal;

import com.android.dex.DexFormat;

public abstract class AbstractC5468Ks {
    public static String a(int i10) {
        if (i10 == 0) {
            return DexFormat.DEX_IN_JAR_NAME;
        }
        return "classes" + (i10 + 1) + ".dex";
    }
}
