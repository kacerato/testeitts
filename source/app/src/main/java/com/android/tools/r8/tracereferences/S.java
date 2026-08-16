package com.android.tools.r8.tracereferences;

import com.android.tools.r8.graph.Z4;
import java.util.function.Function;

public final class S implements Function {
    @Override
    public final Object apply(Object obj) {
        return ((Z4.c) obj).p();
    }
}
