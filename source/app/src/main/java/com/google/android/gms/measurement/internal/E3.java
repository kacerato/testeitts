package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class E3 implements Runnable {

    public final I f62621b;

    public final o7 f62622c;

    public final R3 f62623d;

    public E3(R3 r32, I i10, o7 o7Var) {
        this.f62621b = i10;
        this.f62622c = o7Var;
        Objects.requireNonNull(r32);
        this.f62623d = r32;
    }

    @Override
    public final void run() {
        I i10 = this.f62621b;
        o7 o7Var = this.f62622c;
        R3 r32 = this.f62623d;
        r32.m1(r32.n1(i10, o7Var), o7Var);
    }
}
