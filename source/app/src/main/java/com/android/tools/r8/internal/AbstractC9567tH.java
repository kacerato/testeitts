package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public abstract class AbstractC9567tH {

    public C7566hH f52571b;

    public C7566hH f52572c;

    public C7566hH f52573d;

    public int f52574e = 0;

    public final C9901vH f52575f;

    public AbstractC9567tH(C9901vH c9901vH) {
        this.f52575f = c9901vH;
        this.f52572c = c9901vH.f53067d;
    }

    public final C7566hH a() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        C7566hH c7566hH = this.f52572c;
        this.f52571b = c7566hH;
        this.f52573d = c7566hH;
        this.f52574e++;
        d();
        return this.f52573d;
    }

    public final C7566hH b() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        C7566hH c7566hH = this.f52571b;
        this.f52572c = c7566hH;
        this.f52573d = c7566hH;
        this.f52574e--;
        e();
        return this.f52573d;
    }

    public void d() {
        this.f52572c = this.f52572c.c();
    }

    public void e() {
        this.f52571b = this.f52571b.e();
    }

    public final boolean hasNext() {
        return this.f52572c != null;
    }

    public final boolean hasPrevious() {
        return this.f52571b != null;
    }

    public Object next() {
        return a();
    }

    public final int nextIndex() {
        return this.f52574e;
    }

    public Object previous() {
        return b();
    }

    public final int previousIndex() {
        return this.f52574e - 1;
    }

    public final void remove() {
        C7566hH c7566hH = this.f52573d;
        if (c7566hH == null) {
            throw new IllegalStateException();
        }
        if (c7566hH == this.f52571b) {
            this.f52574e--;
        }
        this.f52571b = c7566hH;
        this.f52572c = c7566hH;
        e();
        d();
        this.f52575f.remove(this.f52573d.f44050b);
        this.f52573d = null;
    }
}
