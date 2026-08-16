package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

public final class C12137n6 implements Iterator {

    public int f62370b;

    public boolean f62371c;

    public Iterator f62372d;

    public final C12155p6 f62373e;

    public C12137n6(C12155p6 c12155p6, byte[] bArr) {
        Objects.requireNonNull(c12155p6);
        this.f62373e = c12155p6;
        this.f62370b = -1;
    }

    public final Iterator a() {
        if (this.f62372d == null) {
            this.f62372d = this.f62373e.r().entrySet().iterator();
        }
        return this.f62372d;
    }

    @Override
    public final boolean hasNext() {
        int i10 = this.f62370b + 1;
        C12155p6 c12155p6 = this.f62373e;
        if (i10 >= c12155p6.q()) {
            return !c12155p6.r().isEmpty() && a().hasNext();
        }
        return true;
    }

    @Override
    public final Object next() {
        this.f62371c = true;
        int i10 = this.f62370b + 1;
        this.f62370b = i10;
        C12155p6 c12155p6 = this.f62373e;
        return i10 < c12155p6.q() ? (C12128m6) c12155p6.p()[i10] : (Map.Entry) a().next();
    }

    @Override
    public final void remove() {
        if (!this.f62371c) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f62371c = false;
        C12155p6 c12155p6 = this.f62373e;
        c12155p6.o();
        int i10 = this.f62370b;
        if (i10 >= c12155p6.q()) {
            a().remove();
        } else {
            this.f62370b = i10 - 1;
            c12155p6.n(i10);
        }
    }
}
