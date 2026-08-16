package com.android.tools.r8.internal;

import com.android.tools.r8.metadata.R8CompilationMetadata;

public final class C6235Ya0 implements R8CompilationMetadata {

    public static final boolean f46033c = true;

    @InterfaceC9168qv
    @InterfaceC10474yl0("buildTimeNs")
    public final long f46034a;

    @InterfaceC9168qv
    @InterfaceC10474yl0("numberOfThreads")
    public final long f46035b;

    public C6235Ya0(int i10, long j10) {
        this.f46034a = j10;
        this.f46035b = i10;
    }

    @Override
    public final long getBuildTimeInNanos() {
        return this.f46034a;
    }

    @Override
    public final long getNumberOfThreads() {
        return this.f46035b;
    }
}
