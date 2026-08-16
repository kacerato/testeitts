package com.android.tools.r8.internal;

import java.util.ListIterator;
import java.util.NoSuchElementException;

public final class C9923vS implements ListIterator {

    public final Object f53116b;

    public int f53117c;

    public C9589tS f53118d;

    public C9589tS f53119e;

    public C9589tS f53120f;

    public final C10090wS f53121g;

    public C9923vS(C10090wS c10090wS, Object obj) {
        this.f53121g = c10090wS;
        this.f53116b = obj;
        C9422sS c9422sS = (C9422sS) c10090wS.f53507h.get(obj);
        this.f53118d = c9422sS == null ? null : c9422sS.f52360a;
    }

    @Override
    public final void add(Object obj) {
        this.f53120f = this.f53121g.a(this.f53116b, obj, this.f53118d);
        this.f53117c++;
        this.f53119e = null;
    }

    @Override
    public final boolean hasNext() {
        return this.f53118d != null;
    }

    @Override
    public final boolean hasPrevious() {
        return this.f53120f != null;
    }

    @Override
    public final Object next() {
        C9589tS c9589tS = this.f53118d;
        if (c9589tS == null) {
            throw new NoSuchElementException();
        }
        this.f53119e = c9589tS;
        this.f53120f = c9589tS;
        this.f53118d = c9589tS.f52609f;
        this.f53117c++;
        return c9589tS.f52606c;
    }

    @Override
    public final int nextIndex() {
        return this.f53117c;
    }

    @Override
    public final Object previous() {
        C9589tS c9589tS = this.f53120f;
        if (c9589tS == null) {
            throw new NoSuchElementException();
        }
        this.f53119e = c9589tS;
        this.f53118d = c9589tS;
        this.f53120f = c9589tS.f52610g;
        this.f53117c--;
        return c9589tS.f52606c;
    }

    @Override
    public final int previousIndex() {
        return this.f53117c - 1;
    }

    @Override
    public final void remove() {
        C9589tS c9589tS = this.f53119e;
        if (!(c9589tS != null)) {
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
        if (c9589tS != this.f53118d) {
            this.f53120f = c9589tS.f52610g;
            this.f53117c--;
        } else {
            this.f53118d = c9589tS.f52609f;
        }
        C10090wS.a(this.f53121g, c9589tS);
        this.f53119e = null;
    }

    @Override
    public final void set(Object obj) {
        C9589tS c9589tS = this.f53119e;
        if (c9589tS == null) {
            throw new IllegalStateException();
        }
        c9589tS.f52606c = obj;
    }

    public C9923vS(C10090wS c10090wS, Object obj, int i10) {
        this.f53121g = c10090wS;
        C9422sS c9422sS = (C9422sS) c10090wS.f53507h.get(obj);
        int i11 = c9422sS == null ? 0 : c9422sS.f52362c;
        U60.b(i10, i11);
        if (i10 >= i11 / 2) {
            this.f53120f = c9422sS == null ? null : c9422sS.f52361b;
            this.f53117c = i11;
            while (true) {
                int i12 = i10 + 1;
                if (i10 >= i11) {
                    break;
                }
                previous();
                i10 = i12;
            }
        } else {
            this.f53118d = c9422sS == null ? null : c9422sS.f52360a;
            while (true) {
                int i13 = i10 - 1;
                if (i10 <= 0) {
                    break;
                }
                next();
                i10 = i13;
            }
        }
        this.f53116b = obj;
        this.f53119e = null;
    }
}
