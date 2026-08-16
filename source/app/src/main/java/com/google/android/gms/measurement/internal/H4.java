package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class H4 implements Runnable {

    public final Boolean f62665b;

    public final C12260b5 f62666c;

    public H4(C12260b5 c12260b5, Boolean bool) {
        this.f62665b = bool;
        Objects.requireNonNull(c12260b5);
        this.f62666c = c12260b5;
    }

    @Override
    public final void run() {
        this.f62666c.W(this.f62665b, true);
    }
}
