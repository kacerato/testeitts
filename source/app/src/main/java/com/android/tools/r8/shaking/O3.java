package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.C5417Jv0;

public enum O3 {
    f56853b,
    f56854c,
    f56855d,
    f56856e,
    f56857f;

    O3() {
    }

    @Override
    public String toString() {
        int i10 = N3.f56834a[ordinal()];
        if (i10 == 1) {
            return "keep";
        }
        if (i10 == 2) {
            return "keepclassmembers";
        }
        if (i10 == 3) {
            return "keepclasseswithmembers";
        }
        if (i10 == 4) {
            return "if";
        }
        if (i10 == 5) {
            return "keepspec";
        }
        throw new C5417Jv0("Unknown ProguardKeepRuleType.");
    }
}
