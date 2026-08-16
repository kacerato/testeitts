package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Stack;

public final class C5279Hk0 implements Iterator {

    public final Stack f40854b = new Stack();

    public ET f40855c;

    public C5279Hk0(AbstractC8206l8 abstractC8206l8) {
        while (abstractC8206l8 instanceof C5395Jk0) {
            C5395Jk0 c5395Jk0 = (C5395Jk0) abstractC8206l8;
            this.f40854b.push(c5395Jk0);
            abstractC8206l8 = c5395Jk0.f41491e;
        }
        this.f40855c = (ET) abstractC8206l8;
    }

    @Override
    public final ET next() {
        ET et;
        ET et2 = this.f40855c;
        if (et2 == null) {
            throw new NoSuchElementException();
        }
        while (true) {
            if (!this.f40854b.isEmpty()) {
                AbstractC8206l8 abstractC8206l8 = ((C5395Jk0) this.f40854b.pop()).f41492f;
                while (abstractC8206l8 instanceof C5395Jk0) {
                    C5395Jk0 c5395Jk0 = (C5395Jk0) abstractC8206l8;
                    this.f40854b.push(c5395Jk0);
                    abstractC8206l8 = c5395Jk0.f41491e;
                }
                et = (ET) abstractC8206l8;
                if (et.f39875d.length != 0) {
                    break;
                }
            } else {
                et = null;
                break;
            }
        }
        this.f40855c = et;
        return et2;
    }

    @Override
    public final boolean hasNext() {
        return this.f40855c != null;
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
