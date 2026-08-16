package com.android.tools.r8.internal;

import java.util.ConcurrentModificationException;
import java.util.ListIterator;
import java.util.NoSuchElementException;

public final class C9756uS implements ListIterator {

    public int f52852b;

    public C9589tS f52853c;

    public C9589tS f52854d;

    public C9589tS f52855e;

    public int f52856f;

    public final C10090wS f52857g;

    public C9756uS(C10090wS c10090wS, int i10) {
        this.f52857g = c10090wS;
        this.f52856f = c10090wS.f53509j;
        int i11 = c10090wS.f53508i;
        U60.b(i10, i11);
        if (i10 < i11 / 2) {
            this.f52853c = c10090wS.f53505f;
            while (true) {
                int i12 = i10 - 1;
                if (i10 <= 0) {
                    break;
                }
                if (this.f52857g.f53509j != this.f52856f) {
                    throw new ConcurrentModificationException();
                }
                C9589tS c9589tS = this.f52853c;
                if (c9589tS == null) {
                    throw new NoSuchElementException();
                }
                this.f52854d = c9589tS;
                this.f52855e = c9589tS;
                this.f52853c = c9589tS.f52607d;
                this.f52852b++;
                i10 = i12;
            }
        } else {
            this.f52855e = c10090wS.f53506g;
            this.f52852b = i11;
            while (true) {
                int i13 = i10 + 1;
                if (i10 >= i11) {
                    break;
                }
                if (this.f52857g.f53509j != this.f52856f) {
                    throw new ConcurrentModificationException();
                }
                C9589tS c9589tS2 = this.f52855e;
                if (c9589tS2 == null) {
                    throw new NoSuchElementException();
                }
                this.f52854d = c9589tS2;
                this.f52853c = c9589tS2;
                this.f52855e = c9589tS2.f52608e;
                this.f52852b--;
                i10 = i13;
            }
        }
        this.f52854d = null;
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean hasNext() {
        if (this.f52857g.f53509j == this.f52856f) {
            return this.f52853c != null;
        }
        throw new ConcurrentModificationException();
    }

    @Override
    public final boolean hasPrevious() {
        if (this.f52857g.f53509j == this.f52856f) {
            return this.f52855e != null;
        }
        throw new ConcurrentModificationException();
    }

    @Override
    public final Object next() {
        if (this.f52857g.f53509j != this.f52856f) {
            throw new ConcurrentModificationException();
        }
        C9589tS c9589tS = this.f52853c;
        if (c9589tS == null) {
            throw new NoSuchElementException();
        }
        this.f52854d = c9589tS;
        this.f52855e = c9589tS;
        this.f52853c = c9589tS.f52607d;
        this.f52852b++;
        return c9589tS;
    }

    @Override
    public final int nextIndex() {
        return this.f52852b;
    }

    @Override
    public final Object previous() {
        if (this.f52857g.f53509j != this.f52856f) {
            throw new ConcurrentModificationException();
        }
        C9589tS c9589tS = this.f52855e;
        if (c9589tS == null) {
            throw new NoSuchElementException();
        }
        this.f52854d = c9589tS;
        this.f52853c = c9589tS;
        this.f52855e = c9589tS.f52608e;
        this.f52852b--;
        return c9589tS;
    }

    @Override
    public final int previousIndex() {
        return this.f52852b - 1;
    }

    @Override
    public final void remove() {
        C10090wS c10090wS = this.f52857g;
        if (c10090wS.f53509j != this.f52856f) {
            throw new ConcurrentModificationException();
        }
        C9589tS c9589tS = this.f52854d;
        if (!(c9589tS != null)) {
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
        if (c9589tS != this.f52853c) {
            this.f52855e = c9589tS.f52608e;
            this.f52852b--;
        } else {
            this.f52853c = c9589tS.f52607d;
        }
        C10090wS.a(c10090wS, c9589tS);
        this.f52854d = null;
        this.f52856f = this.f52857g.f53509j;
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
