package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Iterator;

public final class C5544Mb extends AbstractC8515n implements Serializable {

    public transient char[] f42325b = new char[3];

    public int f42326c;

    public final boolean a(char c10) {
        int i10;
        int i11 = this.f42326c;
        while (true) {
            i10 = i11 - 1;
            if (i11 == 0) {
                i10 = -1;
                break;
            }
            if (this.f42325b[i10] == c10) {
                break;
            }
            i11 = i10;
        }
        if (i10 != -1) {
            return false;
        }
        int i12 = this.f42326c;
        if (i12 == this.f42325b.length) {
            char[] cArr = new char[i12 == 0 ? 2 : i12 * 2];
            while (true) {
                int i13 = i12 - 1;
                if (i12 == 0) {
                    break;
                }
                cArr[i13] = this.f42325b[i13];
                i12 = i13;
            }
            this.f42325b = cArr;
        }
        char[] cArr2 = this.f42325b;
        int i14 = this.f42326c;
        this.f42326c = i14 + 1;
        cArr2[i14] = c10;
        return true;
    }

    @Override
    public final void clear() {
        this.f42326c = 0;
    }

    public final Object clone() {
        try {
            C5544Mb c5544Mb = (C5544Mb) super.clone();
            c5544Mb.f42325b = (char[]) this.f42325b.clone();
            return c5544Mb;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final boolean isEmpty() {
        return this.f42326c == 0;
    }

    @Override
    public final Iterator iterator() {
        return new C5487Lb(this);
    }

    @Override
    public final int size() {
        return this.f42326c;
    }
}
