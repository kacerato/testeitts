package com.android.tools.r8.graph;

import java.util.function.Function;

public final class Dh implements Function {
    @Override
    public final Object apply(Object obj) {
        return ((S) obj).getType();
    }
}
