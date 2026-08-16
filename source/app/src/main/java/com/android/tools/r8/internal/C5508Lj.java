package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;

public final class C5508Lj implements Iterator {

    public int f42050b = -1;

    public int f42051c;

    public int f42052d;

    public C8401mI f42053e;

    public int f42054f;

    public final C5565Mj f42055g;

    public C5508Lj(C5565Mj c5565Mj) {
        this.f42055g = c5565Mj;
        c5565Mj.getClass();
        int length = c5565Mj.f42352a.length();
        if (length < 0) {
            throw new IllegalArgumentException(HC.a(length, "Cannot coerce value to an empty range: maximum ", " is less than minimum 0."));
        }
        length = length >= 0 ? 0 : length;
        this.f42051c = length;
        this.f42052d = length;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0018, code lost:
    
        if (r6 < r3) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a() {
        int i10 = this.f42052d;
        if (i10 < 0) {
            this.f42050b = 0;
            this.f42053e = null;
            return;
        }
        C5565Mj c5565Mj = this.f42055g;
        int i11 = c5565Mj.f42353b;
        if (i11 > 0) {
            int i12 = this.f42054f + 1;
            this.f42054f = i12;
        }
        if (i10 <= c5565Mj.f42352a.length()) {
            C5565Mj c5565Mj2 = this.f42055g;
            C8866p50 c8866p50 = (C8866p50) c5565Mj2.f42354c.a(c5565Mj2.f42352a, Integer.valueOf(this.f42052d));
            if (c8866p50 == null) {
                this.f42053e = new C8401mI(this.f42051c, AbstractC5349Iq0.a((CharSequence) this.f42055g.f42352a));
                this.f42052d = -1;
            } else {
                int intValue = ((Number) c8866p50.f51436b).intValue();
                int intValue2 = ((Number) c8866p50.f51437c).intValue();
                this.f42053e = intValue <= Integer.MIN_VALUE ? C8401mI.f50254e : new C8401mI(this.f42051c, intValue - 1);
                int i13 = intValue + intValue2;
                this.f42051c = i13;
                this.f42052d = i13 + (intValue2 == 0 ? 1 : 0);
            }
            this.f42050b = 1;
        }
        this.f42053e = new C8401mI(this.f42051c, AbstractC5349Iq0.a((CharSequence) this.f42055g.f42352a));
        this.f42052d = -1;
        this.f42050b = 1;
    }

    @Override
    public final boolean hasNext() {
        if (this.f42050b == -1) {
            a();
        }
        return this.f42050b == 1;
    }

    @Override
    public final Object next() {
        if (this.f42050b == -1) {
            a();
        }
        if (this.f42050b == 0) {
            throw new NoSuchElementException();
        }
        C8401mI c8401mI = this.f42053e;
        GJ.a((Object) c8401mI, "null cannot be cast to non-null type kotlin.ranges.IntRange");
        this.f42053e = null;
        this.f42050b = -1;
        return c8401mI;
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
