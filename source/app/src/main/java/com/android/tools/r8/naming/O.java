package com.android.tools.r8.naming;

import java.io.BufferedReader;

public final class O implements P {

    public final BufferedReader f55718a;

    public O(BufferedReader bufferedReader) {
        this.f55718a = bufferedReader;
    }

    @Override
    public final String a() {
        return this.f55718a.readLine();
    }

    @Override
    public final void close() {
        this.f55718a.close();
    }
}
