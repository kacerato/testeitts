package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public abstract class AbstractC10230xF {

    public C8227lF f53724b;

    public C8227lF f53725c;

    public C8227lF f53726d;

    public int f53727e = 0;

    public final C10564zF f53728f;

    public AbstractC10230xF(C10564zF c10564zF) {
        this.f53728f = c10564zF;
        this.f53725c = c10564zF.f54328d;
    }

    public final C8227lF a() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        C8227lF c8227lF = this.f53725c;
        this.f53724b = c8227lF;
        this.f53726d = c8227lF;
        this.f53727e++;
        d();
        return this.f53726d;
    }

    public final C8227lF b() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        C8227lF c8227lF = this.f53724b;
        this.f53725c = c8227lF;
        this.f53726d = c8227lF;
        this.f53727e--;
        e();
        return this.f53726d;
    }

    public void d() {
        this.f53725c = this.f53725c.b();
    }

    public void e() {
        this.f53724b = this.f53724b.d();
    }

    public final boolean hasNext() {
        return this.f53725c != null;
    }

    public final boolean hasPrevious() {
        return this.f53724b != null;
    }

    public Object next() {
        return a();
    }

    public final int nextIndex() {
        return this.f53727e;
    }

    public Object previous() {
        return b();
    }

    public final int previousIndex() {
        return this.f53727e - 1;
    }

    public final void remove() {
        C8227lF c8227lF = this.f53726d;
        if (c8227lF == null) {
            throw new IllegalStateException();
        }
        if (c8227lF == this.f53724b) {
            this.f53727e--;
        }
        this.f53724b = c8227lF;
        this.f53725c = c8227lF;
        e();
        d();
        this.f53728f.remove(this.f53726d.f42116b);
        this.f53726d = null;
    }
}
