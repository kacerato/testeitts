package com.android.tools.r8.internal;

public final class C8221lD extends IllegalArgumentException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8221lD(String str) {
        super(str, null);
        GJ.c(str, "message");
    }

    public C8221lD(Throwable th2) {
        super("Exception occurred when reading Kotlin metadata", th2);
    }
}
