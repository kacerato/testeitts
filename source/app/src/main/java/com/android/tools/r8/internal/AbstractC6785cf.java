package com.android.tools.r8.internal;

import java.util.Collection;

public abstract class AbstractC6785cf extends AbstractC6619bf {
    public static int a(Iterable iterable) {
        GJ.c(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        return 10;
    }
}
