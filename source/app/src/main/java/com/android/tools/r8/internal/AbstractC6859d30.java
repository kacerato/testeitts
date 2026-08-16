package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public abstract class AbstractC6859d30 {

    public R20 f47262b;

    public R20 f47263c;

    public R20 f47264d;

    public int f47265e = 0;

    public final C7192f30 f47266f;

    public AbstractC6859d30(C7192f30 c7192f30) {
        this.f47266f = c7192f30;
        this.f47263c = c7192f30.f47838d;
    }

    public final R20 a() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        R20 r20 = this.f47263c;
        this.f47262b = r20;
        this.f47264d = r20;
        this.f47265e++;
        d();
        return this.f47264d;
    }

    public final R20 b() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        R20 r20 = this.f47262b;
        this.f47263c = r20;
        this.f47264d = r20;
        this.f47265e--;
        e();
        return this.f47264d;
    }

    public void d() {
        this.f47263c = this.f47263c.c();
    }

    public void e() {
        this.f47262b = this.f47262b.e();
    }

    public final boolean hasNext() {
        return this.f47263c != null;
    }

    public final boolean hasPrevious() {
        return this.f47262b != null;
    }

    public Object next() {
        return a();
    }

    public final int nextIndex() {
        return this.f47265e;
    }

    public Object previous() {
        return b();
    }

    public final int previousIndex() {
        return this.f47265e - 1;
    }

    public final void remove() {
        R20 r20 = this.f47264d;
        if (r20 == null) {
            throw new IllegalStateException();
        }
        if (r20 == this.f47262b) {
            this.f47265e--;
        }
        this.f47262b = r20;
        this.f47263c = r20;
        e();
        d();
        this.f47266f.remove(this.f47264d.f43785b);
        this.f47264d = null;
    }
}
