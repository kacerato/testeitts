package com.android.tools.r8.naming;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.C8570nJ;
import java.util.Objects;

public abstract class U0 {
    public static boolean a(C8570nJ c8570nJ, String str) {
        if (str.isEmpty()) {
            return true;
        }
        Objects.requireNonNull(c8570nJ.m());
        return "SourceFile".equals(str);
    }

    public static T0 a(C4724u1 c4724u1) {
        Objects.requireNonNull(c4724u1);
        return new T0("SourceFile", true);
    }
}
