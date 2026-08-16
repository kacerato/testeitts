package com.android.tools.r8.errors;

import com.android.tools.r8.graph.H2;
import java.util.function.Function;

public final class q implements Function {
    @Override
    public final Object apply(Object obj) {
        return ((H2) obj).getType();
    }
}
