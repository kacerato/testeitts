package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;
import java.util.NoSuchElementException;

public abstract class AbstractC7015e0 extends AbstractC4895Av0 {

    public int f47569b = 2;

    public Object f47570c;

    public abstract Object a();

    @Override
    public final boolean hasNext() {
        int i10 = this.f47569b;
        if (i10 == 4) {
            throw new IllegalStateException();
        }
        int b10 = AbstractC4291c.b(i10);
        if (b10 == 0) {
            return true;
        }
        if (b10 != 2) {
            this.f47569b = 4;
            this.f47570c = a();
            if (this.f47569b != 3) {
                this.f47569b = 1;
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
        this.f47569b = 2;
        Object obj = this.f47570c;
        this.f47570c = null;
        return obj;
    }
}
