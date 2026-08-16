package org.blacksquircle.ui.language.base.utils;

import ag.C3617K;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class ExtensionsKt {
    public static final boolean endsWith(@NotNull String str, @NotNull String[] suffixes, boolean z10) {
        M.p(str, "<this>");
        M.p(suffixes, "suffixes");
        for (String str2 : suffixes) {
            if (C3617K.c2(str, str2, z10)) {
                return true;
            }
        }
        return false;
    }

    public static boolean endsWith$default(String str, String[] strArr, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return endsWith(str, strArr, z10);
    }
}
