package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;
import java.util.Iterator;
import java.util.NoSuchElementException;

public abstract class AbstractC4995Cn0 implements Iterator {

    public String f39359c;

    public final String f39360d;

    public final AbstractC5892Sb f39361e;

    public final boolean f39362f;

    public int f39364h;

    public int f39358b = 2;

    public int f39363g = 0;

    public AbstractC4995Cn0(C5111En0 c5111En0, String str) {
        this.f39361e = c5111En0.f40019a;
        this.f39362f = c5111En0.f40020b;
        this.f39364h = c5111En0.f40022d;
        this.f39360d = str;
    }

    public abstract int a(int i10);

    public abstract int b(int i10);

    @Override
    public final boolean hasNext() {
        String str;
        int b10;
        int i10 = this.f39358b;
        if (i10 == 4) {
            throw new IllegalStateException();
        }
        int b11 = AbstractC4291c.b(i10);
        if (b11 == 0) {
            return true;
        }
        if (b11 != 2) {
            this.f39358b = 4;
            int i11 = this.f39363g;
            while (true) {
                int i12 = this.f39363g;
                if (i12 == -1) {
                    this.f39358b = 3;
                    str = null;
                    break;
                }
                b10 = b(i12);
                if (b10 == -1) {
                    b10 = this.f39360d.length();
                    this.f39363g = -1;
                } else {
                    this.f39363g = a(b10);
                }
                int i13 = this.f39363g;
                if (i13 == i11) {
                    int i14 = i13 + 1;
                    this.f39363g = i14;
                    if (i14 > this.f39360d.length()) {
                        this.f39363g = -1;
                    }
                } else {
                    while (i11 < b10 && this.f39361e.b(this.f39360d.charAt(i11))) {
                        i11++;
                    }
                    while (b10 > i11 && this.f39361e.b(this.f39360d.charAt(b10 - 1))) {
                        b10--;
                    }
                    if (!this.f39362f || i11 != b10) {
                        break;
                    }
                    i11 = this.f39363g;
                }
            }
            int i15 = this.f39364h;
            if (i15 == 1) {
                b10 = this.f39360d.length();
                this.f39363g = -1;
                while (b10 > i11 && this.f39361e.b(this.f39360d.charAt(b10 - 1))) {
                    b10--;
                }
            } else {
                this.f39364h = i15 - 1;
            }
            str = this.f39360d.subSequence(i11, b10).toString();
            this.f39359c = str;
            if (this.f39358b != 3) {
                this.f39358b = 1;
                return true;
            }
        }
        return false;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f39358b = 2;
        String str = this.f39359c;
        this.f39359c = null;
        return str;
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
