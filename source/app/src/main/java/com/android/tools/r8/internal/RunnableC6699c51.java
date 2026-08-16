package com.android.tools.r8.internal;

import java.util.stream.Stream;

public final class RunnableC6699c51 implements Runnable {

    public final Stream f46963b;

    public RunnableC6699c51(Stream stream) {
        this.f46963b = stream;
    }

    @Override
    public final void run() {
        this.f46963b.close();
    }
}
