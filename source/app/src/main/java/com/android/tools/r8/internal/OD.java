package com.android.tools.r8.internal;

import java.util.Iterator;

public final class OD implements Iterable {

    public int f42824b;

    public H f42825c;

    public H f42826d;

    public H[] f42827e;

    public final H[] a() {
        H h10 = this.f42825c;
        H[] hArr = new H[this.f42824b];
        int i10 = 0;
        while (h10 != null) {
            hArr[i10] = h10;
            h10.f40644f = i10;
            h10 = h10.f40643e;
            i10++;
        }
        return hArr;
    }

    public final int b(H h10) {
        if (this.f42827e == null) {
            this.f42827e = a();
        }
        return h10.f40644f;
    }

    @Override
    public final Iterator iterator() {
        return new ND(this);
    }

    public final H j(int i10) {
        if (i10 < 0 || i10 >= this.f42824b) {
            throw new IndexOutOfBoundsException();
        }
        if (this.f42827e == null) {
            this.f42827e = a();
        }
        return this.f42827e[i10];
    }

    public final void a(H h10) {
        this.f42824b++;
        H h11 = this.f42826d;
        if (h11 == null) {
            this.f42825c = h10;
            this.f42826d = h10;
        } else {
            h11.f40643e = h10;
            h10.f40642d = h11;
        }
        this.f42826d = h10;
        this.f42827e = null;
        h10.f40644f = 0;
    }
}
