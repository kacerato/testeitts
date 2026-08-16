package com.android.tools.r8.graph;

import com.android.tools.r8.internal.R00;
import java.util.function.Predicate;

public final class Eh implements Predicate {
    @Override
    public final boolean test(Object obj) {
        return ((R00) obj).k();
    }
}
