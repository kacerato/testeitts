package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public abstract class AbstractC7397gG {

    public UF f48221b;

    public UF f48222c;

    public UF f48223d;

    public int f48224e = 0;

    public final C7731iG f48225f;

    public AbstractC7397gG(C7731iG c7731iG) {
        this.f48225f = c7731iG;
        this.f48222c = c7731iG.f48899d;
    }

    public final UF a() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        UF uf2 = this.f48222c;
        this.f48221b = uf2;
        this.f48223d = uf2;
        this.f48224e++;
        d();
        return this.f48223d;
    }

    public final UF b() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        UF uf2 = this.f48221b;
        this.f48222c = uf2;
        this.f48223d = uf2;
        this.f48224e--;
        e();
        return this.f48223d;
    }

    public void d() {
        this.f48222c = this.f48222c.c();
    }

    public void e() {
        this.f48221b = this.f48221b.e();
    }

    public final boolean hasNext() {
        return this.f48222c != null;
    }

    public final boolean hasPrevious() {
        return this.f48221b != null;
    }

    public Object next() {
        return a();
    }

    public final int nextIndex() {
        return this.f48224e;
    }

    public Object previous() {
        return b();
    }

    public final int previousIndex() {
        return this.f48224e - 1;
    }

    public final void remove() {
        UF uf2 = this.f48223d;
        if (uf2 == null) {
            throw new IllegalStateException();
        }
        if (uf2 == this.f48221b) {
            this.f48224e--;
        }
        this.f48221b = uf2;
        this.f48222c = uf2;
        e();
        d();
        this.f48225f.remove(this.f48223d.f42116b);
        this.f48223d = null;
    }
}
