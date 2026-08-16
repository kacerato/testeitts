package com.android.tools.r8.utils;

import java.nio.file.Path;
import java.util.function.Function;

public final class S implements Function {
    @Override
    public final Object apply(Object obj) {
        return ((Path) obj).toString();
    }
}
