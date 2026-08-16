package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public abstract class BG {

    public C8898pG f38864b;

    public C8898pG f38865c;

    public C8898pG f38866d;

    public int f38867e = 0;

    public final DG f38868f;

    public BG(DG dg2) {
        this.f38868f = dg2;
        this.f38865c = dg2.f39475d;
    }

    public final C8898pG a() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        C8898pG c8898pG = this.f38865c;
        this.f38864b = c8898pG;
        this.f38866d = c8898pG;
        this.f38867e++;
        d();
        return this.f38866d;
    }

    public final C8898pG b() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        C8898pG c8898pG = this.f38864b;
        this.f38865c = c8898pG;
        this.f38866d = c8898pG;
        this.f38867e--;
        e();
        return this.f38866d;
    }

    public void d() {
        this.f38865c = this.f38865c.b();
    }

    public void e() {
        this.f38864b = this.f38864b.d();
    }

    public final boolean hasNext() {
        return this.f38865c != null;
    }

    public final boolean hasPrevious() {
        return this.f38864b != null;
    }

    public Object next() {
        return a();
    }

    public final int nextIndex() {
        return this.f38867e;
    }

    public Object previous() {
        return b();
    }

    public final int previousIndex() {
        return this.f38867e - 1;
    }

    public final void remove() {
        C8898pG c8898pG = this.f38866d;
        if (c8898pG == null) {
            throw new IllegalStateException();
        }
        if (c8898pG == this.f38864b) {
            this.f38867e--;
        }
        this.f38864b = c8898pG;
        this.f38865c = c8898pG;
        e();
        d();
        this.f38868f.remove(this.f38866d.f44050b);
        this.f38866d = null;
    }
}
