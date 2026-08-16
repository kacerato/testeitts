package com.android.tools.r8.retrace;

import java.util.List;

@FunctionalInterface
public interface StackTraceSupplier {
    List<String> get();
}
