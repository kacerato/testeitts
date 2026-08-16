package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;

public final class C5487Lb implements Iterator {

    public int f42016b = 0;

    public final C5544Mb f42017c;

    public C5487Lb(C5544Mb c5544Mb) {
        this.f42017c = c5544Mb;
    }

    @Override
    public final boolean hasNext() {
        return this.f42016b < this.f42017c.f42326c;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        char[] cArr = this.f42017c.f42325b;
        int i10 = this.f42016b;
        this.f42016b = i10 + 1;
        return Character.valueOf(cArr[i10]);
    }

    @Override
    public final void remove() {
        C5544Mb c5544Mb = this.f42017c;
        int i10 = c5544Mb.f42326c;
        c5544Mb.f42326c = i10 - 1;
        int i11 = this.f42016b;
        int i12 = i11 - 1;
        this.f42016b = i12;
        char[] cArr = c5544Mb.f42325b;
        System.arraycopy(cArr, i11, cArr, i12, i10 - i11);
    }
}
