package com.android.tools.r8.internal;

public final class SQ extends Error {
    public SQ() {
        super("Kotlin reflection implementation is not found at runtime. Make sure you have kotlin-reflect.jar in the classpath");
    }
}
