package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;
import java.util.Objects;

public final class K4 extends M4 {

    public int f61973b;

    public final int f61974c;

    public final S4 f61975d;

    public K4(S4 s42) {
        Objects.requireNonNull(s42);
        this.f61975d = s42;
        this.f61973b = 0;
        this.f61974c = s42.l();
    }

    @Override
    public final byte N1() {
        int i10 = this.f61973b;
        if (i10 >= this.f61974c) {
            throw new NoSuchElementException();
        }
        this.f61973b = i10 + 1;
        return this.f61975d.k(i10);
    }

    @Override
    public final boolean hasNext() {
        return this.f61973b < this.f61974c;
    }
}
