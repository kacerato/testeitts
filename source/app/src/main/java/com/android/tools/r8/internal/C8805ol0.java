package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;

public final class C8805ol0 implements Iterator, InterfaceC7294fi {

    public int f51340b;

    public Object f51341c;

    public InterfaceC7294fi f51342d;

    @Override
    public final void a(Object obj) {
        AbstractC5277Hj0.a(obj);
        this.f51340b = 4;
    }

    @Override
    public final C5527Lt getContext() {
        return C5527Lt.f42094b;
    }

    @Override
    public final boolean hasNext() {
        int i10;
        while (true) {
            i10 = this.f51340b;
            if (i10 != 0) {
                break;
            }
            this.f51340b = 5;
            InterfaceC7294fi interfaceC7294fi = this.f51342d;
            GJ.a(interfaceC7294fi);
            this.f51342d = null;
            interfaceC7294fi.a(C7833iv0.f49115a);
        }
        if (i10 == 1) {
            GJ.a((Object) null);
            throw null;
        }
        if (i10 == 2 || i10 == 3) {
            return true;
        }
        if (i10 == 4) {
            return false;
        }
        if (i10 == 4) {
            throw new NoSuchElementException();
        }
        if (i10 == 5) {
            throw new IllegalStateException("Iterator has failed.");
        }
        throw new IllegalStateException("Unexpected state of the iterator: " + this.f51340b);
    }

    @Override
    public final Object next() {
        int i10 = this.f51340b;
        if (i10 == 0 || i10 == 1) {
            if (hasNext()) {
                return next();
            }
            throw new NoSuchElementException();
        }
        if (i10 == 2) {
            this.f51340b = 1;
            GJ.a((Object) null);
            throw null;
        }
        if (i10 == 3) {
            this.f51340b = 0;
            Object obj = this.f51341c;
            this.f51341c = null;
            return obj;
        }
        if (i10 == 4) {
            throw new NoSuchElementException();
        }
        if (i10 == 5) {
            throw new IllegalStateException("Iterator has failed.");
        }
        throw new IllegalStateException("Unexpected state of the iterator: " + this.f51340b);
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
